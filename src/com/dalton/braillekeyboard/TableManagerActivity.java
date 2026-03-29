package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import android.support.v4.provider.DocumentFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class TableManagerActivity extends Activity {
    private static final String TAG = "TableManagerActivity";
    private static final int PICK_FILE_REQUEST = 1;
    private static final int REQUEST_SYNC_FOLDER = 2;
    private static final String PREF_SYNC_FOLDER_URI = "sync_folder_uri";
    private CustomTableManager mManager;
    private ListView mListView;
    private ArrayAdapter<String> mAdapter;
    private List<TableInfo> mTables;
    private File mPendingFile;
    private DocumentFile mPendingDocument;

    private static final int REQUEST_STORAGE_PERMISSION = 100;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        mManager = new CustomTableManager(this);
        
        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(20, 20, 20, 20);
        
        Button addButton = new Button(this);
        addButton.setId(View.generateViewId());
        addButton.setText(R.string.btn_import_table);
        addButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pickFile();
            }
        });
        layout.addView(addButton);

        Button createButton = new Button(this);
        createButton.setId(View.generateViewId());
        createButton.setText(R.string.btn_create_table);
        createButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(TableManagerActivity.this, TableCreatorActivity.class);
                startActivity(intent);
            }
        });
        layout.addView(createButton);

        Button exportSysButton = new Button(this);
        exportSysButton.setId(View.generateViewId());
        exportSysButton.setText(R.string.btn_export_system_table);
        exportSysButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showExportSystemTableDialog();
            }
        });
        layout.addView(exportSysButton);

        Button syncButton = new Button(this);
        syncButton.setId(View.generateViewId());
        syncButton.setText(R.string.btn_sync_folder);
        syncButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pickSyncFolder();
            }
        });
        layout.addView(syncButton);
        
        android.widget.TextView tv = new android.widget.TextView(this);
        tv.setText(R.string.label_tap_to_edit);
        tv.setPadding(0, 20, 0, 10);
        layout.addView(tv);
        
        mListView = new ListView(this);
        mListView.setId(View.generateViewId());
        mListView.setContentDescription(getString(R.string.label_tap_to_edit));
        layout.addView(mListView);
        
        setContentView(layout);
        refreshList();
    }

    private void checkPermissionAndImport(File externalFile) {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M &&
            android.os.Build.VERSION.SDK_INT <= android.os.Build.VERSION_CODES.P) {
            if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                mPendingFile = externalFile;
                requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE_PERMISSION);
                return;
            }
        }
        importExternalTable(externalFile);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == REQUEST_STORAGE_PERMISSION) {
            if (grantResults.length > 0 && grantResults[0] == android.content.pm.PackageManager.PERMISSION_GRANTED) {
                if (mPendingFile != null) {
                    importExternalTable(mPendingFile);
                    mPendingFile = null;
                }
            } else {
                Toast.makeText(this, "Permission denied. Cannot import table.", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private void showDeleteConfirmation(final TableInfo table) {
        String fileName = table.getId();
        if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
        if (!fileName.endsWith(".ctb") && !fileName.endsWith(".utb") && !fileName.endsWith(".dis")) fileName += ".ctb";
        
        final String finalFileName = fileName;
        
        // Check for legacy File
        File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
        final File legacyFile = new File(new File(downloadsDir, "soft-braille"), finalFileName);
        
        // Check for SAF DocumentFile
        DocumentFile syncedFile = null;
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    syncedFile = root.findFile(finalFileName);
                }
            } catch (Exception e) {
                Log.e(TAG, "Error checking synced file for deletion", e);
            }
        }

        final boolean hasExternalCopy = legacyFile.exists() || (syncedFile != null && syncedFile.exists());
        final DocumentFile finalSyncedFile = syncedFile;

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.confirm_delete_title);
        
        // Custom layout for the dialog to include a checkbox
        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(50, 20, 50, 10);
        
        android.widget.TextView msg = new android.widget.TextView(this);
        msg.setText(String.format(getString(R.string.confirm_delete_msg), table.getVariant()));
        msg.setPadding(0, 0, 0, 20);
        layout.addView(msg);
        
        final android.widget.CheckBox checkBox = new android.widget.CheckBox(this);
        if (hasExternalCopy) {
            checkBox.setText(R.string.msg_delete_external);
            checkBox.setChecked(false);
            layout.addView(checkBox);
        }
        
        builder.setView(layout);
        builder.setPositiveButton(R.string.btn_delete, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (mManager.deleteTable(table.getId())) {
                    if (hasExternalCopy && checkBox.isChecked()) {
                        try {
                            boolean deleted = false;
                            // Try SAF first
                            if (finalSyncedFile != null && finalSyncedFile.exists()) {
                                deleted = finalSyncedFile.delete();
                            }
                            // Fallback to legacy
                            if (!deleted && legacyFile.exists()) {
                                deleted = legacyFile.delete();
                            }
                            
                            if (deleted) {
                                Log.d(TAG, "External file deleted: " + finalFileName);
                            } else {
                                Log.w(TAG, "Could not delete external file: " + finalFileName);
                            }
                        } catch (Exception e) {
                            Log.e(TAG, "Error deleting external file", e);
                        }
                    }
                    Toast.makeText(TableManagerActivity.this, R.string.msg_deleted, Toast.LENGTH_SHORT).show();
                    refreshList();
                }
            }
        });
        builder.setNegativeButton(R.string.btn_cancel, null);
        builder.show();
    }

    private void shareTable(TableInfo table) {
        try {
            String fileName = table.getId();
            if (fileName.startsWith("custom:")) {
                fileName = fileName.substring(7);
            }
            File f = mManager.getCustomTableFile(fileName);
            if (!f.exists()) {
                Toast.makeText(this, "File not found", Toast.LENGTH_SHORT).show();
                return;
            }

            Uri contentUri = android.support.v4.content.FileProvider.getUriForFile(this,
                    getPackageName() + ".fileprovider", f);

            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType("text/plain");
            intent.putExtra(Intent.EXTRA_STREAM, contentUri);
            intent.putExtra(Intent.EXTRA_SUBJECT, "Braille Table: " + table.getVariant());
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            startActivity(Intent.createChooser(intent, getString(R.string.title_share_table)));
        } catch (Exception e) {
            Log.e(TAG, "Error sharing table", e);
            Toast.makeText(this, "Error sharing table", Toast.LENGTH_SHORT).show();
        }
    }

    private void refreshList() {
        mManager.scanFiles();
        
        // Assicuriamoci che la cartella esterna esista per facilitare l'utente (PC/ADB)
        try {
            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();
        } catch (Exception e) {
            Log.e(TAG, "Error ensuring soft-braille directory exists", e);
        }

        final List<TableInfo> internalTables = mManager.getTables();
        final List<String> names = new ArrayList<>();
        
        // 1. Add internal tables
        for (TableInfo t : internalTables) {
            names.add(t.getVariant());
        }

        // 2. Scan for external tables
        // 2a. Via SAF DocumentFile (if synced)
        String syncUriStr = Options.getStringPreference(this, R.string.pref_app_version_title, null); // Use a dummy resource or better a constant
        // Let's use the constant directly instead of resource
        syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        
        if (syncUriStr != null) {
            try {
                Uri treeUri = Uri.parse(syncUriStr);
                DocumentFile root = DocumentFile.fromTreeUri(this, treeUri);
                if (root != null && root.exists()) {
                    DocumentFile[] files = root.listFiles();
                    for (DocumentFile f : files) {
                        String name = f.getName();
                        if (name != null && (name.endsWith(".ctb") || name.endsWith(".utb"))) {
                            boolean existsInternally = false;
                            for (TableInfo t : internalTables) {
                                if (t.getId().equals("custom:" + name)) {
                                    existsInternally = true;
                                    break;
                                }
                            }
                            if (!existsInternally) {
                                names.add(name + " [" + getString(R.string.label_external_synced) + "]");
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Error scanning synced folder", e);
            }
        }

        // 2b. Via Legacy File API (fallback or existing logic)
        try {
            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (softBrailleDir.exists()) {
                File[] externalFiles = softBrailleDir.listFiles();
                if (externalFiles != null) {
                    for (File f : externalFiles) {
                        String name = f.getName();
                        if (name.endsWith(".ctb") || name.endsWith(".utb")) {
                            boolean existsInternally = false;
                            for (TableInfo t : internalTables) {
                                if (t.getId().equals("custom:" + name)) {
                                    existsInternally = true;
                                    break;
                                }
                            }
                            // Only add if not already added by SAF and not exists internally
                            boolean alreadyAdded = false;
                            for (String n : names) {
                                if (n.startsWith(name)) { alreadyAdded = true; break; }
                            }
                            if (!existsInternally && !alreadyAdded) {
                                names.add(name + " [Download]");
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error scanning download folder", e);
        }

        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, names);
        mListView.setAdapter(mAdapter);
        
        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                if (position < 0 || position >= names.size()) return;
                String selectedName = names.get(position);
                
                if (selectedName.endsWith("[" + getString(R.string.label_external_synced) + "]")) {
                    String fileName = selectedName.replace(" [" + getString(R.string.label_external_synced) + "]", "");
                    String syncUriStr = Options.getSharedPreferences(TableManagerActivity.this).getString(PREF_SYNC_FOLDER_URI, null);
                    if (syncUriStr != null) {
                        DocumentFile root = DocumentFile.fromTreeUri(TableManagerActivity.this, Uri.parse(syncUriStr));
                        DocumentFile file = root.findFile(fileName);
                        if (file != null) checkPermissionAndImport(file);
                    }
                } else if (selectedName.endsWith("[Download]")) {
                    String fileName = selectedName.replace(" [Download]", "");
                    File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
                    File externalFile = new File(new File(downloadsDir, "soft-braille"), fileName);
                    checkPermissionAndImport(externalFile);
                } else {
                    TableInfo selectedTable = null;
                    for (TableInfo t : internalTables) {
                        if (t.getVariant().equals(selectedName)) {
                            selectedTable = t;
                            break;
                        }
                    }
                    if (selectedTable != null) {
                        Intent intent = new Intent(TableManagerActivity.this, TableCreatorActivity.class);
                        intent.putExtra("table_id", selectedTable.getId());
                        startActivity(intent);
                    }
                }
            }
        });

        mListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, final int position, long id) {
                if (position < 0 || position >= names.size()) return true;
                final String selectedName = names.get(position);
                
                // Se è una tabella esterna (non ancora importata), permettiamo solo l'importazione (già gestita dal click singolo)
                // oppure possiamo aggiungere opzioni specifiche se necessario. 
                // Per ora, le tabelle esterne non hanno menu di cancellazione diretta finché non sono importate.
                if (selectedName.endsWith("[Download]") || selectedName.endsWith("[" + getString(R.string.label_external_synced) + "]")) {
                    return false; // Lascia che il sistema gestisca altri eventi o non fare nulla
                }

                TableInfo selectedTable = null;
                for (TableInfo t : internalTables) {
                    if (t.getVariant().equals(selectedName)) {
                        selectedTable = t;
                        break;
                    }
                }

                if (selectedTable != null) {
                    final TableInfo finalTable = selectedTable;
                    String[] options = { getString(R.string.menu_share), getString(R.string.menu_delete) };
                    new AlertDialog.Builder(TableManagerActivity.this)
                        .setTitle(finalTable.getVariant())
                        .setItems(options, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                if (which == 0) shareTable(finalTable);
                                else if (which == 1) showDeleteConfirmation(finalTable);
                            }
                        }).show();
                }
                return true;
            }
        });
    }

    private void checkPermissionAndImport(DocumentFile externalFile) {
        // For SAF DocumentFile, we already have the URI permission from the tree
        importExternalTable(externalFile);
    }

    private void importExternalTable(DocumentFile externalFile) {
        try {
            File destFile = mManager.getCustomTableFile(externalFile.getName());
            try (InputStream is = getContentResolver().openInputStream(externalFile.getUri());
                 OutputStream os = new FileOutputStream(destFile)) {
                byte[] buffer = new byte[4096];
                int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, String.format(getString(R.string.msg_imported), externalFile.getName()), Toast.LENGTH_SHORT).show();
            refreshList();
            
            mManager.scanFiles();
            TableInfo table = null;
            for (TableInfo t : mManager.getTables()) {
                if (t.getId().equals("custom:" + externalFile.getName())) { table = t; break; }
            }
            if (table != null) {
                Intent intent = new Intent(this, TableCreatorActivity.class);
                intent.putExtra("table_id", table.getId());
                startActivity(intent);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error importing external document", e);
            Toast.makeText(this, "Import failed: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private void importExternalTable(File externalFile) {
        try {
            File destFile = mManager.getCustomTableFile(externalFile.getName());
            try (InputStream is = new FileInputStream(externalFile);
                 OutputStream os = new FileOutputStream(destFile)) {
                byte[] buffer = new byte[4096];
                int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, String.format(getString(R.string.msg_imported), externalFile.getName()), Toast.LENGTH_SHORT).show();
            refreshList();
            
            mManager.scanFiles();
            TableInfo table = null;
            for (TableInfo t : mManager.getTables()) {
                if (t.getId().equals("custom:" + externalFile.getName())) { table = t; break; }
            }
            if (table != null) {
                Intent intent = new Intent(this, TableCreatorActivity.class);
                intent.putExtra("table_id", table.getId());
                startActivity(intent);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error importing external table", e);
            Toast.makeText(this, "Import failed: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private void showExportSystemTableDialog() {
        final com.googlecode.eyesfree.braille.service.translate.TableList tableList = new com.googlecode.eyesfree.braille.service.translate.TableList(this);
        final List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        boolean showExtended = com.dalton.braillekeyboard.Options.getBooleanPreference(this, R.string.pref_show_ext_tables_key, 
                Boolean.parseBoolean(getString(R.string.pref_show_ext_tables_default)));

        for (int i = tables.size() - 1; i >= 0; i--) {
            TableInfo info = tables.get(i);
            if (info.getId().startsWith("custom:")) { tables.remove(i); continue; }
            if (!showExtended && info.getVariant() != null && info.getVariant().contains("[Ext]")) tables.remove(i);
        }
        
        Collections.sort(tables, (t1, t2) -> {
            String n1 = t1.getLocale().getDisplayName() + (t1.getVariant() != null ? t1.getVariant() : "");
            String n2 = t2.getLocale().getDisplayName() + (t2.getVariant() != null ? t2.getVariant() : "");
            return n1.compareTo(n2);
        });

        final String[] items = new String[tables.size()];
        for (int i = 0; i < tables.size(); i++) {
            TableInfo t = tables.get(i);
            String fileName = tableList.getFileName(t.getId());
            String label = t.getLocale().getDisplayName();
            if (t.getVariant() != null && !t.getVariant().isEmpty()) label += " " + t.getVariant();
            label += t.isEightDot() ? " (8 punti)" : " (Grado " + t.getGrade() + ")";
            if (fileName != null) label += " [" + fileName + "]";
            items[i] = label;
        }

        new AlertDialog.Builder(this)
            .setTitle(R.string.btn_export_system_table)
            .setItems(items, (dialog, which) -> {
                TableInfo selectedTable = tables.get(which);
                String fileName = tableList.getFileName(selectedTable.getId());
                if (fileName != null) exportSystemTable(fileName);
            })
            .setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void exportSystemTable(String fileName) {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M &&
            android.os.Build.VERSION.SDK_INT <= android.os.Build.VERSION_CODES.P) {
            if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_STORAGE_PERMISSION);
                return;
            }
        }
        try {
            File translatorDir = getDir("translator", MODE_PRIVATE);
            File tablesDir = new File(translatorDir, "liblouis/tables");
            File sourceFile = new File(tablesDir, fileName);
            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();
            File destFile = new File(softBrailleDir, fileName);
            try (InputStream is = new FileInputStream(sourceFile); OutputStream os = new FileOutputStream(destFile)) {
                byte[] buffer = new byte[4096]; int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, R.string.msg_table_exported, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            Log.e(TAG, "Error exporting system table", e);
            Toast.makeText(this, "Export failed: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void pickFile() {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        startActivityForResult(Intent.createChooser(intent, getString(R.string.title_select_table_file)), PICK_FILE_REQUEST);
    }

    private void pickSyncFolder() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.LOLLIPOP) {
            new AlertDialog.Builder(this)
                .setTitle(R.string.btn_sync_folder)
                .setMessage(R.string.msg_sync_desc)
                .setPositiveButton(R.string.btn_ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // 1. Assicuriamoci che la cartella esista (altrimenti il puntamento fallisce)
                        try {
                            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
                            File softBrailleDir = new File(downloadsDir, "soft-braille");
                            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();
                        } catch (Exception e) {
                            Log.e(TAG, "Could not ensure directory exists", e);
                        }

                        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
                        
                        // 2. Tenta di puntare direttamente alla cartella soft-braille
                        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                            // Uri speciale per la cartella Download/soft-braille nella memoria primaria
                            Uri initialUri = Uri.parse("content://com.android.externalstorage.documents/document/primary:Download%2Fsoft-braille");
                            intent.putExtra("android.provider.extra.INITIAL_URI", initialUri);
                        }
                        
                        startActivityForResult(intent, REQUEST_SYNC_FOLDER);
                    }
                })
                .setNegativeButton(R.string.btn_cancel, null)
                .show();
        } else {
            Toast.makeText(this, "Not supported on this Android version", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == PICK_FILE_REQUEST && resultCode == RESULT_OK && data != null) {
            Uri uri = data.getData();
            if (uri != null) importTable(uri);
        } else if (requestCode == REQUEST_SYNC_FOLDER && resultCode == RESULT_OK && data != null) {
            Uri uri = data.getData();
            if (uri != null) {
                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.KITKAT) {
                    final int takeFlags = data.getFlags()
                            & (Intent.FLAG_GRANT_READ_URI_PERMISSION
                            | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                    try {
                        getContentResolver().takePersistableUriPermission(uri, takeFlags);
                        Options.writeStringPreferenceStringKey(this, PREF_SYNC_FOLDER_URI, uri.toString());
                        Toast.makeText(this, R.string.msg_sync_success, Toast.LENGTH_SHORT).show();
                        refreshList();
                    } catch (Exception e) {
                        Log.e(TAG, "Error taking persistable permission", e);
                        Toast.makeText(this, R.string.msg_sync_error, Toast.LENGTH_SHORT).show();
                    }
                }
            }
        }
    }

    private void importTable(Uri uri) {
        try {
            String fileName = getFileName(uri);
            if (!fileName.endsWith(".ctb") && !fileName.endsWith(".utb") && !fileName.endsWith(".dis")) {       
                Toast.makeText(this, R.string.error_invalid_file, Toast.LENGTH_LONG).show(); return;
            }
            File destFile = mManager.getCustomTableFile(fileName);
            try (InputStream is = getContentResolver().openInputStream(uri); OutputStream os = new FileOutputStream(destFile)) {
                byte[] buffer = new byte[4096]; int read;
                while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
            }
            Toast.makeText(this, String.format(getString(R.string.msg_imported), fileName), Toast.LENGTH_SHORT).show();
            autoActivateTable(destFile);
            refreshList();
        } catch (Exception e) {
            Log.e(TAG, "Error importing table", e);
            Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), Toast.LENGTH_LONG).show();
        }
    }

    private void autoActivateTable(File f) {
        if (f == null || !f.exists()) return;
        boolean isEightDot = false;
        try (InputStream is = new java.io.FileInputStream(f);
             java.util.Scanner scanner = new java.util.Scanner(is, "UTF-8")) {
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine();
                if (line.contains("#+ dots: 8") || line.contains("latinLetterDef8Dots.uti") || line.contains("digits8Dots.uti")) {
                    isEightDot = true;
                    break;
                }
            }
        } catch (Exception e) { Log.e(TAG, "Error scanning for dots", e); }

        int prefKey = isEightDot ? 
            R.string.pref_braille_computer_table_key : 
            R.string.pref_braille_literary_table_key;
        Options.writeStringPreference(this, prefKey, "custom:" + f.getName());
    }

    private String getFileName(Uri uri) {        String path = uri.getPath();
        int cut = path.lastIndexOf('/');
        if (cut != -1) return path.substring(cut + 1);
        return "custom_table.ctb";
    }
}
