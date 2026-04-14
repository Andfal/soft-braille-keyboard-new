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

import com.dalton.braillekeyboard.R;
import com.dalton.braillekeyboard.Pad.Swipe;
import com.dalton.braillekeyboard.Pad.Coords;
import com.dalton.braillekeyboard.BrailleParser.BrailleType;
import com.dalton.braillekeyboard.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.Options.KeyboardEcho;
import com.dalton.braillekeyboard.Options.KeyboardType;
import com.dalton.braillekeyboard.Options.OptionList;
import com.dalton.braillekeyboard.EditingUtilities.Word;
import com.dalton.braillekeyboard.EmojiDictionary.EmojiEntry;
import com.dalton.braillekeyboard.SpellChecker.Suggestion;
import com.dalton.braillekeyboard.SpellChecker.SpellingSuggestionsReadyListener;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

import com.googlecode.eyesfree.braille.translate.BrailleTranslator;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import com.googlecode.eyesfree.braille.translate.TranslatorClient.OnInitListener;

/**
 * Acts as a layer of abstraction between the Android BrailleTranslator service
 * and the Braille IME itself.
 * 
 * You should instantiate this class in the InputMethodService implementation
 * and use it to back translate Braille patterns to text.
 * 
 * You should implement the BrailleParserListener callback as a method of
 * verifying when the service is ready for input.
 * 
 * This class provides methods to backtranslate Braille to text, switch Braille
 * tables and grades and list installed Braille tables.
 * 
 * You should always call the destroy() method when you are finished with the
 * instance to release system resources.
 */
public class BrailleParser {

    // The BrailleTranslator can currently accept back translation requests.
    public static final int STATUS_OK = 1;
    // The back translator is in the preparing state and can not yet receive
    // requests.
    public static final int STATUS_PREPARING = 0;
    // The BackTranslator is in the error state and can't accept requests.
    public static final int STATUS_ERROR = -1;
    // This instance has been shutdown and can not be used.
    public static final int STATUS_TABLE_ERROR = 2;

    /**
     * A callback which is invoked with a status flag when the BrailleTranslator
     * responds on initial setup.
     */
    public interface BrailleParserListener {

        /**
         * Invoked when the translator has responded and transfered from the
         * preparing state to some other state.
         * 
         * @param status
         *            The status of the BrailleTranslator. This can be STATUS_OK
         *            or STATUS_ERROR currently.
         */
        void onTranslatorReady(int status);
    }

    /**
     * Used to filter Braille tables by their varying types.
     * 
     * LITERARY refers to all 6 dot tables (grades 1 and 2). COMPUTER refers to
     * all 8 dot tables. ALL refers to both computer and literary tables.
     */
    public enum BrailleType {
        ALL(0), COMPUTER(8), LITERARY(6);

        public final int dots;

        BrailleType(int dots) {
            this.dots = dots;
        }

        /**
         * For backwards compatibility BrailleType is stored as an integer where
         * 0 = COMPUTER and all other values return LITERARY.
         * 
         * @param value
         *            The preference value for the BrailleType.
         * @return COMPUTER for value 0, LITERARY for all other values.
         */
        public static BrailleType valueOf(int value) {
            switch (value) {
            case 0:
                return COMPUTER;
            case 1:
                return LITERARY;
            default:
                return COMPUTER;
            }
        }

        /**
         * Toggle the BrailleType and return the new type. This makes COMPUTER
         * LITERARY and LITERARY COMPUTER. It does not make sense to toggle ALL
         * so ALL is returned.
         * 
         * @return LITERARY if the current state is COMPUTER, COMPUTER if the
         *         current state is LITERARY or ALL if the current state is ALL.
         */
        public BrailleType switchType() {
            switch (this) {
            case LITERARY:
                return COMPUTER;
            case COMPUTER:
                return LITERARY;
            default:
                return this;
            }
        }

