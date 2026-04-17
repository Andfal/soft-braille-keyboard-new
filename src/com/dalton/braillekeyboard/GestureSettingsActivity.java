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
            addPreferencesFromResource(R.xml.prefs_gestures);

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
                    
                    String savedValue = PreferenceManager
                            .getDefaultSharedPreferences(getActivity())
                            .getString(listPref.getKey(), null);
                    
                    if (savedValue == null) {
                        // Enhancement: Set default value for focus/Checked state in dialog
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
                        // When changed, it's now explicit
                        updateSummary((ListPreference) preference, newValue.toString(), swipe, true);
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
            Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("application/json");
            intent.putExtra(Intent.EXTRA_TITLE, "sbk_gestures_backup.json");
            startActivityForResult(intent, REQUEST_CODE_EXPORT);
        }

        private void startImportFlow() {
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("application/json");
            startActivityForResult(intent, REQUEST_CODE_IMPORT);
        }

        @Override
        public void onActivityResult(int requestCode, int resultCode, Intent data) {
            if (resultCode != Activity.RESULT_OK || data == null || data.getData() == null) {
                return;
            }

            Uri uri = data.getData();
            if (requestCode == REQUEST_CODE_EXPORT) {
                exportGestures(uri);
            } else if (requestCode == REQUEST_CODE_IMPORT) {
                importGestures(uri);
            }
        }

        private void exportGestures(Uri uri) {
            try {
                JSONObject json = new JSONObject();
                Map<String, ?> allPrefs = PreferenceManager.getDefaultSharedPreferences(getActivity()).getAll();
                for (Map.Entry<String, ?> entry : allPrefs.entrySet()) {
                    if (entry.getKey().startsWith(PREF_GESTURE_PREFIX)) {
                        json.put(entry.getKey(), entry.getValue());
                    }
                }

                OutputStream outputStream = getActivity().getContentResolver().openOutputStream(uri);
                if (outputStream != null) {
                    outputStream.write(json.toString(2).getBytes());
                    outputStream.close();
                    Toast.makeText(getActivity(), getString(R.string.export_success, uri.getLastPathSegment()), Toast.LENGTH_LONG).show();
                }
            } catch (Exception e) {
                Toast.makeText(getActivity(), getString(R.string.export_error, e.getMessage()), Toast.LENGTH_LONG).show();
            }
        }

        private void importGestures(Uri uri) {
            try {
                InputStream inputStream = getActivity().getContentResolver().openInputStream(uri);
                if (inputStream == null) return;
                
                BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
                StringBuilder stringBuilder = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    stringBuilder.append(line);
                }
                inputStream.close();

                JSONObject json = new JSONObject(stringBuilder.toString());
                if (json.length() == 0) {
                    Toast.makeText(getActivity(), R.string.import_no_valid_data, Toast.LENGTH_SHORT).show();
                    return;
                }

                android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
                // Clear only gesture mappings
                for (Swipe swipe : Swipe.values()) {
                    editor.remove(PREF_GESTURE_PREFIX + swipe.name());
                }
                
                Iterator<String> keys = json.keys();
                while (keys.hasNext()) {
                    String key = keys.next();
                    if (key.startsWith(PREF_GESTURE_PREFIX)) {
                        editor.putString(key, json.getString(key));
                    }
                }
                editor.apply();

                Toast.makeText(getActivity(), R.string.import_success, Toast.LENGTH_SHORT).show();
                getActivity().recreate();
            } catch (Exception e) {
                Toast.makeText(getActivity(), getString(R.string.import_error, e.getMessage()), Toast.LENGTH_LONG).show();
            }
        }
    }
}
