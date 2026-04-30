/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

package com.dalton.braillekeyboard;

import androidx.appcompat.app.AppCompatActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.documentfile.provider.DocumentFile;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Activity per gestire l'elenco delle abbreviazioni (Modernized for AndroidX/SAF).
 */
public class AbbreviationEditorActivity extends AppCompatActivity {
    private static final String TAG = "AbbreviationEditorActivity";
    private AbbreviationManager manager;
    private ListView listView;
    private AbbreviationAdapter adapter;
    private List<String> shortcutList;
    
    private ActivityResultLauncher<Uri> mSyncFolderLauncher;
    private ActivityResultLauncher<Intent> mImportLauncher;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_abbreviations);

        mSyncFolderLauncher = registerForActivityResult(
                new ActivityResultContracts.OpenDocumentTree(),
                uri -> {
                    if (uri != null) {
                        final int takeFlags = Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION;
                        try {
                            getContentResolver().takePersistableUriPermission(uri, takeFlags);
                            Options.writeStringPreferenceStringKey(this, "sync_folder_uri", uri.toString());
                            View btn = findViewById(R.id.btn_setup_folder_abbr);
                            if (btn != null) btn.setVisibility(View.GONE);
                            Toast.makeText(this, R.string.msg_sync_success, Toast.LENGTH_SHORT).show();
                        } catch (Exception e) {
                            Log.e(TAG, "Error taking persistable permission", e);
                        }
                    }
                }
        );
        
        mImportLauncher = registerForActivityResult(
                new ActivityResultContracts.StartActivityForResult(),
                result -> {
                    if (result.getResultCode() == RESULT_OK) {
                        refreshList();
                    }
                }
        );

        manager = AbbreviationManager.getInstance(this);
        listView = (ListView) findViewById(R.id.abbreviation_list);
        Button btnAdd = (Button) findViewById(R.id.btn_add_abbreviation);
        Button btnExport = (Button) findViewById(R.id.btn_export_abbr);
        Button btnImport = (Button) findViewById(R.id.btn_import_abbr);
        final Button btnSetup = (Button) findViewById(R.id.btn_setup_folder_abbr);

        String syncUri = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        btnSetup.setVisibility(syncUri == null ? View.VISIBLE : View.GONE);
        btnSetup.setOnClickListener(v -> mSyncFolderLauncher.launch(null));

        final CheckBox checkSpace = (CheckBox) findViewById(R.id.check_space_expansion);
        final CheckBox checkInstant = (CheckBox) findViewById(R.id.check_instant_expansion);

        String spaceKey = getString(R.string.pref_abbreviations_enabled_key);
        boolean spaceDefault = Boolean.parseBoolean(getString(R.string.pref_abbreviations_enabled_default));
        checkSpace.setChecked(Options.getSharedPreferences(this).getBoolean(spaceKey, spaceDefault));
        checkInstant.setChecked(Options.getSharedPreferences(this).getBoolean("ABBREVIATIONS_INSTANT", false));

        checkSpace.setOnCheckedChangeListener((buttonView, isChecked) -> {
            Options.getSharedPreferences(this).edit().putBoolean(spaceKey, isChecked).apply();
        });

        checkInstant.setOnCheckedChangeListener((buttonView, isChecked) -> {
            Options.getSharedPreferences(this).edit().putBoolean("ABBREVIATIONS_INSTANT", isChecked).apply();
        });

        refreshList();

        btnExport.setOnClickListener(v -> exportDizionario());

        btnImport.setOnClickListener(v -> {
            Intent intent = new Intent(this, StorageManagerActivity.class);
            intent.putExtra("extra_mode", 2); // MODE_ABBREVIATIONS
            mImportLauncher.launch(intent);
        });

        listView.setOnItemClickListener((parent, view, position, id) -> {
            String shortcut = shortcutList.get(position);
            showAddEditDialog(shortcut, manager.getAbbreviations().get(shortcut));
        });

        listView.setOnItemLongClickListener((parent, view, position, id) -> {
            final String shortcut = shortcutList.get(position);
            new AlertDialog.Builder(this)
                    .setTitle(R.string.confirm_delete_title)
                    .setMessage(getString(R.string.confirm_delete_msg, shortcut))
                    .setPositiveButton(R.string.btn_delete, (dialog, which) -> {
                        manager.removeAbbreviation(shortcut);
                        refreshList();
                    })
                    .setNegativeButton(R.string.btn_cancel, null)
                    .show();
            return true;
        });

        btnAdd.setOnClickListener(v -> showAddEditDialog(null, null));
    }

    private void exportDizionario() {
        String syncUriStr = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        if (syncUriStr != null) {
            try {
                DocumentFile root = DocumentFile.fromTreeUri(this, Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    DocumentFile file = root.findFile("abbreviations_backup.json");
                    if (file == null) file = root.createFile("application/json", "abbreviations_backup.json");
                    if (file != null) {
                        try (OutputStream os = getContentResolver().openOutputStream(file.getUri())) {
                            org.json.JSONObject json = new org.json.JSONObject();
                            for (Map.Entry<String, String> entry : manager.getAbbreviations().entrySet()) {
                                json.put(entry.getKey(), entry.getValue());
                            }
                            os.write(json.toString(2).getBytes("UTF-8"));
                            Toast.makeText(this, String.format(getString(R.string.msg_exported_to), "Hub Sincronizzato"), Toast.LENGTH_LONG).show();
                            return;
                        }
                    }
                }
            } catch (Exception e) { Log.e(TAG, "SAF export error", e); }
        }

        File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
        File softBrailleDir = new File(downloadsDir, "soft-braille");
        if (!softBrailleDir.exists()) softBrailleDir.mkdirs();

        File backupFile = new File(softBrailleDir, "abbreviations_backup.json");
        if (manager.exportToJson(backupFile)) {
            Toast.makeText(this, String.format(getString(R.string.msg_exported_to), backupFile.getAbsolutePath()), Toast.LENGTH_LONG).show();
        } else {
            Toast.makeText(this, "Export failed", Toast.LENGTH_SHORT).show();
        }
    }

    private void refreshList() {
        shortcutList = new ArrayList<>(manager.getAbbreviations().keySet());
        adapter = new AbbreviationAdapter(this, shortcutList);
        listView.setAdapter(adapter);
    }

    private void showAddEditDialog(final String oldShortcut, String oldExpansion) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        View dialogView = LayoutInflater.from(this).inflate(R.layout.dialog_add_abbreviation, null);
        builder.setView(dialogView);

        final EditText editShortcut = dialogView.findViewById(R.id.edit_shortcut);
        final EditText editExpansion = dialogView.findViewById(R.id.edit_expansion);

        if (oldShortcut != null) {
            editShortcut.setText(oldShortcut);
            editExpansion.setText(oldExpansion);
            builder.setTitle(R.string.btn_update);
        } else {
            builder.setTitle(R.string.btn_add);
        }

        builder.setPositiveButton(R.string.btn_save, (dialog, which) -> {
            String shortcut = editShortcut.getText().toString().trim();
            String expansion = editExpansion.getText().toString().trim();
            if (shortcut.length() > 0 && expansion.length() > 0) {
                if (oldShortcut != null && !oldShortcut.equals(shortcut)) {
                    manager.removeAbbreviation(oldShortcut);
                }
                manager.addAbbreviation(shortcut, expansion);
                refreshList();
            }
        });

        builder.setNegativeButton(R.string.btn_cancel, null);
        builder.show();
    }

    private class AbbreviationAdapter extends ArrayAdapter<String> {
        public AbbreviationAdapter(Context context, List<String> shortcuts) {
            super(context, android.R.layout.simple_list_item_2, android.R.id.text1, shortcuts);
        }
        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            View view = super.getView(position, convertView, parent);
            TextView text1 = view.findViewById(android.R.id.text1);
            TextView text2 = view.findViewById(android.R.id.text2);
            String shortcut = getItem(position);
            String expansion = manager.getAbbreviations().get(shortcut);
            text1.setText(shortcut);
            text2.setText(expansion);
            return view;
        }
    }
}
