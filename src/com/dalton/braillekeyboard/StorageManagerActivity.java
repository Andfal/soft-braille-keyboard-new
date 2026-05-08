/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.provider.DocumentFile;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.*;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.service.translate.TableList;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

import android.view.Menu;
import android.view.MenuItem;

/**
 * Unified Storage Hub: gestisce file fisici, stato attivo e esportazione sistema.
 */
public class StorageManagerActivity extends Activity {
    private static final String TAG = "StorageManager";
    private static final String PREF_SYNC_FOLDER_URI = "sync_folder_uri";
    private static final String PREF_IMPORTED_ABBR = "imported_abbreviations_file";
    private static final String PREF_IMPORTED_GEST = "imported_gestures_file";
    private static final int REQUEST_STORAGE_PERMISSION = 100;
    private static final int REQUEST_SYNC_FOLDER = 200;
    
    public static final String EXTRA_MODE = "storage_mode";
    public static final int MODE_TABLES = 0;
    public static final int MODE_ABBREVIATIONS = 1;
    public static final int MODE_GESTURES = 2;
    public static final int MODE_GENERAL = 3;

    private int mMode;
    private ListView mListView;
    private ArrayAdapter<String> mAdapter;
    private List<StorageItem> mAllItems = new ArrayList<StorageItem>();
    private List<StorageItem> mFilteredItems = new ArrayList<StorageItem>();
    private List<String> mDisplayNames = new ArrayList<String>();
    private StorageItem mPendingItem;
    private CustomTableManager mTableManager;
    private EditText mSearchEdit;

    private static class StorageItem {
        String name;
        File legacyFile;
        DocumentFile documentFile;
        boolean isSynced;
        boolean isInternalTable;
        boolean isVirtual;
        int virtualType;
        TableInfo tableInfo;

        StorageItem(String name, File file, DocumentFile doc, boolean synced) {
            this.name = name; this.legacyFile = file; this.documentFile = doc; this.isSynced = synced;
        }

        StorageItem(TableInfo info) {
            this.name = info.getVariant(); this.tableInfo = info; this.isInternalTable = true;
        }

        StorageItem(String name, int type) {
            this.name = name; this.virtualType = type; this.isVirtual = true;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_storage_manager);
        mMode = getIntent().getIntExtra(EXTRA_MODE, MODE_GENERAL);
        mTableManager = new CustomTableManager(this);

        updateTitle();

