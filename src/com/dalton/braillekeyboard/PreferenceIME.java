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

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.preference.ListPreference;
import android.preference.MultiSelectListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.speech.tts.TextToSpeech;
import android.speech.tts.TextToSpeech.EngineInfo;
import android.widget.Toast;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import android.net.Uri;
import android.support.v4.content.FileProvider;

import com.dalton.braillekeyboard.BrailleParser.BrailleType;
import com.dalton.braillekeyboard.Options.KeyboardEcho;
import com.dalton.braillekeyboard.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.Options.OptionList;
import com.googlecode.eyesfree.braille.translate.TableInfo;

// TODO fix the keyboard echo / feedback prefs
public class PreferenceIME extends PreferenceActivity {
    @Override
    protected boolean isValidFragment(String fragmentName) {
        return true;
    }

    @Override
    public Intent getIntent() {
        final Intent modIntent = new Intent(super.getIntent());
        modIntent.putExtra(EXTRA_SHOW_FRAGMENT, Settings.class.getName());
        modIntent.putExtra(EXTRA_NO_HEADERS, true);
        return modIntent;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle(R.string.settings_name);
    }

    public static class Settings extends PreferenceFragment {
        private BrailleParser brailleParser;
        private TextToSpeech tts;

        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
                getPreferenceManager().setStorageDeviceProtected();
            }
            // Load the preferences from an XML resource
            addPreferencesFromResource(R.xml.ime_preferences);
            ListPreference keyboardEcho = (ListPreference) findPreference(getString(R.string.pref_echo_feedback_key));
            ListPreference keyboardFeedback = (ListPreference) findPreference(getString(R.string.pref_keyboard_feedback_key));
            ListPreference textToSpeechPreference = (ListPreference) findPreference(getString(R.string.pref_text_to_speech_engine_key));

            addOptions(keyboardFeedback, KeyboardFeedback.ALL);
            addOptions(keyboardEcho, KeyboardEcho.ALL);
            addTTSList(textToSpeechPreference);

