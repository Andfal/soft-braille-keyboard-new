import os
import re

file_path = r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\src\com\dalton\braillekeyboard\TableManagerActivity.java'

with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Update imports
imports_to_add = """
import androidx.appcompat.app.AppCompatActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.documentfile.provider.DocumentFile;
"""

# Replace old imports and class declaration
content = content.replace('import android.app.Activity;', imports_to_add)
content = content.replace('public class TableManagerActivity extends Activity {', 
                          'public class TableManagerActivity extends AppCompatActivity {')

# 2. Add class members
members_to_add = """
    private static final int REQUEST_SYNC_FOLDER = 2;
    private static final String PREF_SYNC_FOLDER_URI = "sync_folder_uri";
    private ActivityResultLauncher<Uri> mSyncFolderLauncher;
    private ActivityResultLauncher<Intent> mPickFileLauncher;
"""
content = re.sub(r'(private static final int PICK_FILE_REQUEST = 1;)', r'\1' + members_to_add, content)

# 3. Initialize launchers in onCreate
on_create_init = """
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

        mPickFileLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                result -> {
                    if (result.getResultCode() == RESULT_OK && result.getData() != null) {
                        Uri uri = result.getData().getData();
                        if (uri != null) importTable(uri);
                    }
                }
        );
"""

# Insert launchers init at the beginning of onCreate
content = re.sub(r'(mManager = new CustomTableManager\(this\);)', on_create_init + r'\n        \1', content)

# 4. Add Sync Button in onCreate
sync_button = """
        Button syncButton = new Button(this);
        syncButton.setId(View.generateViewId());
        syncButton.setText(R.string.btn_sync_folder);
        syncButton.setOnClickListener(v -> pickSyncFolder());
        layout.addView(syncButton);
"""
content = re.sub(r'(layout\.addView\(exportSysButton\);)', r'\1' + sync_button, content)

# 5. Update refreshList to ensure directory and use SAF
refresh_list_new = """
    private void refreshList() {
        mManager.scanFiles();
        
        // Ensure soft-braille dir exists
        try {
            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();
        } catch (Exception e) {
            Log.e(TAG, "Error ensuring directory exists", e);
        }

        final List<TableInfo> internalTables = mManager.getTables();
        final List<String> names = new ArrayList<>();

        // 1. Add internal tables
        for (TableInfo t : internalTables) {
            names.add(t.getVariant());
        }

        // 2. Scan for external tables
        // 2a. Via SAF DocumentFile (if synced)
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
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

        // 2b. Legacy Fallback
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
                                if (t.getId().equals("custom:" + name)) { existsInternally = true; break; }
                            }
                            boolean alreadyAdded = false;
                            for (String n : names) { if (n.startsWith(name)) { alreadyAdded = true; break; } }
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
"""
content = re.sub(r'private void refreshList\(\) \{.*?try \{.*?\} catch \(Exception e\) \{.*?Log\.e\(TAG, "Error scanning download folder", e\);.*?\}', 
                 refresh_list_new, content, flags=re.DOTALL)

# 6. Update OnItemClickListener in refreshList
click_listener_new = """
        mListView.setOnItemClickListener((parent, view, position, id) -> {
            if (position < 0 || position >= names.size()) return;
            String selectedName = names.get(position);

            if (selectedName.endsWith("[" + getString(R.string.label_external_synced) + "]")) {
                String fileName = selectedName.replace(" [" + getString(R.string.label_external_synced) + "]", "");
                String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
                if (syncUriStr != null) {
                    DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                    DocumentFile file = root.findFile(fileName);
                    if (file != null) importExternalTable(file);
                }
            } else if (selectedName.endsWith("[Download]")) {
                String fileName = selectedName.replace(" [Download]", "");
                File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
                File externalFile = new File(new File(downloadsDir, "soft-braille"), fileName);
                checkPermissionAndImport(externalFile);
            } else {
                TableInfo selectedTable = null;
                for (TableInfo t : internalTables) {
                    if (t.getVariant().equals(selectedName)) { selectedTable = t; break; }
                }
                if (selectedTable != null) {
                    Intent intent = new Intent(this, TableCreatorActivity.class);
                    intent.putExtra("table_id", selectedTable.getId());
                    startActivity(intent);
                }
            }
        });
"""
content = re.sub(r'mListView\.setOnItemClickListener\(new AdapterView\.OnItemClickListener\(\) \{.*?\}\);', 
                 click_listener_new, content, flags=re.DOTALL)

# 7. Update OnItemLongClickListener in refreshList
long_click_new = """
        mListView.setOnItemLongClickListener((parent, view, position, id) -> {
            if (position < 0 || position >= names.size()) return true;
            String selectedName = names.get(position);
            if (selectedName.endsWith("[Download]") || selectedName.endsWith("[" + getString(R.string.label_external_synced) + "]")) return false;

            TableInfo selectedTable = null;
            for (TableInfo t : internalTables) {
                if (t.getVariant().equals(selectedName)) { selectedTable = t; break; }
            }

            if (selectedTable != null) {
                final TableInfo finalTable = selectedTable;
                String[] options = { getString(R.string.menu_share), getString(R.string.menu_delete) };
                new AlertDialog.Builder(this)
                    .setTitle(finalTable.getVariant())
                    .setItems(options, (dialog, which) -> {
                        if (which == 0) shareTable(finalTable);
                        else if (which == 1) showDeleteConfirmation(finalTable);
                    }).show();
            }
            return true;
        });
"""
content = re.sub(r'mListView\.setOnItemLongClickListener\(new AdapterView\.OnItemLongClickListener\(\) \{.*?\}\);', 
                 long_click_new, content, flags=re.DOTALL)

