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
    private EditText mDotsEdit;
    private LinearLayout mCurrentCellsContainer;
    private List<Integer> mCurrentPatterns = new ArrayList<>();
    private Button mAddMappingBtn;
    private CheckBox mShowVisualPickerCheck;
    
    // Containers for toggling UI visibility
    private LinearLayout mAdvancedSettingsLayout;
    private LinearLayout mCellPickerButtonsLayout;

    private Spinner mMappedItemsSpinner;
    private List<String> mDisplayList = new ArrayList<>();
    private ArrayAdapter<String> mAdapter;
    private List<Mapping> mMappings = new ArrayList<>();
    private int mEditingIndex = -1;
    private boolean mIsTemplateUsed = false;

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

        // Main Container: Vertical LinearLayout
        LinearLayout mainContainer = new LinearLayout(this);
        mainContainer.setOrientation(LinearLayout.VERTICAL);

        // --- TOP SECTION: Scrollable Table Details ---
        ScrollView scroll = new ScrollView(this);
        LinearLayout.LayoutParams scrollParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f);
        scroll.setLayoutParams(scrollParams);
        
        LinearLayout topContent = new LinearLayout(this);
        topContent.setOrientation(LinearLayout.VERTICAL);
        topContent.setPadding(30, 30, 30, 30);
        scroll.addView(topContent);

        mTableNameEdit = new EditText(this);
        mTableNameEdit.setHint(R.string.hint_table_name);
        topContent.addView(mTableNameEdit);

        Button templateBtn = new Button(this);
        templateBtn.setText(R.string.btn_load_template);
        templateBtn.setOnClickListener(v -> showTemplatePicker());
        topContent.addView(templateBtn);

        mAuthorEdit = new EditText(this);
        mAuthorEdit.setHint(getString(R.string.hint_author));
        topContent.addView(mAuthorEdit);

        mDescriptionEdit = new EditText(this);
        mDescriptionEdit.setHint(getString(R.string.hint_description));
        topContent.addView(mDescriptionEdit);

        mLocaleSpinner = new Spinner(this);
        loadLocales();
        mLocaleSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mLocaleNames));
        topContent.addView(mLocaleSpinner);

        mEightDotCheck = new CheckBox(this);
        mEightDotCheck.setText(R.string.label_use_8_dots);
        mEightDotCheck.setOnCheckedChangeListener((buttonView, isChecked) -> updateScriptSpinner(isChecked));
        topContent.addView(mEightDotCheck);

        // Advanced Settings (Hidden in Template Mode)
        mAdvancedSettingsLayout = new LinearLayout(this);
        mAdvancedSettingsLayout.setOrientation(LinearLayout.VERTICAL);
        
        mBaseTableSpinner = new Spinner(this);
        loadSystemTables();
        mBaseTableSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mSystemTableLabels));
        mAdvancedSettingsLayout.addView(mBaseTableSpinner);

        mScriptSpinner = new Spinner(this);
        updateScriptSpinner(false);
        mAdvancedSettingsLayout.addView(mScriptSpinner);

        mNumSystemSpinner = new Spinner(this);
        String[] numSystems = {
            getString(R.string.num_sys_classic), getString(R.string.num_sys_antoine),
            getString(R.string.num_sys_dropped), getString(R.string.num_sys_8dot),
            getString(R.string.num_sys_none)
        };
        mNumSystemSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, numSystems));
        mAdvancedSettingsLayout.addView(mNumSystemSpinner);
        topContent.addView(mAdvancedSettingsLayout);

        mShowVisualPickerCheck = new CheckBox(this);
        mShowVisualPickerCheck.setText(R.string.label_show_visual_picker);
        mShowVisualPickerCheck.setChecked(false);
        mShowVisualPickerCheck.setOnCheckedChangeListener((v, isChecked) -> {
            mCellPickerButtonsLayout.setVisibility(isChecked ? View.VISIBLE : View.GONE);
            mCurrentCellsContainer.setVisibility(isChecked ? View.VISIBLE : View.GONE);
        });
        topContent.addView(mShowVisualPickerCheck);

        mCurrentCellsContainer = new LinearLayout(this);
        mCurrentCellsContainer.setVisibility(View.GONE);
        topContent.addView(mCurrentCellsContainer);

        mCellPickerButtonsLayout = new LinearLayout(this);
        mCellPickerButtonsLayout.setOrientation(LinearLayout.HORIZONTAL);
        mCellPickerButtonsLayout.setVisibility(View.GONE);
        Button setDotsBtn = new Button(this); setDotsBtn.setText("Set Cell");
        setDotsBtn.setOnClickListener(v -> showCellEditor(false));
        Button appendDotBtn = new Button(this); appendDotBtn.setText("+ Append");
        appendDotBtn.setOnClickListener(v -> showCellEditor(true));
        Button clearDots = new Button(this); clearDots.setText("Clear");
        clearDots.setOnClickListener(v -> { mCurrentPatterns.clear(); updateDotsDisplay(); mDotsEdit.setText(""); });
        mCellPickerButtonsLayout.addView(setDotsBtn); mCellPickerButtonsLayout.addView(appendDotBtn); mCellPickerButtonsLayout.addView(clearDots);
        topContent.addView(mCellPickerButtonsLayout);

        mainContainer.addView(scroll);

        // --- BOTTOM SECTION: Mapping Editor & Action Bar ---
        LinearLayout bottomPanel = new LinearLayout(this);
        bottomPanel.setOrientation(LinearLayout.VERTICAL);
        bottomPanel.setBackgroundColor(Color.parseColor("#E0E0E0"));
        bottomPanel.setPadding(20, 20, 20, 20);

        // Row 1: Character and Dots Input
        LinearLayout inputRow = new LinearLayout(this);
        inputRow.setOrientation(LinearLayout.HORIZONTAL);
        mCharEdit = new EditText(this);
        mCharEdit.setHint(R.string.hint_char);
        mCharEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mDotsEdit = new EditText(this);
        mDotsEdit.setHint(R.string.hint_dots_format);
        mDotsEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.5f));
        // Allow adding mapping via 'Enter' key on the dots field
        mDotsEdit.setImeOptions(android.view.inputmethod.EditorInfo.IME_ACTION_DONE);
        mDotsEdit.setOnEditorActionListener((v, actionId, event) -> {
            if (actionId == android.view.inputmethod.EditorInfo.IME_ACTION_DONE || 
                (event != null && event.getKeyCode() == android.view.KeyEvent.KEYCODE_ENTER)) {
                addOrUpdateMapping();
                return true;
            }
            return false;
        });
        inputRow.addView(mCharEdit); inputRow.addView(mDotsEdit);
        bottomPanel.addView(inputRow);

        // Row 2: Opcode and Priority
        LinearLayout settingsRow = new LinearLayout(this);
        settingsRow.setOrientation(LinearLayout.HORIZONTAL);
        settingsRow.setGravity(Gravity.CENTER_VERTICAL);
        mOpcodeSpinner = new Spinner(this);
        mOpcodeSpinner.setAdapter(new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, OPCODE_LABELS));
        mOpcodeSpinner.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mMappingPriorityCheck = new CheckBox(this);
        mMappingPriorityCheck.setText("H"); // High Priority short
        settingsRow.addView(mOpcodeSpinner); settingsRow.addView(mMappingPriorityCheck);
        bottomPanel.addView(settingsRow);

        // Row 3: Action Bar [List | ADD | SAVE]
        LinearLayout actionRow = new LinearLayout(this);
        actionRow.setOrientation(LinearLayout.HORIZONTAL);
        actionRow.setGravity(Gravity.CENTER_VERTICAL);

        mMappedItemsSpinner = new Spinner(this);
        mDisplayList.add(getString(R.string.label_mapped_items));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
        mMappedItemsSpinner.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mMappedItemsSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { if (pos > 0) loadMapping(pos - 1); }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });

        mAddMappingBtn = new Button(this);
        mAddMappingBtn.setText(R.string.btn_add);
        mAddMappingBtn.setOnClickListener(v -> addOrUpdateMapping());
        mAddMappingBtn.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        Button saveBtn = new Button(this);
        saveBtn.setText(R.string.btn_save);
        saveBtn.setBackgroundColor(Color.parseColor("#4CAF50"));
        saveBtn.setTextColor(Color.WHITE);
        saveBtn.setOnClickListener(v -> saveTable());
        saveBtn.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        actionRow.addView(mMappedItemsSpinner); actionRow.addView(mAddMappingBtn); actionRow.addView(saveBtn);
        bottomPanel.addView(actionRow);

        mainContainer.addView(bottomPanel);
        setContentView(mainContainer);

        // Re-enable TextWatcher for suggestions with 200ms delay
        mCharEdit.addTextChangedListener(new android.text.TextWatcher() {
            private final android.os.Handler handler = new android.os.Handler();
            private Runnable runnable;
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(final android.text.Editable s) {
                if (mIsUpdatingUI) return;
                handler.removeCallbacks(runnable);
                runnable = () -> { if (mCharEdit.hasFocus() && mCharEdit.getText().length() > 0) suggestOpcodeFromChar(); };
                handler.postDelayed(runnable, 200);
            }
        });

        String tableId = getIntent().getStringExtra("table_id");
        if (tableId != null) loadTableData(tableId);
    }

    private void loadSystemTables() {
        mSystemTableFiles.clear();
        mSystemTableLabels.clear();
        mSystemTableFiles.add("");
        mSystemTableLabels.add(getString(R.string.none_selected));

        TableList tableList = new TableList(this);
        List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        
        for (int i = tables.size() - 1; i >= 0; i--) {
            if (tables.get(i).getId().startsWith("custom:")) tables.remove(i);
        }

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
                    else if (line.contains("SYSTEM INCLUDES")) currentlyHighPriority = false;
                    continue;
                }
                if (line.startsWith("include ")) {
                    currentlyHighPriority = false;
                    String included = line.substring(8).trim();
                    if (included.equals("latinLetterDef8Dots.uti")) { mEightDotCheck.setChecked(true); mScriptSpinner.setSelection(0); }
                    else if (included.equals("latinLetterDef6Dots.uti")) { mEightDotCheck.setChecked(false); mScriptSpinner.setSelection(0); }
                    else if (included.equals("digits6Dots.uti")) mNumSystemSpinner.setSelection(NUM_CLASSIC);
                    else if (included.equals("digits6DotsPlusDot6.uti")) mNumSystemSpinner.setSelection(NUM_ANTOINE);
                    else if (included.equals("litdigits6Dots.uti")) mNumSystemSpinner.setSelection(NUM_DROPPED);
                    else if (included.equals("digits8Dots.uti")) mNumSystemSpinner.setSelection(NUM_8DOT);
                    else if (included.endsWith(".utb") || included.endsWith(".ctb")) {
                        boolean found = false;
                        for (int i=0; i<SCRIPTS_6.length; i++) if (SCRIPTS_6[i][1].equals(included)) { mScriptSpinner.setSelection(i); found = true; break; }
                        if (!found) for (int i=0; i<SCRIPTS_8.length; i++) if (SCRIPTS_8[i][1].equals(included)) { mScriptSpinner.setSelection(i); found = true; break; }
                        if (!found) { int idx = mSystemTableFiles.indexOf(included); if (idx != -1) mBaseTableSpinner.setSelection(idx); }
                    }
                    continue;
                }
                String[] parts = line.split("\\s+");
                if (parts.length < 2) continue;
                String opcode = parts[0];
                String charPart = ""; String dotsPart = "";
                boolean stand = opcode.equals("numsign") || opcode.equals("capsletter") || opcode.startsWith("beg") || opcode.startsWith("end") || opcode.equals("space") || opcode.equals("letsign");
                if (stand) dotsPart = parts[1];
                else if (parts.length >= 3) {
                    charPart = parts[1];
                    if (charPart.startsWith("\\x")) { try { charPart = String.valueOf((char)Integer.parseInt(charPart.substring(2), 16)); } catch (Exception e) {} }
                    dotsPart = parts[2];
                }
                if (!dotsPart.isEmpty()) mMappings.add(new Mapping(opcode, charPart, parseDots(dotsPart), currentlyHighPriority));
            }
            scanner.close();
            refreshSpinner();
        } catch (Exception e) { Log.e(TAG, "Load error", e); }
    }

    private void initPresets() {
        mPresetCategories.clear();
        int scriptIndex = mScriptSpinner != null ? mScriptSpinner.getSelectedItemPosition() : 0;
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

        if (scriptIndex == 0) {
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
        }
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
            for (int i = 0; i < cat.presets.size(); i++) {
                if (checked[i]) {
                    Preset p = cat.presets.get(i);
                    int[][] cells = p.getCells(is8dot);
                    List<Integer> pts = new ArrayList<>();
                    for (int[] c : cells) { int pattern = 0; for (int d : c) pattern |= (1 << (d - 1)); pts.add(pattern); }
                    mMappings.add(new Mapping(cat.defaultOpcode, p.character, pts, false));
                }
            }
            refreshSpinner();
        });
        b.setNegativeButton(R.string.btn_cancel, null);
        b.show();
    }

    private void updateDotsDisplay() {
        mCurrentCellsContainer.removeAllViews();
        for (int p : mCurrentPatterns) {
            TextView tv = new TextView(this);
            tv.setText("[" + patternToDotsString(p) + "]");
            tv.setPadding(10, 10, 10, 10); tv.setBackgroundColor(Color.LTGRAY); tv.setTextColor(Color.BLACK);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2);
            lp.setMargins(10, 0, 10, 0); mCurrentCellsContainer.addView(tv, lp);
        }
    }

    private void finishMappingAction() {
        refreshSpinner(); mCharEdit.setText(""); mDotsEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay();
    }

    private String getDotsString(List<Integer> patterns) {
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<patterns.size(); i++) { if (i>0) sb.append("-"); sb.append(patternToDotsString(patterns.get(i))); }
        return sb.toString();
    }

    private int findDuplicateDots(String dots) {
        for (int i = 0; i < mMappings.size(); i++) if (getDotsString(mMappings.get(i).patterns).equals(dots)) return i;
        return -1;
    }

    private String findDuplicateInPresets(String dots) {
        for (PresetCategory cat : mPresetCategories) {
            for (Preset p : cat.presets) if (getDotsString(patternsFromCells(p.getCells(mEightDotCheck.isChecked()))).equals(dots)) return p.label;
        }
        return null;
    }

    private List<Integer> patternsFromCells(int[][] cells) {
        List<Integer> pts = new ArrayList<>();
        for (int[] cell : cells) { int p = 0; for (int d : cell) p |= (1 << (d - 1)); pts.add(p); }
        return pts;
    }

    private void showDuplicateDialog(final Mapping newMapping, final int existingIndex) {
        showDuplicateDialogInternal(newMapping, getDotsString(newMapping.patterns), mMappings.get(existingIndex).character, false);
    }

    private void showDuplicateDialogInternal(final Mapping newMapping, String dots, String existingName, boolean isPreset) {
        String msg = String.format(getString(R.string.msg_duplicate_dots), dots, existingName);
        if (isPreset) msg += "\n\n(Carattere standard del set selezionato. La tua scelta avrà la precedenza.)";
        new AlertDialog.Builder(this).setTitle("Combinazione Duplicata").setMessage(msg)
            .setNegativeButton(R.string.btn_cancel, null)
            .setPositiveButton(isPreset ? R.string.btn_overwrite : R.string.btn_add_anyway, (dialog, which) -> {
                if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
                mMappings.add(newMapping); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            })
            .setNeutralButton(R.string.btn_add_prefix, (dialog, which) -> showPrefixSelector(newMapping))
            .show();
    }

    private boolean mIsUpdatingUI = false;

    private void showPrefixSelector(final Mapping mapping) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(R.string.title_select_prefix);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        final EditText dotEdit = new EditText(this); dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); layout.addView(dotEdit);
        GridLayout g = new GridLayout(this); g.setColumnCount(2);
        int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this); boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (mIsUpdatingUI) return; mIsUpdatingUI = true;
                String current = dotEdit.getText().toString();
                if (isChecked) { if (!current.contains(String.valueOf(dotNum))) {
                    List<Integer> dots = new ArrayList<>(); for (char c : current.toCharArray()) dots.add(Character.getNumericValue(c));
                    dots.add(dotNum); Collections.sort(dots); StringBuilder sb = new StringBuilder(); for (int d : dots) sb.append(d); dotEdit.setText(sb.toString());
                }} else { dotEdit.setText(current.replace(String.valueOf(dotNum), "")); }
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        layout.addView(g); b.setView(layout);
        b.setPositiveButton("OK", (d, w) -> {
            int prefixPattern = 0; for (char c : dotEdit.getText().toString().toCharArray()) prefixPattern |= (1 << (Character.getNumericValue(c) - 1));
            if (prefixPattern > 0) {
                List<Integer> pts = new ArrayList<>(); pts.add(prefixPattern); pts.addAll(mapping.patterns);
                if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
                mMappings.add(new Mapping(mapping.opcode, mapping.character, pts, mapping.isHighPriority));
                mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            }
        });
        b.setNegativeButton(R.string.btn_cancel, null); b.show();
    }

    private String sanitizeCharacter(String input) {
        if (input == null || input.isEmpty()) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            if (c != '\u00a0' && (c < 0x2800 || c > 0x28FF)) sb.append(c);
        }
        return sb.toString();
    }

    private String getSuggestedOpcode(String s) {
        if (s == null) return null; s = s.trim(); if (s.isEmpty()) return null;
        char c = s.charAt(s.length() - 1);
        if (s.length() > 1) return "word";
        if (Character.isDigit(c)) return "digit";
        if (Character.isLowerCase(c)) return "lowercase";
        if (Character.isUpperCase(c)) return "uppercase";
        if (c == ' ' || c == '\u00a0') return "space";
        if ("([{“«‘)]}”»’".indexOf(c) != -1) return "punctuation";
        if ("+-*×÷=<>".indexOf(c) != -1) return "math";
        if ("%€$#".indexOf(c) != -1) return "midendnumericmodechars";
        if (",.:;-!?¡¿\"'\\|/_@&§¶†‡*".indexOf(c) != -1) return "punctuation";
        return null;
    }

    private void suggestOpcodeFromChar() {
        String s = sanitizeCharacter(mCharEdit.getText().toString());
        String suggestedOp = getSuggestedOpcode(s);
        if (suggestedOp == null) return;
        int currentPos = mOpcodeSpinner.getSelectedItemPosition();
        String currentOp = OPCODES[currentPos];
        mIsUpdatingUI = true;
        if (mEditingIndex == -1) {
            if (currentOp.equals("always") || (currentOp.equals("word") && s.length() == 1) || (!currentOp.equals("word") && s.length() > 1)) updateSpinnerToOpcode(suggestedOp);
            else if (!currentOp.equals(suggestedOp) && Arrays.asList("digit", "lowercase", "uppercase", "punctuation", "math", "midendnumericmodechars").contains(currentOp)) updateSpinnerToOpcode(suggestedOp);
        }
        mIsUpdatingUI = false;
    }

    private void updateSpinnerToOpcode(String opcode) {
        for (int i = 0; i < OPCODES.length; i++) if (OPCODES[i].equals(opcode)) { mOpcodeSpinner.setSelection(i); break; }
    }

    private void addOrUpdateMapping() {
        String character = sanitizeCharacter(mCharEdit.getText().toString()); mCharEdit.setText(character);
        int currentOpIdx = mOpcodeSpinner.getSelectedItemPosition();
        String opcode = OPCODES[currentOpIdx];
        String suggested = getSuggestedOpcode(character);
        if (mEditingIndex == -1 && suggested != null) {
            if (opcode.equals("always") || !opcode.equals(suggested)) { opcode = suggested; updateSpinnerToOpcode(opcode); }
        }
        List<Integer> patternsToUse;
        String dotsInput = mDotsEdit.getText().toString().trim();
        if (mIsTemplateUsed || !dotsInput.isEmpty()) patternsToUse = parseDots(dotsInput);
        else patternsToUse = new ArrayList<>(mCurrentPatterns);
        if (patternsToUse.isEmpty()) { Toast.makeText(this, R.string.msg_enter_dots, Toast.LENGTH_SHORT).show(); return; }
        if (character.isEmpty() && !opcode.equals("space") && !opcode.equals("numsign") && !opcode.equals("capsletter") && !opcode.equals("letsign")) { Toast.makeText(this, R.string.msg_char_empty, Toast.LENGTH_SHORT).show(); return; }
        Mapping newMapping = new Mapping(opcode, character, patternsToUse, mMappingPriorityCheck.isChecked());
        String newDots = getDotsString(newMapping.patterns);
        int duplicateIndex = findDuplicateDots(newDots);
        if (mEditingIndex != -1 && duplicateIndex == mEditingIndex) { mMappings.set(mEditingIndex, newMapping); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); return; }
        if (duplicateIndex != -1) { showDuplicateDialog(newMapping, duplicateIndex); return; } 
        String presetName = findDuplicateInPresets(newDots);
        if (presetName != null) { showDuplicateDialogInternal(newMapping, newDots, presetName, true); return; }
        if (mEditingIndex != -1) { mMappings.set(mEditingIndex, newMapping); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); }
        else mMappings.add(newMapping);
        finishMappingAction();
    }

    private void loadMapping(int index) {
        mEditingIndex = index; Mapping m = mMappings.get(index);
        for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { mOpcodeSpinner.setSelection(i); break; }
        mCharEdit.setText(m.character); mDotsEdit.setText(getDotsString(m.patterns));
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns); mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay(); mAddMappingBtn.setText(R.string.btn_update);
    }

    private void showCellEditor(boolean append) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(R.string.label_dots_dialog);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        final EditText dotEdit = new EditText(this); dotEdit.setHint(R.string.hint_enter_dots); dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); layout.addView(dotEdit);
        GridLayout g = new GridLayout(this); g.setColumnCount(2);
        int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this); boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((buttonView, isChecked) -> {
                if (mIsUpdatingUI) return; mIsUpdatingUI = true;
                String current = dotEdit.getText().toString();
                if (isChecked) { if (!current.contains(String.valueOf(dotNum))) {
                    List<Integer> dots = new ArrayList<>(); for (char c : current.toCharArray()) dots.add(Character.getNumericValue(c));
                    dots.add(dotNum); Collections.sort(dots); StringBuilder sb = new StringBuilder(); for (int d : dots) sb.append(d); dotEdit.setText(sb.toString());
                }} else { dotEdit.setText(current.replace(String.valueOf(dotNum), "")); }
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        dotEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(android.text.Editable s) {
                if (mIsUpdatingUI) return; mIsUpdatingUI = true;
                String text = s.toString();
                for (int i=0; i<dotCount; i++) boxes[i].setChecked(text.contains(String.valueOf(order[i])));
                mIsUpdatingUI = false;
            }
        });
        layout.addView(g); b.setView(layout);
        b.setPositiveButton("OK", (d, w) -> {
            int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) { int dot = Character.getNumericValue(c); if (dot >= 1 && dot <= 8) p |= (1 << (dot - 1)); }
            if (p > 0) { if (!append) mCurrentPatterns.clear(); mCurrentPatterns.add(p); updateDotsDisplay(); mDotsEdit.setText(getDotsString(mCurrentPatterns)); }
        });
        b.setNegativeButton(R.string.btn_cancel, null); b.show();
    }

    private void deleteSelected() {
        int pos = mMappedItemsSpinner.getSelectedItemPosition();
        if (pos > 0) {
            Mapping m = mMappings.get(pos - 1);
            if (m.isFixed) { Toast.makeText(this, "Fixed mapping", Toast.LENGTH_SHORT).show(); return; }
            mMappings.remove(pos - 1); refreshSpinner(); mMappedItemsSpinner.setSelection(0); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add);
            mCharEdit.setText(""); mDotsEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay();
        }
    }

    private void refreshSpinner() {
        mDisplayList.clear(); mDisplayList.add(getString(R.string.label_mapped_items) + " (" + mMappings.size() + ")");
        for (Mapping m : mMappings) {
            String friendlyOp = m.opcode;
            for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { friendlyOp = OPCODE_LABELS[i]; break; }
            StringBuilder sb = new StringBuilder(); if (m.isHighPriority) sb.append("[H] ");
            sb.append(friendlyOp); if (m.character != null && !m.character.isEmpty()) sb.append(" '").append(m.character).append("'");
            sb.append(" -> ").append(getDotsString(m.patterns)); mDisplayList.add(sb.toString());
        }
        mAdapter.notifyDataSetChanged();
    }

    private String patternToDotsString(int pattern) {
        if (pattern == 0) return "0"; StringBuilder sb = new StringBuilder();
        for (int i=0; i<8; i++) if ((pattern & (1 << i)) != 0) sb.append(i + 1);
        return sb.toString();
    }

    private void saveTable() {
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, R.string.error_no_name, Toast.LENGTH_SHORT).show(); mTableNameEdit.requestFocus(); return; }
        if (!name.endsWith(".ctb")) name += ".ctb";
        StringBuilder sb = new StringBuilder("# Custom Table for Soft Braille Keyboard\n");
        sb.append("# Author: ").append(mAuthorEdit.getText().toString().trim()).append("\n");
        int localePos = mLocaleSpinner.getSelectedItemPosition();
        if (localePos > 0) sb.append("#+locale: ").append(mLocaleCodes.get(localePos)).append("\n");
        sb.append("\ninclude braille-patterns.cti\ninclude unicode.dis\n\n# --- HIGH PRIORITY ---\n");
        writeCustomMappings(sb, true);
        sb.append("\n# --- SYSTEM INCLUDES ---\ninclude unicode.dis\n");
        int basePos = mBaseTableSpinner.getSelectedItemPosition();
        if (basePos > 0) sb.append("include ").append(mSystemTableFiles.get(basePos)).append("\n");
        String scriptFile = mEightDotCheck.isChecked() ? SCRIPTS_8[mScriptSpinner.getSelectedItemPosition()][1] : SCRIPTS_6[mScriptSpinner.getSelectedItemPosition()][1];
        sb.append("include ").append(scriptFile).append("\n");
        if (scriptFile.contains("latin")) sb.append("space \\x0020 0\nspace \\x00a0 0\n");
        int numSys = mNumSystemSpinner.getSelectedItemPosition();
        if (numSys == NUM_CLASSIC) sb.append("include digits6Dots.uti\ninclude litdigits6Dots.uti\nnumsign 3456\n");
        else if (numSys == NUM_ANTOINE) sb.append("include digits6DotsPlusDot6.uti\ninclude litdigits6DotsPlusDot6.uti\nnumsign 6\n");
        else if (numSys == NUM_8DOT) sb.append("include digits8Dots.uti\n");
        sb.append("\n# --- STANDARD PRIORITY ---\n");
        writeCustomMappings(sb, false);
        try {
            CustomTableManager manager = new CustomTableManager(this);
            File f = manager.getCustomTableFile(name);
            try (FileOutputStream fos = new FileOutputStream(f)) { fos.write(sb.toString().getBytes(StandardCharsets.UTF_8)); }
            Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
        } catch (Exception e) { Toast.makeText(this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show(); }
    }

    private void writeCustomMappings(StringBuilder sb, boolean highPriorityOnly) {
        List<String> writtenBasePairs = new ArrayList<>();
        List<Character> writtenAutoChars = new ArrayList<>();
        StringBuilder baseRules = new StringBuilder();
        if (highPriorityOnly) {
            for (Mapping m : mMappings) if (m.isHighPriority) writeSingleMapping(sb, m, writtenBasePairs, writtenAutoChars, baseRules);
        } else {
            String[] group1 = {"lowercase", "uppercase", "letter", "base"};
            String[] group2 = {"digit", "litdigit", "numsign", "capsletter", "letsign", "begnum", "endnum"};
            String[] group3 = {"punctuation", "math", "sign", "always", "word", "partword", "space"};
            String[] group4 = {"prepunc", "postpunc", "begcaps", "endcaps", "begcapsword", "endcapsword", "midnum"};
            writeOpcodeGroup(sb, false, group1, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group2, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group3, writtenBasePairs, writtenAutoChars, baseRules);
            writeOpcodeGroup(sb, false, group4, writtenBasePairs, writtenAutoChars, baseRules);
        }
        if (baseRules.length() > 0) sb.append("\n# Base rules\n").append(baseRules.toString());
    }

    private void writeOpcodeGroup(StringBuilder sb, boolean high, String[] ops, List<String> b, List<Character> a, StringBuilder br) {
        List<String> list = Arrays.asList(ops);
        for (Mapping m : mMappings) if (m.isHighPriority == high && list.contains(m.opcode)) writeSingleMapping(sb, m, b, a, br);
    }

    private void writeSingleMapping(StringBuilder sb, Mapping m, List<String> writtenBasePairs, List<Character> writtenAutoChars, StringBuilder baseRules) {
        StringBuilder dots = new StringBuilder();
        for (int i=0; i<m.patterns.size(); i++) { if (i > 0) dots.append("-"); dots.append(patternToDotsString(m.patterns.get(i))); }
        boolean stand = m.opcode.equals("numsign") || m.opcode.equals("capsletter") || m.opcode.startsWith("beg") || m.opcode.startsWith("end") || m.opcode.equals("space") || m.opcode.equals("letsign");
        if (stand) sb.append(m.opcode).append(" ").append(dots).append("\n");
        else {
            if (m.character == null || m.character.isEmpty()) return;
            if (m.character.length() == 1 && (m.opcode.equals("lowercase") || m.opcode.equals("uppercase"))) {
                char c = m.character.charAt(0);
                if (Character.isLetter(c)) {
                    char low = Character.toLowerCase(c); char up = Character.toUpperCase(c);
                    if (low != up) {
                        if (c == up && !isCharacterMapped(low) && !writtenAutoChars.contains(low)) {
                            sb.append("lowercase ").append(String.format("\\x%04x", (int)low)).append(" ").append(dots).append("\n");
                            writtenAutoChars.add(low);
                        }
                        String pairKey = up + "-" + low;
                        if (!writtenBasePairs.contains(pairKey)) {
                            baseRules.append("base uppercase ").append(String.format("\\x%04x", (int)up)).append(" ").append(String.format("\\x%04x", (int)low)).append("\n");
                            writtenBasePairs.add(pairKey);
                        }
                    }
                }
            }
            String cPart = m.character;
            if (cPart.length() == 1) {
                char c = cPart.charAt(0);
                if (c == ' ') cPart = "\\s"; else if (c == '\t') cPart = "\\t"; else if (c < 33 || c > 126) cPart = String.format("\\x%04x", (int)c);
            }
            sb.append(m.opcode).append(" ").append(cPart).append(" ").append(dots).append("\n");
        }
    }

    private boolean isCharacterMapped(char c) {
        String s = String.valueOf(c); for (Mapping m : mMappings) if (s.equals(m.character)) return true;
        return false;
    }

    private void showTemplatePicker() {
        try {
            String[] files = getAssets().list("templates");
            if (files == null || files.length == 0) return;
            final List<String> names = new ArrayList<>(); final List<String> fFiles = new ArrayList<>();
            for (String file : files) { if (file.endsWith(".json")) { JSONObject obj = new JSONObject(loadTemplateFromAssets(file)); names.add(obj.getString("templateName")); fFiles.add(file); } }
            new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setItems(names.toArray(new String[0]), (dialog, which) -> confirmTemplateApplication(fFiles.get(which))).show();
        } catch (Exception e) {}
    }

    private String loadTemplateFromAssets(String fileName) throws Exception {
        InputStream is = getAssets().open("templates/" + fileName); int size = is.available(); byte[] buffer = new byte[size]; is.read(buffer); is.close(); return new String(buffer, "UTF-8");
    }

    private void confirmTemplateApplication(final String fileName) {
        if (!mMappings.isEmpty()) new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setMessage(R.string.msg_confirm_template).setPositiveButton(android.R.string.yes, (dialog, which) -> applyTemplate(fileName)).setNegativeButton(android.R.string.no, null).show();
        else applyTemplate(fileName);
    }

    private void applyTemplate(String fileName) {
        try {
            JSONObject obj = new JSONObject(loadTemplateFromAssets(fileName)); JSONObject settings = obj.getJSONObject("settings"); JSONArray mappings = obj.getJSONArray("mappings");
            mEightDotCheck.setChecked(settings.getBoolean("is8Dot")); updateScriptSpinner(mEightDotCheck.isChecked());
            int locIdx = mLocaleCodes.indexOf(settings.getString("locale")); if (locIdx != -1) mLocaleSpinner.setSelection(locIdx);
            String script = settings.getString("scriptFileName"); String[][] set = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6;
            for (int i=0; i<set.length; i++) if (set[i][1].equals(script)) { mScriptSpinner.setSelection(i); break; }
            mNumSystemSpinner.setSelection(settings.getInt("numSystem")); mMappings.clear();
            for (int i = 0; i < mappings.length(); i++) {
                JSONObject mObj = mappings.getJSONObject(i);
                mMappings.add(new Mapping(mObj.getString("opcode"), mObj.getString("char"), parseDots(mObj.getString("dots")), mObj.getBoolean("high"), mObj.getBoolean("fixed")));
            }
            
            // AUTO-FILL Table Name based on template (removing extension)
            String suggestedName = fileName.replace(".json", "") + "_custom";
            mTableNameEdit.setText(suggestedName);
            
            refreshSpinner(); mIsTemplateUsed = true; mAdvancedSettingsLayout.setVisibility(View.GONE); mCellPickerButtonsLayout.setVisibility(View.GONE); mCurrentCellsContainer.setVisibility(View.GONE); mEightDotCheck.setVisibility(View.GONE);
            Toast.makeText(this, R.string.msg_template_applied, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {}
    }

    private void shareTable() {
        String name = mTableNameEdit.getText().toString().trim(); if (name.isEmpty()) return; if (!name.endsWith(".ctb")) name += ".ctb";
        File f = new CustomTableManager(this).getCustomTableFile(name); if (!f.exists()) return;
        Intent intent = new Intent(Intent.ACTION_SEND); intent.setType("text/plain"); intent.putExtra(Intent.EXTRA_STREAM, Uri.fromFile(f)); intent.putExtra(Intent.EXTRA_SUBJECT, "Braille Table: " + name); startActivity(Intent.createChooser(intent, "Share Table"));
    }
}
