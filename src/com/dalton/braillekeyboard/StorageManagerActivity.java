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
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import android.view.Menu;
import android.view.MenuItem;

/**
 * Unified Storage Hub evoluto: gestisce file fisici e stato attivo della tastiera.
 */
public class StorageManagerActivity extends Activity {
    private static final String TAG = "StorageManager";
    private static final String PREF_SYNC_FOLDER_URI = "sync_folder_uri";
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
    private List<StorageItem> mItems = new ArrayList<StorageItem>();
    private List<String> mDisplayNames = new ArrayList<String>();
    private StorageItem mPendingItem;
    private CustomTableManager mTableManager;

    private static class StorageItem {
        String name;
        File legacyFile;
        DocumentFile documentFile;
        boolean isSynced;
        boolean isInternalTable;
        boolean isVirtual; // Elemento che rappresenta lo stato attivo (Abbr/Gesti)
        int virtualType;
        TableInfo tableInfo;

        StorageItem(String name, File file, DocumentFile doc, boolean synced) {
            this.name = name;
            this.legacyFile = file;
            this.documentFile = doc;
            this.isSynced = synced;
        }

        StorageItem(TableInfo info) {
            this.name = info.getVariant();
            this.tableInfo = info;
            this.isInternalTable = true;
        }

        StorageItem(String name, int type) {
            this.name = name;
            this.virtualType = type;
            this.isVirtual = true;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mMode = getIntent().getIntExtra(EXTRA_MODE, MODE_GENERAL);
        mTableManager = new CustomTableManager(this);

        updateTitle();

        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(20, 20, 20, 20);

        final Button btnSetupFolder = new Button(this);
        btnSetupFolder.setText(R.string.btn_setup_sync_folder);
        btnSetupFolder.setOnClickListener(v -> startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), REQUEST_SYNC_FOLDER));
        String syncUri = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        btnSetupFolder.setVisibility(syncUri == null ? View.VISIBLE : View.GONE);
        layout.addView(btnSetupFolder);

        TextView infoText = new TextView(this);
        infoText.setText(R.string.label_tap_to_edit);
        infoText.setPadding(0, 0, 0, 20);
        layout.addView(infoText);

        mListView = new ListView(this);
        layout.addView(mListView);

        android.widget.Button btnCreate = new android.widget.Button(this);
        btnCreate.setText(R.string.btn_create_new_table);
        btnCreate.setOnClickListener(v -> {
            Intent intent = new Intent(StorageManagerActivity.this, TableCreatorActivity.class);
            startActivity(intent);
        });
        if (mMode == MODE_TABLES || mMode == MODE_GENERAL) {
            layout.addView(btnCreate);
        }

        setContentView(layout);

