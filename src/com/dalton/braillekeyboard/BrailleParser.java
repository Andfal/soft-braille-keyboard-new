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
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import android.content.Context;
import android.content.SharedPreferences;

import com.googlecode.eyesfree.braille.translate.BrailleTranslator;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import com.googlecode.eyesfree.braille.translate.TranslatorClient.OnInitListener;

/**
 * Acts as a layer of abstraction between the Android BrailleTranslator service
 * and the Braille IME itself.
 */
public class BrailleParser {

    public static final int STATUS_OK = 1;
    public static final int STATUS_PREPARING = 0;
    public static final int STATUS_ERROR = -1;
    public static final int STATUS_TABLE_ERROR = 2;

    public interface BrailleParserListener {
        void onTranslatorReady(int status);
    }

    public enum BrailleType {
        ALL(0), COMPUTER(8), LITERARY(6);

        public final int dots;

        BrailleType(int dots) {
            this.dots = dots;
        }

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
    private final Context context;

    private BrailleTranslator translator;
    private List<TableInfo> tables;
    private int status = STATUS_PREPARING;

    public BrailleParser(final Context context, BrailleParserListener listener) {
        this.context = context;
        this.listener = listener;
        sharedPref = Options.getSharedPreferences(context);

        client = new MyTranslatorClient(context, new OnInitListener() {
            @Override
            public void onInit(int status) {
                ready(context, status);
            }
        });
    }

    public void destroy() {
        if (client != null) {
            client.destroy();
        }
        status = STATUS_ERROR;
    }