# 8. Add importExternalTable(DocumentFile)
import_doc_file = """
    private void importExternalTable(DocumentFile externalFile) {
        new Thread(() -> {
            try {
                File destFile = mManager.getCustomTableFile(externalFile.getName());
                try (InputStream is = getContentResolver().openInputStream(externalFile.getUri());
                     OutputStream os = new FileOutputStream(destFile)) {
                    byte[] buffer = new byte[4096];
                    int read;
                    while ((read = is.read(buffer)) != -1) os.write(buffer, 0, read);
                }
                runOnUiThread(() -> {
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
                });
            } catch (Exception e) {
                Log.e(TAG, "Error importing external document", e);
                runOnUiThread(() -> Toast.makeText(this, "Import failed: " + e.getMessage(), Toast.LENGTH_LONG).show());
            }
        }).start();
    }
"""
content = content.replace('private void importExternalTable(File externalFile) {', 
                          import_doc_file + '\n    private void importExternalTable(File externalFile) {')

# 9. Update showDeleteConfirmation
delete_conf_new = """
    private void showDeleteConfirmation(final TableInfo table) {
        String fileName = table.getId();
        if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
        if (!fileName.endsWith(".ctb") && !fileName.endsWith(".utb")) fileName += ".ctb";

        final String finalFileName = fileName;
        File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
        final File legacyFile = new File(new File(downloadsDir, "soft-braille"), finalFileName);
        
        DocumentFile syncedFile = null;
        String syncUriStr = Options.getSharedPreferences(this).getString(PREF_SYNC_FOLDER_URI, null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) syncedFile = root.findFile(finalFileName);
            } catch (Exception e) { Log.e(TAG, "Error checking synced file", e); }
        }

        final boolean hasExternalCopy = legacyFile.exists() || (syncedFile != null && syncedFile.exists());
        final DocumentFile finalSyncedFile = syncedFile;

        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.confirm_delete_title);

        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(50, 20, 50, 10);

        android.widget.TextView msg = new android.widget.TextView(this);
        msg.setText(String.format(getString(R.string.confirm_delete_msg), table.getVariant()));
        msg.setPadding(0, 0, 0, 20);
        layout.addView(msg);

        final android.widget.CheckBox checkBox = new android.widget.CheckBox(this);
        if (hasExternalCopy) {
            checkBox.setText("Elimina anche dalla cartella Download");
            checkBox.setChecked(false);
            layout.addView(checkBox);
        }

        builder.setView(layout);
        builder.setPositiveButton(R.string.btn_delete, (dialog, which) -> {
            if (mManager.deleteTable(table.getId())) {
                if (hasExternalCopy && checkBox.isChecked()) {
                    try {
                        boolean deleted = false;
                        if (finalSyncedFile != null && finalSyncedFile.exists()) deleted = finalSyncedFile.delete();
                        if (!deleted && legacyFile.exists()) deleted = legacyFile.delete();
                    } catch (Exception e) { Log.e(TAG, "Error deleting external file", e); }
                }
                Toast.makeText(this, R.string.msg_deleted, Toast.LENGTH_SHORT).show(); 
                refreshList();
            }
        });
        builder.setNegativeButton(R.string.btn_cancel, null);
        builder.show();
    }
"""
content = re.sub(r'private void showDeleteConfirmation\(final TableInfo table\) \{.*?\}', 
                 delete_conf_new, content, flags=re.DOTALL)

# 10. Update pickSyncFolder and pickFile using launchers
pick_methods = """
    private void pickSyncFolder() {
        new AlertDialog.Builder(this)
            .setTitle(R.string.btn_sync_folder)
            .setMessage(R.string.msg_sync_desc)
            .setPositiveButton(R.string.btn_ok, (dialog, which) -> {
                Uri initialUri = null;
                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                    initialUri = Uri.parse("content://com.android.externalstorage.documents/document/primary:Download%2Fsoft-braille");
                }
                mSyncFolderLauncher.launch(initialUri);
            })
            .setNegativeButton(R.string.btn_cancel, null)
            .show();
    }

    private void pickFile() {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        mPickFileLauncher.launch(Intent.createChooser(intent, getString(R.string.title_select_table_file)));
    }
"""
# Replace old pickFile and onActivityResult and anything between
content = re.sub(r'private void pickFile\(\) \{.*?\}\n\n    @Override.*?protected void onActivityResult.*?\{.*?\}', 
                 pick_methods, content, flags=re.DOTALL)

with open(file_path, 'w', encoding='utf-8') as f:
    f.write(content)
