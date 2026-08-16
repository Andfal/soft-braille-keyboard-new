/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

package com.dalton.braillekeyboard;

import android.content.Context;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * Gestisce il dizionario delle abbreviazioni e la logica di espansione.
 */
public class AbbreviationManager {
    private static final String TAG = "AbbreviationManager";
    private static final String PREF_ABBREVIATIONS_JSON = "pref_abbreviations_json";
    
    private final Context context;
    private Map<String, String> abbreviations = new HashMap<String, String>();
    private static AbbreviationManager instance;

    private AbbreviationManager(Context context) {
        this.context = context.getApplicationContext();
        loadAbbreviations();
    }

    public static synchronized AbbreviationManager getInstance(Context context) {
        if (instance == null) {
            instance = new AbbreviationManager(context);
        }
        return instance;
    }

    private void loadAbbreviations() {
        String jsonStr = Options.getSharedPreferences(context).getString(PREF_ABBREVIATIONS_JSON, "{}");
        try {
            JSONObject json = new JSONObject(jsonStr);
            abbreviations.clear();
            Iterator<String> keys = json.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                abbreviations.put(key, json.getString(key));
            }
        } catch (JSONException e) {
            Log.e(TAG, "Errore nel caricamento delle abbreviazioni", e);
        }
    }

    public void saveAbbreviations() {
        JSONObject json = new JSONObject();
        try {
            for (Map.Entry<String, String> entry : abbreviations.entrySet()) {
                json.put(entry.getKey(), entry.getValue());
            }
            Options.getSharedPreferences(context).edit()
                    .putString(PREF_ABBREVIATIONS_JSON, json.toString())
                    .apply();
        } catch (JSONException e) {
            Log.e(TAG, "Errore nel salvataggio delle abbreviazioni", e);
        }
    }

    public Map<String, String> getAbbreviations() {
        return abbreviations;
    }

    public void addAbbreviation(String shortcut, String expansion) {
        abbreviations.put(shortcut, expansion);
        saveAbbreviations();
    }

    public void clearAll() {
        abbreviations.clear();
        saveAbbreviations();
    }

    public void removeAbbreviation(String shortcut) {
        abbreviations.remove(shortcut);
        saveAbbreviations();
    }

    public boolean exportToJson(java.io.File file) {
        try {
            JSONObject json = new JSONObject();
            for (Map.Entry<String, String> entry : abbreviations.entrySet()) {
                json.put(entry.getKey(), entry.getValue());
            }
            java.io.FileOutputStream fos = new java.io.FileOutputStream(file);
            fos.write(json.toString(2).getBytes("UTF-8"));
            fos.close();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Export error", e);
            return false;
        }
    }

    public boolean importFromJson(java.io.File file) {
        try {
            java.io.FileInputStream fis = new java.io.FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            fis.read(data);
            fis.close();
            String jsonStr = new String(data, "UTF-8");
            JSONObject json = new JSONObject(jsonStr);
            
            abbreviations.clear();
            Iterator<String> keys = json.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                abbreviations.put(key, json.getString(key));
            }
            saveAbbreviations();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Import error", e);
            return false;
        }
    }

    /**
     * Cerca un'espansione per la parola digitata.
     * Gestisce: Case-insensitivity, Prefissi di punteggiatura e Prefissi a punti (es. 6-s).
     * @param typedCellsCount Se > 0, impone che il numero di celle dell'abbreviazione coincida.
     */
    private String findMatch(String key, int typedCellsCount, KeyboardListener listener) {
        for (Map.Entry<String, String> entry : abbreviations.entrySet()) {
            String shortcut = entry.getKey();
            if (shortcut.equalsIgnoreCase(key)) {
                if (typedCellsCount > 0) {
                    byte[] shortcutDots = (listener != null) ? listener.getDotsForTextLiteral(shortcut) : null;
                    int shortcutCells = (shortcutDots != null) ? shortcutDots.length : shortcut.length();
                    if (shortcutCells != typedCellsCount) continue;
                }
                return entry.getValue();
            }
            
            if (shortcut.contains("-") && listener != null) {
                String[] parts = shortcut.split("-");
                java.util.List<Byte> cellList = new java.util.ArrayList<Byte>();
                for (String part : parts) {
                    if (isNumeric(part)) cellList.add(parseDots(part));
                    else {
                        byte[] dots = listener.getDotsForTextLiteral(part);
                        if (dots != null) for (byte b : dots) cellList.add(b);
                    }
                }
                if (!cellList.isEmpty()) {
                    byte[] combinedCells = new byte[cellList.size()];
                    for (int i = 0; i < combinedCells.length; i++) combinedCells[i] = cellList.get(i);
                    String simulatedResult = listener.backTranslate(combinedCells);
                    if (simulatedResult != null && simulatedResult.equalsIgnoreCase(key)) {
                        if (typedCellsCount > 0 && combinedCells.length != typedCellsCount) continue;
                        return entry.getValue();
                    }
                }
            }
        }
        return null;
    }

    private boolean isNumeric(String str) {
        for (char c : str.toCharArray()) if (!Character.isDigit(c)) return false;
        return str.length() > 0;
    }

    private byte parseDots(String dotsStr) {
        int dots = 0;
        for (char c : dotsStr.toCharArray()) {
            int dot = c - '0';
            if (dot >= 1 && dot <= 8) dots |= (1 << (dot - 1));
        }
        return (byte) dots;
    }

    public String getExpansion(String typedWord, KeyboardListener listener) {
        return getExpansion(typedWord, -1, listener);
    }

    public String getExpansion(String typedWord, int typedCellsCount, KeyboardListener listener) {
        if (typedWord == null || typedWord.length() == 0) return null;
        String expansion = findMatch(typedWord, typedCellsCount, listener);
        if (expansion != null) return expansion;
        if (typedCellsCount > 0) return null;

        int firstLetterIdx = 0;
        while (firstLetterIdx < typedWord.length() && !Character.isLetterOrDigit(typedWord.charAt(firstLetterIdx))) firstLetterIdx++;
        if (firstLetterIdx > 0 && firstLetterIdx < typedWord.length()) {
            String core = typedWord.substring(firstLetterIdx);
            int lastLetterIdx = core.length() - 1;
            while (lastLetterIdx >= 0 && !Character.isLetterOrDigit(core.charAt(lastLetterIdx))) lastLetterIdx--;
            if (lastLetterIdx < core.length() - 1) {
                String subCore = core.substring(0, lastLetterIdx + 1);
                String suffix = core.substring(lastLetterIdx + 1);
                expansion = findMatch(subCore, -1, listener);
                if (expansion != null) return expansion + suffix;
            } else {
                expansion = findMatch(core, -1, listener);
                if (expansion != null) return expansion;
            }
        }
        
        int lastLetterIdx = typedWord.length() - 1;
        while (lastLetterIdx >= 0 && !Character.isLetterOrDigit(typedWord.charAt(lastLetterIdx))) lastLetterIdx--;
        if (lastLetterIdx < typedWord.length() - 1 && lastLetterIdx >= 0) {
            String core = typedWord.substring(0, lastLetterIdx + 1);
            String suffix = typedWord.substring(lastLetterIdx + 1);
            expansion = findMatch(core, -1, listener);
            if (expansion != null) return expansion + suffix;
        }
        return null;
    }

    public String getExpansionWithDots(String typedWord, KeyboardListener listener) {
        return getExpansion(typedWord, -1, listener);
    }
}