    public BrailleType getBrailleType(Context context) {
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

    public TableInfo getTable(Context context) {
        BrailleType brailleType = getBrailleType(context);
        String defaultId = getDefaultId(context, brailleType);
        String id;

        if (brailleType == BrailleType.COMPUTER) {
            id = sharedPref.getString(context.getString(R.string.pref_braille_computer_table_key), defaultId);
        } else {
            id = sharedPref.getString(context.getString(R.string.pref_braille_literary_table_key), defaultId);
        }
        
        if (id == null || id.isEmpty() || id.equals(context.getString(R.string.pref_braille_table_auto))) {
            id = defaultId;
        }

        List<TableInfo> availableTables = getTables(brailleType);
        if (availableTables == null) return null;

        for (TableInfo table : availableTables) {
            if (table.getId().equals(id)) {
                if (brailleType == BrailleType.LITERARY && table.isEightDot()) continue; 
                return table;
            }
        }
        
        return findDefaultTableInfo(brailleType);
    }

    public List<TableInfo> getTables(BrailleType brailleType) {
        if (client != null) {
            List<TableInfo> freshTables = client.getTables();
            if (freshTables != null) tables = freshTables;
        }

        final String sysLanguage = Locale.getDefault().getLanguage();
        Comparator<TableInfo> comparator = new Comparator<TableInfo>() {
            @Override
            public int compare(TableInfo o1, TableInfo o2) {
                if (o1 == null || o2 == null) return 0;
                Locale l1 = o1.getLocale(), l2 = o2.getLocale();
                if (l1 == null || l2 == null) return 0;
                boolean m1 = l1.getLanguage().equals(sysLanguage), m2 = l2.getLanguage().equals(sysLanguage);
                if (m1 && !m2) return -1; if (!m1 && m2) return 1;
                String t1 = l1.getDisplayLanguage() + " " + l1.getDisplayCountry().trim();
                String t2 = l2.getDisplayLanguage() + " " + l2.getDisplayCountry().trim();
                if (t1.equals(t2)) {
                    String v1 = o1.getVariant() != null ? o1.getVariant() : "";
                    String v2 = o2.getVariant() != null ? o2.getVariant() : "";
                    return v1.compareTo(v2);
                }
                return t1.compareTo(t2);
            }
        };

        if (tables != null) {
            List<TableInfo> filteredTables = filterTables(tables, brailleType);
            try { Collections.sort(filteredTables, comparator); } catch (Exception e) {}
            return filteredTables;
        }
        return null;
    }

    public BrailleType switchBrailleType(Context context) {
        BrailleType brailleType = getBrailleType(context).switchType();
        SharedPreferences.Editor editor = sharedPref.edit();
        editor.putString(context.getString(R.string.pref_braille_type_key), String.valueOf(brailleType.prefValue()));
        editor.putBoolean(context.getString(R.string.pref_use_eight_dots_key), brailleType == BrailleType.COMPUTER);
        editor.apply();
        setTranslator(context);
        return brailleType;
    }

    public String switchTable(Context context) {
        BrailleType brailleType = getBrailleType(context);
        List<TableInfo> tables = getTables(brailleType);
        Set<String> onFly = Options.getStringSetPreference(context, R.string.pref_switch_tables_key, new HashSet<String>());
        TableInfo defaultTable = getTable(context);
        if (defaultTable == null) return null;

        int pos; for (pos = 0; pos < tables.size(); pos++) if (tables.get(pos).getId().equals(defaultTable.getId())) break;

        int i = 0;
        while (i++ < tables.size()) {
            pos = pos < tables.size() - 1 ? pos + 1 : 0;
            TableInfo table = tables.get(pos);
            if (onFly.contains(table.getId())) {
                setTable(context, table);
                String gradeStr = table.isEightDot() ? "" : String.format(context.getString(R.string.grade_table), table.getGrade());
                if (!table.isEightDot()) {
                    if ("it-g1".equals(table.getId())) {
                        gradeStr += " num-6";
                    } else if ("it-it-numerazione-canonica".equals(table.getId())) {
                        gradeStr += " num3456";
                    }
                }
                return (table.getLocale().getDisplayLanguage() + " " + table.getLocale().getDisplayCountry() + " " + gradeStr).trim();
            }
        }
        return null;
    }

    public String backTranslate(Context context, Byte[] cellBytes) {
        byte[] cells = new byte[cellBytes.length];
        for (int i = 0; i < cellBytes.length; i++) cells[i] = cellBytes[i] != null ? cellBytes[i].byteValue() : 0;
        return backTranslate(context, cells);
    }

    public String backTranslate(Context context, byte[] cellBytes) {
        byte[] cellsWithContext = new byte[cellBytes.length + 2];
        cellsWithContext[0] = 0; cellsWithContext[cellsWithContext.length - 1] = 0;
        System.arraycopy(cellBytes, 0, cellsWithContext, 1, cellBytes.length);
        String text = null;
        if (status == STATUS_OK && translator != null) {
            text = translator.backTranslate(cellsWithContext);
            text = handleUnknownPatterns(context, text, cellsWithContext);
        }
        return text != null ? text.trim() : text;
    }

    public byte[] getDotsForText(String text) {
        if (status == STATUS_OK && translator != null) {
            com.googlecode.eyesfree.braille.translate.TranslationResult result = translator.translate(text, 0);
            if (result != null) return result.getCells();
        }
        return null;
    }

    public byte[] getDotsForTextLiteral(Context context, String text) {
        if (status != STATUS_OK || client == null) return null;
        TableInfo targetTable = findLiteralTable(context);
        if (targetTable != null) {
            com.googlecode.eyesfree.braille.translate.TranslationResult result = client.translate(text, targetTable.getId(), 0, false);
            if (result != null) return result.getCells();
        }
        return null;
    }

    public String backTranslateLiteral(Context context, Byte[] cellBytes) {
        if (status != STATUS_OK || client == null) return null;
        TableInfo targetTable = findLiteralTable(context);
        if (targetTable == null) return null;
        byte[] cells = new byte[cellBytes.length + 2];
        cells[0] = 0; cells[cells.length - 1] = 0;
        for (int i = 0; i < cellBytes.length; i++) cells[i + 1] = cellBytes[i] != null ? cellBytes[i].byteValue() : 0;
        String text = client.backTranslate(cells, targetTable.getId());
        text = handleUnknownPatterns(context, text, cells);
        return text != null ? text.trim() : text;
    }

    private TableInfo findLiteralTable(Context context) {
        TableInfo current = getTable(context);
        if (current == null) return null;
        if (current.getGrade() <= 1 && !current.isEightDot()) return current;
        List<TableInfo> all = getTables(BrailleType.LITERARY);
        if (all != null) {
            for (TableInfo t : all) if (t.getLocale().getLanguage().equals(current.getLocale().getLanguage()) && t.getGrade() <= 1 && !t.isEightDot()) return t;
        }
        return current;
    }

    private void ready(Context context, int translatorClientStatus) {
        if (client != null && translatorClientStatus == MyTranslatorClient.SUCCESS) {
            status = STATUS_OK; tables = client.getTables(); setTranslator(context);
        } else status = STATUS_ERROR;
        listener.onTranslatorReady(status);
    }

    public boolean setTranslator(Context context) {
        TableInfo table = getTable(context);
        if (table != null && (status == STATUS_OK || status == STATUS_TABLE_ERROR)) {
            BrailleTranslator newTranslator = client.getTranslator(table.getId());
            if (newTranslator == null && table.getId().startsWith("custom:")) newTranslator = new CustomBrailleTranslator(client, table);
            if (newTranslator != null) { translator = newTranslator; status = STATUS_OK; return true; }
            else status = STATUS_TABLE_ERROR;
        }
        return false;
    }

    private static class CustomBrailleTranslator implements BrailleTranslator {
        private final MyTranslatorClient client;
        private final TableInfo tableInfo;
        public CustomBrailleTranslator(MyTranslatorClient client, TableInfo tableInfo) { this.client = client; this.tableInfo = tableInfo; }
        @Override public com.googlecode.eyesfree.braille.translate.TranslationResult translate(String text, int cursorPosition, boolean computerBrailleAtCursor) { return client.translate(text, tableInfo.getId(), cursorPosition, computerBrailleAtCursor); }
        @Override public com.googlecode.eyesfree.braille.translate.TranslationResult translate(String text, int cursorPosition) { return translate(text, cursorPosition, false); }
        @Override public String backTranslate(byte[] cells) { return client.backTranslate(cells, tableInfo.getId()); }
        @Override public TableInfo getTableInfo() { return tableInfo; }
    }

    private List<TableInfo> filterTables(List<TableInfo> tables, BrailleType brailleType) {
        List<TableInfo> list = new ArrayList<TableInfo>();
        boolean showExt = Options.getBooleanPreference(context, R.string.pref_show_ext_tables_key, false);
        for (TableInfo table : tables) {
            if (!showExt && table.getVariant() != null && table.getVariant().startsWith("[Ext]")) continue;
            if (brailleType == BrailleType.ALL || (brailleType == BrailleType.LITERARY && !table.isEightDot()) || (brailleType == BrailleType.COMPUTER && table.isEightDot())) list.add(table);
        }
        return list;
    }

    private void setTable(Context context, TableInfo table) {
        if (table != null) {
            SharedPreferences.Editor editor = sharedPref.edit();
            String key = table.isEightDot() ? context.getString(R.string.pref_braille_computer_table_key) : context.getString(R.string.pref_braille_literary_table_key);
            editor.putString(key, table.getId());
            editor.apply();
            setTranslator(context);
        }
    }

    private String handleUnknownPatterns(Context context, String text, byte[] cells) {
        if (text == null) return null;
        for (byte cell : cells) { String v = "\\" + computeCellValue(cell) + "/"; if (text.contains(v)) text = text.replace(v, ""); }
        return text;
    }

    private static String computeCellValue(byte value) {
        StringBuilder sb = new StringBuilder(); int mask = 1;
        for (int i = 1; i <= 8; i++) { if ((mask & value) != 0) sb.append(i); mask <<= 1; }
        return sb.toString();
    }

    private TableInfo findDefaultTableInfo(BrailleType brailleType) {
        List<TableInfo> filteredTables = getTables(brailleType);
        if ((filteredTables == null || filteredTables.isEmpty()) && brailleType == BrailleType.LITERARY) {
            filteredTables = getTables(BrailleType.COMPUTER);
        }
        if (filteredTables == null || filteredTables.isEmpty()) return null;
        TableInfo best = null;
        for (TableInfo info : filteredTables) { if (best == null || matchRank(info.getLocale(), Locale.getDefault()) > matchRank(best.getLocale(), Locale.getDefault())) best = info; }
        return best;
    }

    private static int matchRank(Locale first, Locale second) {
        int ret = first.getLanguage().equals(second.getLanguage()) ? 1 : 0;
        if (ret > 0) { ret += (first.getCountry().equals(second.getCountry()) ? 1 : 0); if (ret > 1) ret += (first.getVariant().equals(second.getVariant()) ? 1 : 0); }
        return ret;
    }

    public String getDefaultId(Context context, BrailleType brailleType) {
        TableInfo table = findDefaultTableInfo(brailleType);
        return table != null ? table.getId() : context.getString(brailleType == BrailleType.COMPUTER ? R.string.pref_braille_computer_table_default : R.string.pref_braille_literary_table_default);
    }
}