        /**
         * Convert a BrailleType to an integer. This is most useful for
         * backwards compatibility with preferences.
         * 
         * @return 0 for COMPUTER Braille, 1 for LITERARY and 2 for ALL.
         */
        public int prefValue() {
            switch (this) {
            case COMPUTER:
                return 0;
            case LITERARY:
                return 1;
            default:
                return 2;
            }
        }
    }

    private final MyTranslatorClient client;
    private final SharedPreferences sharedPref;
    private final BrailleParserListener listener;
    private final List<String> tableIds;
    private final Context context;

    private BrailleTranslator translator;
    private TableInfo mCurrentTable;
    private List<TableInfo> tables;
    private int status = STATUS_PREPARING;

    /**
     * Construct a BrailleParser instance.
     * 
     * @param context
     *            The application context.
     * @param listener
     *            An implementation of BrailleParserListener which will be
     *            invoked when the BrailleTranslator has left the preparing
     *            state.
     */
    public BrailleParser(final Context context, BrailleParserListener listener) {
        this.context = context;
        this.listener = listener;
        sharedPref = Options.getSharedPreferences(context);
        String[] ids = context.getResources().getStringArray(
                R.array.braille_tables);
        tableIds = Arrays.asList(ids);

        client = new MyTranslatorClient(context, new OnInitListener() {

            @Override
            public void onInit(int status) {
                ready(context, status);
            }
        });
    }

    /**
     * Release system resources held by this instance.
     */
    public void destroy() {
        if (client != null) {
            client.destroy();
        }
        status = STATUS_ERROR;
    }

    /**
     * Get the currently active BrailleType according to the BrailleType
     * preference and return it.
     * 
     * @param context
     *            The application context.
     * @return The active BrailleType.
     */
    public BrailleType getBrailleType(Context context) {
        // Re-read preference from sharedPref to ensure we have latest value
        String valStr = sharedPref.getString(
                context.getString(R.string.pref_braille_type_key),
                context.getString(R.string.pref_braille_type_default));
        try {
            int value = Integer.parseInt(valStr);
            return BrailleType.valueOf(value);
        } catch (NumberFormatException e) {
            return BrailleType.LITERARY;
        }
    }

    /**
     * Get the active Braille table.
     * 
     * @param context
     *            The application context.
     * @return The active Braille table as determined by the application
     *         preferences.
     */
    public TableInfo getTable(Context context) {
        BrailleType brailleType = getBrailleType(context);
        String defaultId = getDefaultId(context, brailleType);
        String id;

        if (brailleType == BrailleType.COMPUTER) {
            id = sharedPref
                    .getString(
                            context.getString(R.string.pref_braille_computer_table_key),
                            defaultId);
        } else {
            id = sharedPref
                    .getString(
                            context.getString(R.string.pref_braille_literary_table_key),
                            defaultId);
        }
        
        // Handle "auto" or empty id
        if (id == null || id.isEmpty() || id.equals(context.getString(R.string.pref_braille_table_auto))) {
            id = defaultId;
        }

        android.util.Log.i("BrailleParser", "Active BrailleType: " + brailleType + " | Requested ID: " + id);

        List<TableInfo> availableTables = getTables(brailleType);
        if (availableTables == null) {
            android.util.Log.e("BrailleParser", "Tables list is NULL in getTable");
            return null;
        }

        for (TableInfo table : availableTables) {
            if (table.getId().equals(id)) {
                // Double check: if we are in LITERARY mode, the table MUST NOT be 8-dot
                if (brailleType == BrailleType.LITERARY && table.isEightDot()) {
                    android.util.Log.w("BrailleParser", "Conflict: LITERARY mode but 8-dot table found (" + id + "). Searching for 6-dot alternative.");
                    continue; 
                }
                return table;
            }
        }
        
        // If the requested ID was not found, instead of jumping to the first table,
        // let's try to find the BEST default for the current locale.
        TableInfo defaultTable = findDefaultTableInfo(brailleType);
        if (defaultTable != null) {
            android.util.Log.i("BrailleParser", "Requested table ID " + id + " not available. Using best match: " + defaultTable.getId());
            return defaultTable;
        }

        return null;
    }

