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
        {"label_latin", "latinLetterDef6Dots.uti"},
        {"label_cyrillic", "ru-comp6.utb"},
        {"label_greek", "grc-international-en.utb"},
        {"label_arabic", "ar-ar-g1.utb"},
        {"label_hebrew", "he-IL.utb"},
        {"label_hindi", "hi-in-g1.utb"},
        {"label_korean", "ko-g1.ctb"},
        {"label_vietnamese", "vi-vn-g0.utb"},
        {"label_thai", "th-g0.utb"},
        {"label_unicode_braille", "unicode-braille.utb"}
    };
    private static final String[][] SCRIPTS_8 = {
        {"label_latin", "latinLetterDef8Dots.uti"},
        {"label_cyrillic", "ru-comp8.utb"},
        {"label_greek", "gr-pl-comp8.utb"},
        {"label_arabic", "ar-ar-comp8.utb"},
        {"label_hebrew", "he-IL-comp8.utb"},
        {"label_hindi", "hi-in-g1.utb"},
        {"label_korean", "ko-g1.ctb"},
        {"label_vietnamese", "vi-cb8.utb"},
        {"label_thai", "th-comp8-backward.utb"},
        {"label_unicode_braille", "unicode-braille.utb"}
    };
    
    private Spinner mOpcodeSpinner;
    private EditText mCharEdit;
    private EditText mDotsEdit;
    private LinearLayout mCurrentCellsContainer;
    private List<Integer> mCurrentPatterns = new ArrayList<>();
    private Button mAddMappingBtn;
    private CheckBox mShowVisualPickerCheck;
    
    private LinearLayout mAdvancedSettingsLayout;
    private LinearLayout mCellPickerButtonsLayout;

    private Spinner mMappedItemsSpinner;
    private List<String> mDisplayList = new ArrayList<>();
    private ArrayAdapter<String> mAdapter;
    private List<Mapping> mMappings = new ArrayList<>();
    private List<Mapping> mBaseMappings = new ArrayList<>();
    private List<Mapping> mCurrentSearchResults = new ArrayList<>();
    private int mEditingIndex = -1;
    private boolean mIsTemplateUsed = false;
    private boolean mIsUpdatingUI = false;

    private static class LabeledSpinnerAdapter extends ArrayAdapter<String> {
        private String label;
        public LabeledSpinnerAdapter(Context context, String label, List<String> objects) {
            super(context, android.R.layout.simple_spinner_item, objects);
            this.label = label;
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        }
        public LabeledSpinnerAdapter(Context context, String label, String[] objects) {
            super(context, android.R.layout.simple_spinner_item, objects);
            this.label = label;
            setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        }
        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            TextView view = (TextView) super.getView(position, convertView, parent);
            view.setText(label + ": " + getItem(position));
            return view;
        }
    }

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
        boolean isBase = false;
        String baseRelation = null;
        
        Mapping(String op, String ch, List<Integer> pts, boolean high) { 
            this(op, ch, pts, high, false);
        }
        Mapping(String op, String ch, List<Integer> pts, boolean high, boolean fixed) { 
            opcode = op; character = ch; patterns.addAll(pts); isHighPriority = high; isFixed = fixed;
        }
    }

    private final java.util.Map<String, String> mPresetLookup = new java.util.HashMap<>();

    private TextView mSearchResultsSummary;

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

        LinearLayout mainContainer = new LinearLayout(this);
        mainContainer.setOrientation(LinearLayout.VERTICAL);

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
        mLocaleSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_locale_short), mLocaleNames));
        mLocaleSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                updateSystemTables();
                if (!mIsUpdatingUI) initPresets();
            }
            @Override public void onNothingSelected(AdapterView<?> parent) {}
        });
        topContent.addView(mLocaleSpinner);

        mEightDotCheck = new CheckBox(this);
        mEightDotCheck.setText(R.string.label_use_8_dots);
        mEightDotCheck.setOnCheckedChangeListener((buttonView, isChecked) -> {
            updateScriptSpinner(isChecked);
            updateSystemTables();
            initPresets(); 
            loadBaseTableMappings();
        });
        topContent.addView(mEightDotCheck);

        mAdvancedSettingsLayout = new LinearLayout(this);
        mAdvancedSettingsLayout.setOrientation(LinearLayout.VERTICAL);
        
        LinearLayout baseTableLayout = new LinearLayout(this);
        baseTableLayout.setOrientation(LinearLayout.HORIZONTAL);
        baseTableLayout.setGravity(Gravity.CENTER_VERTICAL);

        mBaseTableSpinner = new Spinner(this);
        mBaseTableSpinner.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mBaseTableSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> parent, View view, int position, long id) { loadBaseTableMappings(); }
            @Override public void onNothingSelected(AdapterView<?> parent) {}
        });
        updateSystemTables();
        
        Button importRulesBtn = new Button(this);
        importRulesBtn.setText(R.string.btn_import_base_rules);
        importRulesBtn.setTextSize(12);
        importRulesBtn.setOnClickListener(v -> importBaseRules());
        
        baseTableLayout.addView(mBaseTableSpinner);
        baseTableLayout.addView(importRulesBtn);
        mAdvancedSettingsLayout.addView(baseTableLayout);

        mScriptSpinner = new Spinner(this);
        updateScriptSpinner(false);
        mScriptSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> parent, View view, int position, long id) { 
                initPresets(); 
                loadBaseTableMappings();
            }
            @Override public void onNothingSelected(AdapterView<?> parent) {}
        });
        mAdvancedSettingsLayout.addView(mScriptSpinner);

        mNumSystemSpinner = new Spinner(this);
        String[] numSystems = {
            getString(R.string.num_sys_classic), getString(R.string.num_sys_antoine),
            getString(R.string.num_sys_dropped), getString(R.string.num_sys_8dot),
            getString(R.string.num_sys_none)
        };
        mNumSystemSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_number_system_short), numSystems));
        mNumSystemSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> parent, View view, int position, long id) { loadBaseTableMappings(); }
            @Override public void onNothingSelected(AdapterView<?> parent) {}
        });
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
        
        Button setDotsBtn = new Button(this); 
        setDotsBtn.setText(R.string.btn_set_cell);
        setDotsBtn.setOnClickListener(v -> showCellEditor(false));
        
        Button appendDotBtn = new Button(this); 
        appendDotBtn.setText(R.string.btn_append_cell);
        appendDotBtn.setOnClickListener(v -> showCellEditor(true));
        
        Button clearDots = new Button(this); 
        clearDots.setText(R.string.btn_clear_dots);
        clearDots.setOnClickListener(v -> { mCurrentPatterns.clear(); updateDotsDisplay(); mDotsEdit.setText(""); });
        
        mCellPickerButtonsLayout.addView(setDotsBtn); 
        mCellPickerButtonsLayout.addView(appendDotBtn); 
        mCellPickerButtonsLayout.addView(clearDots);
        topContent.addView(mCellPickerButtonsLayout);

        mainContainer.addView(scroll);

        LinearLayout bottomPanel = new LinearLayout(this);
        bottomPanel.setOrientation(LinearLayout.VERTICAL);
        bottomPanel.setBackgroundColor(Color.parseColor("#E0E0E0"));
        bottomPanel.setPadding(20, 20, 20, 20);

        LinearLayout inputRow = new LinearLayout(this);
        inputRow.setOrientation(LinearLayout.HORIZONTAL);
        mCharEdit = new EditText(this);
        mCharEdit.setHint(R.string.hint_char);
        mCharEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mDotsEdit = new EditText(this);
        mDotsEdit.setHint(R.string.hint_dots_format);
        mDotsEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.5f));
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

        LinearLayout settingsRow = new LinearLayout(this);
        settingsRow.setOrientation(LinearLayout.HORIZONTAL);
        settingsRow.setGravity(Gravity.CENTER_VERTICAL);
        
        mOpcodeSpinner = new Spinner(this);
        mOpcodeSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_opcode_short), OPCODE_LABELS));
        mOpcodeSpinner.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        
        mMappingPriorityCheck = new CheckBox(this);
        mMappingPriorityCheck.setText(getString(R.string.label_priority_short)); 
        mMappingPriorityCheck.setContentDescription(getString(R.string.label_high_priority));
        mMappingPriorityCheck.setChecked(true);
        
        settingsRow.addView(mOpcodeSpinner); settingsRow.addView(mMappingPriorityCheck);
        bottomPanel.addView(settingsRow);

        EditText searchEdit = new EditText(this);
        searchEdit.setHint(R.string.hint_search_rules);
        searchEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) { filterMappings(s.toString()); }
            @Override public void afterTextChanged(android.text.Editable s) {}
        });
        bottomPanel.addView(searchEdit);

        mSearchResultsSummary = new TextView(this);
        mSearchResultsSummary.setPadding(10, 5, 10, 5);
        mSearchResultsSummary.setTextSize(12);
        mSearchResultsSummary.setTextColor(Color.DKGRAY);
        mSearchResultsSummary.setVisibility(View.GONE);
        bottomPanel.addView(mSearchResultsSummary);

        LinearLayout actionRow = new LinearLayout(this);
        actionRow.setOrientation(LinearLayout.HORIZONTAL);
        actionRow.setGravity(Gravity.CENTER_VERTICAL);

        mMappedItemsSpinner = new Spinner(this);
        mDisplayList.add(getString(R.string.label_mapped_items));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
        mMappedItemsSpinner.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        mMappedItemsSpinner.setContentDescription(getString(R.string.label_mapped_items));
        mMappedItemsSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { 
                if (pos <= 0) return;
                if (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) {
                    loadMappingFromObject(mCurrentSearchResults.get(pos - 1));
                } else if (pos - 1 < mMappings.size()) {
                    loadMapping(pos - 1);
                }
            }
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

        Button exportBtn = new Button(this);
        exportBtn.setText(R.string.btn_export_table);
        exportBtn.setBackgroundColor(Color.parseColor("#2196F3"));
        exportBtn.setTextColor(Color.WHITE);
        exportBtn.setOnClickListener(v -> exportTable());
        exportBtn.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        Button removeMappingBtn = new Button(this);
        removeMappingBtn.setText(R.string.btn_remove_mapping);
        removeMappingBtn.setOnClickListener(v -> deleteSelected());
        removeMappingBtn.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));

        actionRow.addView(mMappedItemsSpinner); actionRow.addView(mAddMappingBtn); actionRow.addView(removeMappingBtn); actionRow.addView(saveBtn); actionRow.addView(exportBtn);
        bottomPanel.addView(actionRow);

        mainContainer.addView(bottomPanel);
        setContentView(mainContainer);

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
        if (tableId != null) {
            loadTableData(tableId);
        } else {
            if (mLocaleNames.size() > 1) mLocaleSpinner.setSelection(1);
            if (mBaseTableSpinner != null && mSystemTableLabels.size() > 0) mBaseTableSpinner.setSelection(0);
        }
    }

    private void updateSystemTables() {
        mSystemTableFiles.clear(); mSystemTableLabels.clear();
        mSystemTableFiles.add(""); mSystemTableLabels.add(getString(R.string.none_selected));
        TableList tableList = new TableList(this); List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        boolean is8DotMode = mEightDotCheck.isChecked();
        for (int i = tables.size() - 1; i >= 0; i--) {
            TableInfo info = tables.get(i);
            if (info.getId().startsWith("custom:") || info.isEightDot() != is8DotMode) tables.remove(i);
        }
        boolean showExtended = Options.getBooleanPreference(this, R.string.pref_show_ext_tables_key, Boolean.parseBoolean(getString(R.string.pref_show_ext_tables_default)));
        if (!showExtended) for (int i = tables.size() - 1; i >= 0; i--) if (tables.get(i).getVariant() != null && tables.get(i).getVariant().contains("[Ext]")) tables.remove(i);
        String selectedLang = mLocaleSpinner.getSelectedItemPosition() > 0 ? mLocaleCodes.get(mLocaleSpinner.getSelectedItemPosition()) : java.util.Locale.getDefault().getLanguage();
        final String finalLang = selectedLang.split("-")[0];
        Collections.sort(tables, (t1, t2) -> {
            boolean t1Matches = t1.getLocale().getLanguage().equals(finalLang), t2Matches = t2.getLocale().getLanguage().equals(finalLang);
            if (t1Matches && !t2Matches) return -1; if (!t1Matches && t2Matches) return 1;
            return (t1.getLocale().getDisplayName() + t1.getVariant()).compareTo(t2.getLocale().getDisplayName() + t2.getVariant());
        });
        for (TableInfo info : tables) {
            String fileName = tableList.getFileName(info.getId());
            if (fileName != null && !fileName.endsWith(".tbl")) {
                mSystemTableFiles.add(fileName); String label = info.getLocale().getDisplayName();
                if (info.getVariant() != null && !info.getVariant().isEmpty()) label += " " + info.getVariant();
                label += info.isEightDot() ? " (8 punti)" : " (Grado " + info.getGrade() + ")";
                label += " [" + fileName + "]"; mSystemTableLabels.add(label);
            }
        }
        mBaseTableSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_base_table_short), mSystemTableLabels));
    }

    private List<Integer> parseDots(String dotsStr) {
        List<Integer> patterns = new ArrayList<>(); String[] cells = dotsStr.split("-");
        for (String cell : cells) {
            int p = 0; for (char c : cell.toCharArray()) { int dot = Character.getNumericValue(c); if (dot >= 1 && dot <= 8) p |= (1 << (dot - 1)); }
            patterns.add(p);
        }
        return patterns;
    }

    private void updateScriptSpinner(boolean is8dot) {
        String[][] scripts = is8dot ? SCRIPTS_8 : SCRIPTS_6; String[] labels = new String[scripts.length];
        for (int i = 0; i < scripts.length; i++) {
            int resId = getResources().getIdentifier(scripts[i][0], "string", getPackageName());
            labels[i] = (resId != 0) ? getString(resId) : scripts[i][0];
        }
        mScriptSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_base_script_short), labels));
    }

    private void loadLocales() {
        mLocaleCodes.clear(); mLocaleNames.clear(); java.util.Locale[] locales = java.util.Locale.getAvailableLocales();
        java.util.Map<String, String> uniqueLocales = new java.util.TreeMap<>();
        for (java.util.Locale l : locales) {
            String lang = l.getLanguage(); if (lang.isEmpty()) continue;
            String name = l.getDisplayLanguage(), code = lang;
            if (lang.equals("pt") && "BR".equals(l.getCountry())) { name = l.getDisplayName(); code = "pt-BR"; }
            else if (lang.equals("zh")) { name = l.getDisplayName(); code = "zh"; if ("TW".equals(l.getCountry()) || "HK".equals(l.getCountry())) code = "zh-TW"; }
            if (name.length() > 0) name = name.substring(0, 1).toUpperCase() + name.substring(1);
            if (!uniqueLocales.containsKey(name)) uniqueLocales.put(name, code);
        }
        mLocaleCodes.add(""); mLocaleNames.add(getString(R.string.none_selected));
        String sysLang = java.util.Locale.getDefault().getLanguage();
        for (java.util.Map.Entry<String, String> entry : uniqueLocales.entrySet()) if (entry.getValue().equals(sysLang)) { mLocaleNames.add(entry.getKey()); mLocaleCodes.add(entry.getValue()); break; }
        for (java.util.Map.Entry<String, String> entry : uniqueLocales.entrySet()) if (!entry.getValue().equals(sysLang)) { mLocaleNames.add(entry.getKey()); mLocaleCodes.add(entry.getValue()); }
    }

    private void loadTableData(String tableId) {
        mIsUpdatingUI = true;
        try {
            CustomTableManager manager = new CustomTableManager(this); String fileName = tableId;
            if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
            File f = manager.getCustomTableFile(fileName); if (!f.exists()) { mIsUpdatingUI = false; return; }
            mTableNameEdit.setText(fileName); mMappings.clear(); mNumSystemSpinner.setSelection(NUM_NONE);
            boolean currentlyHighPriority = true; Scanner scanner = new Scanner(f, "UTF-8");
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim(); if (line.isEmpty()) continue;
                if (line.startsWith("#")) {
                    if (line.startsWith("# Author: ")) mAuthorEdit.setText(line.substring(10));
                    else if (line.startsWith("# Description: ")) mDescriptionEdit.setText(line.substring(15));
                    else if (line.startsWith("#+locale: ")) {
                        String code = line.substring(10).trim(); int idx = mLocaleCodes.indexOf(code);
                        if (idx == -1 && code.contains("-")) {
                            String baseLang = code.split("-")[0];
                            for (int i=0; i<mLocaleCodes.size(); i++) if (mLocaleCodes.get(i).startsWith(baseLang)) { idx = i; break; }
                        }
                        if (idx != -1) mLocaleSpinner.setSelection(idx);
                    } else if (line.contains("SYSTEM INCLUDES")) currentlyHighPriority = false;
                    continue;
                }
                if (line.startsWith("include ")) {
                    currentlyHighPriority = false; String included = line.substring(8).trim();
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
                String[] parts = line.split("\\s+"); if (parts.length < 2) continue;
                String opcode = parts[0], charPart = "", dotsPart = "";
                boolean stand = Arrays.asList("numsign", "capsletter", "letsign", "space").contains(opcode) || opcode.startsWith("beg") || opcode.startsWith("end");
                if (stand) dotsPart = parts[1];
                else if (parts.length >= 3) {
                    charPart = parts[1];
                    if (charPart.startsWith("\\x")) try { charPart = String.valueOf((char)Integer.parseInt(charPart.substring(2), 16)); } catch (Exception e) {}
                    dotsPart = parts[2];
                }
                if (!dotsPart.isEmpty()) mMappings.add(new Mapping(opcode, charPart, parseDots(dotsPart), currentlyHighPriority));
            }
            scanner.close(); refreshSpinner(); mIsUpdatingUI = false; initPresets();
        } catch (Exception e) { Log.e(TAG, "Load error", e); mIsUpdatingUI = false; }
    }

    private void initPresets() {
        mPresetLookup.clear(); String lang = "en";
        if (mLocaleSpinner != null && mLocaleSpinner.getSelectedItemPosition() > 0) lang = mLocaleCodes.get(mLocaleSpinner.getSelectedItemPosition()).split("-")[0];
        boolean is8dot = mEightDotCheck != null && mEightDotCheck.isChecked();
        String json = null;
        try { json = loadTemplateFromAssets(lang + (is8dot ? "_standard_8dot.json" : "_standard_6dot.json")); } 
        catch (Exception e) { try { json = loadTemplateFromAssets("en" + (is8dot ? "_standard_8dot.json" : "_standard_6dot.json")); } catch (Exception e2) {} }
        if (json != null) try {
            JSONArray mappings = new JSONObject(json).getJSONArray("mappings");
            for (int i = 0; i < mappings.length(); i++) { JSONObject m = mappings.getJSONObject(i); mPresetLookup.put(m.getString("dots"), m.optString("char", m.getString("opcode"))); }
        } catch (Exception e) { Log.e(TAG, "Error parsing presets", e); }
    }

    private void updateDotsDisplay() {
        mCurrentCellsContainer.removeAllViews();
        for (int p : mCurrentPatterns) {
            TextView tv = new TextView(this); tv.setText("[" + patternToDotsString(p) + "]");
            tv.setPadding(10, 10, 10, 10); tv.setBackgroundColor(Color.LTGRAY); tv.setTextColor(Color.BLACK);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2); lp.setMargins(10, 0, 10, 0); mCurrentCellsContainer.addView(tv, lp);
        }
    }

    private void finishMappingAction() { refreshSpinner(); mCharEdit.setText(""); mDotsEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay(); }

    private String getDotsString(List<Integer> patterns) {
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<patterns.size(); i++) { if (i>0) sb.append("-"); sb.append(patternToDotsString(patterns.get(i))); }
        return sb.toString();
    }

    private int findDuplicateDots(String dots) { for (int i = 0; i < mMappings.size(); i++) if (getDotsString(mMappings.get(i).patterns).equals(dots)) return i; return -1; }

    private String findDuplicateInPresets(String dots) { return mPresetLookup.get(dots); }

    private void showDuplicateDialog(final Mapping newMapping, final int existingIndex) { showDuplicateDialogInternal(newMapping, getDotsString(newMapping.patterns), mMappings.get(existingIndex).character, false); }

    private void showDuplicateDialogInternal(final Mapping newMapping, String dots, String existingName, boolean isPreset) {
        String msg = String.format(getString(R.string.msg_duplicate_dots), dots, existingName);
        if (isPreset) msg += "\n\n(" + getString(R.string.msg_standard_char_override) + ")";
        new AlertDialog.Builder(this).setTitle(R.string.title_duplicate_combination).setMessage(msg)
            .setNegativeButton(R.string.btn_cancel, null)
            .setPositiveButton(isPreset ? R.string.btn_overwrite : R.string.btn_add_anyway, (dialog, which) -> {
                if (mEditingIndex != -1) mMappings.remove(mEditingIndex); mMappings.add(newMapping); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            })
            .setNeutralButton(R.string.btn_add_prefix, (dialog, which) -> showPrefixSelector(newMapping)).show();
    }

    private void showPrefixSelector(final Mapping mapping) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.title_select_prefix);
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
                }} else dotEdit.setText(current.replace(String.valueOf(dotNum), ""));
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        layout.addView(g); b.setView(layout);
        b.setPositiveButton(R.string.btn_ok, (d, w) -> {
            int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) p |= (1 << (Character.getNumericValue(c) - 1));
            if (p > 0) {
                List<Integer> pts = new ArrayList<>(); pts.add(p); pts.addAll(mapping.patterns);
                if (mEditingIndex != -1) mMappings.remove(mEditingIndex); mMappings.add(new Mapping(mapping.opcode, mapping.character, pts, mapping.isHighPriority));
                mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            }
        });
        b.setNegativeButton(R.string.btn_cancel, null); b.show();
    }

    private String sanitizeCharacter(String input) {
        if (input == null || input.isEmpty()) return ""; StringBuilder sb = new StringBuilder();
        for (int i = 0; i < input.length(); i++) { char c = input.charAt(i); if (c != '\u00a0' && (c < 0x2800 || c > 0x28FF)) sb.append(c); }
        return sb.toString();
    }

    private String getSuggestedOpcode(String s) {
        if (s == null || s.trim().isEmpty()) return null; char c = s.charAt(s.length() - 1);
        if (s.length() > 1) return "word"; if (Character.isDigit(c)) return "digit";
        if (Character.isLowerCase(c)) return "lowercase"; if (Character.isUpperCase(c)) return "uppercase";
        if (c == ' ' || c == '\u00a0') return "space"; if ("([{“«‘)]}”»’".indexOf(c) != -1) return "punctuation";
        if ("+-*×÷=<>".indexOf(c) != -1) return "math"; if ("%€$#".indexOf(c) != -1) return "midendnumericmodechars";
        if (",.:;-!?¡¿\"'\\|/_@&§¶†‡*".indexOf(c) != -1) return "punctuation"; return null;
    }

    private void suggestOpcodeFromChar() {
        String s = sanitizeCharacter(mCharEdit.getText().toString()), sug = getSuggestedOpcode(s); if (sug == null) return;
        mIsUpdatingUI = true; if (mEditingIndex == -1) updateSpinnerToOpcode(sug); mIsUpdatingUI = false;
    }

    private void updateSpinnerToOpcode(String opcode) { for (int i = 0; i < OPCODES.length; i++) if (OPCODES[i].equals(opcode)) { mOpcodeSpinner.setSelection(i); break; } }

    private void addOrUpdateMapping() {
        String character = sanitizeCharacter(mCharEdit.getText().toString()); mCharEdit.setText(character);
        String opcode = OPCODES[mOpcodeSpinner.getSelectedItemPosition()], sug = getSuggestedOpcode(character);
        if (mEditingIndex == -1 && sug != null) { opcode = sug; updateSpinnerToOpcode(opcode); }
        List<Integer> patterns = mIsTemplateUsed || !mDotsEdit.getText().toString().isEmpty() ? parseDots(mDotsEdit.getText().toString()) : new ArrayList<>(mCurrentPatterns);
        if (patterns.isEmpty()) return; Mapping m = new Mapping(opcode, character, patterns, mMappingPriorityCheck.isChecked());
        String dots = getDotsString(m.patterns); int dupIdx = findDuplicateDots(dots);
        if (mEditingIndex != -1 && dupIdx == mEditingIndex) { mMappings.set(mEditingIndex, m); mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); return; }
        if (dupIdx != -1) { showDuplicateDialog(m, dupIdx); return; }
        String preset = findDuplicateInPresets(dots); if (preset != null) { showDuplicateDialogInternal(m, dots, preset, true); return; }
        if (mEditingIndex != -1) mMappings.set(mEditingIndex, m); else mMappings.add(m);
        mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
    }

    private void loadMapping(int index) {
        mIsUpdatingUI = true; mEditingIndex = index; Mapping m = mMappings.get(index);
        updateSpinnerToOpcode(m.opcode); mCharEdit.setText(m.character); mDotsEdit.setText(getDotsString(m.patterns));
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns); mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay(); mAddMappingBtn.setText(R.string.btn_update); mIsUpdatingUI = false;
    }

    private void showCellEditor(boolean append) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6;
        AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.label_dots_dialog);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        final EditText dotEdit = new EditText(this); dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); layout.addView(dotEdit);
        GridLayout g = new GridLayout(this); g.setColumnCount(2); int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this); boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((bv, isChecked) -> {
                if (mIsUpdatingUI) return; mIsUpdatingUI = true; String c = dotEdit.getText().toString();
                if (isChecked) { if (!c.contains(String.valueOf(dotNum))) { List<Integer> dots = new ArrayList<>(); for (char ch : c.toCharArray()) dots.add(Character.getNumericValue(ch)); dots.add(dotNum); Collections.sort(dots); StringBuilder sb = new StringBuilder(); for (int d : dots) sb.append(d); dotEdit.setText(sb.toString()); } }
                else dotEdit.setText(c.replace(String.valueOf(dotNum), ""));
                mIsUpdatingUI = false;
            });
            g.addView(boxes[i]);
        }
        dotEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(android.text.Editable s) { if (mIsUpdatingUI) return; mIsUpdatingUI = true; for (int i=0; i<dotCount; i++) boxes[i].setChecked(s.toString().contains(String.valueOf(order[i]))); mIsUpdatingUI = false; }
        });
        layout.addView(g); b.setView(layout);
        b.setPositiveButton(R.string.btn_ok, (d, w) -> {
            int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) p |= (1 << (Character.getNumericValue(c) - 1));
            if (p > 0) { if (!append) mCurrentPatterns.clear(); mCurrentPatterns.add(p); updateDotsDisplay(); mDotsEdit.setText(getDotsString(mCurrentPatterns)); }
        });
        b.setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void deleteSelected() {
        int pos = mMappedItemsSpinner.getSelectedItemPosition();
        if (pos <= 0) return;

        final Mapping target;
        if (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) {
            target = mCurrentSearchResults.get(pos - 1);
        } else if (pos - 1 < mMappings.size()) {
            target = mMappings.get(pos - 1);
        } else {
            return;
        }

        if (target.isFixed) {
            Toast.makeText(this, R.string.msg_fixed_mapping, Toast.LENGTH_SHORT).show();
            return;
        }

        if (target.isBase) {
            // Inherited rule: Offer to "Disable" via override with 0 dots
            new AlertDialog.Builder(this)
                .setTitle(R.string.label_mapped_items)
                .setMessage(getString(R.string.msg_cannot_delete_inherited) + "\n\n" + getString(R.string.msg_ask_disable_inherited))
                .setPositiveButton(R.string.btn_disable, (dialog, which) -> {
                    List<Integer> emptyPatterns = new ArrayList<>();
                    emptyPatterns.add(0);
                    Mapping override = new Mapping(target.opcode, target.character, emptyPatterns, true);
                    mMappings.add(override);
                    refreshSpinner();
                    Toast.makeText(this, "Carattere disattivato.", Toast.LENGTH_SHORT).show();
                })
                .setNegativeButton(R.string.btn_cancel, null)
                .show();
        } else {
            // Personal rule: delete directly
            mMappings.remove(target);
            refreshSpinner();
            mMappedItemsSpinner.setSelection(0);
            mEditingIndex = -1;
            mAddMappingBtn.setText(R.string.btn_add);
            mCharEdit.setText("");
            mDotsEdit.setText("");
            mCurrentPatterns.clear();
            updateDotsDisplay();
            Toast.makeText(this, "Mappatura rimossa.", Toast.LENGTH_SHORT).show();
        }
    }

    private void refreshSpinner() {
        mDisplayList.clear(); mDisplayList.add(mMappings.isEmpty() ? getString(R.string.label_no_mapped_items) : String.format(getString(R.string.label_n_mapped_items), mMappings.size()));
        for (Mapping m : mMappings) mDisplayList.add(getMappingDisplayString(m));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
    }

    private String patternToDotsString(int pattern) {
        if (pattern == 0) return "0"; StringBuilder sb = new StringBuilder();
        for (int i=0; i<8; i++) if ((pattern & (1 << i)) != 0) sb.append(i + 1);
        return sb.toString();
    }

    private void saveTable() {
        String name = mTableNameEdit.getText().toString().trim(); if (name.isEmpty()) return; if (!name.endsWith(".ctb")) name += ".ctb";
        StringBuilder sb = new StringBuilder("# " + name + "\n# " + getString(R.string.table_header_author) + mAuthorEdit.getText().toString().trim() + "\n");
        int lp = mLocaleSpinner.getSelectedItemPosition(); if (lp > 0) sb.append("#+locale: ").append(mLocaleCodes.get(lp)).append("\n");
        sb.append("\ninclude braille-patterns.cti\ninclude unicode.dis\n\n# --- HIGH PRIORITY ---\n"); writeCustomMappings(sb, true);
        sb.append("\n# --- SYSTEM INCLUDES ---\ninclude unicode.dis\n");
        int bp = mBaseTableSpinner.getSelectedItemPosition(); if (bp > 0) sb.append("include ").append(mSystemTableFiles.get(bp)).append("\n");
        String script = mEightDotCheck.isChecked() ? SCRIPTS_8[mScriptSpinner.getSelectedItemPosition()][1] : SCRIPTS_6[mScriptSpinner.getSelectedItemPosition()][1];
        sb.append("include ").append(script).append("\n");
        int ns = mNumSystemSpinner.getSelectedItemPosition();
        if (ns == NUM_CLASSIC) sb.append("include digits6Dots.uti\ninclude litdigits6Dots.uti\nnumsign 3456\n");
        else if (ns == NUM_ANTOINE) sb.append("include digits6DotsPlusDot6.uti\ninclude litdigits6DotsPlusDot6.uti\nnumsign 6\n");
        else if (ns == NUM_DROPPED) sb.append("include litdigits6Dots.uti\n");
        else if (ns == NUM_8DOT) sb.append("include digits8Dots.uti\n");
        sb.append("\n# --- STANDARD PRIORITY ---\n"); writeCustomMappings(sb, false);
        try {
            CustomTableManager m = new CustomTableManager(this); File f = m.getCustomTableFile(name);
            try (FileOutputStream fos = new FileOutputStream(f)) { fos.write(sb.toString().getBytes("UTF-8")); }
            Options.writeStringPreference(this, mEightDotCheck.isChecked() ? R.string.pref_braille_computer_table_key : R.string.pref_braille_literary_table_key, "custom:" + name);
            Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {}
    }

    private void writeCustomMappings(StringBuilder sb, boolean high) {
        List<String> b = new ArrayList<>(); List<Character> a = new ArrayList<>(); StringBuilder br = new StringBuilder();
        if (high) { for (Mapping m : mMappings) if (m.isHighPriority) writeSingleMapping(sb, m, b, a, br); }
        else {
            writeOpcodeGroup(sb, false, new String[]{"lowercase", "uppercase", "letter", "base"}, b, a, br);
            writeOpcodeGroup(sb, false, new String[]{"digit", "litdigit", "numsign", "capsletter", "letsign", "begnum", "endnum"}, b, a, br);
            writeOpcodeGroup(sb, false, new String[]{"punctuation", "math", "sign", "always", "word", "partword", "space"}, b, a, br);
            writeOpcodeGroup(sb, false, new String[]{"prepunc", "postpunc", "begcaps", "endcaps", "begcapsword", "endcapsword", "midnum"}, b, a, br);
        }
        if (br.length() > 0) sb.append("\n# Base rules\n").append(br.toString());
    }

    private void writeOpcodeGroup(StringBuilder sb, boolean high, String[] ops, List<String> b, List<Character> a, StringBuilder br) {
        List<String> list = Arrays.asList(ops); for (Mapping m : mMappings) if (m.isHighPriority == high && list.contains(m.opcode)) writeSingleMapping(sb, m, b, a, br);
    }

    private void writeSingleMapping(StringBuilder sb, Mapping m, List<String> b, List<Character> a, StringBuilder br) {
        StringBuilder dots = new StringBuilder(); for (int i=0; i<m.patterns.size(); i++) { if (i > 0) dots.append("-"); dots.append(patternToDotsString(m.patterns.get(i))); }
        if (Arrays.asList("numsign", "capsletter", "letsign", "space").contains(m.opcode) || m.opcode.startsWith("beg") || m.opcode.startsWith("end")) sb.append(m.opcode).append(" ").append(dots).append("\n");
        else {
            if (m.character == null || m.character.isEmpty()) return;
            if (m.character.length() == 1 && (m.opcode.equals("lowercase") || m.opcode.equals("uppercase"))) {
                char c = m.character.charAt(0);
                if (Character.isLetter(c)) {
                    char low = Character.toLowerCase(c), up = Character.toUpperCase(c);
                    if (low != up) {
                        if (c == up && !isCharacterMapped(low) && !a.contains(low)) { sb.append("lowercase ").append(String.format("\\x%04x", (int)low)).append(" ").append(dots).append("\n"); a.add(low); }
                        String pair = up + "-" + low; if (!b.contains(pair)) { br.append("base uppercase ").append(String.format("\\x%04x", (int)up)).append(" ").append(String.format("\\x%04x", (int)low)).append("\n"); b.add(pair); }
                    }
                }
            }
            String cP = m.character; if (cP.length() == 1) { char c = cP.charAt(0); if (c == ' ') cP = "\\s"; else if (c == '\t') cP = "\\t"; else if (c == '\\') cP = "\\\\"; else if (c < 33 || c > 126) cP = String.format("\\x%04x", (int)c); }
            sb.append(m.opcode).append(" ").append(cP).append(" ").append(dots).append("\n");
        }
    }

    private boolean isCharacterMapped(char c) { String s = String.valueOf(c); for (Mapping m : mMappings) if (s.equals(m.character)) return true; return false; }

    private void showTemplatePicker() {
        try {
            String[] files = getAssets().list("templates"); if (files == null || files.length == 0) return;
            final List<String> names = new ArrayList<>(), fFiles = new ArrayList<>();
            for (String f : files) if (f.endsWith(".json")) { JSONObject o = new JSONObject(loadTemplateFromAssets(f)); names.add(o.getString("templateName")); fFiles.add(f); }
            new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setItems(names.toArray(new String[0]), (dialog, w) -> confirmTemplateApplication(fFiles.get(w))).show();
        } catch (Exception e) {}
    }

    private String loadTemplateFromAssets(String f) throws Exception { InputStream is = getAssets().open("templates/" + f); byte[] b = new byte[is.available()]; is.read(b); is.close(); return new String(b, "UTF-8"); }

    private void confirmTemplateApplication(final String f) {
        if (!mMappings.isEmpty()) new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setMessage(R.string.msg_confirm_template).setPositiveButton(android.R.string.yes, (d, w) -> applyTemplate(f)).setNegativeButton(android.R.string.no, null).show();
        else applyTemplate(f);
    }

    private void applyTemplate(String f) {
        try {
            JSONObject o = new JSONObject(loadTemplateFromAssets(f)), s = o.getJSONObject("settings"); JSONArray m = o.getJSONArray("mappings");
            mEightDotCheck.setChecked(s.getBoolean("is8Dot")); updateScriptSpinner(mEightDotCheck.isChecked());
            int idx = mLocaleCodes.indexOf(s.getString("locale")); if (idx != -1) mLocaleSpinner.setSelection(idx);
            String script = s.getString("scriptFileName"); String[][] set = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6;
            for (int i=0; i<set.length; i++) if (set[i][1].equals(script)) { mScriptSpinner.setSelection(i); break; }
            mNumSystemSpinner.setSelection(s.getInt("numSystem")); mMappings.clear();
            for (int i = 0; i < m.length(); i++) { JSONObject mO = m.getJSONObject(i); mMappings.add(new Mapping(mO.getString("opcode"), mO.getString("char"), parseDots(mO.getString("dots")), mO.getBoolean("high"), mO.getBoolean("fixed"))); }
            mTableNameEdit.setText(f.replace(".json", "") + "_custom"); refreshSpinner(); mIsTemplateUsed = true; mAdvancedSettingsLayout.setVisibility(View.GONE); mCellPickerButtonsLayout.setVisibility(View.GONE); mCurrentCellsContainer.setVisibility(View.GONE); mEightDotCheck.setVisibility(View.GONE);
        } catch (Exception e) {}
    }

    private void exportTable() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M && android.os.Build.VERSION.SDK_INT <= android.os.Build.VERSION_CODES.P) if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != android.content.pm.PackageManager.PERMISSION_GRANTED) { requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, 100); return; }
        String n = mTableNameEdit.getText().toString().trim(); if (n.isEmpty()) return; if (!n.endsWith(".ctb")) n += ".ctb";
        try {
            File d = new File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "soft-braille");
            if (!d.exists() && !d.mkdirs()) return; File o = new File(d, n);
            StringBuilder sb = new StringBuilder("# " + n + "\n# " + getString(R.string.table_header_author) + mAuthorEdit.getText().toString().trim() + "\n");
            int lp = mLocaleSpinner.getSelectedItemPosition(); if (lp > 0) sb.append("#+locale: ").append(mLocaleCodes.get(lp)).append("\n");
            sb.append("\ninclude braille-patterns.cti\ninclude unicode.dis\n\n# --- HIGH PRIORITY ---\n"); writeCustomMappings(sb, true);
            sb.append("\n# --- SYSTEM INCLUDES ---\ninclude unicode.dis\n");
            int bp = mBaseTableSpinner.getSelectedItemPosition(); if (bp > 0) sb.append("include ").append(mSystemTableFiles.get(bp)).append("\n");
            sb.append("include ").append(mEightDotCheck.isChecked() ? SCRIPTS_8[mScriptSpinner.getSelectedItemPosition()][1] : SCRIPTS_6[mScriptSpinner.getSelectedItemPosition()][1]).append("\n");
            int ns = mNumSystemSpinner.getSelectedItemPosition();
            if (ns == NUM_CLASSIC) sb.append("include digits6Dots.uti\ninclude litdigits6Dots.uti\nnumsign 3456\n");
            else if (ns == NUM_ANTOINE) sb.append("include digits6DotsPlusDot6.uti\ninclude litdigits6DotsPlusDot6.uti\nnumsign 6\n");
            else if (ns == NUM_DROPPED) sb.append("include litdigits6Dots.uti\n");
            else if (ns == NUM_8DOT) sb.append("include digits8Dots.uti\n");
            sb.append("\n# --- STANDARD PRIORITY ---\n"); writeCustomMappings(sb, false);
            try (FileOutputStream fos = new FileOutputStream(o)) { fos.write(sb.toString().getBytes(StandardCharsets.UTF_8)); }
            Toast.makeText(this, R.string.msg_table_exported, Toast.LENGTH_SHORT).show();
        } catch (Exception e) {}
    }

    private void filterMappings(String q) {
        if (q == null || q.isEmpty()) { mSearchResultsSummary.setVisibility(View.GONE); refreshSpinner(); return; }
        final String lQ = q.toLowerCase().trim(); List<Mapping> fO = new ArrayList<>();
        boolean sN = lQ.matches(".*(numero|cifra|num|digit).*"), sC = lQ.matches(".*(maiusc|cap).*"), sP = lQ.matches(".*(punt|punc|segno|sign).*"), sM = lQ.matches(".*(mat|math|simb|sym).*");
        java.util.Set<String> pK = new java.util.HashSet<>(); for (Mapping m : mMappings) pK.add(m.opcode + "|" + m.character);
        List<Mapping> all = new ArrayList<>(mMappings); for (Mapping m : mBaseMappings) if (!pK.contains(m.opcode + "|" + m.character)) all.add(m);
        boolean isN = lQ.matches("[1-8-]+"), isS = q.length() == 1 && !isN;
        for (Mapping m : all) {
            boolean match = false;
            if (sN && Arrays.asList("numsign", "digit", "litdigit", "begnum").contains(m.opcode)) match = true;
            else if (sC && (m.opcode.contains("caps") || m.opcode.equals("letsign"))) match = true;
            else if (sP && (m.opcode.equals("punctuation") || m.opcode.contains("punc") || m.opcode.equals("sign"))) match = true;
            else if (sM && (m.opcode.equals("math") || m.opcode.contains("sign"))) match = true;
            if (!match && m.opcode.toLowerCase().contains(lQ)) match = true;
            if (!match) {
                if (isN) { String dots = getDotsString(m.patterns); if (dots.equals(lQ) || dots.contains(lQ)) match = true; }
                else if (isS) { if (m.character != null && m.character.equals(q)) match = true; }
                else if (getMappingDisplayString(m).toLowerCase().contains(lQ)) match = true;
            }
            if (match) fO.add(m);
        }
        if (isN && !fO.isEmpty()) Collections.sort(fO, (m1, m2) -> { String d1 = getDotsString(m1.patterns), d2 = getDotsString(m2.patterns); boolean e1 = d1.equals(lQ), e2 = d2.equals(lQ); if (e1 && !e2) return -1; if (!e1 && e2) return 1; return d1.length() - d2.length(); });
        mDisplayList.clear(); mDisplayList.add(getString(R.string.label_mapped_items)); for (Mapping m : fO) mDisplayList.add(getMappingDisplayString(m));
        mCurrentSearchResults = fO; mAdapter.notifyDataSetChanged(); mSearchResultsSummary.setVisibility(View.VISIBLE);
        if (fO.isEmpty()) { mSearchResultsSummary.setText("Nessun risultato"); mSearchResultsSummary.setTextColor(Color.RED); }
        else { mSearchResultsSummary.setText("Trovati " + fO.size() + " risultati"); mSearchResultsSummary.setTextColor(Color.DKGRAY); if (fO.size() == 1) loadMappingFromObject(fO.get(0)); }
    }

    private void loadMappingFromObject(Mapping m) {
        mIsUpdatingUI = true; mEditingIndex = -1; if (!m.isBase) for (int i = 0; i < mMappings.size(); i++) if (mMappings.get(i) == m) { mEditingIndex = i; break; }
        updateSpinnerToOpcode(m.opcode); mCharEdit.setText(m.character); mDotsEdit.setText(getDotsString(m.patterns));
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns); mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay(); if (m.isBase) { mAddMappingBtn.setText(R.string.btn_add); Toast.makeText(this, "Regola ereditata caricata.", Toast.LENGTH_SHORT).show(); } else mAddMappingBtn.setText(R.string.btn_update);
        mIsUpdatingUI = false;
    }

    private String getMappingDisplayString(Mapping m) {
        String fO = m.opcode; for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { fO = OPCODE_LABELS[i]; break; }
        StringBuilder sb = new StringBuilder(m.isBase ? "[Ereditata] " : "[Personale] ");
        if (m.isHighPriority) sb.append("[H] "); sb.append(fO); if (m.character != null && !m.character.isEmpty()) sb.append(" '").append(m.character).append("'");
        if (m.baseRelation != null) sb.append(" (").append(m.baseRelation).append(")"); if (!m.patterns.isEmpty()) sb.append(" -> ").append(getDotsString(m.patterns));
        return sb.toString();
    }

    private void loadBaseTableMappings() {
        mBaseMappings.clear(); File d = new File(getDir("translator", MODE_PRIVATE), "liblouis/tables");
        int p = mBaseTableSpinner.getSelectedItemPosition(); if (p > 0 && p < mSystemTableFiles.size()) { File f = new File(d, mSystemTableFiles.get(p)); if (f.exists()) try { parseTableRecursive(f, d, mBaseMappings, 0); } catch (Exception e) {} }
        int s = mScriptSpinner.getSelectedItemPosition(); File sF = new File(d, mEightDotCheck.isChecked() ? SCRIPTS_8[s][1] : SCRIPTS_6[s][1]); if (sF.exists()) try { parseTableRecursive(sF, d, mBaseMappings, 0); } catch (Exception e) {}
        int n = mNumSystemSpinner.getSelectedItemPosition(); List<String> nF = new ArrayList<>();
        if (n == NUM_CLASSIC) { nF.add("digits6Dots.uti"); nF.add("litdigits6Dots.uti"); } else if (n == NUM_ANTOINE) { nF.add("digits6DotsPlusDot6.uti"); nF.add("litdigits6DotsPlusDot6.uti"); } else if (n == NUM_DROPPED) nF.add("litdigits6Dots.uti"); else if (n == NUM_8DOT) nF.add("digits8Dots.uti");
        for (String f : nF) { File nf = new File(d, f); if (nf.exists()) try { parseTableRecursive(nf, d, mBaseMappings, 0); } catch (Exception e) {} }
        for (Mapping m : mBaseMappings) m.isBase = true; refreshSpinner();
    }

    private void importBaseRules() {
        int p = mBaseTableSpinner.getSelectedItemPosition(); if (p <= 0) return;
        File d = new File(getDir("translator", MODE_PRIVATE), "liblouis/tables"), f = new File(d, mSystemTableFiles.get(p));
        if (!f.exists()) return;
        try {
            List<Mapping> i = new ArrayList<>(); parseTableRecursive(f, d, i, 0); if (i.isEmpty()) return;
            new AlertDialog.Builder(this).setTitle(R.string.btn_import_base_rules).setMessage("Importa " + i.size() + " regole?")
                .setPositiveButton(R.string.btn_ok, (dialog, w) -> { mMappings.addAll(i); mBaseTableSpinner.setSelection(0); refreshSpinner(); }).setNegativeButton(R.string.btn_cancel, null).show();
        } catch (Exception e) {}
    }

    private void parseTableRecursive(File f, File d, List<Mapping> o, int dp) throws Exception {
        if (dp > 10) return; Scanner s = new Scanner(f, "UTF-8");
        while (s.hasNextLine()) {
            String l = s.nextLine().trim(); if (l.isEmpty() || l.startsWith("#")) continue;
            if (l.startsWith("include ")) { String n = l.substring(8).trim().split("#")[0].trim().split("\\s+")[0]; if (n.endsWith(".dis") || n.equals("braille-patterns.cti")) continue; File nF = new File(d, n); if (nF.exists()) parseTableRecursive(nF, d, o, dp + 1); continue; }
            String[] p = l.split("\\s+"); if (p.length < 2) continue; String op = p[0];
            List<String> v = Arrays.asList("lowercase", "uppercase", "letter", "digit", "punctuation", "math", "sign", "always", "word", "partword", "litdigit", "midnum", "base", "capsletter", "numsign", "letsign", "context");
            if (!v.contains(op)) continue; String cP = "", dP = "", bR = null;
            if (op.equals("base") && p.length >= 4) { cP = parseLiblouisChar(p[2]); bR = "-> " + parseLiblouisChar(p[3]); }
            else if (Arrays.asList("capsletter", "numsign", "letsign").contains(op)) dP = p[1];
            else if (op.equals("context") && l.contains("[@") && l.contains("]")) { int st = l.indexOf("[@") + 2, ed = l.indexOf("]", st); if (st > 1 && ed > st) { dP = l.substring(st, ed); bR = "Context rule"; } }
            else if (p.length >= 3) { cP = parseLiblouisChar(p[1]); dP = p[2]; }
            if (cP.isEmpty() && dP.isEmpty()) continue; if (!cP.isEmpty() && cP.charAt(0) >= 0x2800 && cP.charAt(0) <= 0x28FF) continue;
            Mapping m = new Mapping(op, cP, parseDots(dP), false); m.baseRelation = bR; boolean dup = false;
            for (Mapping ex : o) if (ex.opcode.equals(m.opcode) && ex.character.equals(m.character)) { dup = true; break; }
            if (!dup) o.add(m);
        }
        s.close();
    }

    private String parseLiblouisChar(String p) { if (p.startsWith("\\x")) try { return String.valueOf((char)Integer.parseInt(p.substring(2), 16)); } catch (Exception e) {} if (p.equals("\\s")) return " "; return p; }
}
