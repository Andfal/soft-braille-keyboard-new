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

    private static final int FILES_ERROR = -1;
    private static final int FILES_NOT_EXTRACTED = 0;
    private static final int FILES_EXTRACTED = 1;

    // Written in main thread, read in binder threads.
    private final ServiceImpl mServiceImpl = new ServiceImpl();
    private final Set<ITranslatorServiceCallback> mPendingCallbacks =
            new HashSet<ITranslatorServiceCallback>();
    private int mDataFileState = FILES_NOT_EXTRACTED;
    private TableList mTableList;

    @Override
    public void onCreate() {
        super.onCreate();
        mTableList = new TableList(this);
        extractDataFiles();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        // TODO: Deallocate native data.
    }

    @Override
    public IBinder onBind(Intent intent) {
        return mServiceImpl;
    }

    private void extractDataFiles() {
        File tablesDir = getDir("translator", MODE_PRIVATE);
        // Do not clear directory every time if we want to preserve files, 
        // but here it's for system tables extracted from APK.
        clearDirectory(tablesDir);
        LibLouisWrapper.setTablesDir(tablesDir.getPath());
        ZipResourceExtractor extractor = new ZipResourceExtractor(
            this, R.raw.translationtables, tablesDir) {
            @Override
            protected void onPostExecute(Integer result) {
                synchronized (TranslatorService.this) {
                    if (result == RESULT_OK) {
                        mDataFileState = FILES_EXTRACTED;
                    } else {
                        Log.e(LOG_TAG, "Couldn't extract data files");
                        mDataFileState = FILES_ERROR;
                    }
                }
                callPendingOnInits();
            }
        };
        extractor.execute();
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
        File tablesDir = getDir("translator", MODE_PRIVATE);
        if (tableName.startsWith("/")) {
            // It's a custom table path. To allow Liblouis to find includes (UTIs)
            // which are in the translator directory, we copy the custom table 
            // to the translator directory first if it doesn't exist or is older.
            File customFile = new File(tableName);
            if (!customFile.exists()) {
                Log.e(LOG_TAG, "Custom table file not found: " + tableName);
                return tableName;
            }
            File targetFile = new File(tablesDir, customFile.getName());
            
            // Optimization: Only copy if the target doesn't exist or custom file is newer
            if (!targetFile.exists() || customFile.lastModified() > targetFile.lastModified()) {
                try {
                    copyFile(customFile, targetFile);
                    Log.i(LOG_TAG, "Updated custom table in translator dir: " + targetFile.getAbsolutePath());
                } catch (Exception e) {
                    Log.e(LOG_TAG, "Failed to copy custom table, using original path", e);
                    return tableName;
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
                return false;
            }
            String tableName = mTableList.getFileName(tableId);
            if (tableName == null) {
                Log.e(LOG_TAG, "Unknown table id in checkTable: " + tableId);
                return false;
            }
            return LibLouisWrapper.checkTable(getTablePath(tableName));
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
            return LibLouisWrapper.translate(text, getTablePath(tableName), cursorPosition,
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
            String tablePath = getTablePath(tableName);
            Log.i(LOG_TAG, "Performing backTranslate with table: " + tableId + " -> " + tablePath);
            return LibLouisWrapper.backTranslate(cells, tablePath);
        }
    }
}
