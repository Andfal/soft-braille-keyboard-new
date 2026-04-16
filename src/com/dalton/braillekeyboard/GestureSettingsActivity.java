package com.dalton.braillekeyboard;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.view.MenuItem;

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
        }

        private void bindPreferenceSummaries() {
            // We iterate through all preferences and bind the change listener
            // which also updates the summary.
            for (Pad.Swipe swipe : Pad.Swipe.values()) {
                String key = "gesture_mapping_" + swipe.name();
                Preference pref = findPreference(key);
                if (pref instanceof ListPreference) {
                    pref.setOnPreferenceChangeListener(this);
                    updateSummary((ListPreference) pref, PreferenceManager
                            .getDefaultSharedPreferences(getActivity())
                            .getString(pref.getKey(), ""));
                }
            }
        }

        @Override
        public boolean onPreferenceChange(Preference preference, Object newValue) {
            if (preference instanceof ListPreference) {
                updateSummary((ListPreference) preference, newValue.toString());
            }
            return true;
        }

        private void updateSummary(ListPreference preference, String value) {
            int index = preference.findIndexOfValue(value);
            if (index >= 0) {
                preference.setSummary(preference.getEntries()[index]);
            } else {
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
                            // Refresh UI by recreating the fragment or updating all prefs
                            getActivity().recreate();
                        }
                    })
                    .setNegativeButton(R.string.btn_cancel, null)
                    .show();
        }
    }
}
