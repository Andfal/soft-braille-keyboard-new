package com.googlecode.eyesfree.braille.service.translate;

import android.content.Context;
import android.util.Log;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Manages custom braille tables stored in the internal app storage.
 */
public class CustomTableManager {
    private static final String TAG = "CustomTableManager";
    private static final String CUSTOM_TABLE_DIR = "custom_tables";
    public static final String CUSTOM_PREFIX = "custom:";

    private final File mCustomDir;
    private final List<TableInfo> mCustomTables = new ArrayList<>();
    private final Map<String, String> mTableFileNames = new HashMap<>();

    public CustomTableManager(Context context) {
        mCustomDir = new File(context.getFilesDir(), CUSTOM_TABLE_DIR);
        if (!mCustomDir.exists()) {
            mCustomDir.mkdirs();
        }
        scanFiles();
    }

    public void scanFiles() {
        mCustomTables.clear();
        mTableFileNames.clear();
        File[] files = mCustomDir.listFiles();
        if (files == null) return;

        for (File file : files) {
            String name = file.getName();
            if (name.endsWith(".ctb") || name.endsWith(".utb") || name.endsWith(".dis")) {
                String id = CUSTOM_PREFIX + name;
                boolean isEightDot = checkIsEightDot(file);
                
                Locale locale = parseLocale(file);
                String author = parseAuthor(file);
                String label = name;
                if (author != null) label += " (" + author + ")";

                TableInfo info = new TableInfo(
                        locale,
                        isEightDot,
                        0,    // grade
                        id,
                        label
                );
                mCustomTables.add(info);
                mTableFileNames.put(id, file.getAbsolutePath());
                Log.i(TAG, "Loaded custom table: " + id + " (8dot=" + isEightDot + ", locale=" + locale + ") -> " + file.getAbsolutePath());
            }
        }
    }

    private Locale parseLocale(File file) {
        String name = file.getName().toLowerCase(Locale.US);
        try (java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.startsWith("#+locale: ")) {
                    String code = line.substring(10).trim();
                    String[] parts = code.split("[-_]");
                    if (parts.length == 1) return new Locale(parts[0]);
                    if (parts.length >= 2) return new Locale(parts[0], parts[1]);
                }
                if (!line.startsWith("#") && !line.isEmpty()) break;
            }
        } catch (java.io.IOException e) {}

        // Guess from filename if no header
        if (name.startsWith("it")) return new Locale("it", "IT");
        if (name.startsWith("en")) return new Locale("en", "US");
        if (name.startsWith("es")) return new Locale("es", "ES");
        if (name.startsWith("fr")) return new Locale("fr", "FR");
        if (name.startsWith("de")) return new Locale("de", "DE");
        if (name.startsWith("pt")) return new Locale("pt", "PT");
        if (name.startsWith("ru")) return new Locale("ru", "RU");
        if (name.startsWith("ar")) return new Locale("ar");

        return Locale.getDefault();
    }

    private String parseAuthor(File file) {
        try (java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.startsWith("# Author: ")) return line.substring(10).trim();
                if (!line.startsWith("#") && !line.isEmpty()) break;
            }
        } catch (java.io.IOException e) {}
        return null;
    }

    private boolean checkIsEightDot(File file) {
        try (java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.FileReader(file))) {
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.contains("# Dots: 8")) return true;
                if (line.contains("# Dots: 6")) return false;
                if (line.contains("latinLetterDef8Dots.uti")) return true;
                if (line.contains("latinLetterDef6Dots.uti")) return false;
            }
        } catch (java.io.IOException e) {
            Log.e(TAG, "Error reading table header", e);
        }
        return false; // Default to 6-dot literary if unsure
    }

    public List<TableInfo> getTables() {
        return mCustomTables;
    }

    public String getFileName(String tableId) {
        return mTableFileNames.get(tableId);
    }

    public File getCustomTableFile(String name) {
        if (name == null || name.isEmpty()) return new File(mCustomDir, "unnamed.ctb");
        if (!name.endsWith(".ctb") && !name.endsWith(".utb") && !name.endsWith(".dis")) {
            name += ".ctb";
        }
        return new File(mCustomDir, name);
    }

    public boolean deleteTable(String tableId) {
        String path = mTableFileNames.get(tableId);
        if (path != null) {
            File file = new File(path);
            if (file.exists()) {
                boolean deleted = file.delete();
                if (deleted) {
                    Log.d(TAG, "Deleted custom table: " + tableId);
                    scanFiles(); // Refresh lists
                }
                return deleted;
            }
        }
        return false;
    }
}
