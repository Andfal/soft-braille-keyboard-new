/*
 * Copyright (C) 2015 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package com.googlecode.eyesfree.braille.service.translate;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.googlecode.eyesfree.braille.service.R;
import com.googlecode.eyesfree.braille.translate.ITranslatorService;
import com.googlecode.eyesfree.braille.translate.ITranslatorServiceCallback;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import com.googlecode.eyesfree.braille.translate.TranslationResult;
import com.googlecode.eyesfree.braille.translate.TranslatorClient;
import com.googlecode.eyesfree.braille.utils.ZipResourceExtractor;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The service for the {@link TranslatorClient} client.
 */
public class TranslatorService extends Service {
    private static final String LOG_TAG =
            TranslatorService.class.getSimpleName();

    public static final String ACTION_TABLE_UPDATED =
            "com.dalton.braillekeyboard.ACTION_TABLE_UPDATED";
    public static final String EXTRA_TABLE_FILE_NAME = "table_file_name";

    private static final int FILES_ERROR = -1;
    private static final int FILES_NOT_EXTRACTED = 0;
    private static final int FILES_EXTRACTED = 1;

    // Written in main thread, read in binder threads.
    private final ServiceImpl mServiceImpl = new ServiceImpl();
    private final Set<ITranslatorServiceCallback> mPendingCallbacks =
            new HashSet<ITranslatorServiceCallback>();
    private final Set<String> mForcedSyncTables = new HashSet<String>();
    private int mDataFileState = FILES_NOT_EXTRACTED;
    private TableList mTableList;

    private final android.content.BroadcastReceiver mUpdateReceiver =
            new android.content.BroadcastReceiver() {
        @Override
        public void onReceive(android.content.Context context, Intent intent) {
            if (ACTION_TABLE_UPDATED.equals(intent.getAction())) {
                String fileName = intent.getStringExtra(EXTRA_TABLE_FILE_NAME);
                if (fileName != null) {
                    synchronized (mForcedSyncTables) {
                        mForcedSyncTables.add(fileName);
                    }
                    Log.i(LOG_TAG, "Marked table for forced sync: " + fileName);
                }
            }
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        android.content.Context storageContext = this;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = createDeviceProtectedStorageContext();
        }
        mTableList = new TableList(storageContext);
        extractDataFiles();

        android.content.IntentFilter filter = new android.content.IntentFilter(ACTION_TABLE_UPDATED);
        // Android 14+ (API 34) requires RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED for dynamic receivers.
        if (android.os.Build.VERSION.SDK_INT >= 33) {
            registerReceiver(mUpdateReceiver, filter, android.content.Context.RECEIVER_NOT_EXPORTED);
        } else {
            // Secure legacy receiver with permission to prevent external spoofing
            registerReceiver(mUpdateReceiver, filter, android.Manifest.permission.BIND_ACCESSIBILITY_SERVICE, null);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(mUpdateReceiver);
        // TODO: Deallocate native data.
    }

    @Override
    public IBinder onBind(Intent intent) {
        return mServiceImpl;
    }

    private void extractDataFiles() {
        android.content.Context storageContext = this;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = createDeviceProtectedStorageContext();
        }
        File baseDir = storageContext.getDir("translator", MODE_PRIVATE);
        
        ZipResourceExtractor extractor = new ZipResourceExtractor(
            storageContext, R.raw.translationtables, baseDir) {
            @Override
            protected void onPreExecute() {
                // Perform cleanup in pre-execute if it's running in background (depends on implementation)
                // Or better, inside onPostExecute but before extraction logic.
                // In this specific implementation of eyesfree, we'll do it inside the extractor's task if possible.
                super.onPreExecute();
            }

            @Override
            protected void onPostExecute(Integer result) {
                // Moving clearDirectory inside a thread or background task would be better, 
                // but since extractor is already an AsyncTask, we'll ensure it's handled.
                synchronized (TranslatorService.this) {
                    if (result == RESULT_OK) {
                        File tablesDir = new File(baseDir, "liblouis/tables");
                        LibLouisWrapper.setTablesDir(tablesDir.getPath());
                        mDataFileState = FILES_EXTRACTED;
                        Log.i(LOG_TAG, "Tables extracted and directory set to: " + tablesDir.getPath());
                    } else {
                        Log.e(LOG_TAG, "Couldn't extract data files");
                        mDataFileState = FILES_ERROR;
                    }
                }
                callPendingOnInits();
            }
        };
        // Ensure directory is cleared before extraction
        new Thread(() -> {
            clearDirectory(baseDir);
            extractor.execute();
        }).start();
    }

