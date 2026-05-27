/*
 * Copyright (C) 2016 The Soft Braille Keyboard Authors
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

import java.util.HashSet;
import java.util.Set;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class Options {
    private static SharedPreferences sCachedPreferences = null;
    public interface OptionList {
        OptionList[] getValues();

        int getResource();

        String getValue();
    }

    public enum KeyboardFeedback implements OptionList {
        NONE(0, R.string.keyboard_feedback_none), VIBRATE(1,
                R.string.keyboard_feedback_vibrate), SOUND(2,
                R.string.keyboard_feedback_sound), ALL(3,
                R.string.keyboard_feedback_all);

        public final int value;
        public final int resource;

        KeyboardFeedback(int value, int resource) {
            this.value = value;
            this.resource = resource;
        }

        public static KeyboardFeedback valueOf(int value) {
            for (KeyboardFeedback keyboardFeedback : values()) {
                if (keyboardFeedback.value == value) {
                    return keyboardFeedback;
                }
            }
            throw new IllegalArgumentException("Invalid value: " + value);
        }

        public static KeyboardFeedback next(KeyboardFeedback feedback) {
            int value = feedback.value + 1 >= values().length ? 0
                    : feedback.value + 1;
            return values()[value];
        }

        public OptionList[] getValues() {
            return values();
        }

        public String getValue() {
            return String.valueOf(value);
        }

        public int getResource() {
            return resource;
        }
    }

    public enum KeyboardEcho implements OptionList {
        NONE(0, R.string.keyboard_echo_none), CHARACTER(1,
                R.string.keyboard_echo_character), WORD(2,
                R.string.keyboard_echo_word), ALL(3, R.string.keyboard_echo_all);

        public final int value;
        public final int resource;

        KeyboardEcho(int value, int resource) {
            this.value = value;
            this.resource = resource;
        }

        public static KeyboardEcho valueOf(int value) {
            for (KeyboardEcho keyboardEcho : values()) {
                if (keyboardEcho.value == value) {
                    return keyboardEcho;
                }
            }
            throw new IllegalArgumentException("Invalid value: " + value);
        }

        public static KeyboardEcho next(KeyboardEcho echo) {
            int value = echo.value + 1 >= values().length ? 0 : echo.value + 1;
            return values()[value];
        }

        public OptionList[] getValues() {
            return values();
        }

        public String getValue() {
            return String.valueOf(value);
        }

        public int getResource() {
            return resource;
        }
    }

    public enum KeyboardType {
        AUTO, VERTICAL, HORIZONTAL, TABLETOP;

        public static KeyboardType valueOf(int value) {
            switch (value) {
            case 1:
                return VERTICAL;
            case 2:
                return HORIZONTAL;
            case 3:
                return TABLETOP;
            default:
                return AUTO;
            }
        }
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        if (context == null) return sCachedPreferences;
        if (sCachedPreferences != null) {
            return sCachedPreferences;
        }
        synchronized (Options.class) {
            if (sCachedPreferences != null) {
                return sCachedPreferences;
            }
            Context appContext = context.getApplicationContext();
            if (appContext == null) appContext = context;

            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
                Context deContext = appContext.createDeviceProtectedStorageContext();
                SharedPreferences migrationTracker = deContext.getSharedPreferences("migration_tracker", Context.MODE_PRIVATE);
                
                if (!migrationTracker.getBoolean("pref_migrated", false)) {
                    String prefName = appContext.getPackageName() + "_preferences";
                    java.io.File ceFile = new java.io.File(appContext.getDataDir(), "shared_prefs/" + prefName + ".xml");
                    java.io.File deFile = new java.io.File(deContext.getDataDir(), "shared_prefs/" + prefName + ".xml");

                    // 1. Migrazione SharedPreferences predefinite
                    if (ceFile.exists() && !deFile.exists()) {
                        android.util.Log.i("Options", "Migrating default preferences from CE to DE...");
                        deContext.moveSharedPreferencesFrom(appContext, prefName);
                    }
                    
                    // 2. Migrazione SharedPreferences custom_tables
                    java.io.File ceTablesPref = new java.io.File(appContext.getDataDir(), "shared_prefs/custom_tables.xml");
                    java.io.File deTablesPref = new java.io.File(deContext.getDataDir(), "shared_prefs/custom_tables.xml");
                    if (ceTablesPref.exists() && !deTablesPref.exists()) {
                        deContext.moveSharedPreferencesFrom(appContext, "custom_tables");
                    }

                    // 3. Migrazione CARTELLE fisiche (custom_tables)
                    java.io.File ceFilesDir = appContext.getFilesDir();
                    java.io.File deFilesDir = deContext.getFilesDir();
                    java.io.File ceCustomTablesDir = new java.io.File(ceFilesDir, "custom_tables");
                    java.io.File deCustomTablesDir = new java.io.File(deFilesDir, "custom_tables");

                    if (ceCustomTablesDir.exists() && !deCustomTablesDir.exists()) {
                        android.util.Log.i("Options", "Migrating custom_tables directory from CE to DE...");
                        ceCustomTablesDir.renameTo(deCustomTablesDir);
                    }
                    
                    migrationTracker.edit().putBoolean("pref_migrated", true).apply();
                }
                sCachedPreferences = PreferenceManager.getDefaultSharedPreferences(deContext);
            } else {
                sCachedPreferences = PreferenceManager.getDefaultSharedPreferences(appContext);
            }
            sanitizeAbbreviationPreferences(appContext);
        }
        return sCachedPreferences;
    }

    public static boolean getBooleanPreference(Context context, int resource,
            boolean defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        return sharedPref.getBoolean(context.getString(resource), defaultValue);
    }

    public static String getStringPreference(Context context, int resource,
            String defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        return sharedPref.getString(context.getString(resource), defaultValue);
    }

    public static void writeStringPreference(Context context, int resource,
            String value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString(context.getString(resource), value);
        editor.apply();
    }

    public static void writeStringPreferenceStringKey(Context context, String key,
            String value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString(key, value);
        editor.apply();
    }

    public static boolean switchBooleanPreference(Context context,
            int resource, boolean defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        boolean pref = getBooleanPreference(context, resource, defaultValue);
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putBoolean(context.getString(resource), !pref);
        editor.apply();
        return !pref;
    }

    public static void writeBooleanPreference(Context context, int resource,
            boolean value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putBoolean(context.getString(resource), value);
        editor.apply();
    }

    public static void writeBooleanPreferenceStringKey(Context context, String key,
            boolean value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putBoolean(key, value);
        editor.apply();
    }

    public static boolean switchBooleanPreferenceStringKey(Context context,
            String key, boolean defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        boolean pref = sharedPref.getBoolean(key, defaultValue);
        sharedPref.edit().putBoolean(key, !pref).apply();
        return !pref;
    }

    public static int getIntPreference(Context context, int resource, int defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        return sharedPref.getInt(context.getString(resource), defaultValue);
    }

    public static void writeIntPreference(Context context, int resource, int value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putInt(context.getString(resource), value);
        editor.apply();
    }

    public static Set<String> getStringSetPreference(Context context,
            int resource, Set<String> defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        return sharedPref.getStringSet(context.getString(resource),
                defaultValue);
    }

    public static Set<String> getStringSetPreferenceStringKey(Context context,
            String key, Set<String> defaultValue) {
        if (context == null) return defaultValue;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return defaultValue;
        return sharedPref.getStringSet(key, defaultValue);
    }

    public static void writeStringSetPreference(Context context, int resource,
            Set<String> value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putStringSet(context.getString(resource), value != null ? new HashSet<String>(value) : null);
        editor.apply();
    }

    public static void writeStringSetPreferenceStringKey(Context context, String key,
            Set<String> value) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putStringSet(key, value != null ? new HashSet<String>(value) : null);
        editor.apply();
    }

    public static void setActiveAbbreviationOption(Context context, int activeOption) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;

        String spaceKey = context.getString(R.string.pref_abbreviations_enabled_key);
        sharedPref.edit()
                .putBoolean(spaceKey, activeOption == 1)
                .putBoolean("ABBREVIATIONS_INSTANT", activeOption == 2)
                .putBoolean("ABBREVIATIONS_ADD_SPACE", activeOption == 3)
                .apply();
    }

    public static boolean toggleAbbreviationOption(Context context, int optionToToggle) {
        if (context == null) return false;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return false;

        String key = null;
        if (optionToToggle == 1) {
            key = context.getString(R.string.pref_abbreviations_enabled_key);
        } else if (optionToToggle == 2) {
            key = "ABBREVIATIONS_INSTANT";
        } else if (optionToToggle == 3) {
            key = "ABBREVIATIONS_ADD_SPACE";
        }

        if (key == null) return false;

        boolean currentlyEnabled = sharedPref.getBoolean(key, false);
        int newActiveOption = currentlyEnabled ? 0 : optionToToggle;
        setActiveAbbreviationOption(context, newActiveOption);

        return !currentlyEnabled;
    }

    public static void sanitizeAbbreviationPreferences(Context context) {
        if (context == null) return;
        SharedPreferences sharedPref = getSharedPreferences(context);
        if (sharedPref == null) return;

        String spaceKey = context.getString(R.string.pref_abbreviations_enabled_key);
        boolean space = sharedPref.getBoolean(spaceKey, false);
        boolean instant = sharedPref.getBoolean("ABBREVIATIONS_INSTANT", false);
        boolean addSpace = sharedPref.getBoolean("ABBREVIATIONS_ADD_SPACE", false);

        int count = (space ? 1 : 0) + (instant ? 1 : 0) + (addSpace ? 1 : 0);
        if (count > 1) {
            int active = 0;
            if (space) active = 1;
            else if (instant) active = 2;
            else if (addSpace) active = 3;

            setActiveAbbreviationOption(context, active);
        }
    }
}