    /**
     * Return a list of supported Braille tables for the given BrailleType by
     * the BrailleTranslator.
     * 
     * @param context
     *            The application context.
     * @param brailleType
     *            The type of tables to be returned.
     * @return The list of tables.
     */
    public List<TableInfo> getTables(BrailleType brailleType) {
        // Refresh tables from client if available to show newly created tables
        if (client != null) {
            List<TableInfo> freshTables = client.getTables();
            if (freshTables != null) {
                tables = freshTables;
            }
        }

        // Compare tables by locale in alphabetical order, prioritizing system language.
        final String sysLanguage = Locale.getDefault().getLanguage();
        Comparator<TableInfo> comparator = new Comparator<TableInfo>() {
            @Override
            public int compare(TableInfo o1, TableInfo o2) {
                if (o1 == null || o2 == null) return 0;
                Locale l1 = o1.getLocale();
                Locale l2 = o2.getLocale();
                if (l1 == null || l2 == null) return 0;
                
                boolean o1IsSystemLang = l1.getLanguage().equals(sysLanguage);
                boolean o2IsSystemLang = l2.getLanguage().equals(sysLanguage);
                
                if (o1IsSystemLang && !o2IsSystemLang) {
                    return -1;
                } else if (!o1IsSystemLang && o2IsSystemLang) {
                    return 1;
                }
                
                String table1 = l1.getDisplayLanguage() + " "
                        + l1.getDisplayCountry().trim();
                String table2 = l2.getDisplayLanguage() + " "
                        + l2.getDisplayCountry().trim();
                
                // For custom tables with same locale, sort by variant (filename)
                if (table1.equals(table2)) {
                    String v1 = o1.getVariant() != null ? o1.getVariant() : "";
                    String v2 = o2.getVariant() != null ? o2.getVariant() : "";
                    return v1.compareTo(v2);
                }
                
                return table1.compareTo(table2);
            }
        };

        if (tables != null) {
            List<TableInfo> filteredTables = filterTables(tables, brailleType);
            try {
                Collections.sort(filteredTables, comparator);
            } catch (Exception e) {
                android.util.Log.e("BrailleParser", "Error sorting tables", e);
            }
            return filteredTables;
        }
        return null;
    }

    /**
     * Toggle the active Braille type. If the current type is literary switches
     * to computer and if the current type is computer switches to literary.
     * 
     * @param context
     *            The application context.
     * @return The new BrailleType.
     */
    public BrailleType switchBrailleType(Context context) {
        BrailleType brailleType = getBrailleType(context).switchType();
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString(context.getString(R.string.pref_braille_type_key),
                String.valueOf(brailleType.prefValue()));
        // Sincronizziamo anche la preferenza per la visualizzazione degli 8 punti
        editor.putBoolean(context.getString(R.string.pref_use_eight_dots_key), 
                brailleType == BrailleType.COMPUTER);
        editor.commit();
        setTranslator(context);
        return brailleType;
    }

