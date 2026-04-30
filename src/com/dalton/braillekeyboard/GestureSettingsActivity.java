/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

package com.dalton.braillekeyboard;

import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.documentfile.provider.DocumentFile;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import com.dalton.braillekeyboard.Pad.Swipe;
import org.json.JSONObject;
import java.io.File;
import java.io.OutputStream;
import java.util.Map;

/**
 * Activity to customize keyboard gestures (Modernized for AndroidX/SAF).
 */
public class GestureSettingsActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fragment_container); // Use a simple container layout
        
        if (savedInstanceState == null) {
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, new GestureSettingsFragment())
                    .commit();
        }

        setTitle(R.string.pref_category_gestures_title);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public static class GestureSettingsFragment extends PreferenceFragmentCompat implements Preference.OnPreferenceChangeListener {
        private static final String TAG = "GestureSettingsFragment";
        private static final String PREF_GESTURE_PREFIX = "gesture_mapping_";
        
        private ActivityResultLauncher<Uri> mSyncFolderLauncher;
        private ActivityResultLauncher<Intent> mImportLauncher;

        @Override
        public void onCreate(@Nullable Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            mSyncFolderLauncher = registerForActivityResult(
                    new ActivityResultContracts.OpenDocumentTree(),
                    uri -> {
                        if (uri != null) {
                            final int takeFlags = Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION;
                            try {
                                requireContext().getContentResolver().takePersistableUriPermission(uri, takeFlags);
                                Options.writeStringPreferenceStringKey(requireContext(), "sync_folder_uri", uri.toString());
                                Preference p = findPreference("setup_folder_pref");
                                if (p != null) getPreferenceScreen().removePreference(p);
                                Toast.makeText(requireContext(), R.string.msg_sync_success, Toast.LENGTH_SHORT).show();
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
                            requireActivity().recreate();
                        }
                    }
            );
        }

        @Override
        public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
            setPreferencesFromResource(R.xml.prefs_gestures, rootKey);

            String syncUri = Options.getSharedPreferences(requireContext()).getString("sync_folder_uri", null);
            if (syncUri == null) {
                Preference setupPref = new Preference(requireContext());
                setupPref.setKey("setup_folder_pref");
                setupPref.setTitle(R.string.btn_setup_sync_folder);
                setupPref.setOrder(-1); 
                setupPref.setOnPreferenceClickListener(preference -> {
                    mSyncFolderLauncher.launch(null);
                    return true;
                });
                getPreferenceScreen().addPreference(setupPref);
            }

            bindPreferenceSummaries();

            Preference resetPref = findPreference("reset_gestures");
            if (resetPref != null) {
                resetPref.setOnPreferenceClickListener(preference -> {
                    showResetConfirmation();
                    return true;
                });
            }

            Preference exportPref = findPreference("export_gestures");
            if (exportPref != null) {
                exportPref.setOnPreferenceClickListener(preference -> {
                    startExportFlow();
                    return true;
                });
            }

            Preference importPref = findPreference("import_gestures");
            if (importPref != null) {
                importPref.setOnPreferenceClickListener(preference -> {
                    startImportFlow();
                    return true;
                });
            }
        }

        private void bindPreferenceSummaries() {
            for (Swipe swipe : Swipe.values()) {
                String key = PREF_GESTURE_PREFIX + swipe.name();
                Preference pref = findPreference(key);
                if (pref instanceof ListPreference) {
                    ListPreference listPref = (ListPreference) pref;
                    listPref.setOnPreferenceChangeListener(this);
                    
                    String savedValue = Options.getSharedPreferences(requireContext())
                            .getString(listPref.getKey(), null);
                    
                    if (savedValue == null) {
                        BrailleAction defaultAction = GestureRepository.getDefaultActionForSwipe(swipe);
                        listPref.setValue(defaultAction.name());
                        updateSummary(listPref, defaultAction.name(), swipe, false);
                    } else {
                        updateSummary(listPref, savedValue, swipe, true);
                    }
                }
            }
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object newValue) {
            if (preference instanceof ListPreference) {
                String key = preference.getKey();
                if (key.startsWith(PREF_GESTURE_PREFIX)) {
                    String swipeName = key.substring(PREF_GESTURE_PREFIX.length());
                    try {
                        Swipe swipe = Swipe.valueOf(swipeName);
                        Options.getSharedPreferences(requireContext()).edit()
                                .putString(key, newValue.toString())
                                .apply();
                        updateSummary((ListPreference) preference, newValue.toString(), swipe, true);
                        return false; 
                    } catch (IllegalArgumentException e) {
                        updateSummary((ListPreference) preference, newValue.toString(), null, true);
                    }
                }
            }
            return true;
        }

        private void updateSummary(ListPreference preference, String value, Swipe swipe, boolean isExplicit) {
            int index = preference.findIndexOfValue(value);
            if (index >= 0) {
                CharSequence entry = preference.getEntries()[index];
                if (!isExplicit) {
                    preference.setSummary(getString(R.string.pref_gesture_default_format, entry));
                } else {
                    preference.setSummary(entry);
                }
            } else if (swipe != null) {
                BrailleAction defaultAction = GestureRepository.getDefaultActionForSwipe(swipe);
                int defIndex = preference.findIndexOfValue(defaultAction.name());
                if (defIndex >= 0) {
                    preference.setSummary(getString(R.string.pref_gesture_default_format, preference.getEntries()[defIndex]));
                }
            }
        }

        private void showResetConfirmation() {
            new AlertDialog.Builder(requireContext())
                    .setTitle(R.string.pref_reset_gestures_title)
                    .setMessage(R.string.pref_reset_gestures_confirm)
                    .setPositiveButton(R.string.btn_ok, (dialog, which) -> {
                        GestureRepository.resetToDefaults(requireContext());
                        requireActivity().recreate();
                    })
                    .setNegativeButton(R.string.btn_cancel, null)
                    .show();
        }

        private void startExportFlow() {
            String syncUriStr = Options.getSharedPreferences(requireContext()).getString("sync_folder_uri", null);
            if (syncUriStr != null) {
                try {
                    DocumentFile root = DocumentFile.fromTreeUri(requireContext(), Uri.parse(syncUriStr));
                    if (root != null && root.exists()) {
                        DocumentFile file = root.findFile("gestures_backup.json");
                        if (file == null) file = root.createFile("application/json", "gestures_backup.json");
                        if (file != null) {
                            try (OutputStream os = requireContext().getContentResolver().openOutputStream(file.getUri())) {
                                JSONObject json = new JSONObject();
                                Map<String, ?> allEntries = Options.getSharedPreferences(requireContext()).getAll();
                                for (Map.Entry<String, ?> entry : allEntries.entrySet()) {
                                    if (entry.getKey().startsWith(PREF_GESTURE_PREFIX)) {
                                        json.put(entry.getKey(), entry.getValue());
                                    }
                                }
                                os.write(json.toString(2).getBytes("UTF-8"));
                                Toast.makeText(requireContext(), String.format(getString(R.string.msg_exported_to), "Hub Sincronizzato"), Toast.LENGTH_LONG).show();
                                return;
                            }
                        }
                    }
                } catch (Exception e) { Log.e(TAG, "SAF export error", e); }
            }

            File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            File softBrailleDir = new File(downloadsDir, "soft-braille");
            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();

            File backupFile = new File(softBrailleDir, "gestures_backup.json");
            if (GestureRepository.exportToJson(requireContext(), backupFile)) {
                Toast.makeText(requireContext(), String.format(getString(R.string.msg_exported_to), backupFile.getAbsolutePath()), Toast.LENGTH_LONG).show();
            } else {
                Toast.makeText(requireContext(), "Export failed", Toast.LENGTH_SHORT).show();
            }
        }

        private void startImportFlow() {
            Intent intent = new Intent(requireContext(), StorageManagerActivity.class);
            intent.putExtra("extra_mode", 1); // MODE_GESTURES
            mImportLauncher.launch(intent);
        }
    }
}