        refreshList();

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                mPendingItem = mItems.get(position);
                if (mPendingItem.isVirtual) {
                    openVirtualEditor(mPendingItem.virtualType);
                } else if (mPendingItem.isInternalTable) {
                    Intent intent = new Intent(StorageManagerActivity.this, TableCreatorActivity.class);
                    intent.putExtra("table_id", mPendingItem.tableInfo.getId());
                    startActivity(intent);
                } else {
                    showImportConfirmation();
                }
            }
        });

        mListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                final StorageItem item = mItems.get(position);
                String[] options = { getString(R.string.menu_share), getString(R.string.menu_delete) };
                new AlertDialog.Builder(StorageManagerActivity.this)
                        .setTitle(item.name)
                        .setItems(options, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                if (which == 0) shareItem(item);
                                else if (which == 1) showDeleteConfirmation(item);
                            }
                        }).show();
                return true;
            }
        });
    }

    private void openVirtualEditor(int type) {
        Intent intent;
        if (type == MODE_ABBREVIATIONS) {
            intent = new Intent(this, AbbreviationEditorActivity.class);
        } else {
            intent = new Intent(this, GestureSettingsActivity.class);
        }
        startActivity(intent);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 1, 0, R.string.pref_sync_folder_title);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == 1) {
            startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), REQUEST_SYNC_FOLDER);
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

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
        new AlertDialog.Builder(this)
                .setTitle(R.string.btn_import)
                .setMessage(R.string.msg_confirm_import_generic)
                .setPositiveButton(R.string.btn_ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        checkPermissionAndImport();
                    }
                })
                .setNegativeButton(R.string.btn_cancel, null)
                .show();
    }

    private void checkPermissionAndImport() {
        if (mPendingItem.documentFile != null) {
            performImport(mPendingItem);
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M &&
            android.os.Build.VERSION.SDK_INT <= android.os.Build.VERSION_CODES.P) {
            if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE_PERMISSION);
                return;
            }
        }
        performImport(mPendingItem);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == REQUEST_STORAGE_PERMISSION && grantResults.length > 0 && grantResults[0] == android.content.pm.PackageManager.PERMISSION_GRANTED) {
            if (mPendingItem != null) performImport(mPendingItem);
        }
    }

    private void refreshList() {
        mItems.clear();
        mDisplayNames.clear();

        // Aggiunta elementi virtuali (Stato Attivo)
        if (mMode == MODE_GENERAL || mMode == MODE_ABBREVIATIONS) {
            mItems.add(new StorageItem(getString(R.string.label_active_abbreviations), MODE_ABBREVIATIONS));
            mDisplayNames.add(getString(R.string.label_active_abbreviations));
        }
        if (mMode == MODE_GENERAL || mMode == MODE_GESTURES) {
            mItems.add(new StorageItem(getString(R.string.label_active_gestures), MODE_GESTURES));
            mDisplayNames.add(getString(R.string.label_active_gestures));
        }

        if (mMode == MODE_TABLES || mMode == MODE_GENERAL) {
            mTableManager.scanFiles();
            for (TableInfo t : mTableManager.getTables()) {
                mItems.add(new StorageItem(t));
                mDisplayNames.add(t.getVariant());
            }
        }

        // Scan SAF
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    for (DocumentFile f : root.listFiles()) {
                        if (isValidForMode(f.getName())) {
                            if (!isAlreadyListed(f.getName())) {
                                mItems.add(new StorageItem(f.getName(), null, f, true));
                                mDisplayNames.add(f.getName() + " [" + getString(R.string.label_external_synced) + "]");
                            }
                        }
                    }
                }
            } catch (Exception e) { Log.e(TAG, "SAF error", e); }
        }

        // Scan Legacy
        try {
            File downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (softBrailleDir.exists()) {
                File[] files = softBrailleDir.listFiles();
                if (files != null) {
                    for (File f : files) {
                        if (isValidForMode(f.getName())) {
                            if (!isAlreadyListed(f.getName())) {
                                mItems.add(new StorageItem(f.getName(), f, null, false));
                                mDisplayNames.add(f.getName() + " [Download]");
                            }
                        }
                    }
                }
            }
        } catch (Exception e) { Log.e(TAG, "Legacy error", e); }

        mAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, mDisplayNames);
        mListView.setAdapter(mAdapter);
    }

    private boolean isValidForMode(String name) {
        if (name == null) return false;
        if (mMode == MODE_GENERAL) {
            return name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis") || name.endsWith(".json");
        }
        if (mMode == MODE_TABLES) return name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis");
        return name.endsWith(".json");
    }

    private boolean isAlreadyListed(String name) {
        for (StorageItem item : mItems) {
            if (item.isVirtual) continue;
            if (item.isInternalTable) {
                if (item.tableInfo.getId().equals("custom:" + name)) return true;
            } else if (item.name != null && item.name.equals(name)) return true;
        }
        return false;
    }

    private void performImport(StorageItem item) {
        try {
            File tempFile = new File(getCacheDir(), "temp_import_" + System.currentTimeMillis());
            InputStream is = item.documentFile != null ? getContentResolver().openInputStream(item.documentFile.getUri()) : new FileInputStream(item.legacyFile);
            try (FileOutputStream os = new FileOutputStream(tempFile)) {
                byte[] buffer = new byte[4096];
                int r;
                while ((r = is.read(buffer)) != -1) os.write(buffer, 0, r);
            }
            is.close();

            boolean success = false;
            int effectiveMode = mMode;
            if (mMode == MODE_GENERAL) {
                if (item.name.endsWith(".json")) {
                    if (item.name.contains("gestures")) effectiveMode = MODE_GESTURES;
                    else effectiveMode = MODE_ABBREVIATIONS;
                } else {
                    effectiveMode = MODE_TABLES;
                }
            }

            switch (effectiveMode) {
                case MODE_TABLES:
                    File destFile = mTableManager.getCustomTableFile(item.name);
                    try (FileInputStream fis = new FileInputStream(tempFile); FileOutputStream fos = new FileOutputStream(destFile)) {
                        byte[] buf = new byte[4096]; int r;
                        while ((r = fis.read(buf)) != -1) fos.write(buf, 0, r);
                    }
                    autoActivateTable(destFile);
                    success = true;
                    break;
                case MODE_ABBREVIATIONS:
                    success = AbbreviationManager.getInstance(this).importFromJson(tempFile);
                    break;
                case MODE_GESTURES:
                    success = GestureRepository.importFromJson(this, tempFile);
                    break;
            }

            if (success) {
                Toast.makeText(this, R.string.msg_import_success, Toast.LENGTH_SHORT).show();
                if (effectiveMode == MODE_TABLES) {
                    mTableManager.scanFiles();
                    TableInfo imported = null;
                    for (TableInfo t : mTableManager.getTables()) if (t.getId().equals("custom:" + item.name)) { imported = t; break; }
                    if (imported != null) {
                        Intent intent = new Intent(this, TableCreatorActivity.class);
                        intent.putExtra("table_id", imported.getId());
                        startActivity(intent);
                    }
                } else if (effectiveMode == MODE_ABBREVIATIONS) {
                    startActivity(new Intent(this, AbbreviationEditorActivity.class));
                } else if (effectiveMode == MODE_GESTURES) {
                    startActivity(new Intent(this, GestureSettingsActivity.class));
                }
                refreshList();
            } else {
                Toast.makeText(this, R.string.msg_import_error, Toast.LENGTH_SHORT).show();
            }
            tempFile.delete();
        } catch (Exception e) { Log.e(TAG, "Import fail", e); Toast.makeText(this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show(); }
    }

    private void autoActivateTable(File f) {
        boolean isEightDot = false;
        try (Scanner scanner = new Scanner(f, "UTF-8")) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                if (line.contains("#+ dots: 8") || line.contains("latinLetterDef8Dots.uti") || line.contains("digits8Dots.uti")) { isEightDot = true; break; }
            }
        } catch (Exception e) { Log.e(TAG, "Scan error", e); }
        int prefKey = isEightDot ? R.string.pref_braille_computer_table_key : R.string.pref_braille_literary_table_key;
        Options.writeStringPreference(this, prefKey, "custom:" + f.getName());
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
                File f = mTableManager.getCustomTableFile(fileName);
                uri = android.support.v4.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", f);
            } else if (item.documentFile != null) {
                uri = item.documentFile.getUri();
            } else {
                uri = android.support.v4.content.FileProvider.getUriForFile(this, getPackageName() + ".fileprovider", item.legacyFile);
            }
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType(uri.toString().endsWith(".json") || item.isVirtual ? "application/json" : "text/plain");
            intent.putExtra(Intent.EXTRA_STREAM, uri);
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(Intent.createChooser(intent, getString(R.string.menu_share)));
        } catch (Exception e) { Toast.makeText(this, "Share error", Toast.LENGTH_SHORT).show(); }
    }

    private void showDeleteConfirmation(StorageItem item) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.confirm_delete_title);
        
        // Layout personalizzato per includere la checkbox con margini corretti
        android.widget.LinearLayout dialogLayout = new android.widget.LinearLayout(this);
        dialogLayout.setOrientation(android.widget.LinearLayout.VERTICAL);
        int padding = (int) android.util.TypedValue.applyDimension(android.util.TypedValue.COMPLEX_UNIT_DIP, 20, getResources().getDisplayMetrics());
        dialogLayout.setPadding(padding, padding, padding, padding);

        TextView messageText = new TextView(this);
        if (item.isVirtual) messageText.setText(R.string.msg_confirm_clear_active);
        else messageText.setText(String.format(getString(R.string.confirm_delete_msg), item.name));
        dialogLayout.addView(messageText);

        final CheckBox cb = new CheckBox(this);
        cb.setText(R.string.checkbox_delete_backup_file);
        // La checkbox ha senso se l'elemento è virtuale (per eliminare il backup) 
        // o se stiamo eliminando una tabella interna (per eliminare il file sorgente)
        cb.setVisibility((item.isVirtual || item.isInternalTable) ? View.VISIBLE : View.GONE);
        cb.setPadding(0, padding/2, 0, 0);
        dialogLayout.addView(cb);

        builder.setView(dialogLayout);
        builder.setPositiveButton(R.string.btn_delete, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (item.isVirtual) {
                    deleteVirtualData(item.virtualType, cb.isChecked());
                } else {
                    if (cb.isChecked()) deleteBackupForInternalItem(item);
                    deleteItem(item);
                }
            }
        });
        
        builder.setNegativeButton(R.string.btn_cancel, null);
        builder.show();
    }

    private void deleteBackupForInternalItem(StorageItem item) {
        if (item.isInternalTable) {
            String fileName = item.tableInfo.getId();
            if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
            deleteBackupFile(fileName);
        }
    }

    private void deleteVirtualData(int type, boolean deleteBackup) {
        if (type == MODE_ABBREVIATIONS) {
            AbbreviationManager.getInstance(this).clearAll();
            if (deleteBackup) deleteBackupFile("abbreviations_backup.json");
        } else {
            GestureRepository.resetToDefaults(this);
            if (deleteBackup) deleteBackupFile("gestures_backup.json");
        }
        refreshList();
        Toast.makeText(this, R.string.msg_deleted, Toast.LENGTH_SHORT).show();
    }

    private void deleteBackupFile(String fileName) {
        // Elimina da Download
        File downloadsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        File f = new File(new File(downloadsDir, "soft-braille"), fileName);
        if (f.exists()) f.delete();
        
        // Elimina da SAF se possibile
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                DocumentFile backup = root.findFile(fileName);
                if (backup != null) backup.delete();
            } catch (Exception e) {}
        }
    }

    private void deleteItem(StorageItem item) {
        boolean deleted = false;
        if (item.isInternalTable) {
            deleted = mTableManager.deleteTable(item.tableInfo.getId());
        } else if (item.documentFile != null) {
            deleted = item.documentFile.delete();
        } else if (item.legacyFile != null) {
            deleted = item.legacyFile.delete();
        }
        
        if (deleted) {
            refreshList();
            Toast.makeText(this, R.string.msg_deleted, Toast.LENGTH_SHORT).show();
        }
    }
}