        final Button btnSetupFolder = (Button) findViewById(R.id.btn_setup_sync_folder);
        btnSetupFolder.setOnClickListener(v -> startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), REQUEST_SYNC_FOLDER));
        String syncUri = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        btnSetupFolder.setVisibility(syncUri == null ? View.VISIBLE : View.GONE);

        mSearchEdit = (EditText) findViewById(R.id.edit_search_items);
        mListView = (ListView) findViewById(R.id.list_items);
        
        Button btnCreate = (Button) findViewById(R.id.btn_create_new_table);
        btnCreate.setOnClickListener(v -> startActivity(new Intent(StorageManagerActivity.this, TableCreatorActivity.class)));
        btnCreate.setVisibility((mMode == MODE_TABLES || mMode == MODE_GENERAL) ? View.VISIBLE : View.GONE);

        Button btnExportSystem = (Button) findViewById(R.id.btn_export_system_manager);
        btnExportSystem.setOnClickListener(v -> showExportSystemDialog());
        btnExportSystem.setVisibility((mMode == MODE_TABLES || mMode == MODE_GENERAL) ? View.VISIBLE : View.GONE);

        mAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, mDisplayNames);
        mListView.setAdapter(mAdapter);

        mSearchEdit.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) { filterList(s.toString()); }
            @Override public void afterTextChanged(Editable s) {}
        });

        refreshList();

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                mPendingItem = mFilteredItems.get(position);
                if (mPendingItem.isVirtual) openVirtualEditor(mPendingItem.virtualType);
                else if (mPendingItem.isInternalTable) {
                    Intent intent = new Intent(StorageManagerActivity.this, TableCreatorActivity.class);
                    intent.putExtra("table_id", mPendingItem.tableInfo.getId());
                    startActivity(intent);
                } else showImportConfirmation();
            }
        });

        mListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                final StorageItem item = mFilteredItems.get(position);
                String[] options = { getString(R.string.menu_share), getString(R.string.menu_delete) };
                new AlertDialog.Builder(StorageManagerActivity.this).setTitle(item.name)
                        .setItems(options, (dialog, which) -> {
                            if (which == 0) shareItem(item);
                            else if (which == 1) showDeleteConfirmation(item);
                        }).show();
                return true;
            }
        });
    }

    private void filterList(String query) {
        mFilteredItems.clear();
        mDisplayNames.clear();
        String q = query.toLowerCase();
        for (StorageItem item : mAllItems) {
            if (item.name != null && item.name.toLowerCase().contains(q)) {
                mFilteredItems.add(item);
                String displayName = item.name;
                if (item.isSynced) displayName += " [" + getString(R.string.label_external_synced) + "]";
                else if (item.legacyFile != null) displayName += " [Download]";
                mDisplayNames.add(displayName);
            }
        }
        mAdapter.notifyDataSetChanged();
    }

    private void showExportSystemDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.title_export_system);

        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(30, 20, 30, 20);

        final EditText searchTables = new EditText(this);
        searchTables.setHint(R.string.hint_search_tables);
        layout.addView(searchTables);

        final ListView lv = new ListView(this);
        final List<String> allFiles = new ArrayList<>();
        final List<String> allLabels = new ArrayList<>();
        final List<String> filteredLabels = new ArrayList<>();
        final List<String> filteredFiles = new ArrayList<>();

        class TableEntry implements Comparable<TableEntry> {
            String label; String fileName;
            TableEntry(String l, String f) { label = l; fileName = f; }
            @Override public int compareTo(TableEntry o) { return label.compareToIgnoreCase(o.label); }
        }
        List<TableEntry> entries = new ArrayList<>();

        TableList tableList = new TableList(this);
        for (TableInfo info : tableList.getTables()) {
            if (info.getId().startsWith("custom:")) continue;
            String fileName = tableList.getFileName(info.getId());
            if (fileName != null && !fileName.endsWith(".tbl")) {
                String label = info.getLocale().getDisplayName() + (info.getVariant() != null ? " " + info.getVariant() : "");
                label += info.isEightDot() ? " (8pt)" : " (G" + info.getGrade() + ")";
                label += " [" + fileName + "]";
                entries.add(new TableEntry(label, fileName));
            }
        }
        
        Collections.sort(entries);
        for (TableEntry e : entries) {
            allLabels.add(e.label);
            allFiles.add(e.fileName);
        }
        
        filteredLabels.addAll(allLabels);
        filteredFiles.addAll(allFiles);

        final ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, filteredLabels);
        lv.setAdapter(adapter);
        layout.addView(lv);
        builder.setView(layout);

        final AlertDialog dialog = builder.create();

        searchTables.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                filteredLabels.clear(); filteredFiles.clear();
                String q = s.toString().toLowerCase();
                for (int i=0; i<allLabels.size(); i++) {
                    if (allLabels.get(i).toLowerCase().contains(q)) {
                        filteredLabels.add(allLabels.get(i));
                        filteredFiles.add(allFiles.get(i));
                    }
                }
                adapter.notifyDataSetChanged();
            }
            @Override public void afterTextChanged(Editable s) {}
        });

        lv.setOnItemClickListener((parent, view, position, id) -> {
            exportSpecificSystemTable(filteredFiles.get(position));
            dialog.dismiss();
        });

        builder.setNegativeButton(R.string.btn_cancel, null);
        dialog.show();
    }

    private void exportSpecificSystemTable(String fileName) {
        File tableDir = new File(getDir("translator", MODE_PRIVATE), "liblouis/tables");
        File sourceFile = new File(tableDir, fileName);
        if (!sourceFile.exists()) { Toast.makeText(this, R.string.msg_table_file_not_found, 0).show(); return; }
        try {
            File exportDir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "soft-braille");
            if (!exportDir.exists() && !exportDir.mkdirs()) return;
            File outFile = new File(exportDir, fileName);
            try (FileInputStream fis = new FileInputStream(sourceFile); FileOutputStream fos = new FileOutputStream(outFile)) {
                byte[] buffer = new byte[1024]; int len;
                while ((len = fis.read(buffer)) > 0) fos.write(buffer, 0, len);
            }
            Toast.makeText(this, String.format(getString(R.string.msg_exported_to), outFile.getAbsolutePath()), Toast.LENGTH_LONG).show();
        } catch (Exception e) { Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), 0).show(); }
    }

    private void openVirtualEditor(int type) {
        startActivity(new Intent(this, type == MODE_ABBREVIATIONS ? AbbreviationEditorActivity.class : GestureSettingsActivity.class));
    }

    @Override public boolean onCreateOptionsMenu(Menu menu) { menu.add(0, 1, 0, R.string.pref_sync_folder_title); return true; }
    @Override public boolean onOptionsItemSelected(MenuItem item) { if (item.getItemId() == 1) { startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), REQUEST_SYNC_FOLDER); return true; } return super.onOptionsItemSelected(item); }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == REQUEST_SYNC_FOLDER && resultCode == RESULT_OK && data != null) {
            Uri uri = data.getData();
            getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            Options.writeStringPreferenceStringKey(this, PREF_SYNC_FOLDER_URI, uri.toString());
            refreshList();
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void updateTitle() {
        switch (mMode) {
            case MODE_TABLES: setTitle(R.string.label_file_type_tables); break;
            case MODE_ABBREVIATIONS: setTitle(R.string.label_file_type_abbreviations); break;
            case MODE_GESTURES: setTitle(R.string.label_file_type_gestures); break;
            case MODE_GENERAL: setTitle(R.string.title_storage_manager); break;
        }
    }

    private void showImportConfirmation() {
        new AlertDialog.Builder(this).setTitle(R.string.btn_import).setMessage(R.string.msg_confirm_import_generic)
                .setPositiveButton(R.string.btn_ok, (dialog, which) -> checkPermissionAndImport())
                .setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void checkPermissionAndImport() {
        if (mPendingItem.documentFile != null) { performImport(mPendingItem); return; }
        if (android.os.Build.VERSION.SDK_INT >= 23 && android.os.Build.VERSION.SDK_INT <= 28) {
            if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != 0) {
                requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE_PERMISSION);
                return;
            }
        }
        performImport(mPendingItem);
    }

    @Override public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) { if (requestCode == REQUEST_STORAGE_PERMISSION && grantResults.length > 0 && grantResults[0] == 0) if (mPendingItem != null) performImport(mPendingItem); }

    private void refreshList() {
        mAllItems.clear();
        android.content.SharedPreferences prefs = Options.getSharedPreferences(this);
        if (mMode == MODE_GENERAL || mMode == MODE_ABBREVIATIONS) {
            String label = getString(R.string.label_active_abbreviations);
            String saved = prefs.getString(PREF_IMPORTED_ABBR, null);
            if (saved != null) label += " (" + saved + ")";
            mAllItems.add(new StorageItem(label, MODE_ABBREVIATIONS));
        }
        if (mMode == MODE_GENERAL || mMode == MODE_GESTURES) {
            String label = getString(R.string.label_active_gestures);
            String saved = prefs.getString(PREF_IMPORTED_GEST, null);
            if (saved != null) label += " (" + saved + ")";
            mAllItems.add(new StorageItem(label, MODE_GESTURES));
        }
        if (mMode == MODE_TABLES || mMode == MODE_GENERAL) {
            mTableManager.scanFiles();
            for (TableInfo t : mTableManager.getTables()) mAllItems.add(new StorageItem(t));
        }
        String syncUriStr = prefs.getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) for (DocumentFile f : root.listFiles()) if (isValidForMode(f.getName()) && !isAlreadyListed(f.getName())) mAllItems.add(new StorageItem(f.getName(), null, f, true));
            } catch (Exception e) {}
        }
        try {
            File softBrailleDir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "soft-braille");
            if (softBrailleDir.exists()) {
                File[] files = softBrailleDir.listFiles();
                if (files != null) for (File f : files) if (isValidForMode(f.getName()) && !isAlreadyListed(f.getName())) mAllItems.add(new StorageItem(f.getName(), f, null, false));
            }
        } catch (Exception e) {}
        filterList(mSearchEdit != null ? mSearchEdit.getText().toString() : "");
    }

    private boolean isValidForMode(String name) { if (name == null) return false; if (mMode == MODE_GENERAL) return name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis") || name.endsWith(".json"); if (mMode == MODE_TABLES) return name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis"); return name.endsWith(".json"); }

    private boolean isAlreadyListed(String name) {
        android.content.SharedPreferences prefs = Options.getSharedPreferences(this);
        for (StorageItem item : mAllItems) {
            if (item.isVirtual) {
                if (item.virtualType == MODE_ABBREVIATIONS && name.equals(prefs.getString(PREF_IMPORTED_ABBR, null))) return true;
                if (item.virtualType == MODE_GESTURES && name.equals(prefs.getString(PREF_IMPORTED_GEST, null))) return true;
                continue;
            }
            if (item.isInternalTable && item.tableInfo.getId().equals("custom:" + name)) return true;
            else if (item.name != null && item.name.equals(name)) return true;
        }
        return false;
    }

    private void performImport(StorageItem item) {
        try {
            File tempFile = new File(getCacheDir(), "temp_import_" + System.currentTimeMillis());
            InputStream is = item.documentFile != null ? getContentResolver().openInputStream(item.documentFile.getUri()) : new FileInputStream(item.legacyFile);
            try (FileOutputStream os = new FileOutputStream(tempFile)) {
                byte[] buffer = new byte[4096]; int r;
                while ((r = is.read(buffer)) != -1) os.write(buffer, 0, r);
            }
            is.close();
            boolean success = false;
            int effectiveMode = mMode;
            if (mMode == MODE_GENERAL) {
                if (item.name.endsWith(".json")) effectiveMode = item.name.contains("gestures") ? MODE_GESTURES : MODE_ABBREVIATIONS;
                else effectiveMode = MODE_TABLES;
            }
            switch (effectiveMode) {
                case MODE_TABLES:
                    File destFile = mTableManager.getCustomTableFile(item.name);
                    try (FileInputStream fis = new FileInputStream(tempFile); FileOutputStream fos = new FileOutputStream(destFile)) {
                        byte[] buf = new byte[4096]; int r;
                        while ((r = fis.read(buf)) != -1) fos.write(buf, 0, r);
                    }
                    autoActivateTable(destFile); success = true;
                    break;
                case MODE_ABBREVIATIONS:
                    success = AbbreviationManager.getInstance(this).importFromJson(tempFile);
                    if (success) Options.getSharedPreferences(this).edit().putString(PREF_IMPORTED_ABBR, item.name).apply();
                    break;
                case MODE_GESTURES:
                    success = GestureRepository.importFromJson(this, tempFile);
                    if (success) Options.getSharedPreferences(this).edit().putString(PREF_IMPORTED_GEST, item.name).apply();
                    break;
            }
            if (success) {
                Toast.makeText(this, R.string.msg_import_success, 0).show();
                if (effectiveMode == MODE_TABLES) {
                    mTableManager.scanFiles();
                    for (TableInfo t : mTableManager.getTables()) if (t.getId().equals("custom:" + item.name)) {
                        Intent intent = new Intent(this, TableCreatorActivity.class);
                        intent.putExtra("table_id", t.getId());
                        startActivity(intent); break;
                    }
                } else if (effectiveMode == MODE_ABBREVIATIONS) startActivity(new Intent(this, AbbreviationEditorActivity.class));
                else if (effectiveMode == MODE_GESTURES) startActivity(new Intent(this, GestureSettingsActivity.class));
                refreshList();
            } else Toast.makeText(this, R.string.msg_import_error, 0).show();
            tempFile.delete();
        } catch (Exception e) { Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), 0).show(); }
    }

    private void autoActivateTable(File f) {
        boolean isEightDot = false;
        try (Scanner scanner = new Scanner(f, "UTF-8")) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                if (line.contains("#+ dots: 8") || line.contains("latinLetterDef8Dots.uti") || line.contains("digits8Dots.uti")) { isEightDot = true; break; }
            }
        } catch (Exception e) {}
        Options.writeStringPreference(this, isEightDot ? R.string.pref_braille_computer_table_key : R.string.pref_braille_literary_table_key, "custom:" + f.getName());
    }

    private void shareItem(StorageItem item) {
        try {
            Uri uri;
            if (item.isVirtual) {
                File tempShare = new File(getCacheDir(), "active_backup_share.json");
                if (item.virtualType == MODE_ABBREVIATIONS) AbbreviationManager.getInstance(this).exportToJson(tempShare);
                else GestureRepository.exportToJson(this, tempShare);
                uri = android.support.v4.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", tempShare);
            } else if (item.isInternalTable) {
                String fileName = item.tableInfo.getId();
                if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
                uri = android.support.v4.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", mTableManager.getCustomTableFile(fileName));
            } else if (item.documentFile != null) uri = item.documentFile.getUri();
            else uri = android.support.v4.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", item.legacyFile);
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType(uri.toString().endsWith(".json") || item.isVirtual ? "application/json" : "text/plain");
            intent.putExtra(Intent.EXTRA_STREAM, uri);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(Intent.createChooser(intent, getString(R.string.menu_share)));
        } catch (Exception e) { Toast.makeText(this, R.string.msg_share_error, 0).show(); }
    }

    private void showDeleteConfirmation(StorageItem item) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this); builder.setTitle(R.string.confirm_delete_title);
        LinearLayout dialogLayout = new LinearLayout(this); dialogLayout.setOrientation(LinearLayout.VERTICAL);
        int padding = (int) android.util.TypedValue.applyDimension(android.util.TypedValue.COMPLEX_UNIT_DIP, 20, getResources().getDisplayMetrics());
        dialogLayout.setPadding(padding, padding, padding, padding);
        TextView messageText = new TextView(this);
        if (item.isVirtual) messageText.setText(R.string.msg_confirm_clear_active);
        else messageText.setText(String.format(getString(R.string.confirm_delete_msg), item.name));
        dialogLayout.addView(messageText);
        final CheckBox cb = new CheckBox(this); cb.setText(R.string.msg_delete_external);
        cb.setVisibility((item.isVirtual || item.isInternalTable) ? View.VISIBLE : View.GONE);
        cb.setPadding(0, padding/2, 0, 0); dialogLayout.addView(cb);
        builder.setView(dialogLayout);
        builder.setPositiveButton(R.string.btn_delete, (dialog, which) -> {
            if (item.isVirtual) deleteVirtualData(item.virtualType, cb.isChecked());
            else { if (cb.isChecked() && item.isInternalTable) deleteBackupFile(item.tableInfo.getId().replace("custom:", "")); deleteItem(item); }
        });
        builder.setNegativeButton(R.string.btn_cancel, null); builder.show();
    }

    private void deleteVirtualData(int type, boolean deleteBackup) {
        android.content.SharedPreferences prefs = Options.getSharedPreferences(this);
        if (type == MODE_ABBREVIATIONS) { AbbreviationManager.getInstance(this).clearAll(); if (deleteBackup) deleteBackupFile(prefs.getString(PREF_IMPORTED_ABBR, "abbreviations_backup.json")); prefs.edit().remove(PREF_IMPORTED_ABBR).apply(); }
        else { GestureRepository.resetToDefaults(this); if (deleteBackup) deleteBackupFile(prefs.getString(PREF_IMPORTED_GEST, "gestures_backup.json")); prefs.edit().remove(PREF_IMPORTED_GEST).apply(); }
        refreshList(); Toast.makeText(this, R.string.msg_deleted, 0).show();
    }

    private void deleteBackupFile(String fileName) {
        File f = new File(new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "soft-braille"), fileName);
        if (f.exists()) f.delete();
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) { try { DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr)); DocumentFile backup = root.findFile(fileName); if (backup != null) backup.delete(); } catch (Exception e) {} }
    }

    private void deleteItem(StorageItem item) {
        boolean deleted = false;
        if (item.isInternalTable) deleted = mTableManager.deleteTable(item.tableInfo.getId());
        else if (item.documentFile != null) deleted = item.documentFile.delete();
        else if (item.legacyFile != null) deleted = item.legacyFile.delete();
        if (deleted) {
            android.content.SharedPreferences prefs = Options.getSharedPreferences(this);
            if (item.name != null) { if (item.name.equals(prefs.getString(PREF_IMPORTED_ABBR, null))) prefs.edit().remove(PREF_IMPORTED_ABBR).apply(); if (item.name.equals(prefs.getString(PREF_IMPORTED_GEST, null))) prefs.edit().remove(PREF_IMPORTED_GEST).apply(); }
            refreshList(); Toast.makeText(this, R.string.msg_deleted, 0).show();
        }
    }
}