            Preference importTable = findPreference("pref_import_table_key");
            if (importTable != null) {
                importTable.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                    @Override
                    public boolean onPreferenceClick(Preference preference) {
                        Intent intent = new Intent(getActivity(), TableManagerActivity.class);
                        startActivity(intent);
                        return true;
                    }
                });
            }

            Preference preference = findPreference(getActivity().getString(
                    R.string.pref_app_version_key));
            try {
                String versionCode = getActivity().getPackageManager()
                        .getPackageInfo(getActivity().getPackageName(), 0).versionName;
                preference.setTitle(String.format(
                        getActivity()
                                .getString(R.string.pref_app_version_title),
                        versionCode));
            } catch (Exception e) {
                preference.setEnabled(false);
            }

            brailleParser = new BrailleParser(getActivity(),
                    new BrailleParser.BrailleParserListener() {

                        @Override
                        public void onTranslatorReady(int status) {
                            addTables(status);
                        }
                    });
        }

        @Override
        public void onResume() {
            super.onResume();
            if (brailleParser != null) {
                addTables(BrailleParser.STATUS_OK);
            }
        }

        @Override
        public void onDestroy() {
            super.onDestroy();
            if (brailleParser != null) {
                brailleParser.destroy();
            }
        }

        @Override
        public boolean onPreferenceTreeClick(android.preference.PreferenceScreen preferenceScreen, Preference preference) {
            String key = preference.getKey();
            if (getString(R.string.pref_share_log_key).equals(key)) {
                shareLog();
                return true;
            } else if (getString(R.string.pref_clear_log_key).equals(key)) {
                clearLog();
                return true;
            }
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }

        private void shareLog() {
            try {
                File logFile = new File(getActivity().getCacheDir(), "logcat.txt");
                Process process = Runtime.getRuntime().exec("logcat -d");
                InputStream is = process.getInputStream();
                FileOutputStream fos = new FileOutputStream(logFile);
                byte[] buffer = new byte[1024];
                int read;
                while ((read = is.read(buffer)) != -1) {
                    fos.write(buffer, 0, read);
                }
                fos.close();
                is.close();

                Uri contentUri = FileProvider.getUriForFile(getActivity(),
                        getActivity().getPackageName() + ".fileprovider", logFile);

                Intent shareIntent = new Intent(Intent.ACTION_SEND);
                shareIntent.setType("text/plain");
                shareIntent.putExtra(Intent.EXTRA_STREAM, contentUri);
                shareIntent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                startActivity(Intent.createChooser(shareIntent, getString(R.string.pref_share_log_title)));
            } catch (Exception e) {
                android.util.Log.e("PreferenceIME", "Error sharing log", e);
                Toast.makeText(getActivity(), R.string.msg_error_logs, Toast.LENGTH_SHORT).show();
            }
        }

        private void clearLog() {
            try {
                Runtime.getRuntime().exec("logcat -c");
                Toast.makeText(getActivity(), R.string.msg_logs_cleared, Toast.LENGTH_SHORT).show();
            } catch (Exception e) {
                android.util.Log.e("PreferenceIME", "Error clearing log", e);
                Toast.makeText(getActivity(), R.string.msg_error_logs, Toast.LENGTH_SHORT).show();
            }
        }

        private void addTables(int status) {
            android.util.Log.i("PreferenceIME", "addTables called with status: " + status);
            List<String> entries = new ArrayList<String>();
            List<String> entryValues = new ArrayList<String>();

            ListPreference compBraille = (ListPreference) findPreference(getString(R.string.pref_braille_computer_table_key));
            ListPreference literaryBraille = (ListPreference) findPreference(getString(R.string.pref_braille_literary_table_key));
            MultiSelectListPreference switchPref = (MultiSelectListPreference) findPreference(getActivity()
                    .getString(R.string.pref_switch_tables_key));

            List<TableInfo> tables = null;
            if (status == BrailleParser.STATUS_OK || status == BrailleParser.STATUS_TABLE_ERROR) {
                tables = brailleParser.getTables(BrailleType.ALL);
            }
            
            if (tables == null) {
                android.util.Log.w("PreferenceIME", "Tables list is NULL, skipping population");
                return;
            }

            android.util.Log.i("PreferenceIME", "Populating switchPref with " + tables.size() + " tables");
            populateWithTables(tables, entries, entryValues, true, null);
            if (switchPref != null) {
                switchPref.setEntries(entries.toArray(new String[entries.size()]));
                switchPref.setEntryValues(entryValues.toArray(new String[entryValues.size()]));
            }

            resetLists(entries, entryValues);
            tables = brailleParser.getTables(BrailleType.LITERARY);
            android.util.Log.i("PreferenceIME", "Populating literaryBraille with " + (tables != null ? tables.size() : 0) + " tables");
            populateWithTables(tables, entries, entryValues, true,
                    brailleParser.getDefaultId(getActivity(),
                            BrailleType.LITERARY));
            if (literaryBraille != null) {
                literaryBraille.setEntries(entries.toArray(new String[entries.size()]));
                literaryBraille.setEntryValues(entryValues.toArray(new String[entryValues.size()]));
                literaryBraille.setEnabled(true);
            }

            resetLists(entries, entryValues);
            tables = brailleParser.getTables(BrailleType.COMPUTER);
            android.util.Log.i("PreferenceIME", "Populating compBraille with " + (tables != null ? tables.size() : 0) + " tables");
            populateWithTables(tables, entries, entryValues, true,
                    brailleParser.getDefaultId(getActivity(),
                            BrailleType.COMPUTER));
            if (compBraille != null) {
                compBraille.setEntries(entries.toArray(new String[entries.size()]));
                compBraille.setEntryValues(entryValues.toArray(new String[entryValues.size()]));
                compBraille.setEnabled(true);
            }
        }

        private void addOptions(ListPreference pref, OptionList option) {
            if (pref == null) return;
            OptionList[] types = option.getValues();
            CharSequence[] entries = new CharSequence[types.length];
            CharSequence[] entryValues = new CharSequence[entries.length];
            for (int i = 0; i < entries.length; i++) {
                entries[i] = getString(types[i].getResource());
                entryValues[i] = types[i].getValue();
            }
            pref.setEntries(entries);
            pref.setEntryValues(entryValues);
        }

        private void populateWithTables(List<TableInfo> tables,
                List<String> entries, List<String> entryValues,
                boolean verbose, String defaultId) {
            if (tables == null) return;
            
            Context context = getActivity();
            if (context == null) return;

            for (TableInfo table : tables) {
                try {
                    String text = "";
                    if (table.getId().startsWith("custom:")) {
                        String name = table.getVariant();
                        if (name == null || name.isEmpty()) name = "table";
                        text = context.getString(R.string.custom_table_label_prefix) + " " + name;
                    } else {
                        text = table.getLocale().getDisplayLanguage();
                        String country = table.getLocale().getDisplayCountry();
                        if (country != null && !country.isEmpty()) {
                            text += " (" + country + ")";
                        }
                    }

                    if (verbose) {
                        String label;
                        if (table.isEightDot()) {
                            label = context.getString(R.string.grade_computer);
                        } else {
                            label = String.format(
                                    context.getString(R.string.grade_table),
                                    table.getGrade());
                        }
                        
                        String variant = table.getVariant();
                        if (variant != null && !variant.isEmpty() && !table.getId().startsWith("custom:")) {
                            if (variant.equalsIgnoreCase("Unofficial")) {
                                label += " (" + context.getString(R.string.table_variant_unofficial) + ")";
                            } else {
                                label += " (" + variant + ")";
                            }
                        }
                        
                        text += ": " + label;
                    }
                    entries.add(text);
                    if (table.getId().equals(defaultId)) {
                        entryValues.add(context.getString(R.string.pref_braille_table_auto));
                    } else {
                        entryValues.add(table.getId());
                    }
                } catch (Exception e) {
                    android.util.Log.e("PreferenceIME", "Error populating table: " + table.getId(), e);
                }
            }
        }

        private static void resetLists(List<String> list1, List<String> list2) {
            list1.clear();
            list2.clear();
        }

        private void addTTSList(final ListPreference preference) {
            tts = new TextToSpeech(getActivity(),
                    new TextToSpeech.OnInitListener() {

                        @Override
                        public void onInit(int status) {
                            doEnginesList(preference);
                        }
                    });
        }

        private void doEnginesList(ListPreference preference) {
            List<EngineInfo> engines = tts.getEngines();
            tts.shutdown();
            Collections.sort(engines, new Comparator<EngineInfo>() {
                @Override
                public int compare(EngineInfo o1, EngineInfo o2) {
                    return o1.label.toLowerCase(Locale.getDefault()).compareTo(
                            o2.label.toLowerCase(Locale.getDefault()));
                }
            });

            CharSequence[] entries = new CharSequence[engines.size()];
            CharSequence[] entryValues = new CharSequence[engines.size()];

            for (int i = 0; i < engines.size(); i++) {
                String label = engines.get(i).label;
                String name = engines.get(i).name;
                entryValues[i] = name.subSequence(0, name.length());
                entries[i] = label.subSequence(0, label.length());
            }

            preference.setEntries(entries);
            preference.setEntryValues(entryValues);
        }
    }
}
