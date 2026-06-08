/*
 * Copyright (C) 2026 The Soft Braille Keyboard Authors
 */

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
    private EditText mSearchLocaleEdit;
    private List<String> mLocaleCodes = new ArrayList<>();
    private List<String> mFilteredLocaleCodes = new ArrayList<>();
    private List<String> mLocaleNames = new ArrayList<>();
    private List<String> mFilteredLocaleNames = new ArrayList<>();

    private Spinner mBaseTableSpinner;
    private List<String> mSystemTableFiles = new ArrayList<>();
    private List<String> mSystemTableLabels = new ArrayList<>();

    private Spinner mNumSystemSpinner;
    private static final int NUM_NONE = 0;
    private static final int NUM_CLASSIC = 1;
    private static final int NUM_ANTOINE = 2;
    private static final int NUM_6DOT_UNIVOCAL = 3;
    private static final int NUM_8DOT_STANDARD = 4;
    private static final int NUM_8DOT_COMPUTER_LOWERED = 5;
    private static final int NUM_DROPPED = 6;
    private static final int NUM_LITERARY = 7;

    private Spinner mScriptSpinner;
    private static final String[][] SCRIPTS_6 = {
        {"label_none", "none"},
        {"label_latin", "latinLetterDef6Dots.uti"},
        {"label_cyrillic", "cyrillicLetterDef6Dots.uti"},
        {"label_greek", "greekLetterDef6Dots.uti"},
        {"label_arabic", "arabicLetterDef6Dots.uti"},
        {"label_hebrew", "hebrewLetterDef6Dots.uti"},
        {"label_hindi", "hindiLetterDef6Dots.uti"},
        {"label_korean", "koreanLetterDef6Dots.uti"},
        {"label_vietnamese", "vietnameseLetterDef6Dots.uti"},
        {"label_thai", "thaiLetterDef6Dots.uti"},
        {"label_unicode_braille", "unicode-braille.utb"}
    };
    private static final String[][] SCRIPTS_8 = {
        {"label_none", "none"},
        {"label_latin", "latinLetterDef8Dots.uti"},
        {"label_cyrillic", "cyrillicLetterDef8Dots.uti"},
        {"label_greek", "greekLetterDef6Dots.uti"},
        {"label_arabic", "arabicLetterDef6Dots.uti"},
        {"label_hebrew", "hebrewLetterDef6Dots.uti"},
        {"label_hindi", "hindiLetterDef6Dots.uti"},
        {"label_korean", "koreanLetterDef6Dots.uti"},
        {"label_vietnamese", "vietnameseLetterDef8Dots.uti"},
        {"label_thai", "thaiLetterDef8Dots.uti"},
        {"label_unicode_braille", "unicode-braille.utb"}
    };
    
    private Spinner mOpcodeSpinner;
    private EditText mCharEdit;
    private EditText mDotsEdit;
    private LinearLayout mCurrentCellsContainer;
    private List<Integer> mCurrentPatterns = new ArrayList<>();
    private Button mAddMappingBtn;
    private Button mDeleteMappingBtn;
    private CheckBox mShowVisualPickerCheck;
    
    private LinearLayout mHeaderConfigLayout;
    private LinearLayout mCellPickerButtonsLayout;
    private Button mToggleHeaderBtn;

    private Spinner mMappedItemsSpinner;
    private List<String> mDisplayList = new ArrayList<>();
    private ArrayAdapter<String> mAdapter;
    private List<Mapping> mMappings = new ArrayList<>();
    private List<String> mOriginalHeaderLines = new ArrayList<>();
    
    private List<Mapping> mCurrentSearchResults = new ArrayList<>();
    private int mEditingIndex = -1;
    private boolean mIsTemplateUsed = false;
    private boolean mIsManagedTable = true;
    private boolean mIsUpdatingUI = false;
    private boolean mIsCloningMode = false;
    private long mLastMappingClickTime = 0;
    private int mLastScriptPos = -1;
    private int mLastNumPos = -1;

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
        "", "include", "context", "class", "always", "lowercase", "uppercase", "punctuation", "digit", "math", "sign", "space", 
        "numsign", "capsletter", "begcaps", "endcaps", 
        "begcapsword", "endcapsword",
        "prepunc", "postpunc",
        "word", "partword", "letsign", "letter", "litdigit",
        "midnum", "numericmodechars", "midendnumericmodechars", "begnum", "endnum"
    };
    private String[] OPCODE_LABELS;

    private class Mapping {
        String opcode; String character; List<Integer> patterns = new ArrayList<>();
        boolean isHighPriority = false;
        boolean isFixed = false;
        boolean isDirty = false; // Indica se la mappatura è stata creata o modificata dall'utente
        String comment = null;
        String rawLine = null;
        
        Mapping(String op, String ch, List<Integer> pts, boolean high) { 
            this(op, ch, pts, high, false);
        }
        Mapping(String op, String ch, List<Integer> pts, boolean high, boolean fixed) { 
            opcode = op; character = ch; patterns.addAll(pts); isHighPriority = high; isFixed = fixed;
            isDirty = true; // Nuova mappatura o modifica esplicita
        }
        Mapping(String raw) {
            this.rawLine = raw;
            this.isFixed = false;
            this.isDirty = false; // Caricata da file, non ancora modificata
            String trimmed = raw.trim();
            if (trimmed.isEmpty()) { this.opcode = "raw"; this.character = ""; return; }
            
            // 1. Identificazione riga di puro commento
            if (trimmed.startsWith("#")) {
                this.opcode = "comment";
                this.character = ""; // Non usiamo character per i commenti puri
                return;
            }

            // 2. Estrazione commento inline esplicito (#)
            int hashIdx = raw.indexOf('#');
            if (hashIdx != -1) {
                this.comment = raw.substring(hashIdx + 1);
                trimmed = raw.substring(0, hashIdx).trim();
            }

            String[] p = trimmed.split("\\s+");
            if (p.length > 0) {
                this.opcode = p[0];
                if (this.opcode.equals("base") && p.length >= 4) {
                    this.opcode = "base " + p[1];
                    this.character = p[2] + " " + p[3]; // SALVIAMO ENTRAMBI I CARATTERI
                    this.patterns = new ArrayList<>();
                    // 3. Cattura commento implicito base (tutto ciò che segue p[3] se non c'è #)
                    if (this.comment == null) {
                        int pos = raw.indexOf(p[3]);
                        if (pos != -1) {
                            int nextPos = raw.indexOf(p[3], pos + 1); // Cerca se p[3] compare due volte (es. base uppercase A A)
                            if (nextPos != -1) pos = nextPos;
                            if (pos + p[3].length() < raw.length()) {
                                String extra = raw.substring(pos + p[3].length()).trim();
                                if (!extra.isEmpty()) this.comment = extra;
                            }
                        }
                    }
                } else if (this.opcode.equals("include") && p.length >= 2) {
                    this.character = p[1];
                    if (this.comment == null) {
                        int pos = raw.indexOf(p[1]);
                        if (pos != -1 && pos + p[1].length() < raw.length()) {
                            String extra = raw.substring(pos + p[1].length()).trim();
                            if (!extra.isEmpty()) this.comment = extra;
                        }
                    }
                } else {
                    List<String> standalone = Arrays.asList("numsign", "capsletter", "letsign", "begcaps", "endcaps", "begcapsword", "endcapsword", "begnum", "endnum");
                    if (standalone.contains(this.opcode) || this.opcode.startsWith("beg") || this.opcode.startsWith("end")) {
                        if (p.length >= 2) {
                            this.patterns = parseDots(p[1]);
                            // Commento implicito dopo i punti
                            if (this.comment == null) {
                                int pos = raw.indexOf(p[1]);
                                if (pos != -1 && pos + p[1].length() < raw.length()) {
                                    String extra = raw.substring(pos + p[1].length()).trim();
                                    if (!extra.isEmpty()) this.comment = extra;
                                }
                            }
                        }
                    } else if (p.length >= 2) {
                        this.character = p[1];
                        if (this.character.startsWith("\\x")) {
                            try { this.character = String.valueOf((char)Integer.parseInt(this.character.substring(2), 16)); } catch (Exception e) {}
                        } else if (this.character.equals("\\s")) this.character = " ";
                        else if (this.character.equals("\\\\")) this.character = "\\";
                        
                        if (p.length >= 3) {
                            this.patterns = parseDots(p[2]);
                            // 4. Cattura commento implicito (tutto ciò che segue i punti se non c'è #)
                            if (this.comment == null) {
                                // Cerchiamo p[2] DOPO p[1] per evitare falsi positivi (es: litdigit 1 1)
                                int startSearch = raw.indexOf(p[1]);
                                if (startSearch == -1) startSearch = 0; else startSearch += p[1].length();
                                int pos = raw.indexOf(p[2], startSearch);
                                if (pos != -1 && pos + p[2].length() < raw.length()) {
                                    String extra = raw.substring(pos + p[2].length()).trim();
                                    if (!extra.isEmpty()) this.comment = extra;
                                }
                            }
                        }
                    }
                }
            } else {
                this.opcode = "raw";
                this.character = "";
            }
        }
    }

    private final java.util.Map<String, String> mPresetLookup = new java.util.HashMap<>();
    private TextView mSearchResultsSummary;
    private EditText mSearchEdit;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_table_creator);
        setTitle(R.string.title_activity_table_creator);
        
        OPCODE_LABELS = new String[] {
            getString(R.string.label_none), getString(R.string.opcode_include), getString(R.string.opcode_context), getString(R.string.opcode_class), getString(R.string.opcode_always), getString(R.string.opcode_lowercase), getString(R.string.opcode_uppercase),
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

        mToggleHeaderBtn = (Button) findViewById(R.id.btn_toggle_header);
        mHeaderConfigLayout = (LinearLayout) findViewById(R.id.layout_header_config);
        mTableNameEdit = (EditText) findViewById(R.id.edit_table_name);
        mAuthorEdit = (EditText) findViewById(R.id.edit_author);
        mDescriptionEdit = (EditText) findViewById(R.id.edit_description);
        mLocaleSpinner = (Spinner) findViewById(R.id.spinner_locale);
        mSearchLocaleEdit = (EditText) findViewById(R.id.edit_search_locale);
        mEightDotCheck = (CheckBox) findViewById(R.id.check_use_8_dots);
        mBaseTableSpinner = (Spinner) findViewById(R.id.spinner_base_table);
        mScriptSpinner = (Spinner) findViewById(R.id.spinner_script);
        mNumSystemSpinner = (Spinner) findViewById(R.id.spinner_num_system);
        mShowVisualPickerCheck = (CheckBox) findViewById(R.id.check_show_visual_picker);
        mCurrentCellsContainer = (LinearLayout) findViewById(R.id.layout_current_cells);
        mCellPickerButtonsLayout = (LinearLayout) findViewById(R.id.layout_cell_picker_buttons);
        
        mCharEdit = (EditText) findViewById(R.id.edit_char);
        mDotsEdit = (EditText) findViewById(R.id.edit_dots);
        mOpcodeSpinner = (Spinner) findViewById(R.id.spinner_opcode);
        mMappingPriorityCheck = (CheckBox) findViewById(R.id.check_priority);
        mSearchEdit = (EditText) findViewById(R.id.edit_search);
        mSearchResultsSummary = (TextView) findViewById(R.id.text_search_summary);
        mMappedItemsSpinner = (Spinner) findViewById(R.id.spinner_mapped_items);
        mAddMappingBtn = (Button) findViewById(R.id.btn_add_mapping);
        mDeleteMappingBtn = (Button) findViewById(R.id.btn_delete_mapping);
        if (mDeleteMappingBtn != null) {
            mDeleteMappingBtn.setVisibility(View.GONE);
            mDeleteMappingBtn.setOnClickListener(v -> deleteSelected());
        }
        
        Button loadTemplateBtn = (Button) findViewById(R.id.btn_load_template);
        Button cloneTableBtn = (Button) findViewById(R.id.btn_clone_table);
        Button exportSystemBtn = (Button) findViewById(R.id.btn_export_system);
        Button setDotsBtn = (Button) findViewById(R.id.btn_set_cell);
        Button appendDotBtn = (Button) findViewById(R.id.btn_append_cell);
        Button clearDotsBtn = (Button) findViewById(R.id.btn_clear_dots);
        Button massActionBtn = (Button) findViewById(R.id.btn_mass_action);
        Button orderActionsBtn = (Button) findViewById(R.id.btn_order_actions);
        Button saveBtn = (Button) findViewById(R.id.btn_save_table);
        Button exportBtn = (Button) findViewById(R.id.btn_export_table_final);

        mToggleHeaderBtn.setOnClickListener(v -> toggleHeader());
        loadTemplateBtn.setOnClickListener(v -> showTemplatePicker());
        
        loadLocales();
        mFilteredLocaleNames.addAll(mLocaleNames);
        mFilteredLocaleCodes.addAll(mLocaleCodes);
        final ArrayAdapter<String> localeAdapter = new LabeledSpinnerAdapter(this, getString(R.string.label_locale_short), mFilteredLocaleNames);
        mLocaleSpinner.setAdapter(localeAdapter);
        
        mSearchLocaleEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {
                mFilteredLocaleNames.clear(); mFilteredLocaleCodes.clear(); String q = s.toString().toLowerCase();
                for (int i = 0; i < mLocaleNames.size(); i++) if (mLocaleNames.get(i).toLowerCase().contains(q)) { mFilteredLocaleNames.add(mLocaleNames.get(i)); mFilteredLocaleCodes.add(mLocaleCodes.get(i)); }
                localeAdapter.notifyDataSetChanged();
                if (!mFilteredLocaleNames.isEmpty()) { mLocaleSpinner.setSelection(0); updateSystemTables(); initPresets(); }
            }
            @Override public void afterTextChanged(android.text.Editable s) {}
        });

        mLocaleSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { if (mIsUpdatingUI) return; updateSystemTables(); initPresets(); }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });

        mEightDotCheck.setOnCheckedChangeListener((bv, isChecked) -> { updateScriptSpinner(isChecked); updateSystemTables(); initPresets(); });

        updateSystemTables();
        cloneTableBtn.setOnClickListener(v -> cloneBaseTable());
        exportSystemBtn.setOnClickListener(v -> exportSystemTable());

        updateScriptSpinner(false);
        mScriptSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                if (mIsUpdatingUI || pos == mLastScriptPos) return;
                mLastScriptPos = pos;
                initPresets();
                if (pos >= 0) {
                    if (applyAlphabetScript(pos, mEightDotCheck.isChecked())) {
                        refreshSpinner();
                    }
                }
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });
        String[] numSystems = { getString(R.string.label_none), getString(R.string.num_sys_classic), getString(R.string.num_sys_antoine), getString(R.string.num_sys_6dot_univocal), getString(R.string.num_sys_8dot_standard), getString(R.string.num_sys_8dot_computer_lowered), getString(R.string.num_sys_dropped), getString(R.string.num_sys_literary) };
        mNumSystemSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_number_system_short), numSystems));
        mNumSystemSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) {
                if (mIsUpdatingUI || pos == mLastNumPos) return;
                mLastNumPos = pos;

                // Rimuoviamo sempre i vecchi include numerici
                List<String> numFiles = Arrays.asList("digits6Dots.uti", "litdigits6DotsPlusDot6.uti", "digits6DotsPlusDot6.uti", "digits8Dots.uti", "loweredDigits6Dots.uti", "litdigits6Dots.uti");
                for (int i = mMappings.size() - 1; i >= 0; i--) {
                    Mapping m = mMappings.get(i);
                    if (m.opcode.equals("include") && numFiles.contains(m.character)) {
                        mMappings.remove(i);
                    } else if (mIsManagedTable && (m.opcode.equals("numsign") || m.opcode.equals("litdigit"))) {
                        // Rimuoviamo segnanumero e litdigit SOLO in modalità managed
                        mMappings.remove(i);
                    }
                }

                if (pos > 0) {
                    boolean high = mMappingPriorityCheck.isChecked();
                    List<Mapping> rules = getNumericMappings(pos, high);
                    if (!rules.isEmpty()) { 
                        if (!mIsManagedTable) {
                            // In clone mode, prendiamo solo l'include e usiamo insertMappingWithPriority
                            for (int i = rules.size() - 1; i >= 0; i--) {
                                Mapping rule = rules.get(i);
                                if (!rule.opcode.equals("include")) {
                                    rules.remove(i);
                                } else {
                                    insertMappingWithPriority(rule, high, -1);
                                }
                            }
                        } else {
                            int insertIdx = mMappedItemsSpinner.getSelectedItemPosition(); 
                            insertIdx = (insertIdx <= 0) ? 0 : insertIdx - 1; 
                            mMappings.addAll(insertIdx, rules); 
                        }
                    }
                }
                refreshSpinner();
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });

        mShowVisualPickerCheck.setOnCheckedChangeListener((v, isChecked) -> { mCellPickerButtonsLayout.setVisibility(isChecked ? View.VISIBLE : View.GONE); mCurrentCellsContainer.setVisibility(isChecked ? View.VISIBLE : View.GONE); });
        setDotsBtn.setOnClickListener(v -> showCellEditor(false));
        appendDotBtn.setOnClickListener(v -> showCellEditor(true));
        clearDotsBtn.setOnClickListener(v -> { mCurrentPatterns.clear(); updateDotsDisplay(); mDotsEdit.setText(""); });

        mDotsEdit.setImeOptions(android.view.inputmethod.EditorInfo.IME_ACTION_DONE);
        mDotsEdit.setOnEditorActionListener((v, aId, ev) -> { 
            if (aId == android.view.inputmethod.EditorInfo.IME_ACTION_DONE || 
               (ev != null && ev.getKeyCode() == 66 && ev.getAction() == android.view.KeyEvent.ACTION_DOWN)) { 
                addOrUpdateMapping(); 
                return true; 
            } 
            return false; 
        });

        mOpcodeSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_opcode_short), OPCODE_LABELS));
        mMappingPriorityCheck.setChecked(true);

        mSearchEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int st, int c, int af) {}
            @Override public void onTextChanged(CharSequence s, int st, int b, int c) { filterMappings(s.toString()); }
            @Override public void afterTextChanged(android.text.Editable s) { if (s.length() > 0) collapseHeader(); }
        });

        mDisplayList.add(getString(R.string.label_mapped_items));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
        mMappedItemsSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { 
                if (mIsUpdatingUI || pos <= 0) return;
                if (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) loadMappingFromObject(mCurrentSearchResults.get(pos - 1));
                else if (pos - 1 < mMappings.size()) loadMapping(pos - 1);
                collapseHeader();
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });

        mMappedItemsSpinner.setOnLongClickListener(v -> {
            int pos = mMappedItemsSpinner.getSelectedItemPosition(); if (pos <= 0) return false;
            Mapping target = (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) ? mCurrentSearchResults.get(pos - 1) : mMappings.get(pos - 1);
            showOrderActionsDialog(target); return true;
        });

        orderActionsBtn.setOnClickListener(v -> {
            int pos = mMappedItemsSpinner.getSelectedItemPosition();
            if (pos <= 0) {
                Toast.makeText(this, R.string.msg_select_mapping_first, Toast.LENGTH_SHORT).show();
                return;
            }
            Mapping target = (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) 
                             ? mCurrentSearchResults.get(pos - 1) : mMappings.get(pos - 1);
            showOrderActionsDialog(target);
        });

        mAddMappingBtn.setOnClickListener(v -> { addOrUpdateMapping(); collapseHeader(); });
        massActionBtn.setOnClickListener(v -> showMassActionsDialog());
        saveBtn.setOnClickListener(v -> saveTable());
        exportBtn.setOnClickListener(v -> exportTable());

        mCharEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int st, int c, int af) {}
            @Override public void onTextChanged(CharSequence s, int st, int b, int c) {}
            @Override public void afterTextChanged(final android.text.Editable s) { 
                if (mIsUpdatingUI) return; 
                if (mCharEdit.getText().length() > 0) {
                    suggestOpcodeFromChar(); 
                } else if (mCharEdit.getText().length() == 0) {
                    mIsUpdatingUI = true;
                    mMappedItemsSpinner.setSelection(0);
                    mOpcodeSpinner.setSelection(0);
                    mIsUpdatingUI = false;
                }
            }
        });

        String tableId = getIntent().getStringExtra("table_id");
        if (tableId != null && !tableId.isEmpty()) { 
            loadTableData(tableId); 
            collapseHeader(); 
        } else {
            if (mLocaleNames.size() > 1) mLocaleSpinner.setSelection(1);
            initManagedInfrastructure();
        }
    }

    private void initManagedInfrastructure() {
        // Aggiungiamo gli elementi strutturali obbligatori per le tabelle managed.
        // Li marchiamo come fixed in modo che non siano eliminabili dall'utente.
        mMappings.add(new Mapping("include", "unicode.dis", new ArrayList<Integer>(), true, true));
        mMappings.add(new Mapping("include", "spaces.uti", new ArrayList<Integer>(), true, true));
        mMappings.add(new Mapping("include", "braille-patterns.cti", new ArrayList<Integer>(), false, true));
        refreshSpinner();
    }

    private void toggleHeader() { if (mHeaderConfigLayout.getVisibility() == View.VISIBLE) collapseHeader(); else expandHeader(); }
    private void collapseHeader() { mHeaderConfigLayout.setVisibility(View.GONE); mToggleHeaderBtn.setText(R.string.btn_edit_header); }
    private void expandHeader() { mHeaderConfigLayout.setVisibility(View.VISIBLE); mToggleHeaderBtn.setText(getString(R.string.btn_edit_header) + " (▲)"); }

    private void updateSystemTables() {
        mSystemTableFiles.clear(); mSystemTableLabels.clear();
        mSystemTableFiles.add(""); mSystemTableLabels.add(getString(R.string.none_selected));
        TableList tableList = new TableList(this); List<TableInfo> tables = new ArrayList<>(tableList.getTables());
        boolean is8DotMode = mEightDotCheck.isChecked();
        for (int i = tables.size() - 1; i >= 0; i--) { TableInfo info = tables.get(i); if (info.getId().startsWith("custom:") || info.isEightDot() != is8DotMode) tables.remove(i); }
        boolean showExtended = Options.getBooleanPreference(this, R.string.pref_show_ext_tables_key, Boolean.parseBoolean(getString(R.string.pref_show_ext_tables_default)));
        if (!showExtended) for (int i = tables.size() - 1; i >= 0; i--) if (tables.get(i).getVariant() != null && tables.get(i).getVariant().contains("[Ext]")) tables.remove(i);
        int selectedPos = mLocaleSpinner.getSelectedItemPosition();
        String selectedLang = (selectedPos >= 0 && selectedPos < mFilteredLocaleCodes.size()) ? mFilteredLocaleCodes.get(selectedPos) : java.util.Locale.getDefault().getLanguage();
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
        mBaseTableSpinner.setAdapter(new LabeledSpinnerAdapter(this, getString(R.string.label_source), mSystemTableLabels));
    }

    private List<Integer> parseDots(String dotsStr) {
        List<Integer> patterns = new ArrayList<>(); String[] cells = dotsStr.split("-");
        for (String cell : cells) { int p = 0; for (char c : cell.toCharArray()) { int dot = Character.getNumericValue(c); if (dot >= 1 && dot <= 8) p |= (1 << (dot - 1)); } patterns.add(p); }
        return patterns;
    }

    private void updateScriptSpinner(boolean is8dot) {
        String[][] scripts = is8dot ? SCRIPTS_8 : SCRIPTS_6; String[] labels = new String[scripts.length];
        for (int i = 0; i < scripts.length; i++) { int resId = getResources().getIdentifier(scripts[i][0], "string", getPackageName()); labels[i] = (resId != 0) ? getString(resId) : scripts[i][0]; }
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
        mIsTemplateUsed = false;
        try {
            CustomTableManager manager = new CustomTableManager(this); String fileName = tableId;
            if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
            File f = manager.getCustomTableFile(fileName); if (!f.exists()) { mIsUpdatingUI = false; return; }
            mTableNameEdit.setText(fileName); mMappings.clear(); mOriginalHeaderLines.clear(); mNumSystemSpinner.setSelection(NUM_NONE);
            boolean currentlyHighPriority = true; Scanner scanner = new Scanner(f, "UTF-8");
            boolean inHeader = true; boolean isManaged = false;
            
            // Primo passo: cerchiamo se è una tabella gestita (managed)
            List<String> lines = new ArrayList<>();
            while (scanner.hasNextLine()) { String l = scanner.nextLine(); lines.add(l); if (l.contains("+mode:managed")) isManaged = true; }
            scanner.close();
            mIsManagedTable = isManaged;
            mIsCloningMode = !isManaged;

            for (String line : lines) {
                String trimmed = line.trim();
                if (trimmed.isEmpty()) { if (inHeader) mOriginalHeaderLines.add(""); continue; }
                if (trimmed.startsWith("#")) {
                    if (trimmed.startsWith("# Author:")) mAuthorEdit.setText(trimmed.substring(9).trim());
                    else if (trimmed.startsWith("# Description:")) mDescriptionEdit.setText(trimmed.substring(14).trim());
                    else if (trimmed.contains("+mode:clone")) { mIsCloningMode = true; mMappings.add(new Mapping("comment", "+mode:clone", new ArrayList<Integer>(), true, true)); }
                    else if (trimmed.startsWith("#+locale:")) { String code = trimmed.substring(9).trim(); int idx = mLocaleCodes.indexOf(code); if (idx != -1) { String name = mLocaleNames.get(idx); int filteredIdx = mFilteredLocaleNames.indexOf(name); if (filteredIdx != -1) mLocaleSpinner.setSelection(filteredIdx); } }
                    else if (trimmed.contains("SYSTEM INCLUDES") || trimmed.contains("SYSTEM SECTION") || trimmed.contains("LOW PRIORITY")) currentlyHighPriority = false;
                    
                    if (inHeader) mOriginalHeaderLines.add(line); // Usiamo line originale per preservare spazi nell'header
                    else { 
                        Mapping m = new Mapping(line); 
                        m.isHighPriority = currentlyHighPriority;
                        mMappings.add(m); 
                    }
                    continue;
                }
                inHeader = false;

                Mapping m = new Mapping(line); // CARICHIAMO SEMPRE DA LINE ORIGINALE
                m.isHighPriority = currentlyHighPriority;
                
                // Identifichiamo gli elementi strutturali delle tabelle managed e li marchiamo come fixed
                if (m.opcode != null && m.opcode.equals("include") && 
                    ("unicode.dis".equals(m.character) || "spaces.uti".equals(m.character) || "braille-patterns.cti".equals(m.character))) {
                    m.isFixed = true;
                }
                
                mMappings.add(m);

                // Sincronizziamo gli spinner in base agli include trovati (anche per tabelle caricate)
                if (m.opcode != null && m.opcode.equals("include")) {
                    String inc = m.character;
                    // Alfabeti
                    String[][] set = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6;
                    for (int i = 0; i < set.length; i++) {
                        if (set[i][1].equals(inc)) {
                            mScriptSpinner.setSelection(i);
                            mLastScriptPos = i;
                            break;
                        }
                    }
                    // Sistemi numerici
                    int numPos = -1;
                    if (inc.equals("digits6Dots.uti")) numPos = NUM_CLASSIC;
                    else if (inc.equals("litdigits6DotsPlusDot6.uti")) numPos = NUM_ANTOINE;
                    else if (inc.equals("digits6DotsPlusDot6.uti")) numPos = NUM_6DOT_UNIVOCAL;
                    else if (inc.equals("digits8Dots.uti")) numPos = NUM_8DOT_STANDARD;
                    else if (inc.equals("loweredDigits6Dots.uti")) numPos = NUM_DROPPED; // Default per lowered
                    else if (inc.equals("litdigits6Dots.uti")) numPos = NUM_LITERARY;
                    
                    if (numPos != -1) {
                        mNumSystemSpinner.setSelection(numPos);
                        mLastNumPos = numPos;
                    }
                }
            }
            refreshSpinner(); mIsUpdatingUI = false; initPresets();
        } catch (Exception e) { mIsUpdatingUI = false; }
    }

    private void initPresets() {
        mPresetLookup.clear(); String lang = "en";
        int selectedPos = mLocaleSpinner != null ? mLocaleSpinner.getSelectedItemPosition() : -1;
        if (selectedPos >= 0 && selectedPos < mFilteredLocaleCodes.size() && !mFilteredLocaleCodes.get(selectedPos).isEmpty()) lang = mFilteredLocaleCodes.get(selectedPos).split("-")[0];
        boolean is8dot = mEightDotCheck != null && mEightDotCheck.isChecked(); String json = null;
        try { json = loadTemplateFromAssets(lang + (is8dot ? "_standard_8dot.json" : "_standard_6dot.json")); } catch (Exception e) { try { json = loadTemplateFromAssets("en" + (is8dot ? "_standard_8dot.json" : "_standard_6dot.json")); } catch (Exception e2) {} }
        if (json != null) try { JSONArray mappings = new JSONObject(json).getJSONArray("mappings"); for (int i = 0; i < mappings.length(); i++) { JSONObject m = mappings.getJSONObject(i); mPresetLookup.put(m.getString("dots"), m.optString("char", m.getString("opcode"))); } } catch (Exception e) {}
    }

    private void updateDotsDisplay() {
        mCurrentCellsContainer.removeAllViews();
        for (int p : mCurrentPatterns) {
            TextView tv = new TextView(this); tv.setText("[" + patternToDotsString(p) + "]"); tv.setPadding(10, 10, 10, 10); tv.setBackgroundColor(getResources().getColor(R.color.color_cell_bg)); tv.setTextColor(Color.BLACK);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2); lp.setMargins(10, 0, 10, 0); mCurrentCellsContainer.addView(tv, lp);
        }
    }

    private void finishMappingAction() { 
        refreshSpinner(); 
        mIsUpdatingUI = true;
        mCharEdit.setText(""); 
        mDotsEdit.setText(""); 
        mOpcodeSpinner.setSelection(0);
        mEditingIndex = -1;
        mAddMappingBtn.setText(R.string.btn_add);
        if (mDeleteMappingBtn != null) mDeleteMappingBtn.setVisibility(View.GONE);
        mIsUpdatingUI = false;
        mCurrentPatterns.clear(); 
        updateDotsDisplay(); 
    }
    private String getDotsString(List<Integer> patterns) { StringBuilder sb = new StringBuilder(); for (int i=0; i<patterns.size(); i++) { if (i>0) sb.append("-"); sb.append(patternToDotsString(patterns.get(i))); } return sb.toString(); }
    private int findDuplicateDots(String dots) { for (int i = 0; i < mMappings.size(); i++) if (getDotsString(mMappings.get(i).patterns).equals(dots)) return i; return -1; }
    private String findDuplicateInPresets(String dots) { return mPresetLookup.get(dots); }

    private void showDuplicateDialog(final Mapping newMapping, final int existingIndex) { 
        Mapping duplicateMapping = (existingIndex >= 0 && existingIndex < mMappings.size()) ? mMappings.get(existingIndex) : null;
        showDuplicateDialogInternal(newMapping, getDotsString(newMapping.patterns), duplicateMapping != null ? duplicateMapping.character : "", duplicateMapping); 
    }

    private void showDuplicateDialogInternal(final Mapping newMapping, String dots, String existingName, final Mapping duplicateMapping) {
        boolean isPreset = duplicateMapping == null;
        String langName = "";
        int langPos = mLocaleSpinner != null ? mLocaleSpinner.getSelectedItemPosition() : -1;
        if (langPos >= 0 && langPos < mFilteredLocaleNames.size()) langName = mFilteredLocaleNames.get(langPos);

        String msg = String.format(getString(R.string.msg_duplicate_dots), dots, existingName);
        if (isPreset) {
            msg += "\n\n(" + getString(R.string.msg_standard_char_override);
            if (!langName.isEmpty()) msg += " [" + langName + "]";
            msg += ")";
        }

        AlertDialog.Builder builder = new AlertDialog.Builder(this).setTitle(R.string.title_duplicate_combination);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(50, 30, 50, 30);
        TextView tv = new TextView(this); tv.setText(msg); tv.setTextSize(16); tv.setTextColor(Color.BLACK); layout.addView(tv);
        
        final AlertDialog dialog = builder.setView(layout).create();

        Button overBtn = new Button(this); overBtn.setText(R.string.btn_overwrite);
        overBtn.setOnClickListener(v -> {
            if (mIsCloningMode || !mIsManagedTable) {
                if (mEditingIndex != -1) {
                    Mapping oldMapping = mMappings.get(mEditingIndex);
                    if (duplicateMapping != null && duplicateMapping != oldMapping) mMappings.remove(duplicateMapping);
                    int currentIdx = mMappings.indexOf(oldMapping);
                    if (currentIdx != -1) mMappings.set(currentIdx, newMapping);
                    else mMappings.add(newMapping);
                } else if (duplicateMapping != null) {
                    int dupIdx = mMappings.indexOf(duplicateMapping);
                    if (dupIdx != -1) mMappings.set(dupIdx, newMapping);
                } else {
                    insertMappingWithPriority(newMapping, newMapping.isHighPriority, -1);
                }
            } else {
                int targetPos = -1;
                if (duplicateMapping != null) {
                    targetPos = mMappings.indexOf(duplicateMapping);
                    mMappings.remove(duplicateMapping);
                }
                if (mEditingIndex != -1) {
                    Mapping oldMapping = mMappings.get(mEditingIndex);
                    if (targetPos != -1 && mEditingIndex < targetPos) {
                        targetPos--;
                    }
                    mMappings.remove(oldMapping);
                }
                insertMappingWithPriority(newMapping, newMapping.isHighPriority, targetPos);
            }
            mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            mCharEdit.announceForAccessibility(getString(R.string.msg_rule_updated));
            dialog.dismiss();
        });
        layout.addView(overBtn);

        if (!isPreset) {
            Button prefBtn = new Button(this); prefBtn.setText(R.string.btn_add_prefix);
            prefBtn.setOnClickListener(v -> { showPrefixSelector(newMapping, duplicateMapping); dialog.dismiss(); });
            layout.addView(prefBtn);
        }

        Button anywayBtn = new Button(this); anywayBtn.setText(R.string.btn_add_anyway);
        anywayBtn.setOnClickListener(v -> {
            if (mIsCloningMode || !mIsManagedTable) {
                if (mEditingIndex != -1) {
                    mMappings.set(mEditingIndex, newMapping);
                } else {
                    int targetIndex = duplicateMapping != null ? mMappings.indexOf(duplicateMapping) : -1;
                    int target = (targetIndex >= 0 && targetIndex < mMappings.size()) ? targetIndex : mMappings.size();
                    mMappings.add(target, newMapping);
                }
            } else {
                int targetIndex = duplicateMapping != null ? mMappings.indexOf(duplicateMapping) : -1;
                int targetPos = (mEditingIndex != -1) ? mEditingIndex : targetIndex;
                if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
                if (!isPreset) {
                    if (targetPos > mMappings.size()) targetPos = mMappings.size();
                    mMappings.add(targetPos, newMapping);
                } else {
                    insertMappingWithPriority(newMapping, newMapping.isHighPriority, targetPos);
                }
            }
            mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            dialog.dismiss();
        });
        layout.addView(anywayBtn);

        Button cancelBtn = new Button(this); cancelBtn.setText(R.string.btn_cancel);
        cancelBtn.setOnClickListener(v -> dialog.dismiss());
        layout.addView(cancelBtn);

        dialog.show();
    }

    private void showPrefixSelector(final Mapping mapping, final Mapping duplicateMapping) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6; AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.title_select_prefix);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        final EditText dotEdit = new EditText(this); dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); layout.addView(dotEdit);
        GridLayout g = new GridLayout(this); g.setColumnCount(2); int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this); boxes[i].setText(String.format(getString(R.string.label_dot), order[i])); final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((bv, isChecked) -> { if (mIsUpdatingUI) return; mIsUpdatingUI = true; String c = dotEdit.getText().toString(); if (isChecked) { if (!c.contains(String.valueOf(dotNum))) { List<Integer> dots = new ArrayList<>(); for (char ch : c.toCharArray()) dots.add(Character.getNumericValue(ch)); dots.add(dotNum); Collections.sort(dots); StringBuilder sb = new StringBuilder(); for (int d : dots) sb.append(d); dotEdit.setText(sb.toString()); } } else dotEdit.setText(c.replace(String.valueOf(dotNum), "")); mIsUpdatingUI = false; });
            g.addView(boxes[i]);
        }
        layout.addView(g); b.setView(layout);
        b.setPositiveButton(R.string.btn_ok, (d, w) -> { 
            int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) p |= (1 << (Character.getNumericValue(c) - 1)); 
            if (p > 0) { 
                List<Integer> pts = new ArrayList<>(); pts.add(p); pts.addAll(mapping.patterns); 
                Mapping newMapping = new Mapping(mapping.opcode, mapping.character, pts, mapping.isHighPriority);
                if (mIsCloningMode || !mIsManagedTable) {
                    if (mEditingIndex != -1) {
                        mMappings.set(mEditingIndex, newMapping);
                    } else {
                        mMappings.add(newMapping);
                    }
                } else {
                    int targetIndex = duplicateMapping != null ? mMappings.indexOf(duplicateMapping) : -1;
                    if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
                    if (targetIndex != -1) { int insertAt = targetIndex + 1; if (mEditingIndex != -1 && mEditingIndex < insertAt) insertAt--; if (insertAt > mMappings.size()) insertAt = mMappings.size(); mMappings.add(insertAt, newMapping); }
                    else mMappings.add(mapping.isHighPriority ? 0 : mMappings.size(), newMapping);
                }
                mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); 
            } 
        });
        b.setNegativeButton(R.string.btn_cancel, null); b.show();
    }

    private String sanitizeCharacter(String input) { if (input == null || input.isEmpty()) return ""; StringBuilder sb = new StringBuilder(); for (int i = 0; i < input.length(); i++) { char c = input.charAt(i); if (c != '\u00a0' && (c < 0x2800 || c > 0x28FF)) sb.append(c); } return sb.toString(); }
    private String getSuggestedOpcode(String s) {
        if (s == null || s.trim().isEmpty()) return null; char c = s.charAt(s.length() - 1);
        if (s.length() > 1) return "word"; if (Character.isDigit(c)) return "digit";
        if (Character.isLowerCase(c)) return "lowercase"; if (Character.isUpperCase(c)) return "uppercase";
        if (c == ' ' || c == '\u00a0') return "space"; if ("([{“«‘)]}”»’".indexOf(c) != -1) return "punctuation";
        if ("+-*×÷=<>".indexOf(c) != -1) return "math"; if ("%€$#".indexOf(c) != -1) return "midendnumericmodechars";
        if (",.:;-!?¡¿\"'\\|/_@&§¶†‡*".indexOf(c) != -1) return "punctuation"; return null;
    }
    private void suggestOpcodeFromChar() { 
        final String s = sanitizeCharacter(mCharEdit.getText().toString());
        if (s.isEmpty()) return;

        // Suggerimento opcode istantaneo (ora indipendentemente dal focus per massimizzare la prontezza)
        String sug = getSuggestedOpcode(s); 
        if (sug != null && mEditingIndex == -1) {
            mIsUpdatingUI = true; 
            updateSpinnerToOpcode(sug); 
            mIsUpdatingUI = false; 
        }
        
        // Salto alla regola esistente (Sempre attivo per auto-fill)
        final List<Mapping> sourceList = (mSearchEdit.getText().length() > 0) ? mCurrentSearchResults : mMappings;
        
        for (int i = 0; i < sourceList.size(); i++) {
            final Mapping found = sourceList.get(i);
            if (s.equals(found.character)) {
                final int targetIdx = i;
                // Se siamo già su quella regola (es. stiamo modificando), non facciamo nulla
                if (mEditingIndex == mMappings.indexOf(found)) return;

                mCharEdit.post(() -> {
                    // Verifichiamo che il testo non sia cambiato nel frattempo
                    if (!s.equals(sanitizeCharacter(mCharEdit.getText().toString()))) return;
                    
                    mIsUpdatingUI = true;
                    mMappedItemsSpinner.setSelection(targetIdx + 1);
                    loadMappingFromObject(found);
                    mIsUpdatingUI = false;
                    
                    // Feedback vocale con leggero ritardo per permettere al sistema di stabilizzarsi
                    mCharEdit.postDelayed(() -> {
                        mCharEdit.announceForAccessibility(getString(R.string.msg_rule_found) + ": " + getMappingDisplayString(found));
                    }, 400);
                });
                return;
            }
        }
    }
    private void updateSpinnerToOpcode(String opcode) { for (int i = 0; i < OPCODES.length; i++) if (OPCODES[i].equals(opcode)) { mOpcodeSpinner.setSelection(i); break; } }

    private void addOrUpdateMapping() {
        long currentTime = System.currentTimeMillis();
        if (currentTime - mLastMappingClickTime < 500) return;
        mLastMappingClickTime = currentTime;

        int opPos = mOpcodeSpinner.getSelectedItemPosition(); if (opPos == 0) { Toast.makeText(this, R.string.msg_select_opcode_first, 0).show(); return; }
        String character = sanitizeCharacter(mCharEdit.getText().toString()); mCharEdit.setText(character); String opcode = OPCODES[opPos];
        
        String dotsText = mDotsEdit.getText().toString().trim();
        if (!dotsText.isEmpty() && !dotsText.matches("[1-8\\-\\s0]+")) {
            Toast.makeText(this, R.string.msg_invalid_dots_format, Toast.LENGTH_SHORT).show();
            return;
        }

        List<Integer> patterns = mIsTemplateUsed || !dotsText.isEmpty() ? parseDots(dotsText) : new ArrayList<>(mCurrentPatterns);
        
        // Validation: some opcodes require a character
        List<String> standaloneOpcodes = Arrays.asList("include", "numsign", "capsletter", "letsign", "begcaps", "endcaps", "begcapsword", "endcapsword", "begnum", "endnum");
        if (character.isEmpty() && !standaloneOpcodes.contains(opcode)) {
            Toast.makeText(this, R.string.msg_char_required, Toast.LENGTH_SHORT).show();
            mCharEdit.requestFocus();
            return;
        }

        if (patterns.isEmpty() && !opcode.equals("include")) {
            Toast.makeText(this, R.string.msg_dots_required, Toast.LENGTH_SHORT).show();
            return;
        }

        boolean high = mMappingPriorityCheck.isChecked(); 
        Mapping m = new Mapping(opcode, character, patterns, high); 
        if (mEditingIndex != -1) m.comment = mMappings.get(mEditingIndex).comment;
        String dots = getDotsString(m.patterns); 
        int dupIdx = findDuplicateDots(dots);
        if (mEditingIndex != -1 && dupIdx == mEditingIndex) { 
            int originalIndex = mEditingIndex;
            mMappings.remove(originalIndex);
            if (mIsCloningMode || !mIsManagedTable) {
                mMappings.add(originalIndex, m);
            } else {
                insertMappingWithPriority(m, high, originalIndex);
            }
            mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); return; 
        }
        if (dupIdx != -1 && !opcode.equals("include")) { showDuplicateDialog(m, dupIdx); return; }
        
        // Cerca nei preset solo se è stato applicato un Template
        if (mIsTemplateUsed) {
            String preset = findDuplicateInPresets(dots); 
            if (preset != null && !opcode.equals("include")) { 
                showDuplicateDialogInternal(m, dots, preset, null); 
                return; 
            }
        }

        if (mEditingIndex != -1) {
            int originalIndex = mEditingIndex;
            // Usiamo set() invece di remove/add per garantire la stabilità assoluta della posizione
            mMappings.set(originalIndex, m);
            mEditingIndex = -1;
            mAddMappingBtn.setText(R.string.btn_add);
            finishMappingAction();
            return;
        }

        insertMappingWithPriority(m, high, mEditingIndex);
        
        // ESPANSIONE SIMMETRICA AUTOMATICA (Managed Mode Only)
        if (mIsManagedTable && character.length() == 1 && (opcode.equals("lowercase") || opcode.equals("uppercase"))) {
            char c = character.charAt(0);
            if (Character.isLetter(c)) {
                char c_low = Character.toLowerCase(c);
                char c_up = Character.toUpperCase(c);
                if (c_low != c_up) {
                    if (!isBaseMappingPresent(c_up, c_low)) {
                        int mainIdx = mMappings.indexOf(m);
                        if (mainIdx != -1) {
                            mMappings.add(mainIdx + 1, new Mapping("base uppercase", String.format("\\x%04x \\x%04x", (int)c_up, (int)c_low), new ArrayList<Integer>(), high));
                        }
                    }
                }
            }
        }

        mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
    }

    private void insertMappingWithPriority(Mapping m, boolean high, int fallbackIdx) {
        // Identifichiamo il punto di inserimento dopo le regole di sistema (Fixed)
        int firstNonFixed = 0; 
        while (firstNonFixed < mMappings.size()) {
            Mapping current = mMappings.get(firstNonFixed);
            boolean isSystemInclude = false;
            if (current.opcode.equals("include")) {
                for (String[] s : SCRIPTS_6) if (s[1].equals(current.character)) isSystemInclude = true;
                for (String[] s : SCRIPTS_8) if (s[1].equals(current.character)) isSystemInclude = true;
            }
            boolean isCloneMarker = current.opcode.equals("comment") && "+mode:clone".equals(current.character);
            
            if (current.isFixed || isSystemInclude || isCloneMarker) {
                firstNonFixed++;
            } else {
                break;
            }
        }
        
        if (high) {
            // Se siamo in modalità managed, cerchiamo spaces.uti per inserire subito dopo
            if (mIsManagedTable) {
                int spacesIdx = -1;
                for (int i = 0; i < mMappings.size(); i++) {
                    Mapping curr = mMappings.get(i);
                    if ("include".equals(curr.opcode) && "spaces.uti".equals(curr.character)) {
                        spacesIdx = i;
                        break;
                    }
                }
                if (spacesIdx != -1) {
                    mMappings.add(spacesIdx + 1, m);
                    return;
                }
            }
            mMappings.add(firstNonFixed, m);
        } else {
            int target = (fallbackIdx != -1) ? fallbackIdx : mMappings.size();
            
            // Se siamo in modalità managed, cerchiamo braille-patterns.cti per non inserire mai DOPO di esso
            if (mIsManagedTable) {
                int patternsIdx = -1;
                for (int i = 0; i < mMappings.size(); i++) {
                    Mapping curr = mMappings.get(i);
                    if ("include".equals(curr.opcode) && "braille-patterns.cti".equals(curr.character)) {
                        patternsIdx = i;
                        break;
                    }
                }
                // Se stiamo aggiungendo una nuova o se la posizione originale era dopo il marker,
                // forziamo l'inserimento alla posizione del marker (che lo sposta in avanti)
                if (patternsIdx != -1 && (fallbackIdx == -1 || target > patternsIdx)) {
                    target = patternsIdx;
                }
            }

            if (target < firstNonFixed) target = firstNonFixed;
            if (target > mMappings.size()) target = mMappings.size();
            mMappings.add(target, m);
        }
    }

    private void loadMapping(int index) {
        mIsUpdatingUI = true; mEditingIndex = index; Mapping m = mMappings.get(index);
        updateSpinnerToOpcode(m.opcode); mCharEdit.setText(m.character); mDotsEdit.setText(getDotsString(m.patterns));
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns); 
        
        int firstNonFixed = 0; 
        while (firstNonFixed < mMappings.size()) {
            Mapping current = mMappings.get(firstNonFixed);
            boolean isSystemInclude = false;
            if (current.opcode.equals("include")) {
                for (String[] s : SCRIPTS_6) if (s[1].equals(current.character)) isSystemInclude = true;
                for (String[] s : SCRIPTS_8) if (s[1].equals(current.character)) isSystemInclude = true;
            }
            boolean isCloneMarker = current.opcode.equals("comment") && "+mode:clone".equals(current.character);
            if (current.isFixed || isSystemInclude || isCloneMarker) firstNonFixed++; else break;
        }
        
        mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay(); 
        mAddMappingBtn.setText(R.string.btn_update); 
        if (mDeleteMappingBtn != null) mDeleteMappingBtn.setVisibility(View.VISIBLE);
        mIsUpdatingUI = false;
        }

    private void showCellEditor(boolean append) {
        int dotCount = mEightDotCheck.isChecked() ? 8 : 6; AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.label_dots_dialog);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        final EditText dotEdit = new EditText(this); dotEdit.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); layout.addView(dotEdit);
        GridLayout g = new GridLayout(this); g.setColumnCount(2); int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this); boxes[i].setText(String.format(getString(R.string.label_dot), order[i])); final int dotNum = order[i];
            boxes[i].setOnCheckedChangeListener((bv, isChecked) -> { if (mIsUpdatingUI) return; mIsUpdatingUI = true; String c = dotEdit.getText().toString(); if (isChecked) { if (!c.contains(String.valueOf(dotNum))) { List<Integer> dots = new ArrayList<>(); for (char ch : c.toCharArray()) dots.add(Character.getNumericValue(ch)); dots.add(dotNum); Collections.sort(dots); StringBuilder sb = new StringBuilder(); for (int d : dots) sb.append(d); dotEdit.setText(sb.toString()); } } else dotEdit.setText(c.replace(String.valueOf(dotNum), "")); mIsUpdatingUI = false; });
            g.addView(boxes[i]);
        }
        dotEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(android.text.Editable s) { if (mIsUpdatingUI) return; mIsUpdatingUI = true; for (int i=0; i<dotCount; i++) boxes[i].setChecked(s.toString().contains(String.valueOf(order[i]))); mIsUpdatingUI = false; }
        });
        layout.addView(g); b.setView(layout);
        b.setPositiveButton(R.string.btn_ok, (d, w) -> { int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) p |= (1 << (Character.getNumericValue(c) - 1)); if (p > 0) { if (!append) mCurrentPatterns.clear(); mCurrentPatterns.add(p); updateDotsDisplay(); mDotsEdit.setText(getDotsString(mCurrentPatterns)); } });
        b.setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void deleteSelected() {
        int pos = mMappedItemsSpinner.getSelectedItemPosition(); if (pos <= 0) return;
        final Mapping target = (mCurrentSearchResults != null && !mCurrentSearchResults.isEmpty() && pos - 1 < mCurrentSearchResults.size()) ? mCurrentSearchResults.get(pos - 1) : mMappings.get(pos - 1);
        if (target.isFixed) { Toast.makeText(this, R.string.msg_fixed_mapping, Toast.LENGTH_SHORT).show(); return; }
        
        // Pulizia simmetrica intelligente (valida per TUTTE le modalità)
        List<Mapping> toRemove = findRelatedMappings(target);

        mMappings.removeAll(toRemove); 
        if (mCurrentSearchResults != null) mCurrentSearchResults.removeAll(toRemove);
        
        refreshSpinner(); 
        mMappedItemsSpinner.setSelection(0); 
        mEditingIndex = -1; 
        finishMappingAction();
        
        mCharEdit.announceForAccessibility(getString(R.string.msg_rule_removed));
        Toast.makeText(this, getString(R.string.msg_rule_removed), Toast.LENGTH_SHORT).show();
    }

    private List<Mapping> findRelatedMappings(Mapping target) {
        List<Mapping> related = new ArrayList<>();
        related.add(target);
        String character = target.character;
        if (character == null || character.isEmpty() || target.opcode.equals("include")) return related;
        
        if (character.length() == 1) {
            char c = character.charAt(0);
            if (Character.isLetter(c)) {
                char c_low = Character.toLowerCase(c);
                char c_up = Character.toUpperCase(c);
                String pair = c_up + "-" + c_low;

                for (Mapping m : mMappings) {
                    if (m == target || m.isFixed || m.opcode.equals("include")) continue;
                    
                    // 1. Controllo se è la controparte (maiuscola o minuscola)
                    if (m.character != null && m.character.length() == 1) {
                        char mc = m.character.charAt(0);
                        if (mc == c_low || mc == c_up) {
                            if (!related.contains(m)) related.add(m);
                            continue;
                        }
                    }
                    
                    // 2. Controllo se è la riga "base uppercase" specifica per QUESTA coppia
                    if (m.opcode != null && m.opcode.startsWith("base uppercase")) {
                        String mPair = null;
                        if (m.rawLine != null) mPair = extractBasePair(m.rawLine);
                        else mPair = extractBasePair(m.opcode + " " + m.character);
                        
                        if (pair.equals(mPair)) {
                            if (!related.contains(m)) related.add(m);
                        }
                    }
                }
            }
        }
        return related;
    }

    private void refreshSpinner() {
        mDisplayList.clear(); mDisplayList.add(mMappings.isEmpty() ? getString(R.string.label_no_mapped_items) : String.format(getString(R.string.label_n_mapped_items), mMappings.size()));
        for (Mapping m : mMappings) mDisplayList.add(getMappingDisplayString(m));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
    }

    private void showOrderActionsDialog(final Mapping mapping) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this).setTitle(R.string.title_order_actions);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(40, 20, 40, 20);
        Button upBtn = new Button(this); upBtn.setText(R.string.btn_move_up); Button downBtn = new Button(this); downBtn.setText(R.string.btn_move_down);
        Button topBtn = new Button(this); topBtn.setText(R.string.btn_move_top); Button moveToBtn = new Button(this); moveToBtn.setText(R.string.btn_move_to_pos);
        Button bottomBtn = new Button(this); bottomBtn.setText("Sposta in fondo");
        Button pinBtn = new Button(this); pinBtn.setText(mapping.isFixed ? R.string.btn_unpin_mapping : R.string.btn_pin_mapping);
        layout.addView(upBtn); layout.addView(downBtn); layout.addView(topBtn); layout.addView(bottomBtn); layout.addView(moveToBtn); layout.addView(pinBtn);
        Button delBtn = new Button(this); delBtn.setText(R.string.btn_remove_mapping); delBtn.setTextColor(Color.RED); layout.addView(delBtn); 
        builder.setView(layout); builder.setNegativeButton(R.string.btn_cancel, null); final AlertDialog dialog = builder.create(); dialog.show();
        Runnable updateUI = () -> { 
            mIsUpdatingUI = true; 
            refreshSpinner(); 
            int newPos = mMappings.indexOf(mapping); 
            if (newPos != -1) mMappedItemsSpinner.setSelection(newPos + 1); 
            mMappedItemsSpinner.post(() -> {
                mIsUpdatingUI = false;
                finishMappingAction(); // Pulisce l'editor ed evita il pulsante 'Aggiorna'
            });
        };
        
        upBtn.setEnabled(!mapping.isFixed);
        downBtn.setEnabled(!mapping.isFixed);
        topBtn.setEnabled(!mapping.isFixed);
        bottomBtn.setEnabled(!mapping.isFixed);
        moveToBtn.setEnabled(!mapping.isFixed);
        delBtn.setEnabled(!mapping.isFixed);

        upBtn.setOnClickListener(v -> { int idx = mMappings.indexOf(mapping); if (idx > 0) { Collections.swap(mMappings, idx, idx - 1); updateUI.run(); } });
        downBtn.setOnClickListener(v -> { int idx = mMappings.indexOf(mapping); if (idx < mMappings.size() - 1) { Collections.swap(mMappings, idx, idx + 1); updateUI.run(); } });
        topBtn.setOnClickListener(v -> { int idx = mMappings.indexOf(mapping); int firstNonFixed = 0; while (firstNonFixed < mMappings.size() && mMappings.get(firstNonFixed).isFixed) firstNonFixed++; if (idx > firstNonFixed) { Mapping m = mMappings.remove(idx); mMappings.add(firstNonFixed, m); updateUI.run(); } else Toast.makeText(this, R.string.msg_already_top, 0).show(); });
        bottomBtn.setOnClickListener(v -> { int idx = mMappings.indexOf(mapping); mMappings.remove(idx); mMappings.add(mapping); updateUI.run(); });
        moveToBtn.setOnClickListener(v -> { dialog.dismiss(); showMoveToDialog(mapping); });
        pinBtn.setOnClickListener(v -> { mapping.isFixed = !mapping.isFixed; dialog.dismiss(); refreshSpinner(); Toast.makeText(this, mapping.isFixed ? R.string.btn_pin_mapping : R.string.btn_unpin_mapping, 0).show(); });
        delBtn.setOnClickListener(v -> { 
            if (mapping.isFixed) return; 
            mMappings.remove(mapping); 
            mIsUpdatingUI = true;
            refreshSpinner(); 
            mMappedItemsSpinner.setSelection(0); 
            mMappedItemsSpinner.post(() -> {
                mIsUpdatingUI = false;
                finishMappingAction();
            });
            dialog.dismiss(); 
        });
    }

    private void showMoveToDialog(final Mapping mapping) {
        AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.btn_move_to_pos);
        final EditText input = new EditText(this); input.setInputType(android.text.InputType.TYPE_CLASS_NUMBER); input.setHint(String.format(getString(R.string.hint_enter_pos), mMappings.size()));
        b.setView(input); b.setPositiveButton(R.string.btn_ok, (d, w) -> { 
            try { 
                int target = Integer.parseInt(input.getText().toString()) - 1; 
                if (target >= 0 && target <= mMappings.size()) { 
                    int oldIdx = mMappings.indexOf(mapping); 
                    mMappings.remove(oldIdx); 
                    if (target > mMappings.size()) target = mMappings.size(); 
                    mMappings.add(target, mapping); 
                    mIsUpdatingUI = true;
                    refreshSpinner(); 
                    mMappedItemsSpinner.setSelection(target + 1); 
                    mMappedItemsSpinner.post(() -> {
                        mIsUpdatingUI = false;
                        finishMappingAction();
                    });
                } else Toast.makeText(this, R.string.msg_invalid_pos, 0).show(); 
            } catch (Exception e) {} 
        });
        b.setNegativeButton(R.string.btn_cancel, null).show();
    }

    private String patternToDotsString(int pattern) { if (pattern == 0) return "0"; StringBuilder sb = new StringBuilder(); for (int i=0; i<8; i++) if ((pattern & (1 << i)) != 0) sb.append(i + 1); return sb.toString(); }

    private void showMassActionsDialog() {
        if (mMappings.isEmpty()) { Toast.makeText(this, R.string.label_no_mapped_items, 0).show(); return; }
        
        String query = mSearchEdit.getText().toString().trim();
        final List<Mapping> source = (!query.isEmpty()) ? mCurrentSearchResults : mMappings;
        
        AlertDialog.Builder b = new AlertDialog.Builder(this); b.setTitle(R.string.title_mass_actions);
        LinearLayout root = new LinearLayout(this); root.setOrientation(LinearLayout.VERTICAL); root.setPadding(20, 20, 20, 20);
        CheckBox selectAll = new CheckBox(this); selectAll.setText(R.string.label_select_all); root.addView(selectAll);
        final ListView lv = new ListView(this); lv.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
        
        final List<String> items = new ArrayList<>(); 
        final List<Mapping> deletableSource = new ArrayList<>();
        
        for (int i = 0; i < source.size(); i++) {
            Mapping m = source.get(i);
            if (!m.isFixed) {
                int realIdx = mMappings.indexOf(m) + 1;
                items.add(realIdx + ". " + getMappingDisplayString(m));
                deletableSource.add(m);
            }
        }
        
        if (items.isEmpty()) { Toast.makeText(this, R.string.msg_no_deletable_rules, 0).show(); return; }
        final ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_multiple_choice, items);
        lv.setAdapter(adapter); lv.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f)); root.addView(lv);
        
        lv.setOnItemLongClickListener((parent, view, position, id) -> {
            android.util.SparseBooleanArray checked = lv.getCheckedItemPositions();
            int firstChecked = -1;
            for (int i = 0; i < items.size(); i++) {
                if (checked.get(i)) {
                    firstChecked = i;
                    break;
                }
            }
            if (firstChecked != -1 && firstChecked != position) {
                int start = Math.min(firstChecked, position);
                int end = Math.max(firstChecked, position);
                for (int i = start; i <= end; i++) lv.setItemChecked(i, true);
            } else {
                lv.setItemChecked(position, !lv.isItemChecked(position));
            }
            return true;
        });

        selectAll.setOnCheckedChangeListener((v, isChecked) -> { for (int i = 0; i < items.size(); i++) lv.setItemChecked(i, isChecked); });
        
        b.setPositiveButton(R.string.btn_remove_mapping, (d, w) -> {
            android.util.SparseBooleanArray checked = lv.getCheckedItemPositions(); 
            List<Mapping> toRemove = new ArrayList<>();
            for (int i = 0; i < items.size(); i++) {
                if (checked.get(i)) {
                    Mapping m = deletableSource.get(i);
                    toRemove.add(m);
                    // Pulizia simmetrica per eliminazione di massa
                    if (m.character != null && m.character.length() == 1) {
                        char c = m.character.charAt(0);
                        if (Character.isLetter(c)) {
                            char counterpart = Character.isLowerCase(c) ? Character.toUpperCase(c) : Character.toLowerCase(c);
                            String cpStr = String.valueOf(counterpart);
                            for (Mapping map : mMappings) {
                                if (!map.isFixed && cpStr.equals(map.character) && (map.opcode.equals("lowercase") || map.opcode.equals("uppercase"))) {
                                    if (!toRemove.contains(map)) toRemove.add(map);
                                }
                            }
                        }
                    }
                }
            }
            if (toRemove.isEmpty()) return;
            
            final List<Mapping> finalToRemove = toRemove;
            new AlertDialog.Builder(TableCreatorActivity.this).setTitle(R.string.title_confirm_delete)
                .setMessage(String.format(getString(R.string.msg_confirm_delete_mass), finalToRemove.size()))
                .setPositiveButton(R.string.btn_ok, (d2, w2) -> { 
                    mIsUpdatingUI = true;
                    mMappings.removeAll(finalToRemove); 
                    if (!query.isEmpty()) mCurrentSearchResults.removeAll(finalToRemove);
                    refreshSpinner(); 
                    mMappedItemsSpinner.setSelection(0); 
                    mMappedItemsSpinner.post(() -> {
                        mIsUpdatingUI = false;
                        finishMappingAction();
                        Toast.makeText(TableCreatorActivity.this, R.string.msg_rule_removed, 0).show(); 
                    });
                }).setNegativeButton(R.string.btn_cancel, null).show();
        });
        b.setView(root); b.setNegativeButton(R.string.btn_cancel, null); b.show();
    }

    private void loadMappingFromObject(Mapping m) {
        mIsUpdatingUI = true; mEditingIndex = -1; for (int i = 0; i < mMappings.size(); i++) if (mMappings.get(i) == m) { mEditingIndex = i; break; }
        updateSpinnerToOpcode(m.opcode); mCharEdit.setText(m.character); mDotsEdit.setText(getDotsString(m.patterns));
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns); mMappingPriorityCheck.setChecked(m.isHighPriority);
        updateDotsDisplay(); 
        mAddMappingBtn.setText(mEditingIndex != -1 ? R.string.btn_update : R.string.btn_add); 
        if (mDeleteMappingBtn != null) mDeleteMappingBtn.setVisibility(mEditingIndex != -1 ? View.VISIBLE : View.GONE);
        mIsUpdatingUI = false;
        }

    private String getMappingDisplayString(Mapping m) {
        if (m.opcode.equals("#") || m.opcode.equals("comment")) return m.rawLine != null ? m.rawLine : ("# " + m.character);
        if (m.opcode.equals("include")) return getString(R.string.label_structure_prefix) + m.character + (m.comment != null ? " # " + m.comment : "");
        if (m.opcode.equals("context")) return getString(R.string.label_logic_prefix) + m.character + " -> " + getDotsString(m.patterns) + (m.comment != null ? " # " + m.comment : "");
        if (m.opcode.equals("class")) return getString(R.string.label_class_prefix) + m.character + " -> " + getDotsString(m.patterns) + (m.comment != null ? " # " + m.comment : "");
        
        String fO = m.opcode; 
        for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { fO = OPCODE_LABELS[i]; break; }
        
        StringBuilder sb = new StringBuilder();
        if (m.isHighPriority) sb.append(getString(R.string.label_high_priority_prefix));
        sb.append(fO);        
        if (m.character != null && !m.character.isEmpty()) {
            if (m.opcode.startsWith("base")) sb.append(" ").append(m.character);
            else sb.append(" '").append(m.character).append("'");
        }
        
        if (!m.patterns.isEmpty()) sb.append(" -> ").append(getDotsString(m.patterns));
        if (m.comment != null && !m.comment.isEmpty()) sb.append(" # ").append(m.comment);
        
        return sb.toString();
    }

    private void filterMappings(String query) {
        if (query == null || query.trim().isEmpty()) { mCurrentSearchResults.clear(); mSearchResultsSummary.setVisibility(View.GONE); refreshSpinner(); return; }
        String q = query.trim().toLowerCase(), qDots = q.replace("-", "").replace(" ", "");
        List<Mapping> exact = new ArrayList<>(), starts = new ArrayList<>(), contains = new ArrayList<>();
        for (Mapping m : mMappings) {
            String dots = getDotsString(m.patterns).toLowerCase(), dotsClean = dots.replace("-", ""), charPart = (m.character != null) ? m.character.toLowerCase() : "", display = getMappingDisplayString(m).toLowerCase();
            if (charPart.equals(q) || dots.equals(q) || dotsClean.equals(qDots)) exact.add(m); else if (charPart.startsWith(q) || dots.startsWith(q) || dotsClean.startsWith(qDots)) starts.add(m); else if (display.contains(q) || dots.contains(q) || dotsClean.contains(qDots)) contains.add(m);
        }
        mCurrentSearchResults.clear(); mCurrentSearchResults.addAll(exact); mCurrentSearchResults.addAll(starts); mCurrentSearchResults.addAll(contains);
        mDisplayList.clear(); mDisplayList.add(String.format(getString(R.string.label_results_count), mCurrentSearchResults.size()));
        for (Mapping m : mCurrentSearchResults) mDisplayList.add(getMappingDisplayString(m));
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_item, mDisplayList);
        mMappedItemsSpinner.setAdapter(mAdapter);
        if (!mCurrentSearchResults.isEmpty()) { mMappedItemsSpinner.setSelection(1); loadMappingFromObject(mCurrentSearchResults.get(0)); }
        mSearchResultsSummary.setText(String.format(getString(R.string.label_found_rules), mCurrentSearchResults.size(), mMappings.size())); mSearchResultsSummary.setVisibility(View.VISIBLE);
    }

    private void cloneBaseTable() {
        int p = mBaseTableSpinner.getSelectedItemPosition(); if (p <= 0) { Toast.makeText(this, getString(R.string.msg_select_source_first), 0).show(); return; }
        Context storageContext = getApplicationContext();
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = storageContext.createDeviceProtectedStorageContext();
        }
        File d = new File(storageContext.getDir("translator", MODE_PRIVATE), "liblouis/tables"); final File f = new File(d, mSystemTableFiles.get(p)); if (!f.exists()) { Toast.makeText(this, getString(R.string.msg_table_file_not_found), 0).show(); return; }
        new AlertDialog.Builder(this).setTitle(R.string.btn_clone_table).setMessage(R.string.msg_confirm_clone).setPositiveButton(R.string.btn_ok, (dialog, which) -> performClone(f)).setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void performClone(File f) {
        mMappings.clear(); mOriginalHeaderLines.clear(); mIsUpdatingUI = true; mIsCloningMode = true; mIsManagedTable = false; mIsTemplateUsed = false;
        mMappings.add(new Mapping("comment", "+mode:clone", new ArrayList<Integer>(), true, true));
        try {
            Scanner scanner = new Scanner(f, "UTF-8");
            boolean inHeader = true;
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim(); if (line.isEmpty()) { if (inHeader) mOriginalHeaderLines.add(""); continue; }
                if (line.startsWith("#")) {
                    if (line.startsWith("# Author: ")) mAuthorEdit.setText(line.substring(10));
                    else if (line.startsWith("# Description: ")) mDescriptionEdit.setText(line.substring(15));
                    else if (line.contains("dots: 8")) mEightDotCheck.setChecked(true);
                    else if (line.startsWith("#+locale: ")) { String code = line.substring(10).trim(); int idx = mLocaleCodes.indexOf(code); if (idx != -1) { String name = mLocaleNames.get(idx); int fIdx = mFilteredLocaleNames.indexOf(name); if (fIdx != -1) mLocaleSpinner.setSelection(fIdx); } }
                    
                    if (inHeader) mOriginalHeaderLines.add(line);
                    else mMappings.add(new Mapping(line));
                    continue;
                }
                inHeader = false;
                Mapping m = new Mapping(line);
                mMappings.add(m);

                // Sincronizziamo gli spinner in base agli include trovati
                if (m.opcode.equals("include")) {
                    String inc = m.character;
                    // Alfabeti
                    String[][] set = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6;
                    for (int i = 0; i < set.length; i++) {
                        if (set[i][1].equals(inc)) {
                            mScriptSpinner.setSelection(i);
                            mLastScriptPos = i;
                            break;
                        }
                    }
                    // Sistemi numerici
                    int numPos = -1;
                    if (inc.equals("digits6Dots.uti")) numPos = NUM_CLASSIC;
                    else if (inc.equals("litdigits6DotsPlusDot6.uti")) numPos = NUM_ANTOINE;
                    else if (inc.equals("digits6DotsPlusDot6.uti")) numPos = NUM_6DOT_UNIVOCAL;
                    else if (inc.equals("digits8Dots.uti")) numPos = NUM_8DOT_STANDARD;
                    else if (inc.equals("loweredDigits6Dots.uti")) numPos = NUM_DROPPED; // Default per lowered
                    else if (inc.equals("litdigits6Dots.uti")) numPos = NUM_LITERARY;
                    
                    if (numPos != -1) {
                        mNumSystemSpinner.setSelection(numPos);
                        mLastNumPos = numPos;
                    }
                }
            }
            scanner.close(); refreshSpinner(); Toast.makeText(this, getString(R.string.msg_structure_cloned), Toast.LENGTH_LONG).show(); collapseHeader();
        } catch (Exception e) { Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), 0).show(); } finally { mIsUpdatingUI = false; }
    }

    private void removeCurrentAlphabetMappings() {
        // Rimuoviamo tutte le mappature di tipo 'lowercase' o 'uppercase' che appartengono a un alfabeto.
        for (int i = mMappings.size() - 1; i >= 0; i--) {
            Mapping m = mMappings.get(i);
            if ((m.opcode.equals("lowercase") || m.opcode.equals("uppercase")) && !m.isFixed) {
                if (m.character != null && m.character.length() == 1) {
                    char c = m.character.charAt(0);
                    if (Character.isLetter(c)) {
                        mMappings.remove(i);
                    }
                }
            }
            // Rimuoviamo anche eventuali vecchi include di script per pulizia legacy
            if (m.opcode.equals("include")) {
                boolean isScriptFile = false;
                for (String[] s : SCRIPTS_6) if (s[1].equals(m.character)) isScriptFile = true;
                for (String[] s : SCRIPTS_8) if (s[1].equals(m.character)) isScriptFile = true;
                if (isScriptFile) mMappings.remove(i);
            }
        }
    }

    private boolean applyAlphabetScript(int pos, boolean is8dot) {
        String scriptKey = is8dot ? SCRIPTS_8[pos][1] : SCRIPTS_6[pos][1];

        if (!mIsManagedTable) {
            // Modalità CLONA: non rimuoviamo le lettere, cambiamo solo l'include
            for (int i = mMappings.size() - 1; i >= 0; i--) {
                Mapping m = mMappings.get(i);
                if (m.opcode.equals("include")) {
                    boolean isScriptFile = false;
                    for (String[] s : SCRIPTS_6) if (s[1].equals(m.character)) isScriptFile = true;
                    for (String[] s : SCRIPTS_8) if (s[1].equals(m.character)) isScriptFile = true;
                    if (isScriptFile) mMappings.remove(i);
                }
            }
            if (!scriptKey.equals("none")) {
                boolean high = mMappingPriorityCheck.isChecked();
                Mapping includeMap = new Mapping("include", scriptKey, new ArrayList<Integer>(), high);
                insertMappingWithPriority(includeMap, high, -1);
            }
            return true;
        }

        if (scriptKey.equals("none")) {
            removeCurrentAlphabetMappings();
            return true;
        }
        
        String jsonFile = null;
        if (scriptKey.contains("latin")) jsonFile = "alphabet_latin_6dot.json";
        else if (scriptKey.contains("cyrillic")) jsonFile = "alphabet_cyrillic_6dot.json";
        else if (scriptKey.contains("greek")) jsonFile = "alphabet_greek_6dot.json";
        else if (scriptKey.contains("arabic")) jsonFile = "alphabet_arabic_6dot.json";
        else if (scriptKey.contains("hebrew")) jsonFile = "alphabet_hebrew_6dot.json";
        
        if (jsonFile == null) {
            // Se non abbiamo il JSON, offriamo di includere il file .uti direttamente
            if (scriptKey.endsWith(".uti") || scriptKey.endsWith(".utb")) {
                removeCurrentAlphabetMappings();
                int insertPos = 0; while (insertPos < mMappings.size() && mMappings.get(insertPos).isFixed) insertPos++;
                mMappings.add(insertPos, new Mapping("include", scriptKey, new ArrayList<Integer>(), false));
                Toast.makeText(this, getString(R.string.label_structure_prefix) + " " + scriptKey, Toast.LENGTH_SHORT).show();
                return true;
            }
            return false;
        }

        try {
            InputStream is = getAssets().open("scripts/" + jsonFile);
            byte[] b = new byte[is.available()]; is.read(b); is.close();
            JSONObject root = new JSONObject(new String(b, "UTF-8"));
            JSONArray arr = root.getJSONArray("mappings");
            
            removeCurrentAlphabetMappings();
            int insertPos = 0;
            while (insertPos < mMappings.size() && mMappings.get(insertPos).isFixed) insertPos++;
            
            for (int i = 0; i < arr.length(); i++) {
                JSONObject obj = arr.getJSONObject(i);
                mMappings.add(insertPos++, new Mapping(obj.getString("opcode"), obj.getString("char"), parseDots(obj.getString("dots")), false));
            }
            Toast.makeText(this, String.format(getString(R.string.msg_imported), root.getString("scriptName")), Toast.LENGTH_SHORT).show();
            return true;
        } catch (Exception e) {
            Log.e(TAG, "Error applying script: " + e.getMessage());
            return false;
        }
    }

    private List<Mapping> getNumericMappings(int pos, boolean high) {
        List<Mapping> rules = new ArrayList<>();
        if (pos == NUM_CLASSIC) { rules.add(new Mapping("include", "digits6Dots.uti", new ArrayList<Integer>(), high)); rules.add(new Mapping("numsign", "", parseDots("3456"), high)); }
        else if (pos == NUM_ANTOINE) { rules.add(new Mapping("include", "litdigits6DotsPlusDot6.uti", new ArrayList<Integer>(), high)); rules.add(new Mapping("numsign", "", parseDots("6"), high)); }
        else if (pos == NUM_6DOT_UNIVOCAL) rules.add(new Mapping("include", "digits6DotsPlusDot6.uti", new ArrayList<Integer>(), high));
        else if (pos == NUM_8DOT_STANDARD) rules.add(new Mapping("include", "digits8Dots.uti", new ArrayList<Integer>(), high));
        else if (pos == NUM_8DOT_COMPUTER_LOWERED) rules.add(new Mapping("include", "loweredDigits6Dots.uti", new ArrayList<Integer>(), high));
        else if (pos == NUM_DROPPED) { rules.add(new Mapping("include", "loweredDigits6Dots.uti", new ArrayList<Integer>(), high)); rules.add(new Mapping("numsign", "", parseDots("3456"), high)); }
        else if (pos == NUM_LITERARY) { rules.add(new Mapping("include", "litdigits6Dots.uti", new ArrayList<Integer>(), high)); rules.add(new Mapping("numsign", "", parseDots("3456"), high)); }
        return rules;
    }

    private String generateTableContent() {
        android.util.Log.d("TableCreator", "Generating table content. Total mappings: " + mMappings.size());
        String name = mTableNameEdit.getText().toString().trim(); if (name.isEmpty()) return ""; if (!name.endsWith(".ctb") && !name.endsWith(".utb")) name += ".ctb";
        
        Mapping cloneMarker = null;
        for (Mapping m : mMappings) if (m.opcode.equals("comment") && "+mode:clone".equals(m.character)) { cloneMarker = m; break; }
        boolean isClone = (cloneMarker != null);

        StringBuilder sb = new StringBuilder();
        List<String> wP = new ArrayList<>(); List<Character> wL = new ArrayList<>(); List<String> wO = new ArrayList<>();
        
        int localePos = mLocaleSpinner.getSelectedItemPosition();
        String localeLine = (localePos >= 0 && localePos < mFilteredLocaleCodes.size() && !mFilteredLocaleCodes.get(localePos).isEmpty()) 
                            ? "#+locale: " + mFilteredLocaleCodes.get(localePos) + "\n" : "";

        boolean preserveStructure = (isClone || !mIsManagedTable || !mOriginalHeaderLines.isEmpty()) && !mIsTemplateUsed;

        if (preserveStructure) {
            // 1. Scrittura Header originale (preservato, filtrando metadati sovrascritti o obsoleti)
            for (String hLine : mOriginalHeaderLines) {
                String t = hLine.trim();
                if (t.startsWith("# Author:") || t.startsWith("# Description:") 
                    || t.startsWith("#+locale:") || t.contains("+mode:clone")
                    || t.contains("+mode:managed")) continue;
                sb.append(hLine).append("\n");
            }

            // 2. Inserimento Metadati moderni e Firma
            if (mIsManagedTable) sb.append("#+mode:managed\n");
            sb.append("# Author: ").append(mAuthorEdit.getText().toString().trim()).append("\n");
            sb.append("# Description: ").append(mDescriptionEdit.getText().toString().trim()).append("\n");
            if (!localeLine.isEmpty()) sb.append(localeLine);
            if (cloneMarker != null) writeSingleMapping(sb, cloneMarker, wP, wL, wO);

            // 3. Scrittura di tutte le regole mantenendo l'ordine della lista mMappings
            for (Mapping m : mMappings) {
                if (m != cloneMarker) writeSingleMapping(sb, m, wP, wL, wO);
            }
            
        } else {
            // Modalità Standard (Crea da zero o Template)
            if (!localeLine.isEmpty()) sb.append(localeLine);
            if (mIsTemplateUsed || mIsManagedTable) sb.append("#+mode:managed\n");
            sb.append("# ").append(name).append("\n");
            sb.append("# ").append(getString(R.string.table_header_author)).append(mAuthorEdit.getText().toString().trim()).append("\n");
            
            // In Managed Mode forziamo sempre questi include in cima per compatibilità e ordine
            sb.append("\ninclude unicode.dis\n");
            sb.append("include spaces.uti\n\n");
            
            // 1. Scriviamo le mappature ad ALTA PRIORITÀ
            boolean hasHigh = false;
            for (Mapping m : mMappings) {
                if (m == cloneMarker || !m.isHighPriority) continue;
                if (m.opcode.equals("include") && (m.character.equals("unicode.dis") || m.character.equals("spaces.uti") || m.character.equals("braille-patterns.cti"))) continue;
                writeSingleMapping(sb, m, wP, wL, wO);
                hasHigh = true;
            }
            
            // 2. Scriviamo il marcatore per le mappature a BASSA PRIORITÀ
            sb.append("\n# SECTION: LOW PRIORITY\n");

            // 3. Scriviamo le mappature a BASSA PRIORITÀ
            for (Mapping m : mMappings) {
                if (m == cloneMarker || m.isHighPriority) continue;
                if (m.opcode.equals("include") && (m.character.equals("unicode.dis") || m.character.equals("spaces.uti") || m.character.equals("braille-patterns.cti"))) continue;
                writeSingleMapping(sb, m, wP, wL, wO);
            }
            
            // Forziamo sempre questo include in fondo
            sb.append("\ninclude braille-patterns.cti\n");
        }
        return sb.toString();
    }


    private void writeSingleMapping(StringBuilder sb, Mapping m, List<String> wP, List<Character> wL, List<String> wO) {
        if (m.opcode.equals("comment") && "+mode:clone".equals(m.character)) { sb.append("#+mode:clone\n"); return; }
        
        // --- ARCHITETTURA PRESERVATION-FIRST (Surgical Update) ---
        // Se la mappatura NON è stata modificata e abbiamo la riga originale, la usiamo INTEGRALMENTE.
        // Questo protegge opcode sconosciuti, logica complessa di 2/3 grado e formattazioni custom.
        if (!m.isDirty && m.rawLine != null) {
            sb.append(m.rawLine).append("\n");
            
            // Registriamo comunque le lettere e le coppie base caricate per evitare duplicati automatici
            if (m.opcode.equals("lowercase") || m.opcode.equals("uppercase")) {
                if (m.character != null && m.character.length() == 1) wL.add(m.character.charAt(0));
            }
            if (m.opcode.startsWith("base uppercase")) {
                String pair = extractBasePair(m.rawLine);
                if (pair != null) wP.add(pair);
            }
            return;
        }

        // Se è una riga di commento o raw che inizia con # (mappatura nuova o modificata), scriviamo il commento
        if ((m.opcode.equals("comment") || m.opcode.equals("raw")) && (m.rawLine != null || m.comment != null)) {
            String c = (m.rawLine != null) ? m.rawLine : ("# " + m.comment);
            sb.append(c).append("\n");
            return;
        }

        // Per le righe include, scriviamo solo l'include
        if (m.opcode.equals("include")) { sb.append("include ").append(m.character).append("\n"); return; }
        
        // Se è una riga base uppercase esplicita, la segniamo per evitare duplicati automatici
        if (m.opcode.startsWith("base uppercase")) {
            String pair = extractBasePair(m.rawLine != null ? m.rawLine : (m.opcode + " " + m.character));
            if (pair != null) wP.add(pair);
        }

        // Opcode che NON richiedono un carattere ma solo i punti (segnatasti, indicatori, ecc.)
        List<String> standaloneOpcodes = Arrays.asList("numsign", "capsletter", "letsign", "begcaps", "endcaps", "begcapsword", "endcapsword");
        // Opcode che accettano una stringa di caratteri ma NON i punti (es. classi, attributi, liste)
        List<String> stringOpcodes = Arrays.asList("numericmodechars", "midendnumericmodechars", "attribute", "class");
        // Opcode di logica complessa (2/3 grado) che non devono subire escaping o formattazione punti
        List<String> logicOpcodes = Arrays.asList("context");
        
        StringBuilder dots = new StringBuilder(); 
        for (int i = 0; i < m.patterns.size(); i++) { if (i > 0) dots.append("-"); dots.append(patternToDotsString(m.patterns.get(i))); }

        // Gestione automatica uppercase/lowercase/base
        char c_low = 0, c_up = 0;
        boolean isLetter = false;
        if (m.character != null && m.character.length() == 1 && (m.opcode.equals("lowercase") || m.opcode.equals("uppercase"))) {
            char c = m.character.charAt(0);
            if (Character.isLetter(c)) {
                isLetter = true;
                c_low = Character.toLowerCase(c);
                c_up = Character.toUpperCase(c);
                if (c_low != c_up) {
                    if (c == c_up && !isCharacterMapped(c_low) && !wL.contains(c_low)) {
                        sb.append("lowercase ").append(String.format("\\x%04x", (int)c_low)).append(" 0\n");
                        wL.add(c_low);
                        wO.add("lowercase:" + c_low);
                    }
                } else isLetter = false;
            }
        }

        // Determinazione del commento (inline) - Rispettiamo rigorosamente l'originale
        String inlineComment = (m.comment != null) ? " #" + m.comment : "";

        if (stringOpcodes.contains(m.opcode)) {
            // Opcode di tipo stringa - Scriviamo solo l'opcode e il contenuto (m.character)
            sb.append(m.opcode).append(" ").append(m.character).append(inlineComment).append("\n");
        } else if (logicOpcodes.contains(m.opcode) || m.opcode.startsWith("pass")) {
            // Opcode di logica (context, pass2, ecc.) - Scriviamo i campi grezzi senza escaping
            String d = dots.toString();
            sb.append(m.opcode).append(" ").append(m.character).append(d.isEmpty() ? "" : " " + d).append(inlineComment).append("\n");
        } else if (standaloneOpcodes.contains(m.opcode) || ((m.opcode.startsWith("beg") || m.opcode.startsWith("end")) && (m.character == null || m.character.isEmpty()))) {
            // Opcode standalone (solo punti)
            sb.append(m.opcode).append(" ").append(dots).append(inlineComment).append("\n");
        } else if (m.opcode.startsWith("base")) {
            // Righe base uppercase/lowercase
            sb.append(m.opcode).append(" ").append(m.character).append(inlineComment).append("\n");
        } else {
            // Opcode standard (opcode + char + dots)
            if (m.character == null || m.character.isEmpty()) {
                if (m.opcode.equals("space")) m.character = " "; else return;
            }
            String cP = m.character;
            // Eseguiamo l'escaping solo per singoli caratteri critici
            if (cP.length() == 1) {
                char c = cP.charAt(0);
                if (c == ' ') cP = "\\s"; else if (c == '\t') cP = "\\t"; else if (c == '\\') cP = "\\\\";
                else if (c < 33 || c > 126 || ",.:-/*=+<>%€$#".indexOf(c) != -1) cP = String.format("\\x%04x", (int)c);
            }
            sb.append(m.opcode).append(" ").append(cP).append(" ").append(dots).append(inlineComment).append("\n");
            wO.add(m.opcode + ":" + m.character);
            if (isLetter && m.character.charAt(0) == c_low) wL.add(c_low);
        }

        if (isLetter) {
            String pair = c_up + "-" + c_low;
            // Generiamo 'base uppercase' AUTOMATICAMENTE solo in Managed Mode
            // e solo se non è già presente nel file (wP) o nella lista mMappings.
            if (mIsManagedTable && !wP.contains(pair) && !isBaseMappingPresent(c_up, c_low)) {
                sb.append("base uppercase ").append(String.format("\\x%04x", (int)c_up)).append(" ").append(String.format("\\x%04x", (int)c_low)).append("\n");
                wP.add(pair);
            }
        }
        }

        private boolean isCharacterMapped(char c) {
        String s = String.valueOf(c);
        for (Mapping m : mMappings) {
            if (m.character != null && m.character.equals(s) && (m.opcode.equals("lowercase") || m.opcode.equals("uppercase") || m.opcode.equals("letter"))) return true;
        }
        return false;
        }
    private String extractBasePair(String line) {
        try {
            String[] p = line.trim().split("\\s+");
            if (p.length >= 4 && p[0].equals("base") && p[1].equals("uppercase")) {
                char up = (char)Integer.parseInt(p[2].replace("\\x", ""), 16);
                char low = (char)Integer.parseInt(p[3].replace("\\x", ""), 16);
                return up + "-" + low;
            }
        } catch (Exception e) {}
        return null;
    }

    private boolean isBaseMappingPresent(char up, char low) {
        String pair = up + "-" + low;
        for (Mapping m : mMappings) {
            String p = null;
            if (m.rawLine != null) p = extractBasePair(m.rawLine);
            else if (m.opcode != null && m.opcode.startsWith("base uppercase")) p = extractBasePair(m.opcode + " " + m.character);
            if (pair.equals(p)) return true;
        }
        return false;
    }

        private void showTemplatePicker() { try { String[] files = getAssets().list("templates"); if (files == null || files.length == 0) return; final List<String> names = new ArrayList<>(), fFiles = new ArrayList<>(); for (String f : files) if (f.endsWith(".json")) { JSONObject o = new JSONObject(loadTemplateFromAssets(f)); names.add(o.getString("templateName")); fFiles.add(f); } new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setItems(names.toArray(new String[0]), (dialog, w) -> confirmTemplateApplication(fFiles.get(w))).show(); } catch (Exception e) {} }
    private String loadTemplateFromAssets(String f) throws Exception { InputStream is = getAssets().open("templates/" + f); byte[] b = new byte[is.available()]; is.read(b); is.close(); return new String(b, "UTF-8"); }
    private void confirmTemplateApplication(final String f) { if (!mMappings.isEmpty()) new AlertDialog.Builder(this).setTitle(R.string.title_select_template).setMessage(R.string.msg_confirm_template).setPositiveButton(android.R.string.yes, (d, w) -> applyTemplate(f)).setNegativeButton(android.R.string.no, null).show(); else applyTemplate(f); }
    private void applyTemplate(String f) { try { JSONObject o = new JSONObject(loadTemplateFromAssets(f)), s = o.getJSONObject("settings"); JSONArray m = o.getJSONArray("mappings"); mEightDotCheck.setChecked(s.getBoolean("is8Dot")); updateScriptSpinner(mEightDotCheck.isChecked()); 
        String locCode = s.getString("locale"); int idx = mLocaleCodes.indexOf(locCode); if (idx != -1) { String name = mLocaleNames.get(idx); int fIdx = mFilteredLocaleNames.indexOf(name); if (fIdx != -1) mLocaleSpinner.setSelection(fIdx); }
        String script = s.getString("scriptFileName"); String[][] set = mEightDotCheck.isChecked() ? SCRIPTS_8 : SCRIPTS_6; for (int i=0; i<set.length; i++) if (set[i][1].equals(script)) { mScriptSpinner.setSelection(i); break; } mNumSystemSpinner.setSelection(s.getInt("numSystem")); 
        mMappings.clear(); mOriginalHeaderLines.clear();
        
        // Aggiungiamo unicode e spaces in cima
        mMappings.add(new Mapping("include", "unicode.dis", new ArrayList<Integer>(), true, true));
        mMappings.add(new Mapping("include", "spaces.uti", new ArrayList<Integer>(), true, true));

        for (int i = 0; i < m.length(); i++) { 
            JSONObject mO = m.getJSONObject(i); 
            String op = mO.getString("opcode");
            String ch = mO.getString("char");
            // Evitiamo duplicati degli include strutturali se già presenti nel template
            if ("include".equals(op) && ("unicode.dis".equals(ch) || "spaces.uti".equals(ch) || "braille-patterns.cti".equals(ch))) continue;
            mMappings.add(new Mapping(op, ch, parseDots(mO.getString("dots")), mO.getBoolean("high"), mO.getBoolean("fixed"))); 
        } 
        
        // Aggiungiamo braille-patterns in fondo
        mMappings.add(new Mapping("include", "braille-patterns.cti", new ArrayList<Integer>(), false, true));

        mTableNameEdit.setText(f.replace(".json", "") + "_custom"); refreshSpinner(); mIsTemplateUsed = true; mIsManagedTable = true; collapseHeader(); } catch (Exception e) {} }

    private void exportSystemTable() {
        int p = mBaseTableSpinner.getSelectedItemPosition(); if (p <= 0) { Toast.makeText(this, getString(R.string.msg_select_source_first), 0).show(); return; }
        final String fileName = mSystemTableFiles.get(p);
        Context storageContext = getApplicationContext();
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = storageContext.createDeviceProtectedStorageContext();
        }
        File tableDir = new File(storageContext.getDir("translator", MODE_PRIVATE), "liblouis/tables");
        final File sourceFile = new File(tableDir, fileName);
        if (!sourceFile.exists()) { Toast.makeText(this, getString(R.string.msg_table_file_not_found), 0).show(); return; }
        
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            doExportSystemFileMediaStore(sourceFile, fileName);
        } else {
            exportSystemTableLegacy(sourceFile, fileName);
        }
    }

    private void doExportSystemFileMediaStore(File sourceFile, String fileName) {
        if (exportToDownloadsMediaStore(fileName, sourceFile, null)) {
            Toast.makeText(this, String.format(getString(R.string.msg_exported_to), "Download/soft-braille/" + fileName), 0).show();
        }
    }

    private void exportSystemTableLegacy(File sourceFile, String fileName) {
        File exportDir = new File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "soft-braille");
        if (!exportDir.exists() && !exportDir.mkdirs()) return;
        final File outFile = new File(exportDir, fileName);
        if (outFile.exists()) {
            new AlertDialog.Builder(this).setTitle(R.string.dialog_overwrite_title).setMessage(String.format(getString(R.string.dialog_overwrite_msg), fileName))
                .setPositiveButton(R.string.btn_overwrite, (dialog, which) -> doExportSystemFileLegacy(sourceFile, outFile)).setNegativeButton(R.string.btn_cancel, null).show();
        } else { doExportSystemFileLegacy(sourceFile, outFile); }
    }

    private void doExportSystemFileLegacy(File sourceFile, File outFile) {
        try (java.io.FileInputStream fis = new java.io.FileInputStream(sourceFile); FileOutputStream fos = new FileOutputStream(outFile)) {
            byte[] buffer = new byte[1024]; int len; while ((len = fis.read(buffer)) > 0) fos.write(buffer, 0, len);
            Toast.makeText(this, String.format(getString(R.string.msg_exported_to), outFile.getAbsolutePath()), 0).show();
        } catch (Exception e) { Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), 0).show(); }
    }

    private void exportTable() {
        if (android.os.Build.VERSION.SDK_INT >= 23 && android.os.Build.VERSION.SDK_INT <= 28) {
            if (checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) != 0) {
                requestPermissions(new String[]{android.Manifest.permission.WRITE_EXTERNAL_STORAGE}, 100);
                return;
            }
        }
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, R.string.error_no_name, 0).show(); return; }
        if (!name.endsWith(".ctb") && !name.endsWith(".utb")) name += ".ctb";
        
        final String content = generateTableContent();
        if (content.isEmpty()) return;
        
        checkExportCollisionAndProceed(name, content);
    }

    private void checkExportCollisionAndProceed(final String fileName, final String content) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            android.net.Uri existingUri = findFileInMediaStore(fileName);
            if (existingUri != null) {
                showExportCollisionDialog(fileName, content, existingUri, null);
            } else {
                doExportTable(fileName, content, null, null);
            }
        } else {
            File exportDir = new File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "soft-braille");
            File outFile = new File(exportDir, fileName);
            if (outFile.exists()) {
                showExportCollisionDialog(fileName, content, null, outFile);
            } else {
                doExportTable(fileName, content, null, outFile);
            }
        }
    }

    private android.net.Uri findFileInMediaStore(String fileName) {
        android.content.ContentResolver resolver = getContentResolver();
        android.net.Uri externalUri = android.provider.MediaStore.Downloads.EXTERNAL_CONTENT_URI;
        String selection = android.provider.MediaStore.MediaColumns.DISPLAY_NAME + "=? AND " + android.provider.MediaStore.MediaColumns.RELATIVE_PATH + "=?";
        String[] selectionArgs = new String[] { fileName, "Download/soft-braille/" };
        try (android.database.Cursor cursor = resolver.query(externalUri, new String[] { android.provider.MediaStore.MediaColumns._ID }, selection, selectionArgs, null)) {
            if (cursor != null && cursor.moveToFirst()) {
                long id = cursor.getLong(cursor.getColumnIndex(android.provider.MediaStore.MediaColumns._ID));
                return android.content.ContentUris.withAppendedId(externalUri, id);
            }
        } catch (Exception e) { Log.e(TAG, "Error querying MediaStore", e); }
        return null;
    }

    private void showExportCollisionDialog(final String fileName, final String content, final android.net.Uri existingUri, final File existingFile) {
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(R.string.dialog_export_title);
        b.setMessage(String.format(getString(R.string.msg_export_collision), fileName));
        
        b.setPositiveButton(R.string.btn_overwrite, (d, w) -> doExportTable(fileName, content, existingUri, existingFile));
        
        b.setNeutralButton(R.string.btn_rename, (d, w) -> {
            AlertDialog.Builder rb = new AlertDialog.Builder(this);
            rb.setTitle(R.string.btn_rename);
            final EditText input = new EditText(this);
            input.setText(fileName);
            rb.setView(input);
            rb.setPositiveButton(R.string.btn_ok, (d2, w2) -> {
                String newName = input.getText().toString().trim();
                if (!newName.isEmpty()) {
                    if (!newName.endsWith(".ctb") && !newName.endsWith(".utb")) newName += ".ctb";
                    checkExportCollisionAndProceed(newName, content);
                }
            });
            rb.setNegativeButton(R.string.btn_cancel, null).show();
        });
        
        b.setNegativeButton(R.string.btn_cancel, null).show();
    }

    private void doExportTable(String fileName, String content, android.net.Uri uri, File file) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            if (doExportToMediaStore(fileName, content, uri)) {
                Toast.makeText(this, String.format(getString(R.string.msg_exported_to), "Download/soft-braille/" + fileName), 0).show();
            }
        } else {
            if (file == null) {
                File exportDir = new File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "soft-braille");
                if (!exportDir.exists() && !exportDir.mkdirs()) return;
                file = new File(exportDir, fileName);
            }
            try (FileOutputStream fos = new FileOutputStream(file)) {
                fos.write(content.getBytes(StandardCharsets.UTF_8));
                Toast.makeText(this, String.format(getString(R.string.msg_exported_to), file.getAbsolutePath()), 0).show();
            } catch (Exception e) {
                Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), 0).show();
            }
        }
    }

    private boolean doExportToMediaStore(String fileName, String content, android.net.Uri uri) {
        android.content.ContentResolver resolver = getContentResolver();
        if (uri == null) {
            android.content.ContentValues values = new android.content.ContentValues();
            values.put(android.provider.MediaStore.MediaColumns.DISPLAY_NAME, fileName);
            values.put(android.provider.MediaStore.MediaColumns.MIME_TYPE, "application/octet-stream");
            values.put(android.provider.MediaStore.MediaColumns.RELATIVE_PATH, "Download/soft-braille");
            uri = resolver.insert(android.provider.MediaStore.Downloads.EXTERNAL_CONTENT_URI, values);
        }
        if (uri == null) return false;
        
        try (java.io.OutputStream os = resolver.openOutputStream(uri, "wt")) {
            if (os != null) {
                os.write(content.getBytes(StandardCharsets.UTF_8));
                return true;
            }
        } catch (android.app.RecoverableSecurityException e) {
            // Android 10+ permission handling for overwriting files not owned by the app
            try {
                startIntentSenderForResult(e.getUserAction().getActionIntent().getIntentSender(), 101, null, 0, 0, 0);
            } catch (Exception ex) { Log.e(TAG, "Failed to start intent sender", ex); }
        } catch (Exception e) {
            Log.e(TAG, "MediaStore export failed", e);
            runOnUiThread(() -> Toast.makeText(this, String.format(getString(R.string.msg_export_failed), e.getMessage()), Toast.LENGTH_LONG).show());
        }
        return false;
    }

    private void saveTable() {
        String name = mTableNameEdit.getText().toString().trim(); if (name.isEmpty()) { Toast.makeText(this, R.string.error_no_name, 0).show(); mTableNameEdit.requestFocus(); return; }
        if (!name.endsWith(".ctb") && !name.endsWith(".utb")) name += ".ctb";
        final String finalName = name;
        CustomTableManager manager = new CustomTableManager(this);
        File f = manager.getCustomTableFile(finalName);
        if (f.exists()) {
            new AlertDialog.Builder(this)
                .setTitle(R.string.dialog_export_title)
                .setMessage(String.format(getString(R.string.msg_save_collision), finalName))
                .setPositiveButton(R.string.btn_overwrite, (d, w) -> doSaveTable(finalName))
                .setNeutralButton(R.string.btn_rename, (d, w) -> {
                    AlertDialog.Builder rb = new AlertDialog.Builder(this);
                    rb.setTitle(R.string.btn_rename);
                    final EditText input = new EditText(this);
                    input.setText(finalName);
                    rb.setView(input);
                    rb.setPositiveButton(R.string.btn_ok, (d2, w2) -> {
                        String newName = input.getText().toString().trim();
                        if (!newName.isEmpty()) {
                            if (!newName.endsWith(".ctb") && !newName.endsWith(".utb")) newName += ".ctb";
                            mTableNameEdit.setText(newName);
                            saveTable();
                        }
                    });
                    rb.setNegativeButton(R.string.btn_cancel, null).show();
                })
                .setNegativeButton(R.string.btn_cancel, null).show();
        } else {
            doSaveTable(finalName);
        }
    }

    private void doSaveTable(String name) {
        String tableContent = generateTableContent();
        if (tableContent.isEmpty()) return;
        try {
            CustomTableManager manager = new CustomTableManager(this);
            File f = manager.getCustomTableFile(name);
            try (FileOutputStream fos = new FileOutputStream(f)) {
                fos.write(tableContent.getBytes(StandardCharsets.UTF_8));
            }
            
            // Notifica il sistema che la tabella è stata aggiornata
            Intent intent = new Intent("com.dalton.braillekeyboard.ACTION_TABLE_UPDATED");
            intent.putExtra("table_file_name", name);
            sendBroadcast(intent);
            
            // Aggiorna le preferenze dell'utente
            int prefKey = mEightDotCheck.isChecked() ? R.string.pref_braille_computer_table_key : R.string.pref_braille_literary_table_key;
            Options.writeStringPreference(this, prefKey, "custom:" + name);
            
            Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
            
            // CRITICAL FIX: Refresh the internal state from the newly saved file.
            // This resets mOriginalHeaderLines and marks all mappings as NOT dirty,
            // ensuring that subsequent saves correctly use the new base structure.
            loadTableData(name);
            
        } catch (Exception e) {
            Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), Toast.LENGTH_LONG).show();
        }
    }

    private boolean exportToDownloadsMediaStore(String fileName, File sourceFile, String content) {
        android.content.ContentResolver resolver = getContentResolver();
        android.content.ContentValues values = new android.content.ContentValues();
        values.put(android.provider.MediaStore.MediaColumns.DISPLAY_NAME, fileName);
        // Usiamo un MIME type generico per evitare che Android aggiunga .txt
        values.put(android.provider.MediaStore.MediaColumns.MIME_TYPE, "application/octet-stream");
        values.put(android.provider.MediaStore.MediaColumns.RELATIVE_PATH, "Download/soft-braille");
        android.net.Uri externalUri = android.provider.MediaStore.Downloads.EXTERNAL_CONTENT_URI;
        String selection = android.provider.MediaStore.MediaColumns.DISPLAY_NAME + "=? AND " + android.provider.MediaStore.MediaColumns.RELATIVE_PATH + "=?";
        String[] selectionArgs = new String[] { fileName, "Download/soft-braille/" };
        android.database.Cursor cursor = resolver.query(externalUri, new String[] { android.provider.MediaStore.MediaColumns._ID }, selection, selectionArgs, null);
        android.net.Uri uri = null;
        if (cursor != null && cursor.moveToFirst()) {
            long id = cursor.getLong(cursor.getColumnIndex(android.provider.MediaStore.MediaColumns._ID));
            uri = android.content.ContentUris.withAppendedId(externalUri, id);
            cursor.close();
        } else { if (cursor != null) cursor.close(); uri = resolver.insert(externalUri, values); }
        if (uri == null) return false;
        try (java.io.OutputStream os = resolver.openOutputStream(uri, "wt")) {
            if (sourceFile != null) { try (java.io.FileInputStream fis = new java.io.FileInputStream(sourceFile)) { byte[] buffer = new byte[1024]; int len; while ((len = fis.read(buffer)) > 0) os.write(buffer, 0, len); } } 
            else if (content != null) { os.write(content.getBytes(StandardCharsets.UTF_8)); }
            return true;
        } catch (Exception e) { Log.e(TAG, "MediaStore export failed", e); return false; }
    }
}

