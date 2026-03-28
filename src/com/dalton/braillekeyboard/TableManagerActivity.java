/*
 * Copyright (C) 2016 The Soft Braille Keyboard Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.dalton.braillekeyboard;

import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.translate.TableInfo;

import androidx.appcompat.app.AppCompatActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.documentfile.provider.DocumentFile;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.OpenableColumns;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Modernized TableManagerActivity using Storage Access Framework (SAF).
 * Prevents failures on Android 10+ by avoiding direct legacy file access.
 */
public class TableManagerActivity extends AppCompatActivity {
    private static final String TAG = "TableManagerActivity";
    private static final String PREF_SYNC_FOLDER_URI = "sync_folder_uri";
    
    private ActivityResultLauncher<Uri> mSyncFolderLauncher;
    private ActivityResultLauncher<Intent> mPickFileLauncher;
    private ActivityResultLauncher<Intent> mExportFileLauncher;

    private CustomTableManager mManager;
    private ListView mListView;
    private ArrayAdapter<String> mAdapter;
    private String mPendingExportFileName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 1. Launcher for picking a sync folder (SAF)
        mSyncFolderLauncher = registerForActivityResult(
                new ActivityResultContracts.OpenDocumentTree(),
                uri -> {
                    if (uri != null) {
                        final int takeFlags = Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION;
                        try {
                            getContentResolver().takePersistableUriPermission(uri, takeFlags);
                            Options.getSharedPreferences(this).edit().putString(PREF_SYNC_FOLDER_URI, uri.toString()).apply();
                            Toast.makeText(this, R.string.msg_sync_success, Toast.LENGTH_SHORT).show();
                            refreshList();
                        } catch (Exception e) {
                            Log.e(TAG, "Error taking persistable permission", e);
                            Toast.makeText(this, R.string.msg_sync_error, Toast.LENGTH_SHORT).show();
                        }
                    }
                }
        );

