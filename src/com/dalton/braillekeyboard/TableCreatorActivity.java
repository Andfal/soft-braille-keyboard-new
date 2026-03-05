package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.service.translate.TableList;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Scanner;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.InputStream;

public class TableCreatorActivity extends Activity {
    private static final String TAG = "TableCreatorActivity";
    
    private EditText mTableNameEdit;
    private EditText mAuthorEdit;
    private EditText mDescriptionEdit;
    private CheckBox mEightDotCheck;
    private CheckBox mMappingPriorityCheck;
    
    private Spinner mLocaleSpinner;
    private List<String> mLocaleCodes = new ArrayList<>();
    private List<String> mLocaleNames = new ArrayList<>();

    private Spinner mBaseTableSpinner;
    private List<String> mSystemTableFiles = new ArrayList<>();
    private List<String> mSystemTableLabels = new ArrayList<>();

    private Spinner mNumSystemSpinner;
    private static final int NUM_CLASSIC = 0;
    private static final int NUM_ANTOINE = 1;
    private static final int NUM_DROPPED = 2;
    private static final int NUM_8DOT = 3;
    private static final int NUM_NONE = 4;

    private Spinner mScriptSpinner;
    private static final String[][] SCRIPTS_6 = {
        {"Latino", "latinLetterDef6Dots.uti"},
        {"Cirillico", "ru-comp6.utb"},
        {"Greco", "grc-international-en.utb"},
        {"Arabo", "ar-ar-g1.utb"},
        {"Ebraico", "he-IL.utb"},
        {"Hindi", "hi-in-g1.utb"},
        {"Coreano", "ko-g1.ctb"},
        {"Vietnamita", "vi-vn-g0.utb"},
        {"Thailandese", "th-g0.utb"},
        {"Unicode", "unicode-braille.utb"}
    };
    private static final String[][] SCRIPTS_8 = {
        {"Latino", "latinLetterDef8Dots.uti"},
        {"Cirillico", "ru-comp8.utb"},
        {"Greco", "gr-pl-comp8.utb"},
        {"Arabo", "ar-ar-comp8.utb"},
        {"Ebraico", "he-IL-comp8.utb"},
        {"Hindi", "hi-in-g1.utb"},
        {"Coreano", "ko-g1.ctb"},
        {"Vietnamita", "vi-cb8.utb"},
        {"Thailandese", "th-comp8-backward.utb"},
        {"Unicode", "unicode-braille.utb"}
    };
    
    private Spinner mOpcodeSpinner;
    private EditText mCharEdit;
    private LinearLayout mCurrentCellsContainer;
    private List<Integer> mCurrentPatterns = new ArrayList<>();
    private Button mAddMappingBtn;
    
    private Spinner mMappedItemsSpinner;
    private List<String> mDisplayList = new ArrayList<>();
    private ArrayAdapter<String> mAdapter;
    private List<Mapping> mMappings = new ArrayList<>();
    private int mEditingIndex = -1;

    private final String[] OPCODES = {
        "always", "lowercase", "uppercase", "punctuation", "digit", "math", "sign", "space", 
        "numsign", "capsletter", "begcaps", "endcaps", 
        "begcapsword", "endcapsword",
        "prepunc", "postpunc",
        "word", "partword", "letsign", "letter", "litdigit",
        "midnum", "numericmodechars", "midendnumericmodechars", "begnum", "endnum"
    };
    private String[] OPCODE_LABELS;

    private static class Mapping {
        String opcode; String character; List<Integer> patterns = new ArrayList<>();
        boolean isHighPriority = false;
        boolean isFixed = false;
        Mapping(String op, String ch, List<Integer> pts, boolean high) { 
            this(op, ch, pts, high, false);
        }
        Mapping(String op, String ch, List<Integer> pts, boolean high, boolean fixed) { 
            opcode = op; character = ch; patterns.addAll(pts); isHighPriority = high; isFixed = fixed;
        }
    }

    private static class Preset {
        String label; String character; int[][] cells6; int[][] cells8;
        Preset(String l, String c, int[][] d6) { this(l, c, d6, null); }
        Preset(String l, String c, int[][] d6, int[][] d8) { label = l; character = c; cells6 = d6; cells8 = d8; }
        @Override public String toString() { return label + " (" + character + ")"; }
        int[][] getCells(boolean is8dot) {
            if (is8dot && cells8 != null) return cells8;
            return cells6;
        }
    }

    private final List<PresetCategory> mPresetCategories = new ArrayList<>();
    private static class PresetCategory {
        String name; String defaultOpcode; List<Preset> presets = new ArrayList<>();
        PresetCategory(String n, String op) { name = n; defaultOpcode = op; }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        OPCODE_LABELS = new String[] {
            getString(R.string.opcode_always), getString(R.string.opcode_lowercase), getString(R.string.opcode_uppercase),
            getString(R.string.opcode_punctuation), getString(R.string.opcode_digit), getString(R.string.opcode_math),
            getString(R.string.opcode_sign), getString(R.string.opcode_space), getString(R.string.opcode_numsign),
            getString(R.string.opcode_capsletter), getString(R.string.opcode_begcaps), getString(R.string.opcode_endcaps),
            getString(R.string.opcode_begcapsword), getString(R.string.opcode_endcapsword),
            getString(R.string.opcode_openpunc), getString(R.string.opcode_closepunc),
            getString(R.string.opcode_word), getString(R.string.opcode_partword), getString(R.string.opcode_letsign),
            getString(R.string.opcode_letter), getString(R.string.opcode_litdigit),
            getString(R.string.opcode_midnum), getString(R.string.opcode_numericmodechars), 
            getString(R.string.opcode_midendnumericmodechars), getString(R.string.opcode_begnum), 
            getString(R.string.opcode_endnum)
        };

        initPresets();

        ScrollView scroll = new ScrollView(this);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(30, 30, 30, 30);
        scroll.addView(root);

        mTableNameEdit = new EditText(this);
        mTableNameEdit.setHint(R.string.hint_table_name);
        root.addView(mTableNameEdit);

        Button templateBtn = new Button(this);
        templateBtn.setText(R.string.btn_load_template);
        templateBtn.setOnClickListener(v -> showTemplatePicker());
        root.addView(templateBtn);

        mAuthorEdit = new EditText(this);
        mAuthorEdit.setHint("Author (e.g. Sergio)");
        root.addView(mAuthorEdit);

        mDescriptionEdit = new EditText(this);
        mDescriptionEdit.setHint("Description (e.g. Personal Italian Table)");
        root.addView(mDescriptionEdit);

        // --- Locale Selector ---
        TextView localeLabel = new TextView(this);
        localeLabel.setText(R.string.label_table_locale);
        localeLabel.setPadding(0, 20, 0, 0);
        root.addView(localeLabel);

        mLocaleSpinner = new Spinner(this);
        loadLocales();
        ArrayAdapter<String> localeAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mLocaleNames);
        localeAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mLocaleSpinner.setAdapter(localeAdapter);
        // Default to current system locale if found
        String currentLang = java.util.Locale.getDefault().getLanguage();
        int defaultIdx = mLocaleCodes.indexOf(currentLang);
        if (defaultIdx != -1) mLocaleSpinner.setSelection(defaultIdx);
        root.addView(mLocaleSpinner);

        mEightDotCheck = new CheckBox(this);
        mEightDotCheck.setText(R.string.label_use_8_dots);
        mEightDotCheck.setOnCheckedChangeListener((buttonView, isChecked) -> updateScriptSpinner(isChecked));
        root.addView(mEightDotCheck);

        // --- Base Table Selector ---
        TextView baseLabel = new TextView(this);
        baseLabel.setText(R.string.label_base_table);
        baseLabel.setPadding(0, 20, 0, 0);
        root.addView(baseLabel);