    /**
     * Switch to the next Braille table in the on the fly list matching the
     * active BrailleType. If there are no more in the list switch to the first
     * one.
     * 
     * @param context
     *            The application context.
     * @return A String describing the new table which can be shown to the user.
     */
    public String switchTable(Context context) {
        BrailleType brailleType = getBrailleType(context);
        // get tables matching only the active brailleType.
        List<TableInfo> tables = getTables(brailleType);
        // Retrieve the list of tables that can be switched on the fly.
        Set<String> onFly = Options.getStringSetPreference(context,
                R.string.pref_switch_tables_key, new HashSet<String>());
        // Get the active Braille table.
        TableInfo defaultTable = getTable(context);

        if (defaultTable == null) {
            return null;
        }

        // Move tablePosition to point at the default table in the table list.
        int tablePosition;
        for (tablePosition = 0; tablePosition < tables.size(); tablePosition++) {
            if (tables.get(tablePosition).getId().equals(defaultTable.getId())) {
                break;
            }
        }

        // Move in a circular motion through the tables list until we find the
        // next table in the list that is switchable on the fly. This will
        // traverse to the end of the list and then return to the start and work
        // it's way back to the default table if there are no on the fly tables.
        int i = 0;
        while (i++ < tables.size()) {
            tablePosition = tablePosition < tables.size() - 1 ? tablePosition + 1
                    : 0;
            TableInfo table = tables.get(tablePosition);
            if (onFly.contains(table.getId())) {
                setTable(context, table);

                // Found a table return a formatted String describing it.
                String result = String.format(
                        table.getLocale(),
                        "%s %s %s",
                        table.getLocale().getDisplayLanguage(),
                        table.getLocale().getDisplayCountry(),
                        table.isEightDot() ? "" : String.format(
                                context.getString(R.string.grade_table),
                                table.getGrade()));
                return result.trim();
            }
        }
        return null;
    }

    /**
     * Back translate an array of Braille dots to text.
     * 
     * @param context
     *            The application context.
     * @param cellBytes
     *            An array of bytes representing Braille dot patterns. Each byte
     *            represents a single Braille cell. Each cell is represented by
     *            a byte which is a bit string which indicates whether dots are
     *            on or off. The MSB of an 8 bit bitstring represents dot 8
     *            while the lsb represents dot 1. 0b11111111 means all 8 dots
     *            are pressed while 0 means no dots are active.
     * @return The back translation String or null if no backtranslation was
     *         possible.
     */
    public String backTranslate(Context context, Byte[] cellBytes) {
        // Ensure Liblouis receives exactly one leading space and one trailing space for context.
        // This is essential for correct Grade 2/3 translation and numeric mode stability.
        byte[] cells = new byte[cellBytes.length + 2];
        cells[0] = 0;
        cells[cells.length - 1] = 0;
        for (int i = 0; i < cellBytes.length; i++) {
            cells[i + 1] = cellBytes[i] != null ? cellBytes[i].byteValue() : 0;
        }

        String text = null;
        if (status == STATUS_OK && translator != null) {
            text = translator.backTranslate(cells);
            text = handleUnknownPatterns(context, text, cells);
        }
        return text != null ? text.trim() : text;
    }

    // Called when the BrailleTranslator becomes ready.
    private void ready(Context context, int translatorClientStatus) {
        android.util.Log.i("BrailleParser", "Translator ready status: " + translatorClientStatus);
        if (client != null
                && translatorClientStatus == MyTranslatorClient.SUCCESS) {
            status = STATUS_OK;
            tables = client.getTables();
            if (tables != null) {
                android.util.Log.i("BrailleParser", "Received " + tables.size() + " tables from client");
            } else {
                android.util.Log.e("BrailleParser", "Tables list is NULL from client");
            }
            setTranslator(context);
        } else {
            status = STATUS_ERROR;
        }
        listener.onTranslatorReady(status);
    }

    // Sets the translator to the active table.
    public boolean setTranslator(Context context) {
        TableInfo table = getTable(context);
        if (table != null
                && (status == STATUS_OK || status == STATUS_TABLE_ERROR)) {
            mCurrentTable = table;
            BrailleTranslator newTranslator = client.getTranslator(table.getId());
            
            // Fallback for custom tables if official client fails to find it in its list
            if (newTranslator == null && table.getId().startsWith("custom:")) {
                android.util.Log.w("BrailleParser", "Official client failed for custom table, attempting fallback for: " + table.getId());
                newTranslator = new CustomBrailleTranslator(client, table);
                android.util.Log.i("BrailleParser", "Real custom translator created for: " + table.getId());
            }

            if (newTranslator != null) {
                translator = newTranslator;
                status = STATUS_OK;
                android.util.Log.i("BrailleParser", "Translator successfully updated to: " + table.getId());
                return true;
            } else {
                android.util.Log.e("BrailleParser", "Failed to get translator for: " + table.getId());
                status = STATUS_TABLE_ERROR;
            }
        }
        return false;
    }