    private void clearDirectory(File dir) {
        if (dir.exists() && dir.isDirectory()) {
            File[] files = dir.listFiles();
            if (files != null) {
                for (File file : files) {
                    if (file.isDirectory()) {
                        clearDirectory(file);
                    }
                    file.delete();
                }
            }
        }
    }

    private synchronized boolean checkDataFiles() {
        return (mDataFileState == FILES_EXTRACTED);
    }

    private void callOnInit(ITranslatorServiceCallback callback,
            int dataFileState) {
        try {
            callback.onInit(dataFileState == FILES_EXTRACTED
                    ? TranslatorClient.SUCCESS
                    : TranslatorClient.ERROR);
        } catch (RemoteException ex) {
            // The client died before we initialized.  This is rare and
            // harmless for us.
        }
    }

    private void setCallback(ITranslatorServiceCallback callback) {
        int dataFileState;
        synchronized (this) {
            dataFileState = mDataFileState;
            if (dataFileState == FILES_NOT_EXTRACTED) {
                mPendingCallbacks.add(callback);
                return;
            }
        }
        callOnInit(callback, dataFileState);
    }

    private void callPendingOnInits() {
        Collection<ITranslatorServiceCallback> pendingCallbacks;
        int dataFileState;
        synchronized (this) {
            pendingCallbacks = new ArrayList<ITranslatorServiceCallback>(
                    mPendingCallbacks);
            dataFileState = mDataFileState;
            mPendingCallbacks.clear();
        }

        for (ITranslatorServiceCallback callback : pendingCallbacks) {
            callOnInit(callback, dataFileState);
        }
    }