        mBaseTableSpinner = new Spinner(this);
        loadSystemTables();
        ArrayAdapter<String> baseAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mSystemTableLabels);
        baseAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mBaseTableSpinner.setAdapter(baseAdapter);
        root.addView(mBaseTableSpinner);

        // --- Base Script Selector ---
        TextView scriptLabel = new TextView(this);
        scriptLabel.setText(R.string.label_base_script);
        scriptLabel.setPadding(0, 20, 0, 0);
        root.addView(scriptLabel);

        mScriptSpinner = new Spinner(this);
        mScriptSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { initPresets(); }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });
        updateScriptSpinner(false);
        root.addView(mScriptSpinner);

        // --- Number System Selector ---
        TextView numLabel = new TextView(this);
        numLabel.setText(R.string.label_number_system);
        numLabel.setPadding(0, 20, 0, 0);
        root.addView(numLabel);

        mNumSystemSpinner = new Spinner(this);
        String[] numSystems = {
            getString(R.string.num_sys_classic), getString(R.string.num_sys_antoine),
            getString(R.string.num_sys_dropped), getString(R.string.num_sys_8dot),
            getString(R.string.num_sys_none)
        };
        mNumSystemSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, numSystems));
        root.addView(mNumSystemSpinner);

        // --- Mapping Editor ---
        TextView editorTitle = new TextView(this);
        editorTitle.setText("Mapping Editor");
        editorTitle.setPadding(0, 30, 0, 10);
        editorTitle.setTextSize(18);
        editorTitle.setTextColor(Color.BLACK);
        root.addView(editorTitle);

        LinearLayout editorBox = new LinearLayout(this);
        editorBox.setOrientation(LinearLayout.VERTICAL);
        editorBox.setBackgroundColor(Color.parseColor("#F5F5F5"));
        editorBox.setPadding(20, 20, 20, 20);

        mOpcodeSpinner = new Spinner(this);
        mOpcodeSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, OPCODE_LABELS));
        mOpcodeSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                String op = OPCODES[pos];
                boolean isStand = op.equals("numsign") || op.equals("capsletter") || op.startsWith("beg") || op.startsWith("end") || op.equals("space") || op.equals("letsign");
                mCharEdit.setVisibility(isStand ? View.GONE : View.VISIBLE);
                mIsUpdatingUI = false;
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });
        editorBox.addView(mOpcodeSpinner);

        LinearLayout charRow = new LinearLayout(this);
        charRow.setOrientation(LinearLayout.HORIZONTAL);
        mCharEdit = new EditText(this);
        mCharEdit.setHint("Char / Word");
        mCharEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        mCharEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override
            public void afterTextChanged(android.text.Editable s) {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                if (s.length() == 1) {
                    char c = s.charAt(0);
                    String suggestedOp = "sign";

                    if (Character.isDigit(c)) {
                        suggestedOp = "digit";
                    } else if (Character.isLowerCase(c)) {
                        suggestedOp = "lowercase";
                    } else if (Character.isUpperCase(c)) {
                        suggestedOp = "uppercase";
                    } else if (c == ' ' || c == '\u00a0') {
                        suggestedOp = "space";
                    } else if ("([{“«‘)]}”»’".indexOf(c) != -1) {
                        suggestedOp = "punctuation";
                    } else if ("+-*/×÷=<>".indexOf(c) != -1) {
                        suggestedOp = "math";
                    } else if ("%€$#".indexOf(c) != -1) {
                        suggestedOp = "midendnumericmodechars";
                    } else if (",.:-/".indexOf(c) != -1) {
                        suggestedOp = "punctuation";
                    } else if ("!?¡¿\"'\\|/_@&§¶†‡*".indexOf(c) != -1) {
                        suggestedOp = "punctuation";
                    }

                    for (int i = 0; i < OPCODES.length; i++) {
                        if (OPCODES[i].equals(suggestedOp)) {
                            mOpcodeSpinner.setSelection(i);
                            break;
                        }
                    }
                } else if (s.length() > 1) {
                    for (int i = 0; i < OPCODES.length; i++) {
                        if (OPCODES[i].equals("word")) {
                            mOpcodeSpinner.setSelection(i);
                            break;
                        }
                    }
                }
                mIsUpdatingUI = false;
            }
        });
        Button presetBtn = new Button(this);
        presetBtn.setText("Presets");
        presetBtn.setOnClickListener(v -> showPresetPicker());
        charRow.addView(mCharEdit); charRow.addView(presetBtn);
        editorBox.addView(charRow);

        mCurrentCellsContainer = new LinearLayout(this);
        mCurrentCellsContainer.setPadding(0, 10, 0, 10);
        editorBox.addView(mCurrentCellsContainer);

        LinearLayout btnRow = new LinearLayout(this);
        Button setDotsBtn = new Button(this); setDotsBtn.setText("Set Cell");
        setDotsBtn.setOnClickListener(v -> showCellEditor(false));
        Button appendDotBtn = new Button(this); appendDotBtn.setText("+ Append");
        appendDotBtn.setOnClickListener(v -> showCellEditor(true));
        Button clearDots = new Button(this); clearDots.setText("Clear");
        clearDots.setOnClickListener(v -> { mCurrentPatterns.clear(); updateDotsDisplay(); });
        btnRow.addView(setDotsBtn); btnRow.addView(appendDotBtn); btnRow.addView(clearDots);
        editorBox.addView(btnRow);

        mAddMappingBtn = new Button(this);
        mAddMappingBtn.setText("Add mapping to list");
        mAddMappingBtn.setOnClickListener(v -> addOrUpdateMapping());
        editorBox.addView(mAddMappingBtn);

        mMappingPriorityCheck = new CheckBox(this);
        mMappingPriorityCheck.setText(R.string.label_high_priority);
        mMappingPriorityCheck.setChecked(false);
        editorBox.addView(mMappingPriorityCheck);

        TextView priorityDesc = new TextView(this);
        priorityDesc.setText(R.string.hint_priority_desc);
        priorityDesc.setTextSize(12);
        priorityDesc.setPadding(10, 0, 0, 10);
        editorBox.addView(priorityDesc);

        root.addView(editorBox);

        // --- Mapped Items Spinner Section ---
        TextView listTitle = new TextView(this);
        listTitle.setText("Mapped Items (Select to Edit)");
        listTitle.setPadding(0, 30, 0, 10);
        root.addView(listTitle);

        mMappedItemsSpinner = new Spinner(this);
        mDisplayList.add("--- No mappings yet ---");
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mMappedItemsSpinner.setAdapter(mAdapter);
        mMappedItemsSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                if (pos > 0) loadMapping(pos - 1);
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });
        root.addView(mMappedItemsSpinner);

        Button deleteBtn = new Button(this);
        deleteBtn.setText("Delete Selected Mapping");
        deleteBtn.setTextColor(Color.RED);
        deleteBtn.setOnClickListener(v -> deleteSelected());
        root.addView(deleteBtn);

        Button saveBtn = new Button(this);
        saveBtn.setText(R.string.btn_save_table);
        saveBtn.setBackgroundColor(Color.parseColor("#4CAF50"));
        saveBtn.setTextColor(Color.WHITE);
        saveBtn.setPadding(0, 30, 0, 30);
        saveBtn.setOnClickListener(v -> saveTable());
        root.addView(saveBtn);

        Button shareBtn = new Button(this);
        shareBtn.setText("Share Table");
        shareBtn.setPadding(0, 30, 0, 30);
        shareBtn.setOnClickListener(v -> shareTable());
        root.addView(shareBtn);

        setContentView(scroll);

        String tableId = getIntent().getStringExtra("table_id");
        if (tableId != null) {
            loadTableData(tableId);
        }
    }

    private void loadSystemTables() {
        mSystemTableFiles.clear();
        mSystemTableLabels.clear();
        mSystemTableFiles.add("");
        mSystemTableLabels.add(getString(R.string.none_selected));

        TableList tableList = new TableList(this);
        // This already returns a deduplicated and filtered list based on the user preference!
        List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        
        for (int i = tables.size() - 1; i >= 0; i--) {
            if (tables.get(i).getId().startsWith("custom:")) tables.remove(i);
        }

        // Sort by display name
        Collections.sort(tables, (t1, t2) -> {
            String n1 = t1.getLocale().getDisplayName() + (t1.getVariant() != null ? t1.getVariant() : "");
            String n2 = t2.getLocale().getDisplayName() + (t2.getVariant() != null ? t2.getVariant() : "");
            return n1.compareTo(n2);
        });

        for (TableInfo info : tables) {
            String fileName = tableList.getFileName(info.getId());
            if (fileName != null) {
                mSystemTableFiles.add(fileName);
                String label = info.getLocale().getDisplayName();
                if (info.getVariant() != null && !info.getVariant().isEmpty()) {
                    label += " " + info.getVariant();
                }
                mSystemTableLabels.add(label);
            }
        }
    }

    private List<Integer> parseDots(String dotsStr) {
        List<Integer> patterns = new ArrayList<>();
        String[] cells = dotsStr.split("-");
        for (String cell : cells) {
            int p = 0;
            for (char c : cell.toCharArray()) {
                int dot = Character.getNumericValue(c);
                if (dot >= 1 && dot <= 8) p |= (1 << (dot - 1));
            }
            patterns.add(p);
        }
        return patterns;
    }

    private void updateScriptSpinner(boolean is8dot) {
        String[][] scripts = is8dot ? SCRIPTS_8 : SCRIPTS_6;
        String[] labels = new String[scripts.length];
        for (int i = 0; i < scripts.length; i++) {
            // Localize if possible
            if (scripts[i][0].equals("Latino")) labels[i] = getString(R.string.script_latin);
            else if (scripts[i][0].equals("Cirillico")) labels[i] = getString(R.string.script_cyrillic);
            else if (scripts[i][0].equals("Greco")) labels[i] = getString(R.string.script_greek);
            else if (scripts[i][0].equals("Arabo")) labels[i] = getString(R.string.script_arabic);
            else if (scripts[i][0].equals("Ebraico")) labels[i] = getString(R.string.script_hebrew);
            else if (scripts[i][0].equals("Unicode")) labels[i] = getString(R.string.script_unicode);
            else labels[i] = scripts[i][0];
        }
        
        int currentPos = mScriptSpinner != null ? mScriptSpinner.getSelectedItemPosition() : 0;
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, labels);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        mScriptSpinner.setAdapter(adapter);
        if (currentPos < labels.length) mScriptSpinner.setSelection(currentPos);
    }

    private void loadLocales() {
        mLocaleCodes.clear();
        mLocaleNames.clear();
        java.util.Locale[] locales = java.util.Locale.getAvailableLocales();
        List<java.util.Locale> list = new ArrayList<>();
        for (java.util.Locale l : locales) {
            if (!l.getLanguage().isEmpty() && !l.getDisplayLanguage().isEmpty()) {
                list.add(l);
            }
        }
        Collections.sort(list, (l1, l2) -> l1.getDisplayName().compareTo(l2.getDisplayName()));
        
        // Add a "None" or "Default" option
        mLocaleCodes.add("");
        mLocaleNames.add(getString(R.string.none_selected));

        for (java.util.Locale l : list) {
            String code = l.getLanguage();
            if (!l.getCountry().isEmpty()) code += "-" + l.getCountry();
            if (!mLocaleCodes.contains(code)) {
                mLocaleCodes.add(code);
                mLocaleNames.add(l.getDisplayName());
            }
        }
    }

    private void loadTableData(String tableId) {
        try {
            CustomTableManager manager = new CustomTableManager(this);
            String fileName = tableId;
            if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
            File f = manager.getCustomTableFile(fileName);
            if (!f.exists()) return;

            mTableNameEdit.setText(fileName);
            mMappings.clear();
            mNumSystemSpinner.setSelection(NUM_NONE);
            boolean currentlyHighPriority = true;

            Scanner scanner = new Scanner(f, "UTF-8");
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim();
                if (line.isEmpty()) continue;

                if (line.startsWith("#")) {
                    if (line.startsWith("# Author: ")) mAuthorEdit.setText(line.substring(10));
                    else if (line.startsWith("# Description: ")) mDescriptionEdit.setText(line.substring(15));
                    else if (line.startsWith("#+locale: ")) {
                        String code = line.substring(10).trim();
                        int idx = mLocaleCodes.indexOf(code);
                        if (idx != -1) mLocaleSpinner.setSelection(idx);
                    }
                    else if (line.contains("SYSTEM INCLUDES")) {
                        currentlyHighPriority = false;
                    }
                    continue;
                }

                if (line.startsWith("include ")) {
                    currentlyHighPriority = false; // Anything after first include is standard priority
                    String included = line.substring(8).trim();
                    if (included.equals("latinLetterDef8Dots.uti")) {
                        mEightDotCheck.setChecked(true);
                        mScriptSpinner.setSelection(0);
                    }
                    else if (included.equals("latinLetterDef6Dots.uti")) {
                        mEightDotCheck.setChecked(false);
                        mScriptSpinner.setSelection(0);
                    }
                    else if (included.equals("digits6Dots.uti")) mNumSystemSpinner.setSelection(NUM_CLASSIC);
                    else if (included.equals("digits6DotsPlusDot6.uti")) mNumSystemSpinner.setSelection(NUM_ANTOINE);
                    else if (included.equals("litdigits6Dots.uti") && mNumSystemSpinner.getSelectedItemPosition() != NUM_CLASSIC && mNumSystemSpinner.getSelectedItemPosition() != NUM_ANTOINE) {
                        mNumSystemSpinner.setSelection(NUM_DROPPED);
                    }
                    else if (included.equals("digits8Dots.uti")) mNumSystemSpinner.setSelection(NUM_8DOT);
                    else if (included.endsWith(".utb") || included.endsWith(".ctb")) {
                        // Check if it's one of our base scripts
                        boolean foundScript = false;
                        String[][] s6 = SCRIPTS_6;
                        String[][] s8 = SCRIPTS_8;
                        for (int i=0; i<s6.length; i++) if (s6[i][1].equals(included)) { mScriptSpinner.setSelection(i); foundScript = true; break; }
                        if (!foundScript) for (int i=0; i<s8.length; i++) if (s8[i][1].equals(included)) { mScriptSpinner.setSelection(i); foundScript = true; break; }
                        
                        if (!foundScript) {
                            int idx = mSystemTableFiles.indexOf(included);
                            if (idx != -1) mBaseTableSpinner.setSelection(idx);
                        }
                    }
                    continue;
                }
                
                if (line.startsWith("numsign ")) {
                    String dots = line.substring(8).trim();
                    if (dots.equals("3456")) {
                        if (mNumSystemSpinner.getSelectedItemPosition() == NUM_NONE) mNumSystemSpinner.setSelection(NUM_CLASSIC);
                    } else if (dots.equals("6")) {
                        mNumSystemSpinner.setSelection(NUM_ANTOINE);
                    }
                }

                String[] parts = line.split("\\s+");
                if (parts.length < 2) continue;

                String opcode = parts[0];
                boolean isOpcodeValid = false;
                for (String op : OPCODES) if (op.equals(opcode)) { isOpcodeValid = true; break; }
                if (!isOpcodeValid) continue;

                String charPart = "";
                String dotsPart = "";

                boolean stand = opcode.equals("numsign") || opcode.equals("capsletter") || 
                                 opcode.startsWith("beg") || opcode.startsWith("end") || 
                                 opcode.equals("space") || opcode.equals("letsign");

                if (stand) {
                    dotsPart = parts[1];
                } else if (parts.length >= 3) {
                    charPart = parts[1];
                    if (charPart.startsWith("\\x")) {
                        try {
                            int code = Integer.parseInt(charPart.substring(2), 16);
                            charPart = String.valueOf((char)code);
                        } catch (Exception e) {}
                    }
                    dotsPart = parts[2];
                }

                if (!dotsPart.isEmpty()) {
                    mMappings.add(new Mapping(opcode, charPart, parseDots(dotsPart), currentlyHighPriority));
                }
            }
            scanner.close();
            refreshSpinner();
        } catch (Exception e) {
            Log.e(TAG, "Failed to load table", e);
            Toast.makeText(this, "Error loading table", Toast.LENGTH_SHORT).show();
        }
    }

    private void initPresets() {
        mPresetCategories.clear();
        int scriptIndex = mScriptSpinner != null ? mScriptSpinner.getSelectedItemPosition() : 0;
        
        // --- Categorie Universali ---
        PresetCategory catPunc = new PresetCategory(getString(R.string.preset_cat_punc), "punctuation");
        catPunc.presets.add(new Preset("Full stop .", ".", new int[][]{{2,5,6}}, new int[][]{{3}}));
        catPunc.presets.add(new Preset("Comma ,", ",", new int[][]{{2}}));
        catPunc.presets.add(new Preset("Semicolon ;", ";", new int[][]{{2,3}}));
        catPunc.presets.add(new Preset("Colon :", ":", new int[][]{{2,5}}));
        catPunc.presets.add(new Preset("Question mark ?", "?", new int[][]{{2,6}}));
        catPunc.presets.add(new Preset("Exclamation !", "!", new int[][]{{2,3,5}}));
        catPunc.presets.add(new Preset("Apostrophe '", "'", new int[][]{{3}}, new int[][]{{6}}));
        catPunc.presets.add(new Preset("Quotes \"", "\"", new int[][]{{4}}, new int[][]{{4}}));
        catPunc.presets.add(new Preset("Open Paren (", "(", new int[][]{{2,3,5,6}}, new int[][]{{2,3,6}}));
        catPunc.presets.add(new Preset("Close Paren )", ")", new int[][]{{2,3,5,6}}, new int[][]{{3,5,6}}));
        mPresetCategories.add(catPunc);

        PresetCategory catMath = new PresetCategory(getString(R.string.preset_cat_math), "math");
        catMath.presets.add(new Preset("Plus +", "+", new int[][]{{2,3,5}}, new int[][]{{2,3,5}}));
        catMath.presets.add(new Preset("Minus -", "-", new int[][]{{3,6}},   new int[][]{{3,6}}));
        catMath.presets.add(new Preset("Multiplication x", "×", new int[][]{{2,3,6}}, new int[][]{{2,3,4,6,8}}));
        catMath.presets.add(new Preset("Division /", "÷", new int[][]{{2,5,6}}, new int[][]{{1,2,5,6,7,8}}));
        catMath.presets.add(new Preset("Euro €", "€", new int[][]{{4}, {1,5}}, new int[][]{{4,5,7}}));
        mPresetCategories.add(catMath);

        // --- Categorie Specifiche per Script ---
        if (scriptIndex == 0) { // LATINO
            PresetCategory catBase = new PresetCategory("Alfabeto Base (a-z)", "lowercase");
            catBase.presets.add(new Preset("a", "a", new int[][]{{1}}));
            catBase.presets.add(new Preset("b", "b", new int[][]{{1,2}}));
            catBase.presets.add(new Preset("c", "c", new int[][]{{1,4}}));
            catBase.presets.add(new Preset("d", "d", new int[][]{{1,4,5}}));
            catBase.presets.add(new Preset("e", "e", new int[][]{{1,5}}));
            catBase.presets.add(new Preset("f", "f", new int[][]{{1,2,4}}));
            catBase.presets.add(new Preset("g", "g", new int[][]{{1,2,4,5}}));
            catBase.presets.add(new Preset("h", "h", new int[][]{{1,2,5}}));
            catBase.presets.add(new Preset("i", "i", new int[][]{{2,4}}));
            catBase.presets.add(new Preset("j", "j", new int[][]{{2,4,5}}));
            catBase.presets.add(new Preset("k", "k", new int[][]{{1,3}}));
            catBase.presets.add(new Preset("l", "l", new int[][]{{1,2,3}}));
            catBase.presets.add(new Preset("m", "m", new int[][]{{1,3,4}}));
            catBase.presets.add(new Preset("n", "n", new int[][]{{1,3,4,5}}));
            catBase.presets.add(new Preset("o", "o", new int[][]{{1,3,5}}));
            catBase.presets.add(new Preset("p", "p", new int[][]{{1,2,3,4}}));
            catBase.presets.add(new Preset("q", "q", new int[][]{{1,2,3,4,5}}));
            catBase.presets.add(new Preset("r", "r", new int[][]{{1,2,3,5}}));
            catBase.presets.add(new Preset("s", "s", new int[][]{{2,3,4}}));
            catBase.presets.add(new Preset("t", "t", new int[][]{{2,3,4,5}}));
            catBase.presets.add(new Preset("u", "u", new int[][]{{1,3,6}}));
            catBase.presets.add(new Preset("v", "v", new int[][]{{1,2,3,6}}));
            catBase.presets.add(new Preset("w", "w", new int[][]{{2,4,5,6}}));
            catBase.presets.add(new Preset("x", "x", new int[][]{{1,3,4,6}}));
            catBase.presets.add(new Preset("y", "y", new int[][]{{1,3,4,5,6}}));
            catBase.presets.add(new Preset("z", "z", new int[][]{{1,3,5,6}}));
            mPresetCategories.add(catBase);

            PresetCategory catIt = new PresetCategory(getString(R.string.preset_cat_it_accents), "lowercase");
            catIt.presets.add(new Preset("a grave", "à", new int[][]{{1,2,3,5,6}}));
            catIt.presets.add(new Preset("e grave", "è", new int[][]{{2,3,4,6}}));
            catIt.presets.add(new Preset("e acute", "é", new int[][]{{1,2,3,4,5,6}}));
            catIt.presets.add(new Preset("i grave", "ì", new int[][]{{3,4}}));
            catIt.presets.add(new Preset("o grave", "ò", new int[][]{{3,4,6}}));
            catIt.presets.add(new Preset("u grave", "ù", new int[][]{{2,3,4,5,6}}));
            mPresetCategories.add(catIt);

            PresetCategory catFr = new PresetCategory("French (â, œ...)", "lowercase");
            catFr.presets.add(new Preset("â (a circum)", "â", new int[][]{{1,6}}));
            catFr.presets.add(new Preset("ê (e circum)", "ê", new int[][]{{1,2,6}}));
            catFr.presets.add(new Preset("î (i circum)", "î", new int[][]{{1,4,6}}));
            catFr.presets.add(new Preset("ô (o circum)", "ô", new int[][]{{1,4,5,6}}));
            catFr.presets.add(new Preset("û (u circum)", "û", new int[][]{{1,5,6}}));
            catFr.presets.add(new Preset("ç (c cedilla)", "ç", new int[][]{{1,2,3,4,6}}));
            catFr.presets.add(new Preset("œ (oe ligature)", "œ", new int[][]{{2,4,6}}));
            mPresetCategories.add(catFr);
        } 
        else if (scriptIndex == 1) { // CIRILLICO
            PresetCategory catRu = new PresetCategory("Lettere Cirilliche", "lowercase");
            catRu.presets.add(new Preset("а (a)", "а", new int[][]{{1}}));
            catRu.presets.add(new Preset("б (b)", "б", new int[][]{{1,2}}));
            catRu.presets.add(new Preset("в (v)", "в", new int[][]{{2,4,5,6}}));
            catRu.presets.add(new Preset("г (g)", "г", new int[][]{{1,2,4,5}}));
            catRu.presets.add(new Preset("д (d)", "д", new int[][]{{1,4,5}}));
            catRu.presets.add(new Preset("е (e)", "е", new int[][]{{1,5}}));
            catRu.presets.add(new Preset("ж (zh)", "ж", new int[][]{{2,4,5}}));
            catRu.presets.add(new Preset("з (z)", "з", new int[][]{{1,3,5,6}}));
            catRu.presets.add(new Preset("и (i)", "и", new int[][]{{2,4}}));
            catRu.presets.add(new Preset("к (k)", "к", new int[][]{{1,3}}));
            catRu.presets.add(new Preset("л (l)", "л", new int[][]{{1,2,3}}));
            catRu.presets.add(new Preset("м (m)", "м", new int[][]{{1,3,4}}));
            catRu.presets.add(new Preset("н (n)", "н", new int[][]{{1,3,4,5}}));
            catRu.presets.add(new Preset("о (o)", "о", new int[][]{{1,3,5}}));
            catRu.presets.add(new Preset("п (p)", "п", new int[][]{{1,2,3,4}}));
            catRu.presets.add(new Preset("р (r)", "р", new int[][]{{1,2,3,5}}));
            catRu.presets.add(new Preset("с (s)", "с", new int[][]{{2,3,4}}));
            catRu.presets.add(new Preset("т (t)", "т", new int[][]{{2,3,4,5}}));
            catRu.presets.add(new Preset("у (u)", "у", new int[][]{{1,3,6}}));
            catRu.presets.add(new Preset("ф (f)", "ф", new int[][]{{1,2,4}}));
            catRu.presets.add(new Preset("х (kh)", "х", new int[][]{{1,2,5}}));
            catRu.presets.add(new Preset("ц (ts)", "ц", new int[][]{{1,4}}));
            catRu.presets.add(new Preset("ч (ch)", "ч", new int[][]{{1,2,3,4,5}}));
            catRu.presets.add(new Preset("ш (sh)", "ш", new int[][]{{1,5,6}}));
            catRu.presets.add(new Preset("щ (shch)", "щ", new int[][]{{1,3,4,6}}));
            catRu.presets.add(new Preset("ы (y)", "ы", new int[][]{{2,3,4,6}}));
            catRu.presets.add(new Preset("э (e)", "э", new int[][]{{2,4,6}}));
            catRu.presets.add(new Preset("ю (yu)", "ю", new int[][]{{1,2,5,6}}));
            catRu.presets.add(new Preset("я (ya)", "я", new int[][]{{1,2,4,6}}));
            mPresetCategories.add(catRu);
        }
        else if (scriptIndex == 2) { // GRECO
            PresetCategory catEl = new PresetCategory("Lettere Greche", "lowercase");
            catEl.presets.add(new Preset("alpha α", "α", new int[][]{{1}}));
            catEl.presets.add(new Preset("beta β", "β", new int[][]{{1,2}}));
            catEl.presets.add(new Preset("gamma γ", "γ", new int[][]{{1,2,4,5}}));
            catEl.presets.add(new Preset("delta δ", "δ", new int[][]{{1,4,5}}));
            catEl.presets.add(new Preset("epsilon ε", "ε", new int[][]{{1,5}}));
            catEl.presets.add(new Preset("zeta ζ", "ζ", new int[][]{{1,3,5,6}}));
            catEl.presets.add(new Preset("eta η", "η", new int[][]{{1,5,6}}));
            catEl.presets.add(new Preset("theta θ", "θ", new int[][]{{1,4,5,6}}));
            catEl.presets.add(new Preset("iota ι", "ι", new int[][]{{2,4}}));
            catEl.presets.add(new Preset("kappa κ", "κ", new int[][]{{1,3}}));
            catEl.presets.add(new Preset("lambda λ", "λ", new int[][]{{1,2,3}}));
            catEl.presets.add(new Preset("mu μ", "μ", new int[][]{{1,3,4}}));
            catEl.presets.add(new Preset("nu ν", "ν", new int[][]{{1,3,4,5}}));
            catEl.presets.add(new Preset("xi ξ", "ξ", new int[][]{{1,3,4,6}}));
            catEl.presets.add(new Preset("omicron ο", "ο", new int[][]{{1,3,5}}));
            catEl.presets.add(new Preset("pi π", "π", new int[][]{{1,2,3,4}}));
            catEl.presets.add(new Preset("rho ρ", "ρ", new int[][]{{1,2,3,5}}));
            catEl.presets.add(new Preset("sigma σ", "σ", new int[][]{{2,3,4}}));
            catEl.presets.add(new Preset("tau τ", "τ", new int[][]{{2,3,4,5}}));
            catEl.presets.add(new Preset("upsilon υ", "υ", new int[][]{{1,3,6}}));
            catEl.presets.add(new Preset("phi φ", "φ", new int[][]{{1,2,4}}));
            catEl.presets.add(new Preset("chi χ", "χ", new int[][]{{1,2,3,4,6}}));
            catEl.presets.add(new Preset("psi ψ", "ψ", new int[][]{{1,2,3,4,5}}));
            catEl.presets.add(new Preset("omega ω", "ω", new int[][]{{2,4,5,6}}));
            mPresetCategories.add(catEl);
        }
        else if (scriptIndex == 3) { // ARABO
            PresetCategory catAr = new PresetCategory("Lettere Arabe", "lowercase");
            catAr.presets.add(new Preset("alif ا", "ا", new int[][]{{1}}));
            catAr.presets.add(new Preset("ba ب", "ب", new int[][]{{1,2}}));
            catAr.presets.add(new Preset("ta ت", "ت", new int[][]{{2,3,4,5}}));
            catAr.presets.add(new Preset("tha ث", "ث", new int[][]{{1,4,5,6}}));
            catAr.presets.add(new Preset("jim ج", "ج", new int[][]{{2,4,5}}));
            catAr.presets.add(new Preset("ha ح", "ح", new int[][]{{1,5,6}}));
            catAr.presets.add(new Preset("kha خ", "خ", new int[][]{{1,3,4,6}}));
            catAr.presets.add(new Preset("dal د", "د", new int[][]{{1,4,5}}));
            catAr.presets.add(new Preset("dhal ذ", "ذ", new int[][]{{2,3,4,6}}));
            catAr.presets.add(new Preset("ra ر", "ر", new int[][]{{1,2,3,5}}));
            catAr.presets.add(new Preset("zain ز", "ز", new int[][]{{1,3,5,6}}));
            catAr.presets.add(new Preset("sin س", "س", new int[][]{{2,3,4}}));
            catAr.presets.add(new Preset("shin ش", "ش", new int[][]{{1,4,6}}));
            catAr.presets.add(new Preset("sad ص", "ص", new int[][]{{1,2,3,4,6}}));
            catAr.presets.add(new Preset("dad ض", "ض", new int[][]{{1,2,4,6}}));
            catAr.presets.add(new Preset("ta ط", "ط", new int[][]{{2,3,4,5,6}}));
            catAr.presets.add(new Preset("za ظ", "ظ", new int[][]{{1,2,3,4,5,6}}));
            catAr.presets.add(new Preset("ain ع", "ع", new int[][]{{1,2,3,5,6}}));
            catAr.presets.add(new Preset("ghain غ", "غ", new int[][]{{1,2,6}}));
            catAr.presets.add(new Preset("fa ف", "ف", new int[][]{{1,2,4}}));
            catAr.presets.add(new Preset("qaf ق", "ق", new int[][]{{1,2,3,4,5}}));
            catAr.presets.add(new Preset("kaf ك", "ك", new int[][]{{1,3}}));
            catAr.presets.add(new Preset("lam ل", "ل", new int[][]{{1,2,3}}));
            catAr.presets.add(new Preset("mim م", "م", new int[][]{{1,3,4}}));
            catAr.presets.add(new Preset("nun ن", "ن", new int[][]{{1,3,4,5}}));
            catAr.presets.add(new Preset("ha ه", "ه", new int[][]{{1,2,5}}));
            catAr.presets.add(new Preset("waw و", "و", new int[][]{{2,4,5,6}}));
            catAr.presets.add(new Preset("ya ي", "ي", new int[][]{{2,4}}));
            mPresetCategories.add(catAr);
        }
        else if (scriptIndex == 4) { // EBRAICO
            PresetCategory catHe = new PresetCategory("Lettere Ebraiche", "lowercase");
            catHe.presets.add(new Preset("alef א", "א", new int[][]{{1}}));
            catHe.presets.add(new Preset("bet ב", "ב", new int[][]{{1,2}}));
            catHe.presets.add(new Preset("gimel ג", "ג", new int[][]{{1,2,4,5}}));
            catHe.presets.add(new Preset("dalet ד", "ד", new int[][]{{1,4,5}}));
            catHe.presets.add(new Preset("he ה", "ה", new int[][]{{1,2,5}}));
            catHe.presets.add(new Preset("vav ו", "ו", new int[][]{{2,4,5,6}}));
            catHe.presets.add(new Preset("zayin ז", "ז", new int[][]{{1,3,5,6}}));
            catHe.presets.add(new Preset("het ח", "ח", new int[][]{{1,3,4,6}}));
            catHe.presets.add(new Preset("tet ט", "ט", new int[][]{{2,3,4,5,6}}));
            catHe.presets.add(new Preset("yod י", "י", new int[][]{{2,4}}));
            catHe.presets.add(new Preset("kaf כ", "כ", new int[][]{{1,3}}));
            catHe.presets.add(new Preset("lamed ל", "ל", new int[][]{{1,2,3}}));
            catHe.presets.add(new Preset("mem מ", "מ", new int[][]{{1,3,4}}));
            catHe.presets.add(new Preset("nun נ", "נ", new int[][]{{1,3,4,5}}));
            catHe.presets.add(new Preset("samekh ס", "ס", new int[][]{{2,3,4}}));
            catHe.presets.add(new Preset("ayin ע", "ע", new int[][]{{1,2,3,5,6}}));
            catHe.presets.add(new Preset("pe פ", "פ", new int[][]{{1,2,4}}));
            catHe.presets.add(new Preset("tsadi צ", "צ", new int[][]{{1,2,3,4,6}}));
            catHe.presets.add(new Preset("qof ק", "ק", new int[][]{{1,2,3,4,5}}));
            catHe.presets.add(new Preset("resh ר", "ר", new int[][]{{1,2,3,5}}));
            catHe.presets.add(new Preset("shin ש", "ש", new int[][]{{1,4,6}}));
            catHe.presets.add(new Preset("tav ת", "ת", new int[][]{{2,3,4,5}}));
            mPresetCategories.add(catHe);
        }
        else if (scriptIndex == 5) { // HINDI (DEVANAGARI)
            PresetCategory catHi = new PresetCategory("Lettere Devanagari", "lowercase");
            catHi.presets.add(new Preset("a अ", "अ", new int[][]{{1}}));
            catHi.presets.add(new Preset("aa आ", "आ", new int[][]{{3,4,5}}));
            catHi.presets.add(new Preset("i इ", "इ", new int[][]{{2,4}}));
            catHi.presets.add(new Preset("ii ई", "ई", new int[][]{{3,5}}));
            catHi.presets.add(new Preset("u उ", "उ", new int[][]{{1,3,6}}));
            catHi.presets.add(new Preset("uu ऊ", "ऊ", new int[][]{{1,2,5,6}}));
            catHi.presets.add(new Preset("ka क", "क", new int[][]{{1,3}}));
            catHi.presets.add(new Preset("kha ख", "ख", new int[][]{{4,6}}));
            catHi.presets.add(new Preset("ga ग", "ग", new int[][]{{1,2,4,5}}));
            catHi.presets.add(new Preset("gha घ", "घ", new int[][]{{1,2,6}}));
            catHi.presets.add(new Preset("ca च", "च", new int[][]{{1,4}}));
            catHi.presets.add(new Preset("cha छ", "छ", new int[][]{{1,6}}));
            catHi.presets.add(new Preset("ja ज", "ज", new int[][]{{2,4,5}}));
            catHi.presets.add(new Preset("jha झ", "झ", new int[][]{{3,5,6}}));
            catHi.presets.add(new Preset("ta ट", "ट", new int[][]{{2,3,4,5,6}}));
            catHi.presets.add(new Preset("tha ठ", "ठ", new int[][]{{2,4,5,6}}));
            catHi.presets.add(new Preset("da ड", "ड", new int[][]{{1,2,4,6}}));
            catHi.presets.add(new Preset("dha ढ", "ढ", new int[][]{{1,2,3,4,5,6}}));
            catHi.presets.add(new Preset("ta त", "त", new int[][]{{2,3,4,5}}));
            catHi.presets.add(new Preset("tha थ", "थ", new int[][]{{1,4,5,6}}));
            catHi.presets.add(new Preset("da द", "द", new int[][]{{1,4,5}}));
            catHi.presets.add(new Preset("dha ध", "ध", new int[][]{{2,3,4,6}}));
            catHi.presets.add(new Preset("na न", "न", new int[][]{{1,3,4,5}}));
            catHi.presets.add(new Preset("pa प", "प", new int[][]{{1,2,3,4}}));
            catHi.presets.add(new Preset("pha फ", "फ", new int[][]{{2,3,5}}));
            catHi.presets.add(new Preset("ba ब", "ब", new int[][]{{1,2}}));
            catHi.presets.add(new Preset("bha भ", "भ", new int[][]{{4,5}}));
            catHi.presets.add(new Preset("ma म", "म", new int[][]{{1,3,4}}));
            catHi.presets.add(new Preset("ya य", "य", new int[][]{{1,3,4,5,6}}));
            catHi.presets.add(new Preset("ra र", "र", new int[][]{{1,2,3,5}}));
            catHi.presets.add(new Preset("la ल", "ल", new int[][]{{1,2,3}}));
            catHi.presets.add(new Preset("va व", "व", new int[][]{{1,2,3,6}}));
            mPresetCategories.add(catHi);
        }
        else if (scriptIndex == 6) { // COREANO
            PresetCategory catKo = new PresetCategory("Lettere Hangul (Jamo)", "lowercase");
            catKo.presets.add(new Preset("ㄱ (k/g)", "ㄱ", new int[][]{{4}}));
            catKo.presets.add(new Preset("ㄴ (n)", "ㄴ", new int[][]{{1,4}}));
            catKo.presets.add(new Preset("ㄷ (t/d)", "ㄷ", new int[][]{{2,4}}));
            catKo.presets.add(new Preset("ㄹ (r/l)", "ㄹ", new int[][]{{2}}));
            catKo.presets.add(new Preset("ㅁ (m)", "ㅁ", new int[][]{{1,5}}));
            catKo.presets.add(new Preset("ㅂ (p/b)", "ㅂ", new int[][]{{4,5}}));
            catKo.presets.add(new Preset("ㅅ (s)", "ㅅ", new int[][]{{6}}));
            catKo.presets.add(new Preset("ㅇ (ng)", "ㅇ", new int[][]{{1,2,4,5}}));
            catKo.presets.add(new Preset("ㅈ (ch/j)", "ㅈ", new int[][]{{4,6}}));
            catKo.presets.add(new Preset("ㅎ (h)", "ㅎ", new int[][]{{2,4,5}}));
            catKo.presets.add(new Preset("ㅏ (a)", "ㅏ", new int[][]{{1,2,6}}));
            catKo.presets.add(new Preset("ㅓ (eo)", "ㅓ", new int[][]{{2,3,4}}));
            catKo.presets.add(new Preset("ㅗ (o)", "ㅗ", new int[][]{{1,3,6}}));
            catKo.presets.add(new Preset("ㅜ (u)", "ㅜ", new int[][]{{1,2,3,4}}));
            mPresetCategories.add(catKo);
        }
        else if (scriptIndex == 7) { // VIETNAMITA
            PresetCategory catVi = new PresetCategory("Lettere Vietnamite", "lowercase");
            catVi.presets.add(new Preset("ă (a breve)", "ă", new int[][]{{3,4,5,6}}));
            catVi.presets.add(new Preset("â (a circum)", "â", new int[][]{{1,2,3,5,6}}));
            catVi.presets.add(new Preset("đ (d bar)", "đ", new int[][]{{2,3,4,5,6}}));
            catVi.presets.add(new Preset("ê (e circum)", "ê", new int[][]{{1,2,6}}));
            catVi.presets.add(new Preset("ô (o circum)", "ô", new int[][]{{1,4,5}}));
            catVi.presets.add(new Preset("ơ (o horn)", "ơ", new int[][]{{2,4,6}}));
            catVi.presets.add(new Preset("ư (u horn)", "ư", new int[][]{{1,2,3,4,6}}));
            mPresetCategories.add(catVi);
        }
        else if (scriptIndex == 8) { // THAILANDESE
            PresetCategory catTh = new PresetCategory("Lettere Thai", "lowercase");
            catTh.presets.add(new Preset("ko kai ก", "ก", new int[][]{{1,2,4,5}}));
            catTh.presets.add(new Preset("kho khai ข", "ข", new int[][]{{1,3}}));
            catTh.presets.add(new Preset("kho khwai ค", "ค", new int[][]{{1,2,3,5}}));
            catTh.presets.add(new Preset("ngo ngu ง", "ง", new int[][]{{3,4,5}}));
            catTh.presets.add(new Preset("cho chan จ", "จ", new int[][]{{1,4}}));
            catTh.presets.add(new Preset("yo yak ย", "ย", new int[][]{{1,3,4,5,6}}));
            catTh.presets.add(new Preset("ro ruea ร", "ร", new int[][]{{1,2,3,5}}));
            catTh.presets.add(new Preset("lo ling ล", "ล", new int[][]{{1,2,3}}));
            catTh.presets.add(new Preset("wo waen ว", "ว", new int[][]{{2,4,5,6}}));
            mPresetCategories.add(catTh);
        }
        else if (scriptIndex == 9) { // UNICODE / SIMBOLI
            PresetCategory catSym = new PresetCategory("Simboli Vari", "sign");
            catSym.presets.add(new Preset("Grado °", "°", new int[][]{{4,5,6}, {2,4,5}}));
            catSym.presets.add(new Preset("Copyright ©", "©", new int[][]{{4,5,6}, {1,4}}));
            catSym.presets.add(new Preset("Marchio ®", "®", new int[][]{{4,5,6}, {1,2,3,5}}));
            catSym.presets.add(new Preset("Frecce ←↑→↓", "→", new int[][]{{2,5}, {1,3,5}}));
            catSym.presets.add(new Preset("Cuore ♥", "♥", new int[][]{{4,5,6}, {1,2,3}}));
            mPresetCategories.add(catSym);
        }

        // --- Categorie di Controllo ---
        PresetCategory catControl = new PresetCategory("Controllo (6-pt)", "capsletter");
        catControl.presets.add(new Preset("Segnamaiuscola", "", new int[][]{{4,6}}));
        catControl.presets.add(new Preset("Segnanumero", "", new int[][]{{3,4,5,6}}));
        catControl.presets.add(new Preset("Segnalettera", "", new int[][]{{5}}));
        mPresetCategories.add(catControl);
    }


    private void showPresetPicker() {
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle("Select Category");
        String[] cats = new String[mPresetCategories.size()];
        for (int i=0; i<mPresetCategories.size(); i++) cats[i] = mPresetCategories.get(i).name;
        b.setItems(cats, (d, w) -> showPresetItems(mPresetCategories.get(w)));
        b.show();
    }

    private void showPresetItems(final PresetCategory cat) {
        final boolean[] checked = new boolean[cat.presets.size()];
        for (int i = 0; i < checked.length; i++) checked[i] = true;

        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(cat.name);
        String[] labels = new String[cat.presets.size()];
        for (int i = 0; i < cat.presets.size(); i++) labels[i] = cat.presets.get(i).toString();

        b.setMultiChoiceItems(labels, checked, (dialog, which, isChecked) -> checked[which] = isChecked);

        b.setPositiveButton("Add Selected Directly", (dialog, which) -> {
            boolean is8dot = mEightDotCheck.isChecked();
            int addedCount = 0;
            for (int i = 0; i < cat.presets.size(); i++) {
                if (checked[i]) {
                    Preset p = cat.presets.get(i);
                    int[][] cells = p.getCells(is8dot);
                    List<Integer> pPatterns = new ArrayList<>();
                    for (int[] cellDots : cells) {
                        int pattern = 0;
                        for (int dot : cellDots) pattern |= (1 << (dot - 1));
                        pPatterns.add(pattern);
                    }
                    mMappings.add(new Mapping(cat.defaultOpcode, p.character, pPatterns, false));
                    addedCount++;
                }
            }
            if (addedCount > 0) refreshSpinner();
        });

        b.setNeutralButton("Deselect All", null);
        b.setNegativeButton(R.string.btn_cancel, null);
        
        final AlertDialog dialog = b.create();
        dialog.show();

        dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setOnClickListener(v -> {
            boolean anyChecked = false;
            for (boolean b1 : checked) if (b1) { anyChecked = true; break; }
            for (int i = 0; i < checked.length; i++) checked[i] = !anyChecked;
            ListView lv = dialog.getListView();
            for (int i = 0; i < checked.length; i++) lv.setItemChecked(i, !anyChecked);
            dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setText(anyChecked ? "Select All" : "Deselect All");
        });
    }

    private void updateDotsDisplay() {
        mCurrentCellsContainer.removeAllViews();
        for (int p : mCurrentPatterns) {
            TextView tv = new TextView(this);
            tv.setText("[" + patternToDotsString(p) + "]");
            tv.setPadding(10, 10, 10, 10);
            tv.setBackgroundColor(Color.LTGRAY);
            tv.setTextColor(Color.BLACK);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.setMargins(10, 0, 10, 0);
            mCurrentCellsContainer.addView(tv, lp);
        }
    }

    private void finishMappingAction() {
        refreshSpinner();
        mCharEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay();
    }

    private String getDotsString(List<Integer> patterns) {
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<patterns.size(); i++) {
            if (i>0) sb.append("-");
            sb.append(patternToDotsString(patterns.get(i)));
        }
        return sb.toString();
    }

    private int findDuplicateDots(String dots) {
        // 1. Check current manual mappings
        for (int i = 0; i < mMappings.size(); i++) {
            if (getDotsString(mMappings.get(i).patterns).equals(dots)) {
                return i;
            }
        }
        return -1;
    }

    private String findDuplicateInPresets(String dots) {
        // 2. Check current script presets
        for (PresetCategory cat : mPresetCategories) {
            for (Preset p : cat.presets) {
                if (getDotsString(patternsFromCells(p.getCells(mEightDotCheck.isChecked()))).equals(dots)) {
                    return p.label;
                }
            }
        }
        return null;
    }

    private List<Integer> patternsFromCells(int[][] cells) {
        List<Integer> pts = new ArrayList<>();
        for (int[] cell : cells) {
            int p = 0;
            for (int d : cell) p |= (1 << (d - 1));
            pts.add(p);
        }
        return pts;
    }

    private void showDuplicateDialog(final Mapping newMapping, final int existingIndex) {
        String dots = getDotsString(newMapping.patterns);
        String existingChar = mMappings.get(existingIndex).character;
        showDuplicateDialogInternal(newMapping, dots, existingChar, false);
    }

    private void showDuplicateDialogInternal(final Mapping newMapping, String dots, String existingName, boolean isPreset) {
        String msg = String.format(getString(R.string.msg_duplicate_dots), dots, existingName);
        if (isPreset) msg += "\n\n(Carattere standard del set selezionato. La tua scelta avrà la precedenza nella scrittura.)";

        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle("Combinazione Duplicata");
        b.setMessage(msg);
        
        b.setNegativeButton(R.string.btn_cancel, null);

        // Option 1: Overwrite / Add anyway
        b.setPositiveButton(isPreset ? R.string.btn_overwrite : R.string.btn_add_anyway, (dialog, which) -> {
            if (mEditingIndex != -1) {
                mMappings.remove(mEditingIndex);
            }
            mMappings.add(newMapping);
            mEditingIndex = -1;
            mAddMappingBtn.setText("Add mapping to list");
            finishMappingAction();
        });

        // Option 2: Add Prefix (New Feature)
        b.setNeutralButton(R.string.btn_add_prefix, (dialog, which) -> showPrefixSelector(newMapping));

        // Option 3: Insert Before (Only for manual mapping conflicts)
        if (!isPreset) {
            // We can't have 4 buttons, so we'll use a custom layout or just handle it via Add anyway
            // For now, let's stick to the most useful ones. 
            // If the user wants "Insert Before", they can use the list management.
        }

        b.show();
    }

    private boolean mIsUpdatingUI = false;

    private void showPrefixSelector(final Mapping mapping) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(R.string.title_select_prefix);
        
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(40, 20, 40, 20);

        final EditText dotEdit = new EditText(this);
        dotEdit.setHint(R.string.hint_enter_dots);
        dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER);
        layout.addView(dotEdit);

        GridLayout g = new GridLayout(this);
        g.setColumnCount(2);
        int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this);
            boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                String current = dotEdit.getText().toString();
                if (isChecked) {
                    if (!current.contains(String.valueOf(dotNum))) {
                        List<Integer> dots = new ArrayList<>();
                        for (char c : current.toCharArray()) dots.add(Character.getNumericValue(c));
                        dots.add(dotNum);
                        Collections.sort(dots);
                        StringBuilder sb = new StringBuilder();
                        for (int d : dots) if (d >= 1 && d <= 8) sb.append(d);
                        dotEdit.setText(sb.toString());
                    }
                } else {
                    dotEdit.setText(current.replace(String.valueOf(dotNum), ""));
                }
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        
        dotEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override
            public void afterTextChanged(android.text.Editable s) {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                String text = s.toString();
                for (int i=0; i<dotCount; i++) {
                    int dotNum = order[i];
                    boxes[i].setChecked(text.contains(String.valueOf(dotNum)));
                }
                mIsUpdatingUI = false;
            }
        });

        layout.addView(g);
        b.setView(layout);
        
        b.setPositiveButton("OK", (d, w) -> {
            String text = dotEdit.getText().toString();
            int prefixPattern = 0;
            for (char c : text.toCharArray()) {
                int dot = Character.getNumericValue(c);
                if (dot >= 1 && dot <= 8) prefixPattern |= (1 << (dot - 1));
            }
            
            if (prefixPattern > 0) {
                List<Integer> newPatterns = new ArrayList<>();
                newPatterns.add(prefixPattern);
                newPatterns.addAll(mapping.patterns);
                
                Mapping prefixedMapping = new Mapping(mapping.opcode, mapping.character, newPatterns, mapping.isHighPriority);
                if (mEditingIndex != -1) {
                    mMappings.remove(mEditingIndex);
                }
                mMappings.add(prefixedMapping);
                mEditingIndex = -1;
                mAddMappingBtn.setText("Add mapping to list");
                finishMappingAction();
            }
        });
        b.setNegativeButton(R.string.btn_cancel, null);
        b.show();
    }

    // Refactored addOrUpdateMapping to use the new checks
    private void addOrUpdateMapping() {
        String opcode = OPCODES[mOpcodeSpinner.getSelectedItemPosition()];
        String character = mCharEdit.getText().toString();
        if (mCurrentPatterns.isEmpty()) { Toast.makeText(this, "Please add dots first", Toast.LENGTH_SHORT).show(); return; }
        
        Mapping newMapping = new Mapping(opcode, character, new ArrayList<>(mCurrentPatterns), mMappingPriorityCheck.isChecked());
        String newDots = getDotsString(newMapping.patterns);
        
        int duplicateIndex = findDuplicateDots(newDots);
        
        // If we are editing an existing mapping and the dots haven't changed, just update
        if (mEditingIndex != -1 && duplicateIndex == mEditingIndex) {
            mMappings.set(mEditingIndex, newMapping);
            mEditingIndex = -1;
            mAddMappingBtn.setText("Add mapping to list");
            finishMappingAction();
            return;
        }

        // Check for duplicates in other manual mappings
        if (duplicateIndex != -1) {
            showDuplicateDialog(newMapping, duplicateIndex);
            return;
        } 
        
        // Check for duplicates in active script presets
        String presetName = findDuplicateInPresets(newDots);
        if (presetName != null) {
            showDuplicateDialogInternal(newMapping, newDots, presetName, true);
            return;
        }

        // No duplicates found, just add/update
        if (mEditingIndex != -1) {
            mMappings.set(mEditingIndex, newMapping);
            mEditingIndex = -1;
            mAddMappingBtn.setText("Add mapping to list");
        } else {
            mMappings.add(newMapping);
        }
        finishMappingAction();
    }

    private void loadMapping(int index) {
        mEditingIndex = index;
        Mapping m = mMappings.get(index);
        for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { mOpcodeSpinner.setSelection(i); break; }
        mCharEdit.setText(m.character);
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns);
        mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay();
        mAddMappingBtn.setText("Update selected mapping");
    }