    /**
     * A real BrailleTranslator implementation for custom tables that speaks directly to the service.
     */
    private static class CustomBrailleTranslator implements BrailleTranslator {
        private final MyTranslatorClient client;
        private final TableInfo tableInfo;

        public CustomBrailleTranslator(MyTranslatorClient client, TableInfo tableInfo) {
            this.client = client;
            this.tableInfo = tableInfo;
        }

        @Override
        public com.googlecode.eyesfree.braille.translate.TranslationResult translate(String text, int cursorPosition, boolean computerBrailleAtCursor) {
            // MyTranslatorClient doesn't expose the translate method directly, 
            // but we can use the tables list to get any translator and hope the service is stateless? No.
            // We need a better way. Let's use the fact that MyTranslatorClient is in our package.
            return client.translate(text, tableInfo.getId(), cursorPosition, computerBrailleAtCursor);
        }

        @Override
        public com.googlecode.eyesfree.braille.translate.TranslationResult translate(String text, int cursorPosition) {
            return translate(text, cursorPosition, false);
        }

        @Override
        public String backTranslate(byte[] cells) {
            return client.backTranslate(cells, tableInfo.getId());
        }

        @Override
        public TableInfo getTableInfo() {
            return tableInfo;
        }
    }

    // Checks if a given Braille table matches the given BrailleType filter.
    private static boolean matchesBrailleType(TableInfo table,
            BrailleType brailleType) {
        if (brailleType == BrailleType.ALL) {
            return true;
        }

        if (brailleType == BrailleType.LITERARY) {
            return !table.isEightDot();
        } else if (brailleType == BrailleType.COMPUTER) {
            return table.isEightDot();
        }
        return false;
    }

    // Filter a list of tables and return the filtered list.
    // Tables must be declared in the arrays.xml file in the braille_tables
    // array, OR they must be custom tables starting with "custom:".
    // tables must match the specified BrailleType.
    private List<TableInfo> filterTables(List<TableInfo> tables,
            BrailleType brailleType) {
        List<TableInfo> list = new ArrayList<TableInfo>();
        
        boolean showExt = Options.getBooleanPreference(context, R.string.pref_show_ext_tables_key, false);
        android.util.Log.i("BrailleParser", "Filtering " + tables.size() + " tables. ShowExt: " + showExt);

        for (TableInfo table : tables) {
            // Filter by extended preference
            if (!showExt && table.getVariant() != null && table.getVariant().startsWith("[Ext]")) {
                continue;
            }

            if (matchesBrailleType(table, brailleType)) {
                list.add(table);
            }
        }
        // Filter out Grade 2 tables if Grade 1 is not present for that language.
        // It makes no sense to have contracted Braille if uncontracted is not available.
        if (brailleType == BrailleType.LITERARY || brailleType == BrailleType.ALL) {
            Set<String> languagesWithG1 = new HashSet<String>();
            for (TableInfo table : list) {
                if (table.getLocale() != null && (table.getGrade() == 1 || table.getGrade() == 0)) {
                    languagesWithG1.add(table.getLocale().getLanguage());
                }
            }
            
            List<TableInfo> filteredList = new ArrayList<TableInfo>();
            for (TableInfo table : list) {
                if (table.getGrade() == 2 && !table.getId().startsWith("liblouis:")) {
                    if (table.getLocale() != null && languagesWithG1.contains(table.getLocale().getLanguage())) {
                        filteredList.add(table);
                    } else {
                        android.util.Log.i("BrailleParser", "Excluding Grade 2 table without Grade 1: " + table.getId());
                    }
                } else {
                    filteredList.add(table);
                }
            }
            list = filteredList;
        }

        android.util.Log.i("BrailleParser", "Filter complete. Remaining tables: " + list.size());
        return list;
    }

