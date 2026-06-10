/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

package com.dalton.braillekeyboard;

import android.app.AlertDialog;
import android.content.Intent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.documentfile.provider.DocumentFile;

import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.translate.TableInfo;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Unified Hub for managing Tables, Abbreviations, and Gestures (Modernized).
 */
public class StorageManagerActivity extends AppCompatActivity {
    private static final String TAG = "StorageManagerActivity";
    public static final String EXTRA_MODE = "extra_mode";
    public static final int MODE_TABLES = 0;
    public static final int MODE_GESTURES = 1;
    public static final int MODE_ABBREVIATIONS = 2;

    private int mMode = MODE_TABLES;
    private CustomTableManager mTableManager;
    private AbbreviationManager mAbbreviationManager;
    
    private ListView mListView;
    private EditText mSearchEdit;
    private ItemAdapter mAdapter;
    private List<StorageItem> mAllItems = new ArrayList<>();
    private List<StorageItem> mDisplayedItems = new ArrayList<>();

    private ActivityResultLauncher<Uri> mSyncFolderLauncher;
    private ActivityResultLauncher<Intent> mExportLauncher;

    static class StorageItem {
        String name;
        String description;
        int type; // 0: Internal, 1: External, 2: System
        Object data;

        StorageItem(String n, String d, int t, Object obj) {
            name = n; description = d; type = t; data = obj;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_storage_manager);

        mMode = getIntent().getIntExtra(EXTRA_MODE, MODE_TABLES);
        mTableManager = new CustomTableManager(this);
        mAbbreviationManager = AbbreviationManager.getInstance(this);

        mListView = findViewById(R.id.list_items);
        mSearchEdit = findViewById(R.id.edit_search_items);
        Button btnSetup = findViewById(R.id.btn_setup_sync_folder);
        Button btnCreate = findViewById(R.id.btn_create_new_table);
        Button btnExportSys = findViewById(R.id.btn_export_system_manager);

        mSyncFolderLauncher = registerForActivityResult(
                new ActivityResultContracts.OpenDocumentTree(),
                uri -> {
                    if (uri != null) {
                        try {
                            getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                            Options.writeStringPreferenceStringKey(this, "sync_folder_uri", uri.toString());
                            btnSetup.setVisibility(View.GONE);
                            refreshList();
                        } catch (Exception e) { Log.e(TAG, "SAF error", e); }
                    }
                }
        );

        mExportLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                result -> {
                    if (result.getResultCode() == RESULT_OK && result.getData() != null) {
                        Uri uri = result.getData().getData();
                        if (uri != null) performExport(uri);
                    }
                }
        );

        String syncUri = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        btnSetup.setVisibility(syncUri == null ? View.VISIBLE : View.GONE);
        btnSetup.setOnClickListener(v -> mSyncFolderLauncher.launch(null));

        if (mMode != MODE_TABLES) {
            btnCreate.setVisibility(View.GONE);
            btnExportSys.setVisibility(View.GONE);
            setTitle(mMode == MODE_GESTURES ? R.string.pref_import_gestures_title : R.string.label_file_type_abbreviations);
        } else {
            setTitle(R.string.label_file_type_tables);
            btnCreate.setOnClickListener(v -> startActivity(new Intent(this, TableCreatorActivity.class)));
            btnExportSys.setOnClickListener(v -> showExportSystemDialog());
        }

        mSearchEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) { filter(s.toString()); }
            @Override public void afterTextChanged(Editable s) {}
        });

        mListView.setOnItemClickListener((parent, view, position, id) -> handleItemClick(mDisplayedItems.get(position)));
        mListView.setOnItemLongClickListener((parent, view, position, id) -> {
            handleItemLongClick(mDisplayedItems.get(position));
            return true;
        });

        refreshList();
    }

    private void refreshList() {
        mAllItems.clear();
        if (mMode == MODE_TABLES) loadTables();
        else if (mMode == MODE_GESTURES) loadExternalBackups("gestures_backup.json");
        else if (mMode == MODE_ABBREVIATIONS) loadExternalBackups("abbreviations_backup.json");
        filter(mSearchEdit.getText().toString());
    }

    private void loadTables() {
        mTableManager.scanFiles();
        for (TableInfo t : mTableManager.getTables()) {
            mAllItems.add(new StorageItem(t.getVariant(), t.getId(), 0, t));
        }
        
        String syncUriStr = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    for (DocumentFile f : root.listFiles()) {
                        String name = f.getName();
                        if (name != null && (name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis"))) {
                            boolean exists = false;
                            for (StorageItem item : mAllItems) if (item.name.equals(name) || item.description.equals("custom:" + name)) { exists = true; break; }
                            if (!exists) mAllItems.add(new StorageItem(name, "External Synced", 1, f));
                        }
                    }
                }
            } catch (Exception e) { Log.e(TAG, "SAF scan error", e); }
        }
    }

    private void loadExternalBackups(String fileName) {
        String syncUriStr = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    DocumentFile file = root.findFile(fileName);
                    if (file != null) mAllItems.add(new StorageItem(fileName, "Backup in Hub", 1, file));
                }
            } catch (Exception e) {}
        }
        
        File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
        File backup = new File(new File(downloadsDir, "soft-braille"), fileName);
        if (backup.exists()) mAllItems.add(new StorageItem(fileName, "Backup in Downloads", 0, backup));
    }

    private void filter(String text) {
        mDisplayedItems.clear();
        for (StorageItem item : mAllItems) {
            if (text.isEmpty() || item.name.toLowerCase().contains(text.toLowerCase())) mDisplayedItems.add(item);
        }
        mAdapter = new ItemAdapter(this, mDisplayedItems);
        mListView.setAdapter(mAdapter);
    }

    private void handleItemClick(StorageItem item) {
        if (mMode == MODE_TABLES) {
            if (item.type == 1) importTable((DocumentFile) item.data);
            else {
                Intent intent = new Intent(this, TableCreatorActivity.class);
                intent.putExtra("table_id", item.description);
                startActivity(intent);
            }
        } else if (mMode == MODE_GESTURES) {
            importGestures(item.data);
        } else if (mMode == MODE_ABBREVIATIONS) {
            importAbbreviations(item.data);
        }
    }

    private void handleItemLongClick(StorageItem item) {
        if (item.type != 0) return;
        new AlertDialog.Builder(this)
                .setTitle(item.name)
                .setItems(new String[]{getString(R.string.menu_share), getString(R.string.menu_delete)}, (dialog, which) -> {
                    if (which == 0) shareItem(item);
                    else deleteItem(item);
                }).show();
    }

    private void importTable(DocumentFile file) {
        try (InputStream is = getContentResolver().openInputStream(file.getUri());
             OutputStream os = new FileOutputStream(mTableManager.getCustomTableFile(file.getName()))) {
            byte[] buf = new byte[4096]; int len;
            while ((len = is.read(buf)) > 0) os.write(buf, 0, len);
            Toast.makeText(this, R.string.msg_imported, Toast.LENGTH_SHORT).show();
            refreshList();
        } catch (Exception e) { Log.e(TAG, "Import error", e); }
    }

    private void importGestures(Object data) {
        File f = (data instanceof DocumentFile) ? null : (File) data;
        boolean ok = false;
        if (f != null) ok = GestureRepository.importFromJson(this, f);
        else {
            try (InputStream is = getContentResolver().openInputStream(((DocumentFile) data).getUri())) {
                File temp = new File(getCacheDir(), "temp_gestures.json");
                try (OutputStream os = new FileOutputStream(temp)) {
                    byte[] buf = new byte[4096]; int len;
                    while ((len = is.read(buf)) > 0) os.write(buf, 0, len);
                }
                ok = GestureRepository.importFromJson(this, temp);
            } catch (Exception e) {}
        }
        if (ok) { Toast.makeText(this, R.string.msg_imported, Toast.LENGTH_SHORT).show(); setResult(RESULT_OK); finish(); }
    }

    private void importAbbreviations(Object data) {
        File f = (data instanceof DocumentFile) ? null : (File) data;
        boolean ok = false;
        if (f != null) ok = mAbbreviationManager.importFromJson(f);
        else {
            try (InputStream is = getContentResolver().openInputStream(((DocumentFile) data).getUri())) {
                File temp = new File(getCacheDir(), "temp_abbr.json");
                try (OutputStream os = new FileOutputStream(temp)) {
                    byte[] buf = new byte[4096]; int len;
                    while ((len = is.read(buf)) > 0) os.write(buf, 0, len);
                }
                ok = mAbbreviationManager.importFromJson(temp);
            } catch (Exception e) {}
        }
        if (ok) { Toast.makeText(this, R.string.msg_imported, Toast.LENGTH_SHORT).show(); setResult(RESULT_OK); finish(); }
    }

    private void deleteItem(StorageItem item) {
        if (mMode == MODE_TABLES && mTableManager.deleteTable(item.description)) refreshList();
        else if (item.data instanceof File && ((File) item.data).delete()) refreshList();
    }

    private void shareItem(StorageItem item) {
        File f = (item.data instanceof File) ? (File) item.data : null;
        if (f == null || !f.exists()) return;
        Uri uri = androidx.core.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", f);
        Intent intent = new Intent(Intent.ACTION_SEND).setType("text/plain").putExtra(Intent.EXTRA_STREAM, uri);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        startActivity(Intent.createChooser(intent, "Share"));
    }

    private void showExportSystemDialog() {
        com.googlecode.eyesfree.braille.service.translate.TableList tableList = new com.googlecode.eyesfree.braille.service.translate.TableList(this);
        List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        tables.removeIf(t -> t.getId().startsWith("custom:"));
        Collections.sort(tables, (t1, t2) -> t1.getLocale().getDisplayName().compareTo(t2.getLocale().getDisplayName()));
        
        String[] names = new String[tables.size()];
        for (int i = 0; i < tables.size(); i++) names[i] = tables.get(i).getVariant();

        new AlertDialog.Builder(this).setTitle(R.string.title_export_system).setItems(names, (d, w) -> {
            String fileName = tableList.getFileName(tables.get(w).getId());
            mPendingExportName = fileName;
            Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT).addCategory(Intent.CATEGORY_OPENABLE).setType("text/plain").putExtra(Intent.EXTRA_TITLE, fileName);
            mExportLauncher.launch(intent);
        }).show();
    }

    private String mPendingExportName;
    private void performExport(Uri destUri) {
        try {
            Context storageContext = getApplicationContext();
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
                storageContext = storageContext.createDeviceProtectedStorageContext();
            }
            File source = new File(new File(storageContext.getDir("translator", MODE_PRIVATE), "liblouis/tables"), mPendingExportName);
            try (InputStream is = new FileInputStream(source); OutputStream os = getContentResolver().openOutputStream(destUri)) {
                byte[] buf = new byte[4096]; int len;
                while ((len = is.read(buf)) > 0) os.write(buf, 0, len);
            }
            Toast.makeText(this, R.string.msg_table_exported, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {}
    }

    private class ItemAdapter extends ArrayAdapter<StorageItem> {
        ItemAdapter(android.content.Context ctx, List<StorageItem> items) { super(ctx, android.R.layout.simple_list_item_2, android.R.id.text1, items); }
        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View v = super.getView(position, convertView, parent);
            StorageItem item = getItem(position);
            ((TextView) v.findViewById(android.R.id.text1)).setText(item.name);
            ((TextView) v.findViewById(android.R.id.text2)).setText(item.description);
            return v;
        }
    }
}