private void deleteSelected() {
    int pos = mMappedItemsSpinner.getSelectedItemPosition();
    if (pos > 0) {
        Mapping m = mMappings.get(pos - 1);
        if (m.isFixed) {
            Toast.makeText(this, "This mapping is fixed and cannot be deleted", Toast.LENGTH_SHORT).show();
            return;
        }
        mMappings.remove(pos - 1); refreshSpinner();
        mMappedItemsSpinner.setSelection(0); mEditingIndex = -1;
        mAddMappingBtn.setText("Add mapping to list");
        mCharEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay();
    }
}

    private void refreshSpinner() {
        mDisplayList.clear();
        mDisplayList.add("--- Select a mapping to edit ---");
        for (Mapping m : mMappings) {
            String friendlyOp = m.opcode;
            for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { friendlyOp = OPCODE_LABELS[i]; break; }
            StringBuilder sb = new StringBuilder();
            if (m.isHighPriority) sb.append("[H] ");
            sb.append(friendlyOp);
            if (m.character != null && !m.character.isEmpty()) sb.append(" '").append(m.character).append("'");
            sb.append(" -> ");
            for (int i=0; i<m.patterns.size(); i++) {
                if (i>0) sb.append("-");
                sb.append(patternToDotsString(m.patterns.get(i)));
            }
            mDisplayList.add(sb.toString());
        }
        mAdapter.notifyDataSetChanged();
    }

    private void showCellEditor(boolean append) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(R.string.label_dots_dialog);
        
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(40, 20, 40, 20);

        final EditText dotEdit = new EditText(this);
        dotEdit.setHint(R.string.hint_enter_dots);
        dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER);
        layout.addView(dotEdit);

        GridLayout g = new GridLayout(this);
        g.setColumnCount(2);
        int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this);
            boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                String current = dotEdit.getText().toString();
                if (isChecked) {
                    if (!current.contains(String.valueOf(dotNum))) {
                        // Keep dots sorted for clarity
                        List<Integer> dots = new ArrayList<>();
                        for (char c : current.toCharArray()) dots.add(Character.getNumericValue(c));
                        dots.add(dotNum);
                        Collections.sort(dots);
                        StringBuilder sb = new StringBuilder();
                        for (int d : dots) if (d >= 1 && d <= 8) sb.append(d);
                        dotEdit.setText(sb.toString());
                    }
                } else {
                    dotEdit.setText(current.replace(String.valueOf(dotNum), ""));
                }
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        
        dotEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override
            public void afterTextChanged(android.text.Editable s) {
                if (mIsUpdatingUI) return;
                mIsUpdatingUI = true;
                String text = s.toString();
                for (int i=0; i<dotCount; i++) {
                    int dotNum = order[i];
                    boxes[i].setChecked(text.contains(String.valueOf(dotNum)));
                }
                mIsUpdatingUI = false;
            }
        });

        layout.addView(g);
        b.setView(layout);
        
        b.setPositiveButton("OK", (d, w) -> {
            String text = dotEdit.getText().toString();
            int p = 0;
            for (char c : text.toCharArray()) {
                int dot = Character.getNumericValue(c);
                if (dot >= 1 && dot <= 8) p |= (1 << (dot - 1));
            }
            if (p > 0) {
                if (!append) mCurrentPatterns.clear();
                mCurrentPatterns.add(p); updateDotsDisplay();
            }
        });
        b.setNegativeButton(R.string.btn_cancel, null);
        b.show();
    }

    private String patternToDotsString(int pattern) {
        if (pattern == 0) return "0";
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<8; i++) if ((pattern & (1 << i)) != 0) sb.append(i + 1);
        return sb.toString();
    }

    private void saveTable() {
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, R.string.error_no_name, Toast.LENGTH_SHORT).show(); return; }
        if (!name.endsWith(".ctb")) name += ".ctb";

        StringBuilder sb = new StringBuilder("# Custom Table for Soft Braille Keyboard\n");
        sb.append("# Dots: ").append(mEightDotCheck.isChecked() ? "8" : "6").append("\n");
        String author = mAuthorEdit.getText().toString().trim();
        if (!author.isEmpty()) sb.append("# Author: ").append(author).append("\n");
        String desc = mDescriptionEdit.getText().toString().trim();
        if (!desc.isEmpty()) sb.append("# Description: ").append(desc).append("\n");
        
        int localePos = mLocaleSpinner.getSelectedItemPosition();
        if (localePos > 0) {
            sb.append("#+locale: ").append(mLocaleCodes.get(localePos)).append("\n");
        }
        sb.append("\n");

        // FOUNDATIONAL INCLUDES (Patterns must come first)
        sb.append("include braille-patterns.cti\n");
        sb.append("include unicode.dis\n\n");

        sb.append("# --- HIGH PRIORITY CUSTOM MAPPINGS ---\n");
        writeCustomMappings(sb, true);

        sb.append("\n# --- SYSTEM INCLUDES ---\n");
        sb.append("include unicode.dis\n");
        
        int basePos = mBaseTableSpinner.getSelectedItemPosition();
        if (basePos > 0) {
            sb.append("include ").append(mSystemTableFiles.get(basePos)).append("\n");
        }

        // Include Base Script
        boolean is8dot = mEightDotCheck.isChecked();
        String scriptFile = is8dot ? SCRIPTS_8[mScriptSpinner.getSelectedItemPosition()][1] : SCRIPTS_6[mScriptSpinner.getSelectedItemPosition()][1];
        sb.append("include ").append(scriptFile).append("\n");
        
        if (scriptFile.contains("latinLetterDef6Dots.uti")) {
             sb.append("space \\x0020 0\nspace \\x00a0 0\n");
        }

        int numSys = mNumSystemSpinner.getSelectedItemPosition();
        if (numSys == NUM_CLASSIC) {
            sb.append("include digits6Dots.uti\n");
            sb.append("include litdigits6Dots.uti\n");
            sb.append("numsign 3456\n");
        } else if (numSys == NUM_ANTOINE) {
            sb.append("include digits6DotsPlusDot6.uti\n");
            sb.append("include litdigits6DotsPlusDot6.uti\n");
            sb.append("numsign 6\n");
        } else if (numSys == NUM_DROPPED) {
            sb.append("include digits6Dots.uti\n");
            sb.append("include litdigits6Dots.uti\n");
            sb.append("numsign 3456\n");
        } else if (numSys == NUM_8DOT) {
            sb.append("include digits8Dots.uti\n");
        }

        sb.append("\n# --- STANDARD PRIORITY CUSTOM MAPPINGS ---\n");
        writeCustomMappings(sb, false);

        try {
            CustomTableManager manager = new CustomTableManager(this);
            File f = manager.getCustomTableFile(name);
            try (FileOutputStream fos = new FileOutputStream(f)) { fos.write(sb.toString().getBytes(StandardCharsets.UTF_8)); }
            Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
        } catch (Exception e) { Toast.makeText(this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show(); }
    }

    private void writeCustomMappings(StringBuilder sb, boolean highPriorityOnly) {
        // Lists to track automated rules
        List<String> writtenBasePairs = new ArrayList<>();
        List<Character> writtenAutoChars = new ArrayList<>();
        StringBuilder baseRules = new StringBuilder();
        
        // Build numeric indicators lists (these are always cumulative at the end of their section)
        StringBuilder numericModeChars = new StringBuilder();
        StringBuilder midEndNumericModeChars = new StringBuilder();
        for (Mapping m : mMappings) {
            if (m.isHighPriority != highPriorityOnly) continue;
            if (m.opcode.equals("numericmodechars") && m.character.length() == 1) {
                numericModeChars.append(m.character);
            } else if (m.opcode.equals("midendnumericmodechars") && m.character.length() == 1) {
                midEndNumericModeChars.append(m.character);
            }
        }

        if (highPriorityOnly) {
            // --- EXPERT MODE: High Priority block respects absolute user/template order ---
            for (Mapping m : mMappings) {
                if (!m.isHighPriority) continue;
                writeSingleMapping(sb, m, writtenBasePairs, writtenAutoChars, baseRules);
            }
        } else {
            // --- SAFETY MODE: Standard Priority block uses smart grouping to protect alphabet ---
            String[] group1 = {"lowercase", "uppercase", "letter", "base"};
            String[] group2 = {"digit", "litdigit", "numsign", "capsletter", "letsign", "begnum", "endnum"};
            String[] group3 = {"punctuation", "math", "sign", "always", "word", "partword", "space"};
            String[] group4 = {"prepunc", "postpunc", "begcaps", "endcaps", "begcapsword", "endcapsword", "midnum"};

            writeOpcodeGroup(sb, false, group1, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group2, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group3, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group4, writtenBasePairs, writtenAutoChars, baseRules);
        }

        // Write cumulative indicators AFTER individual mappings for this section
        if (numericModeChars.length() > 0) {
            sb.append("\nnumericmodechars ").append(numericModeChars).append("\n");
        }
        if (midEndNumericModeChars.length() > 0) {
            sb.append("midendnumericmodechars ").append(midEndNumericModeChars).append("\n");
        }

        // Write base rules collected during this section
        if (baseRules.length() > 0) {
            sb.append("\n# Base uppercase rules for this section\n");
            sb.append(baseRules.toString());
        }
    }

    private void writeOpcodeGroup(StringBuilder sb, boolean highPriorityOnly, String[] opcodes, 
                                 List<String> writtenBasePairs, List<Character> writtenAutoChars, 
                                 StringBuilder baseRules) {
        List<String> groupList = Arrays.asList(opcodes);
        for (Mapping m : mMappings) {
            if (m.isHighPriority != highPriorityOnly) continue;
            if (!groupList.contains(m.opcode)) continue;
            writeSingleMapping(sb, m, writtenBasePairs, writtenAutoChars, baseRules);
        }
    }

    private void writeSingleMapping(StringBuilder sb, Mapping m, List<String> writtenBasePairs, 
                                   List<Character> writtenAutoChars, StringBuilder baseRules) {
        if (m.opcode.equals("numericmodechars") || m.opcode.equals("midendnumericmodechars")) {
            return; // Handled cumulatively
        }

        StringBuilder dots = new StringBuilder();
        for (int i=0; i<m.patterns.size(); i++) {
            if (i > 0) dots.append("-");
            dots.append(patternToDotsString(m.patterns.get(i)));
        }

        boolean isCapsIndicator = m.opcode.equals("begcaps") || m.opcode.equals("endcaps") || 
                                 m.opcode.equals("begcapsword") || m.opcode.equals("endcapsword");
        boolean isNumIndicator = m.opcode.equals("begnum") || m.opcode.equals("endnum");
        boolean isStand = m.opcode.equals("numsign") || m.opcode.equals("capsletter") || m.opcode.equals("letsign");

        if (isCapsIndicator || isStand) {
            sb.append(m.opcode).append(" ").append(dots).append("\n");
        } else if (isNumIndicator) {
            String cPart = m.character;
            if (cPart == null || cPart.isEmpty()) {
                cPart = m.opcode.equals("begnum") ? "#" : "%";
            }
            if (cPart.length() == 1) cPart = String.format("\\x%04x", (int)cPart.charAt(0));
            sb.append(m.opcode).append(" ").append(cPart).append(" ").append(dots).append("\n");
        } else {
            if (m.character == null || m.character.isEmpty()) {
                if (m.opcode.equals("space")) {
                     sb.append("space \\x0020 ").append(dots).append("\n");
                }
                return;
            }

            // AUTOMATIC LOWERCASE/BASE PAIRING LOGIC
            if (m.character.length() == 1 && (m.opcode.equals("lowercase") || m.opcode.equals("uppercase"))) {
                char c = m.character.charAt(0);
                if (Character.isLetter(c)) {
                    char low = Character.toLowerCase(c);
                    char up = Character.toUpperCase(c);
                    if (low != up) {
                        if (c == up && !isCharacterMapped(low) && !writtenAutoChars.contains(low)) {
                            sb.append("lowercase ").append(String.format("\\x%04x", (int)low))
                              .append(" ").append(dots).append("\n");
                            writtenAutoChars.add(low);
                        }
                        String pairKey = up + "-" + low;
                        if (!writtenBasePairs.contains(pairKey)) {
                            baseRules.append("base uppercase ").append(String.format("\\x%04x", (int)up))
                                     .append(" ").append(String.format("\\x%04x", (int)low)).append("\n");
                            writtenBasePairs.add(pairKey);
                        }
                    }
                }
            }

            String cPart = m.character;
            if (cPart.length() == 1) {
                char c = cPart.charAt(0);
                if (c == ' ') cPart = "\\s";
                else if (c == '\t') cPart = "\\t";
                else if (c < 33 || c > 126) cPart = String.format("\\x%04x", (int)c);
            }
            sb.append(m.opcode).append(" ").append(cPart).append(" ").append(dots).append("\n");
        }
    }

    private boolean isCharacterMapped(char c) {
        String s = String.valueOf(c);
        for (Mapping m : mMappings) {
            if (s.equals(m.character)) return true;
        }
        return false;
    }

    private void showTemplatePicker() {
        try {
            String[] files = getAssets().list("templates");
            if (files == null || files.length == 0) {
                Toast.makeText(this, "No templates found", Toast.LENGTH_SHORT).show();
                return;
            }

            final List<String> templateNames = new ArrayList<>();
            final List<String> templateFiles = new ArrayList<>();

            for (String file : files) {
                if (file.endsWith(".json")) {
                    String json = loadTemplateFromAssets(file);
                    JSONObject obj = new JSONObject(json);
                    templateNames.add(obj.getString("templateName"));
                    templateFiles.add(file);
                }
            }

            AlertDialog.Builder b = new AlertDialog.Builder(this);
            b.setTitle(R.string.title_select_template);
            b.setItems(templateNames.toArray(new String[0]), (dialog, which) -> {
                confirmTemplateApplication(templateFiles.get(which));
            });
            b.show();
        } catch (Exception e) {
            Toast.makeText(this, "Error loading templates: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private String loadTemplateFromAssets(String fileName) throws Exception {
        InputStream is = getAssets().open("templates/" + fileName);
        int size = is.available();
        byte[] buffer = new byte[size];
        is.read(buffer);
        is.close();
        return new String(buffer, "UTF-8");
    }

    private void confirmTemplateApplication(final String fileName) {
        if (!mMappings.isEmpty()) {
            new AlertDialog.Builder(this)
                .setTitle(R.string.title_select_template)
                .setMessage(R.string.msg_confirm_template)
                .setPositiveButton(android.R.string.yes, (dialog, which) -> applyTemplate(fileName))
                .setNegativeButton(android.R.string.no, null)
                .show();
        } else {
            applyTemplate(fileName);
        }
    }

    private void applyTemplate(String fileName) {
        try {
            String json = loadTemplateFromAssets(fileName);
            JSONObject obj = new JSONObject(json);
            JSONObject settings = obj.getJSONObject("settings");
            JSONArray mappings = obj.getJSONArray("mappings");

            // Apply Settings
            mEightDotCheck.setChecked(settings.getBoolean("is8Dot"));
            updateScriptSpinner(mEightDotCheck.isChecked());
            
            String localeCode = settings.getString("locale");
            int locIdx = mLocaleCodes.indexOf(localeCode);
            if (locIdx != -1) mLocaleSpinner.setSelection(locIdx);

            String scriptFile = settings.getString("scriptFileName");
            String[][] scriptSet = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6;
            for (int i=0; i<scriptSet.length; i++) {
                if (scriptSet[i][1].equals(scriptFile)) {
                    mScriptSpinner.setSelection(i);
                    break;
                }
            }

            mNumSystemSpinner.setSelection(settings.getInt("numSystem"));

            // Apply Mappings
            mMappings.clear();
            for (int i = 0; i < mappings.length(); i++) {
                JSONObject mObj = mappings.getJSONObject(i);
                String opcode = mObj.getString("opcode");
                String character = mObj.getString("char");
                String dotsStr = mObj.getString("dots");
                boolean high = mObj.getBoolean("high");
                boolean fixed = mObj.getBoolean("fixed");

                mMappings.add(new Mapping(opcode, character, parseDots(dotsStr), high, fixed));
            }

            refreshSpinner();
            Toast.makeText(this, R.string.msg_template_applied, Toast.LENGTH_SHORT).show();

        } catch (Exception e) {
            Toast.makeText(this, "Error applying template: " + e.getMessage(), Toast.LENGTH_SHORT).show();
        }
    }

    private void shareTable() {
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, "Save the table first", Toast.LENGTH_SHORT).show(); return; }
        if (!name.endsWith(".ctb")) name += ".ctb";
        CustomTableManager manager = new CustomTableManager(this);
        File f = manager.getCustomTableFile(name);
        if (!f.exists()) { Toast.makeText(this, "File not found. Save it first.", Toast.LENGTH_SHORT).show(); return; }
        Intent intent = new Intent(Intent.ACTION_SEND);
        intent.setType("text/plain");
        intent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(f));
        intent.putExtra(Intent.EXTRA_SUBJECT, "Braille Table: " + name);
        startActivity(Intent.createChooser(intent, "Share Table via"));
    }
}