    // Set the app preferences to have a new active table. Set the translator to
    // use this table.
    private void setTable(Context context, TableInfo table) {
        if (table != null) {
            SharedPreferences.Editor editor = sharedPref.edit();
            String defaultId = getDefaultId(context,
                    table.isEightDot() ? BrailleType.COMPUTER
                            : BrailleType.LITERARY);
            String id = table.getId().equals(defaultId) ? context
                    .getString(R.string.pref_braille_table_auto) : table
                    .getId();
            // Update the appropriate preference literary vs computer.
            if (table.isEightDot()) {
                editor.putString(context
                        .getString(R.string.pref_braille_computer_table_key),
                        id);
            } else {
                editor.putString(context
                        .getString(R.string.pref_braille_literary_table_key),
                        id);
            }
            editor.commit();
            setTranslator(context);
        }
    }

    // Returns an English readable pattern of the given byte value that
    // represents the pressed dots. For example 0b101 would return 13. See
    // BrailleTranslator details for how dots are encoded as bytes.
    private static String computeCellValue(byte value) {
        StringBuilder sb = new StringBuilder();
        int mask = 1;

        // We start from the right of the bit string at dot 1 and work our way
        // towards the left of the bit string adding dots to the output string
        // that are set to 1.
        for (int i = 1; i <= 8; i++) {
            if ((mask & value) != 0) {
                // dot is active here write it to the output.
                sb.append(String.valueOf(i));
            }
            mask <<= 1;
        }

        // Return the output string or nothing if no dots are set.
        return sb.length() > 0 ? sb.toString() : "";
    }

    // The BrailleTranslator can populate the output string with garbage for
    // unknown Braille patterns. Remove these from the string.
    // These are of the form \dotpattern/ eg. \12/ if dots 12 is unknown.
    private String handleUnknownPatterns(Context context, String text,
            byte[] cells) {
        if (text == null) {
            return null;
        }
        for (byte cell : cells) {
            String value = "\\" + computeCellValue(cell) + "/";
            if (text.contains(value)) {
                text = text.replace(value, "");
            }
        }
        return text;
    }

    private TableInfo findDefaultTableInfo(BrailleType brailleType) {
        List<TableInfo> filteredTables = getTables(brailleType);
        if (filteredTables == null) {
            return null;
        }

        TableInfo best = null;
        for (TableInfo info : filteredTables) {
            if (betterTable(info, best)) {
                best = info;
            }
        }
        return best;
    }

    private static boolean betterTable(TableInfo first, TableInfo second) {
        if (second == null) return true;
        
        int rank1 = matchRank(first.getLocale(), Locale.getDefault());
        int rank2 = matchRank(second.getLocale(), Locale.getDefault());
        
        if (rank1 > rank2) return true;
        if (rank1 < rank2) return false;
        
        // If ranks are equal (same language), prefer non-extended (official) tables
        boolean isExt1 = first.getVariant() != null && first.getVariant().startsWith("[Ext]");
        boolean isExt2 = second.getVariant() != null && second.getVariant().startsWith("[Ext]");
        
        if (!isExt1 && isExt2) return true;
        
        return false;
    }

    private static int matchRank(Locale first, Locale second) {
        int ret = first.getLanguage().equals(second.getLanguage()) ? 1 : 0;
        if (ret > 0) {
            ret += (first.getCountry().equals(second.getCountry()) ? 1 : 0);
            if (ret > 1) {
                ret += (first.getVariant().equals(second.getVariant()) ? 1 : 0);
            }
        }
        return ret;
    }

    public String getDefaultId(Context context, BrailleType brailleType) {
        TableInfo table = findDefaultTableInfo(brailleType);
        if (table != null) {
            return table.getId();
        }

        if (brailleType == BrailleType.COMPUTER) {
            return context
                    .getString(R.string.pref_braille_computer_table_default);
        } else {
            return context
                    .getString(R.string.pref_braille_literary_table_default);
        }
    }
}


