/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
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

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Activity per gestire l'elenco delle abbreviazioni.
 */
public class AbbreviationEditorActivity extends Activity {
    private AbbreviationManager manager;
    private ListView listView;
    private AbbreviationAdapter adapter;
    private List<String> shortcutList;

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 1001 && resultCode == RESULT_OK && data != null) {
            android.net.Uri uri = data.getData();
            getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            Options.writeStringPreferenceStringKey(this, "sync_folder_uri", uri.toString());
            View btn = findViewById(R.id.btn_setup_folder_abbr);
            if (btn != null) btn.setVisibility(View.GONE);
        } else if (resultCode == RESULT_OK) {
            refreshList();
        }
    }

    private void exportDizionario() {
        String syncUriStr = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        if (syncUriStr != null) {
            try {
                android.support.v4.provider.DocumentFile root = android.support.v4.provider.DocumentFile.fromTreeUri(this, android.net.Uri.parse(syncUriStr));
                if (root != null && root.exists()) {
                    android.support.v4.provider.DocumentFile file = root.findFile("abbreviations_backup.json");
                    if (file == null) file = root.createFile("application/json", "abbreviations_backup.json");
                    if (file != null) {
                        java.io.OutputStream os = getContentResolver().openOutputStream(file.getUri());
                        org.json.JSONObject json = new org.json.JSONObject();
                        for (Map.Entry<String, String> entry : manager.getAbbreviations().entrySet()) {
                            json.put(entry.getKey(), entry.getValue());
                        }
                        os.write(json.toString(2).getBytes("UTF-8"));
                        os.close();
                        Toast.makeText(this, String.format(getString(R.string.msg_exported_to), "Hub Sincronizzato"), Toast.LENGTH_LONG).show();
                        return;
                    }
                }
            } catch (Exception e) { android.util.Log.e("AbbrEditor", "SAF export error", e); }
        }

        // Fallback Legacy (Download/soft-braille)
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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_abbreviations);

        manager = AbbreviationManager.getInstance(this);
        listView = (ListView) findViewById(R.id.abbreviation_list);
        Button btnAdd = (Button) findViewById(R.id.btn_add_abbreviation);
        Button btnExport = (Button) findViewById(R.id.btn_export_abbr);
        Button btnImport = (Button) findViewById(R.id.btn_import_abbr);
        final Button btnSetup = (Button) findViewById(R.id.btn_setup_folder_abbr);

        String syncUri = Options.getSharedPreferences(this).getString("sync_folder_uri", null);
        btnSetup.setVisibility(syncUri == null ? View.VISIBLE : View.GONE);
        btnSetup.setOnClickListener(v -> startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), 1001));

        final CheckBox checkSpace = (CheckBox) findViewById(R.id.check_space_expansion);
        final CheckBox checkInstant = (CheckBox) findViewById(R.id.check_instant_expansion);

        // Caricamento stati iniziali
        String spaceKey = getString(R.string.pref_abbreviations_enabled_key);
        boolean spaceDefault = Boolean.parseBoolean(getString(R.string.pref_abbreviations_enabled_default));
        checkSpace.setChecked(Options.getSharedPreferences(this).getBoolean(spaceKey, spaceDefault));
        checkInstant.setChecked(Options.getSharedPreferences(this).getBoolean("ABBREVIATIONS_INSTANT", false));

        checkSpace.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                Options.getSharedPreferences(AbbreviationEditorActivity.this).edit()
                        .putBoolean(spaceKey, isChecked)
                        .apply();
            }
        });

        checkInstant.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                Options.getSharedPreferences(AbbreviationEditorActivity.this).edit()
                        .putBoolean("ABBREVIATIONS_INSTANT", isChecked)
                        .apply();
            }
        });

        refreshList();

        btnExport.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                exportDizionario();
            }
        });

        btnImport.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(AbbreviationEditorActivity.this, StorageManagerActivity.class);
                intent.putExtra(StorageManagerActivity.EXTRA_MODE, StorageManagerActivity.MODE_ABBREVIATIONS);
                startActivityForResult(intent, 100);
            }
        });

        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                String shortcut = shortcutList.get(position);
                showAddEditDialog(shortcut, manager.getAbbreviations().get(shortcut));
            }
        });

        listView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, final int position, long id) {
                final String shortcut = shortcutList.get(position);
                new AlertDialog.Builder(AbbreviationEditorActivity.this)
                        .setTitle(R.string.confirm_delete_title)
                        .setMessage(getString(R.string.confirm_delete_msg, shortcut))
                        .setPositiveButton(R.string.btn_delete, new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                manager.removeAbbreviation(shortcut);
                                refreshList();
                            }
                        })
                        .setNegativeButton(R.string.btn_cancel, null)
                        .show();
                return true;
            }
        });

        btnAdd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showAddEditDialog(null, null);
            }
        });
    }

    private void refreshList() {
        shortcutList = new ArrayList<String>(manager.getAbbreviations().keySet());
        adapter = new AbbreviationAdapter(this, shortcutList);
        listView.setAdapter(adapter);
    }

    private void showAddEditDialog(final String oldShortcut, String oldExpansion) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        LayoutInflater inflater = getLayoutInflater();
        View dialogView = inflater.inflate(R.layout.dialog_add_abbreviation, null);
        builder.setView(dialogView);

        final EditText editShortcut = (EditText) dialogView.findViewById(R.id.edit_shortcut);
        final EditText editExpansion = (EditText) dialogView.findViewById(R.id.edit_expansion);

        if (oldShortcut != null) {
            editShortcut.setText(oldShortcut);
            editExpansion.setText(oldExpansion);
            builder.setTitle(R.string.btn_update);
        } else {
            builder.setTitle(R.string.btn_add);
        }

        builder.setPositiveButton(R.string.btn_save, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                String shortcut = editShortcut.getText().toString().trim();
                String expansion = editExpansion.getText().toString().trim();

                if (shortcut.length() > 0 && expansion.length() > 0) {
                    if (oldShortcut != null && !oldShortcut.equals(shortcut)) {
                        manager.removeAbbreviation(oldShortcut);
                    }
                    manager.addAbbreviation(shortcut, expansion);
                    refreshList();
                }
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
            TextView text1 = (TextView) view.findViewById(android.R.id.text1);
            TextView text2 = (TextView) view.findViewById(android.R.id.text2);

            String shortcut = getItem(position);
            String expansion = manager.getAbbreviations().get(shortcut);

            text1.setText(shortcut);
            text2.setText(expansion);
            return view;
        }
    }
}