        // 2. Launcher for picking a file to import (SAF)
        mPickFileLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                result -> {
                    if (result.getResultCode() == RESULT_OK && result.getData() != null) {
                        Uri uri = result.getData().getData();
                        if (uri != null) importTable(uri);
                    }
                }
        );

        // 3. Launcher for creating a file to export (SAF)
        mExportFileLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                result -> {
                    if (result.getResultCode() == RESULT_OK && result.getData() != null) {
                        Uri uri = result.getData().getData();
                        if (uri != null && mPendingExportFileName != null) {
                            performExport(mPendingExportFileName, uri);
                        }
                    }
                }
        );

        mManager = new CustomTableManager(this);

        setupLayout();
        refreshList();
    }

    private void setupLayout() {
        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(20, 20, 20, 20);

        Button addButton = new Button(this);
        addButton.setText(R.string.btn_import_table);
        addButton.setOnClickListener(v -> pickFile());
        layout.addView(addButton);

        Button createButton = new Button(this);
        createButton.setText(R.string.btn_create_table);
        createButton.setOnClickListener(v -> {
            startActivity(new Intent(this, TableCreatorActivity.class));
        });
        layout.addView(createButton);

        Button exportSysButton = new Button(this);
        exportSysButton.setText(R.string.btn_export_system_table);
        exportSysButton.setOnClickListener(v -> showExportSystemTableDialog());
        layout.addView(exportSysButton);

        Button syncButton = new Button(this);
        syncButton.setText(R.string.btn_sync_folder);
        syncButton.setOnClickListener(v -> pickSyncFolder());
        layout.addView(syncButton);

        android.widget.TextView tv = new android.widget.TextView(this);
        tv.setText(R.string.label_tap_to_edit);
        tv.setPadding(0, 20, 0, 10);
        layout.addView(tv);

        mListView = new ListView(this);
        mListView.setContentDescription(getString(R.string.label_tap_to_edit));
        layout.addView(mListView);

        setContentView(layout);
    }

    private void refreshList() {
        mManager.scanFiles();
        final List<TableInfo> internalTables = mManager.getTables();
        final List<String> names = new ArrayList<>();
        
        for (TableInfo t : internalTables) names.add(t.getVariant());

        // Check Synced Folder (SAF)
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    for (DocumentFile f : root.listFiles()) {
                        String name = f.getName();
                        if (name != null && (name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis"))) {
                            boolean exists = false;
                            for (TableInfo t : internalTables) {
                                if (t.getId().equals("custom:" + name)) { exists = true; break; }     
                            }
                            if (!exists) names.add(name + " [" + getString(R.string.label_external_synced) + "]");
                        }
                    }
                }
            } catch (Exception e) { Log.e(TAG, "Error scanning synced folder", e); }
        }

        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, names);
        mListView.setAdapter(mAdapter);

        mListView.setOnItemClickListener((parent, view, position, id) -> {
            String selectedName = names.get(position);
            if (selectedName.contains("[" + getString(R.string.label_external_synced) + "]")) {
                String fileName = selectedName.split(" \\[")[0];
                String syncUri = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);      
                if (syncUri != null) {
                    DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUri));
                    DocumentFile file = root.findFile(fileName);
                    if (file != null) importExternalTable(file);
                }
            } else {
                TableInfo table = null;
                for (TableInfo t : internalTables) {
                    if (t.getVariant().equals(selectedName)) { table = t; break; }
                }
                if (table != null) {
                    Intent intent = new Intent(this, TableCreatorActivity.class);
                    intent.putExtra("table_id", table.getId());
                    startActivity(intent);
                }
            }
        });

        mListView.setOnItemLongClickListener((parent, view, position, id) -> {
            String name = names.get(position);
            if (name.contains("[")) return false; // External
            
            TableInfo table = null;
            for (TableInfo t : internalTables) {
                if (t.getVariant().equals(name)) { table = t; break; }
            }
            if (table != null) {
                final TableInfo finalTable = table;
                String[] options = { getString(R.string.menu_share), getString(R.string.menu_delete) };
                new AlertDialog.Builder(this).setTitle(finalTable.getVariant()).setItems(options, (dialog, which) -> {
                    if (which == 0) shareTable(finalTable);
                    else if (which == 1) showDeleteConfirmation(finalTable);
                }).show();
            }
            return true;
        });
    }

    private void importTable(Uri uri) {
        String fileName = getFileNameFromUri(uri);
        if (fileName == null || (!fileName.endsWith(".ctb") && !fileName.endsWith(".utb") && !fileName.endsWith(".dis"))) {
            Toast.makeText(this, R.string.error_invalid_file, Toast.LENGTH_LONG).show();
            return;
        }

        try {
            File dest = mManager.getCustomTableFile(fileName);
            try (InputStream is = getContentResolver().openInputStream(uri);
                 OutputStream os = new FileOutputStream(dest)) {
                byte[] buffer = new byte[4096]; int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, String.format(getString(R.string.msg_imported), fileName), Toast.LENGTH_SHORT).show();
            refreshList();
        } catch (Exception e) {
            Toast.makeText(this, "Import failed: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private void importExternalTable(DocumentFile file) {
        new Thread(() -> {
            try {
                File dest = mManager.getCustomTableFile(file.getName());
                try (InputStream is = getContentResolver().openInputStream(file.getUri());
                     OutputStream os = new FileOutputStream(dest)) {
                    byte[] buffer = new byte[4096]; int read;
                    while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
                }
                runOnUiThread(() -> {
                    Toast.makeText(this, String.format(getString(R.string.msg_imported), file.getName()), Toast.LENGTH_SHORT).show();
                    refreshList();
                });
            } catch (Exception e) {
                runOnUiThread(() -> Toast.makeText(this, "Import failed", Toast.LENGTH_SHORT).show());
            }
        }).start();
    }

    private void showExportSystemTableDialog() {
        com.googlecode.eyesfree.braille.service.translate.TableList tableList = new com.googlecode.eyesfree.braille.service.translate.TableList(this);
        List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        tables.removeIf(t -> t.getId().startsWith("custom:"));

        boolean showExtended = Options.getBooleanPreference(this, R.string.pref_show_ext_tables_key,
                Boolean.parseBoolean(getString(R.string.pref_show_ext_tables_default)));

        if (!showExtended) {
            tables.removeIf(t -> t.getVariant() != null && t.getVariant().contains("[Ext]"));
        }
        
        Collections.sort(tables, (t1, t2) -> t1.getLocale().getDisplayName().compareTo(t2.getLocale().getDisplayName()));
        
        String[] items = new String[tables.size()];
        for (int i = 0; i < tables.size(); i++) {
            TableInfo t = tables.get(i);
            items[i] = t.getLocale().getDisplayName() + (t.isEightDot() ? " (8 dots)" : " (Grade " + t.getGrade() + ")");
        }

        new AlertDialog.Builder(this).setTitle(R.string.btn_export_system_table).setItems(items, (dialog, which) -> {
            String fileName = tableList.getFileName(tables.get(which).getId());
            if (fileName != null) startExport(fileName);
        }).show();
    }

    private void startExport(String fileName) {
        mPendingExportFileName = fileName;
        Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_TITLE, fileName);
        mExportFileLauncher.launch(intent);
    }

    private void performExport(String sourceFileName, Uri destUri) {
        try {
            File translatorDir = getDir("translator", MODE_PRIVATE);
            File sourceFile = new File(new File(translatorDir, "liblouis/tables"), sourceFileName);
            
            try (InputStream is = new FileInputStream(sourceFile);
                 OutputStream os = getContentResolver().openOutputStream(destUri)) {
                byte[] buffer = new byte[4096]; int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, R.string.msg_table_exported, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            Toast.makeText(this, "Export failed", Toast.LENGTH_SHORT).show();
        }
    }

    private void showDeleteConfirmation(TableInfo table) {
        final String fileName = table.getId().replace("custom:", "");
        final String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        
        android.widget.LinearLayout dialogLayout = new android.widget.LinearLayout(this);
        dialogLayout.setOrientation(android.widget.LinearLayout.VERTICAL);
        dialogLayout.setPadding(50, 20, 50, 20);

        android.widget.TextView msgView = new android.widget.TextView(this);
        msgView.setText(String.format(getString(R.string.confirm_delete_msg), table.getVariant()));
        msgView.setPadding(0, 0, 0, 20);
        dialogLayout.addView(msgView);

        final android.widget.CheckBox deleteExternalCheck = new android.widget.CheckBox(this);
        deleteExternalCheck.setText(R.string.msg_delete_external);
        deleteExternalCheck.setVisibility(View.GONE);
        
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.findFile(fileName) != null) {
                    deleteExternalCheck.setVisibility(View.VISIBLE);
                }
            } catch (Exception e) {}
        }
        dialogLayout.addView(deleteExternalCheck);

        new AlertDialog.Builder(this)
            .setTitle(R.string.confirm_delete_title)
            .setView(dialogLayout)
            .setPositiveButton(R.string.btn_delete, (d, w) -> {
                if (mManager.deleteTable(table.getId())) {
                    if (deleteExternalCheck.isChecked() && syncUriStr != null) {
                        try {
                            DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                            DocumentFile file = root.findFile(fileName);
                            if (file != null) file.delete();
                        } catch (Exception e) { Log.e(TAG, "Error deleting external file", e); }
                    }
                    Toast.makeText(this, R.string.msg_deleted, Toast.LENGTH_SHORT).show();
                    refreshList();
                }
            })
            .setNegativeButton(R.string.btn_cancel, null)
            .show();
    }

    private void shareTable(TableInfo table) {
        String fileName = table.getId().replace("custom:", "");
        File f = mManager.getCustomTableFile(fileName);
        if (!f.exists()) return;

        Uri uri = androidx.core.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", f);
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_STREAM, uri);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        startActivity(Intent.createChooser(intent, getString(R.string.title_share_table)));
    }

    private void pickSyncFolder() {
        new AlertDialog.Builder(this)
            .setTitle(R.string.btn_sync_folder)
            .setMessage(R.string.msg_sync_folder_desc)
            .setPositiveButton(R.string.btn_ok, (d, w) -> mSyncFolderLauncher.launch(null))
            .setNegativeButton(R.string.btn_cancel, null)
            .show();
    }

    private void pickFile() {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        mPickFileLauncher.launch(intent);
    }

    private String getFileNameFromUri(Uri uri) {
        String name = null;
        try (Cursor cursor = getContentResolver().query(uri, null, null, null, null)) {
            if (cursor != null && cursor.moveToFirst()) {
                name = cursor.getString(cursor.getColumnIndexOrThrow(OpenableColumns.DISPLAY_NAME));
            }
        } catch (Exception e) { Log.e(TAG, "Error getting filename", e); }
        if (name == null) {
            name = uri.getLastPathSegment();
            if (name != null && name.contains("/")) name = name.substring(name.lastIndexOf("/") + 1);
        }
        return name;
    }
}
