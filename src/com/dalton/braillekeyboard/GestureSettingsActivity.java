package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.view.MenuItem;
import android.widget.Toast;

import com.dalton.braillekeyboard.Pad.Swipe;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;

/**
 * Activity to customize keyboard gestures.
 */
public class GestureSettingsActivity extends PreferenceActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(R.string.pref_category_gestures_title);
        if (getActionBar() != null) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
    }

    @Override
    public Intent getIntent() {
        final Intent modIntent = new Intent(super.getIntent());
        modIntent.putExtra(EXTRA_SHOW_FRAGMENT, GestureSettingsFragment.class.getName());
        modIntent.putExtra(EXTRA_NO_HEADERS, true);
        return modIntent;
    }

    @Override
    protected boolean isValidFragment(String fragmentName) {
        return GestureSettingsFragment.class.getName().equals(fragmentName);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    public static class GestureSettingsFragment extends PreferenceFragment implements Preference.OnPreferenceChangeListener {

        private static final int REQUEST_CODE_EXPORT = 1001;
        private static final int REQUEST_CODE_IMPORT = 1002;
        private static final String PREF_GESTURE_PREFIX = "gesture_mapping_";

        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
                getPreferenceManager().setStorageDeviceProtected();
            }
            addPreferencesFromResource(R.xml.prefs_gestures);

            String syncUri = Options.getSharedPreferences(getActivity()).getString("sync_folder_uri", null);
            if (syncUri == null) {
                Preference setupPref = new Preference(getActivity());
                setupPref.setKey("setup_folder_pref");
                setupPref.setTitle(R.string.btn_setup_sync_folder);
                setupPref.setOrder(-1); 
                setupPref.setOnPreferenceClickListener(preference -> {
                    startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE), 1001);
                    return true;
                });
                getPreferenceScreen().addPreference(setupPref);
            }

            // Bind summaries for all ListPreferences
            bindPreferenceSummaries();

            // Handle reset preference
            Preference resetPref = findPreference("reset_gestures");
            if (resetPref != null) {
                resetPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                    @Override
                    public boolean onPreferenceClick(Preference preference) {
                        showResetConfirmation();
                        return true;
                    }
                });
            }

            // Handle export preference
            Preference exportPref = findPreference("export_gestures");
            if (exportPref != null) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
                    exportPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                        @Override
                        public boolean onPreferenceClick(Preference preference) {
                            startExportFlow();
                            return true;
                        }
                    });
                } else {
                    exportPref.setEnabled(false);
                    exportPref.setSummary("Not supported on this Android version");
                }
            }

            // Handle import preference
            Preference importPref = findPreference("import_gestures");
            if (importPref != null) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
                    importPref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                        @Override
                        public boolean onPreferenceClick(Preference preference) {
                            startImportFlow();
                            return true;
                        }
                    });
                } else {
                    importPref.setEnabled(false);
                    importPref.setSummary("Not supported on this Android version");
                }
            }
        }

        private void bindPreferenceSummaries() {
            for (Pad.Swipe swipe : Pad.Swipe.values()) {
                String key = PREF_GESTURE_PREFIX + swipe.name();
                Preference pref = findPreference(key);
                if (pref instanceof ListPreference) {
                    ListPreference listPref = (ListPreference) pref;
                    listPref.setOnPreferenceChangeListener(this);
                    
                    String savedValue = Options.getSharedPreferences(getActivity())
                            .getString(listPref.getKey(), null);
                    
                    if (savedValue == null) {
                        // Enhancement: Set default value for focus/Checked state in dialog
                        BrailleAction defaultAction = GestureRepository.getDefaultActionForSwipe(swipe);
                        listPref.setValue(defaultAction.name());
                        updateSummary(listPref, defaultAction.name(), swipe, false);
                    } else {
                        listPref.setValue(savedValue);
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
                        // Save the new value using the correct SharedPreferences
                        Options.getSharedPreferences(getActivity()).edit()
                                .putString(key, newValue.toString())
                                .apply();
                        // When changed, it's now explicit
                        ((ListPreference) preference).setValue(newValue.toString());
                        updateSummary((ListPreference) preference, newValue.toString(), swipe, true);
                        return false; // We handled the save manually
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
            } else {
                if ((value == null || value.isEmpty()) && swipe != null) {
                    BrailleAction defaultAction = GestureRepository.getDefaultActionForSwipe(swipe);
                    int defIndex = preference.findIndexOfValue(defaultAction.name());
                    if (defIndex >= 0) {
                        preference.setSummary(getString(R.string.pref_gesture_default_format, preference.getEntries()[defIndex]));
                        return;
                    }
                }
                preference.setSummary(null);
            }
        }

        private void showResetConfirmation() {
            new AlertDialog.Builder(getActivity())
                    .setTitle(R.string.pref_reset_gestures_title)
                    .setMessage(R.string.pref_reset_gestures_confirm)
                    .setPositiveButton(R.string.btn_ok, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            GestureRepository.resetToDefaults(getActivity());
                            getActivity().recreate();
                        }
                    })
                    .setNegativeButton(R.string.btn_cancel, null)
                    .show();
        }

        private void startExportFlow() {
            String syncUriStr = Options.getSharedPreferences(getActivity()).getString("sync_folder_uri", null);
            if (syncUriStr != null) {
                try {
                    android.support.v4.provider.DocumentFile root = android.support.v4.provider.DocumentFile.fromTreeUri(getActivity(), Uri.parse(syncUriStr));
                    if (root != null && root.exists()) {
                        android.support.v4.provider.DocumentFile file = root.findFile("gestures_backup.json");
                        if (file == null) file = root.createFile("application/json", "gestures_backup.json");
                        if (file != null) {
                            java.io.OutputStream os = getActivity().getContentResolver().openOutputStream(file.getUri());
                            if (GestureRepository.exportToJson(getActivity(), new java.io.File(getActivity().getCacheDir(), "temp"))) {
                                // Re-implementing export logic here for SAF stream
                                org.json.JSONObject json = new org.json.JSONObject();
                                android.content.SharedPreferences prefs = Options.getSharedPreferences(getActivity());
                                java.util.Map<String, ?> allEntries = prefs.getAll();
                                for (java.util.Map.Entry<String, ?> entry : allEntries.entrySet()) {
                                    if (entry.getKey().startsWith("gesture_mapping_")) {
                                        json.put(entry.getKey(), entry.getValue());
                                    }
                                }
                                os.write(json.toString(2).getBytes("UTF-8"));
                                os.close();
                                Toast.makeText(getActivity(), String.format(getString(R.string.msg_exported_to), getString(R.string.label_sync_hub)), Toast.LENGTH_LONG).show();
                                return;
                            }
                        }
                    }
                } catch (Exception e) { android.util.Log.e("GestureSettings", "SAF export error", e); }
            }

            java.io.File downloadsDir = android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS);
            java.io.File softBrailleDir = new java.io.File(downloadsDir, "soft-braille");
            if (!softBrailleDir.exists()) softBrailleDir.mkdirs();

            java.io.File backupFile = new java.io.File(softBrailleDir, "gestures_backup.json");
            if (GestureRepository.exportToJson(getActivity(), backupFile)) {
                Toast.makeText(getActivity(), String.format(getString(R.string.msg_exported_to), backupFile.getAbsolutePath()), Toast.LENGTH_LONG).show();
            } else {
                Toast.makeText(getActivity(), String.format(getString(R.string.msg_export_failed), ""), Toast.LENGTH_SHORT).show();
            }
        }

        private void startImportFlow() {
            Intent intent = new Intent(getActivity(), StorageManagerActivity.class);
            intent.putExtra(StorageManagerActivity.EXTRA_MODE, StorageManagerActivity.MODE_GESTURES);
            startActivityForResult(intent, REQUEST_CODE_IMPORT);
        }

        @Override
        public void onActivityResult(int requestCode, int resultCode, Intent data) {
            if (requestCode == 1001 && resultCode == Activity.RESULT_OK && data != null) {
                Uri uri = data.getData();
                getActivity().getContentResolver().takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                Options.writeStringPreferenceStringKey(getActivity(), "sync_folder_uri", uri.toString());
                Preference p = findPreference("setup_folder_pref");
                if (p != null) getPreferenceScreen().removePreference(p);
            } else if (resultCode == Activity.RESULT_OK && requestCode == REQUEST_CODE_IMPORT) {
                getActivity().recreate();
            }
        }
    }
}