    private String getTablePath(String tableName) {
        android.content.Context storageContext = this;
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = createDeviceProtectedStorageContext();
        }
        File baseDir = storageContext.getDir("translator", MODE_PRIVATE);
        File tablesDir = new File(baseDir, "liblouis/tables");
        if (tableName.startsWith("/")) {
            // It's a custom table path. To allow Liblouis to find includes (UTIs)
            // which are in the translator directory, we copy the custom table 
            // to the translator directory first if it doesn't exist or is older.
            File customFile = new File(tableName);
            if (!customFile.exists()) {
                Log.e(LOG_TAG, "Custom table file not found: " + tableName);
                return tableName;
            }
            // To force Liblouis to bypass its internal cache, we use a unique name
            // based on the last modified timestamp.
            long timestamp = customFile.lastModified();
            
            boolean forceSync = false;
            synchronized (mForcedSyncTables) {
                if (mForcedSyncTables.contains(customFile.getName())) {
                    forceSync = true;
                    mForcedSyncTables.remove(customFile.getName());
                }
            }
            
            // If forced sync is requested, we use the current time to ensure a new filename
            // and force the native engine to reload the table.
            if (forceSync) {
                timestamp = System.currentTimeMillis();
            }

            final String uniqueName = customFile.getName() + "_" + timestamp + ".ctb";
            File targetFile = new File(tablesDir, uniqueName);

            // Optimization: Only copy if the target doesn't exist or forced sync requested
            synchronized (this) {
                if (!targetFile.exists() || forceSync) {
                    try {
                        // Cleanup: remove old versioned files of the same custom table
                        final String baseNamePrefix = customFile.getName() + "_";
                        File[] oldFiles = tablesDir.listFiles(new java.io.FilenameFilter() {
                            @Override
                            public boolean accept(File dir, String name) {
                                return name.startsWith(baseNamePrefix) && !name.equals(uniqueName);
                            }
                        });
                        if (oldFiles != null) {
                            for (File old : oldFiles) {
                                old.delete();
                            }
                        }

                        copyFile(customFile, targetFile);
                        Log.i(LOG_TAG, (forceSync ? "Forced sync: " : "Updated ") + "unique custom table: " + targetFile.getAbsolutePath());
                    } catch (Exception e) {
                        Log.e(LOG_TAG, "Failed to copy custom table, using original path", e);
                        return tableName;
                    }
                }
            }
            return targetFile.getAbsolutePath();
        }
        // It's a system table
        File tableFile = new File(tablesDir, tableName);
        return tableFile.getAbsolutePath();
    }

    private void copyFile(File sourceFile, File destFile) throws java.io.IOException {
        try (java.nio.channels.FileChannel source = new java.io.FileInputStream(sourceFile).getChannel();
             java.nio.channels.FileChannel dest = new java.io.FileOutputStream(destFile).getChannel()) {
            dest.transferFrom(source, 0, source.size());
        }
    }

    private class ServiceImpl extends ITranslatorService.Stub {

        @Override
        public void setCallback(ITranslatorServiceCallback callback) {
            if (callback == null) {
                Log.e(LOG_TAG, "Received null callback");
                return;
            }
            TranslatorService.this.setCallback(callback);
        }

        @Override
        public TableInfo[] getTableInfos() {
            List<TableInfo> l = mTableList.getTables();
            Log.i(LOG_TAG, "Sending " + l.size() + " tables to client");
            for (TableInfo t : l) {
                Log.d(LOG_TAG, "Table: " + t.getId() + " (" + t.getVariant() + ")");
            }
            return l.toArray(new TableInfo[l.size()]);
        }

        @Override
        public boolean checkTable(String tableId) {
            if (tableId == null) {
                Log.e(LOG_TAG, "Received null table id in checkTable");
                return false;
            }
            if (!checkDataFiles()) {
                Log.w(LOG_TAG, "Data files not yet extracted for checkTable: " + tableId);
                return false;
            }
            String tableName = mTableList.getFileName(tableId);
            if (tableName == null) {
                Log.e(LOG_TAG, "Unknown table id in checkTable: " + tableId);
                return false;
            }
            String path = getTablePath(tableName);
            boolean exists = new File(path).exists();
            boolean result = LibLouisWrapper.checkTable(path);
            Log.i(LOG_TAG, "checkTable ID: " + tableId + " | File: " + tableName + " | Path: " + path + " | Exists: " + exists + " | Native result: " + result);
            return result;
        }

        @Override
        public TranslationResult translate(String text, String tableId,
                int cursorPosition, boolean computerBrailleAtCursor) {
            if (text == null) {
                Log.e(LOG_TAG, "Received null text in translate");
                return null;
            }
            if (tableId == null) {
                Log.e(LOG_TAG, "Received null table name in translate");
                return null;
            }
            if (!checkDataFiles()) {
                return null;
            }
            String tableName = mTableList.getFileName(tableId);
            if (tableName == null) {
                Log.e(LOG_TAG, "Unknown table id in translate: " + tableId);
                return null;
            }
            String path = getTablePath(tableName);
            Log.d(LOG_TAG, "Translating with table ID: " + tableId + " | Path: " + path);
            return LibLouisWrapper.translate(text, path, cursorPosition,
                    computerBrailleAtCursor);
        }

        @Override
        public String backTranslate(byte[] cells, String tableId) {
            if (cells == null) {
                Log.e(LOG_TAG, "Received null text in backTranslate");
                return null;
            }
            if (tableId == null) {
                Log.e(LOG_TAG, "Received null table name in backTranslate");
                return null;
            }
            if (!checkDataFiles()) {
                return null;
            }
            String tableName = mTableList.getFileName(tableId);
            if (tableName == null) {
                Log.e(LOG_TAG, "Unknown table id in backTranslate: "
                        + tableId);
                return null;
            }
            String path = getTablePath(tableName);
            Log.i(LOG_TAG, "Back-translating with table ID: " + tableId + " | Path: " + path);
            return LibLouisWrapper.backTranslate(cells, path);
        }
    }
}
