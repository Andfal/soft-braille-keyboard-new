package com.dalton.braillekeyboard;

import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.widget.Toast;
import com.dalton.braillekeyboard.Pad.Swipe;

/**
 * Activity for customizing gestures.
 */
public class GestureSettingsActivity extends PreferenceActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction()
                .replace(android.R.id.content, new GestureSettingsFragment())
                .commit();
    }

    public static class GestureSettingsFragment extends PreferenceFragment {
        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
                getPreferenceManager().setStorageDeviceProtected();
            }

            PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(getActivity());
            setPreferenceScreen(screen);

            addGestureCategory(screen, R.string.gesture_point_1, new Swipe[]{
                    Swipe.ONE_LEFT, Swipe.ONE_RIGHT, Swipe.ONE_UP, Swipe.ONE_DOWN});
            
            addGestureCategory(screen, R.string.gesture_point_2, new Swipe[]{
                    Swipe.TWO_LEFT, Swipe.TWO_RIGHT, Swipe.TWO_UP, Swipe.TWO_DOWN});
            
            addGestureCategory(screen, R.string.gesture_point_3, new Swipe[]{
                    Swipe.THREE_LEFT, Swipe.THREE_RIGHT, Swipe.THREE_UP, Swipe.THREE_DOWN});
            
            addGestureCategory(screen, R.string.gesture_point_4, new Swipe[]{
                    Swipe.FOUR_LEFT, Swipe.FOUR_RIGHT, Swipe.FOUR_UP, Swipe.FOUR_DOWN});
            
            addGestureCategory(screen, R.string.gesture_point_5, new Swipe[]{
                    Swipe.FIVE_LEFT, Swipe.FIVE_RIGHT, Swipe.FIVE_UP, Swipe.FIVE_DOWN});
            
            addGestureCategory(screen, R.string.gesture_point_6, new Swipe[]{
                    Swipe.SIX_LEFT, Swipe.SIX_RIGHT, Swipe.SIX_UP, Swipe.SIX_DOWN});
            
            addGestureCategory(screen, R.string.gesture_special, new Swipe[]{
                    Swipe.TWO_FINGERS_DOWN, Swipe.DOTS_FOUR_SIX_RIGHT,
                    Swipe.HOLD_ONE_LEFT, Swipe.HOLD_ONE_RIGHT, Swipe.HOLD_ONE_UP, Swipe.HOLD_ONE_DOWN,
                    Swipe.HOLD_THREE_LEFT, Swipe.HOLD_THREE_RIGHT, Swipe.HOLD_THREE_UP, Swipe.HOLD_THREE_DOWN,
                    Swipe.HOLD_FOUR_LEFT, Swipe.HOLD_FOUR_RIGHT, Swipe.HOLD_FOUR_UP, Swipe.HOLD_FOUR_DOWN,
                    Swipe.HOLD_SIX_LEFT, Swipe.HOLD_SIX_RIGHT, Swipe.HOLD_SIX_UP, Swipe.HOLD_SIX_DOWN,
                    Swipe.EMOJI_MODE, Swipe.AUTOCAPS_TOGGLE});

            PreferenceCategory resetCategory = new PreferenceCategory(getActivity());
            resetCategory.setTitle(R.string.pref_reset_gestures_title);
            screen.addPreference(resetCategory);

            Preference resetPref = new Preference(getActivity());
            resetPref.setTitle(R.string.pref_reset_gestures_title);
            resetPref.setSummary(R.string.pref_reset_gestures_summary);
            resetPref.setOnPreferenceClickListener(preference -> {
                resetToDefaults();
                return true;
            });
            resetCategory.addPreference(resetPref);
        }

        private void addGestureCategory(PreferenceScreen screen, int titleResId, Swipe[] swipes) {
            PreferenceCategory category = new PreferenceCategory(getActivity());
            category.setTitle(titleResId);
            screen.addPreference(category);

            for (Swipe swipe : swipes) {
                ListPreference lp = new ListPreference(getActivity());
                lp.setKey("pref_gesture_" + swipe.name().toLowerCase());
                lp.setTitle(getGestureLabel(swipe));
                
                GestureAction[] actions = GestureAction.values();
                String[] entries = new String[actions.length];
                String[] entryValues = new String[actions.length];
                for (int i = 0; i < actions.length; i++) {
                    entries[i] = actions[i].getName(getActivity());
                    entryValues[i] = actions[i].name();
                }
                
                lp.setEntries(entries);
                lp.setEntryValues(entryValues);
                
                GestureAction current = GestureManager.getActionForSwipe(getActivity(), swipe);
                lp.setSummary(current.getName(getActivity()));
                lp.setDefaultValue(current.name());
                
                lp.setOnPreferenceChangeListener((preference, newValue) -> {
                    GestureAction action = GestureAction.valueOf((String) newValue);
                    preference.setSummary(action.getName(getActivity()));
                    return true;
                });

                category.addPreference(lp);
            }
        }

        private void resetToDefaults() {
            android.content.SharedPreferences.Editor editor = Options.getSharedPreferences(getActivity()).edit();
            for (Swipe swipe : Swipe.values()) {
                if (swipe == Swipe.NONE || swipe == Swipe.UNKNOWN) continue;
                String key = "pref_gesture_" + swipe.name().toLowerCase();
                GestureAction defaultValue = GestureManager.getDefaultAction(swipe);
                editor.putString(key, defaultValue.name());
            }
            editor.commit();
            Toast.makeText(getActivity(), R.string.gestures_reset_done, Toast.LENGTH_SHORT).show();
            getFragmentManager().beginTransaction().replace(android.R.id.content, new GestureSettingsFragment()).commit();
        }

        private String getGestureLabel(Swipe swipe) {
            String name = swipe.name().toLowerCase();
            String direction = "";
            if (name.contains("left")) direction = getString(R.string.swipe_left);
            else if (name.contains("right")) direction = getString(R.string.swipe_right);
            else if (name.contains("up")) direction = getString(R.string.swipe_up);
            else if (name.contains("down")) direction = getString(R.string.swipe_down);
            
            String point = "";
            if (name.startsWith("one")) point = getString(R.string.point_1);
            else if (name.startsWith("two") && !name.contains("fingers")) point = getString(R.string.point_2);
            else if (name.startsWith("three")) point = getString(R.string.point_3);
            else if (name.startsWith("four") && !name.contains("hold")) point = getString(R.string.point_4);
            else if (name.startsWith("five")) point = getString(R.string.point_5);
            else if (name.startsWith("six")) point = getString(R.string.point_6);
            
            if (swipe == Swipe.TWO_FINGERS_DOWN) return direction + " " + getString(R.string.two_fingers) + " (" + getString(R.string.points_1_2) + ")";
            if (swipe == Swipe.DOTS_FOUR_SIX_RIGHT) return direction + " (" + getString(R.string.points_4_6) + ")";
            if (swipe == Swipe.EMOJI_MODE) return getString(R.string.hold_prefix) + " " + getString(R.string.point_5) + " (" + getString(R.string.action_toggle_emoji_mode) + ")";
            if (swipe == Swipe.AUTOCAPS_TOGGLE) return getString(R.string.hold_prefix) + " " + getString(R.string.point_4) + " (" + getString(R.string.action_toggle_autocaps) + ")";

            if (name.contains("hold")) {
                String heldPoint = "";
                if (name.contains("hold_one")) heldPoint = getString(R.string.point_1);
                else if (name.contains("hold_three")) heldPoint = getString(R.string.point_3);
                else if (name.contains("hold_four")) heldPoint = getString(R.string.point_4);
                else if (name.contains("hold_six")) heldPoint = getString(R.string.point_6);
                return getString(R.string.hold_prefix) + " " + heldPoint + " " + getString(R.string.swipe_prefix) + " " + direction.toLowerCase();
            }

            String label = direction;
            if (!point.isEmpty()) label += " (" + point + ")";
            return label;
        }
    }
}
