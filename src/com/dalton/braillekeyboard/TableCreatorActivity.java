package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TableCreatorActivity extends Activity {
    private static final String TAG = "TableCreatorActivity";
    
    private EditText mTableNameEdit;
    private EditText mAuthorEdit;
    private EditText mDescriptionEdit;
    private CheckBox mEightDotCheck;
    private CheckBox mInclude6DotDigits;
    private CheckBox mInclude8DotDigits;
    
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
        "openpunc", "closepunc"
    };
    private String[] OPCODE_LABELS;

    private static class Mapping {
        String opcode; String character; List<Integer> patterns = new ArrayList<>();
        Mapping(String op, String ch, List<Integer> pts) { opcode = op; character = ch; patterns.addAll(pts); }
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
            getString(R.string.opcode_openpunc), getString(R.string.opcode_closepunc)
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

        mAuthorEdit = new EditText(this);
        mAuthorEdit.setHint("Author (e.g. Sergio)");
        root.addView(mAuthorEdit);

        mDescriptionEdit = new EditText(this);
        mDescriptionEdit.setHint("Description (e.g. Personal Italian Table)");
        root.addView(mDescriptionEdit);

        mEightDotCheck = new CheckBox(this);
        mEightDotCheck.setText(R.string.label_use_8_dots);
        mEightDotCheck.setOnCheckedChangeListener((v, isChecked) -> {
            if (!isChecked && !mInclude8DotDigits.isChecked()) {
                addNumsignIfMissing();
            }
        });
        root.addView(mEightDotCheck);

        mInclude6DotDigits = new CheckBox(this);
        mInclude6DotDigits.setText("Include 6-dot numbers (A-J)");
        root.addView(mInclude6DotDigits);

        mInclude8DotDigits = new CheckBox(this);
        mInclude8DotDigits.setText("Include 8-dot numbers (Computer)");
        mInclude8DotDigits.setOnCheckedChangeListener((v, isChecked) -> {
            if (isChecked) {
                removeNumsign();
            } else if (!mEightDotCheck.isChecked()) {
                addNumsignIfMissing();
            }
        });
        root.addView(mInclude8DotDigits);

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
                String op = OPCODES[pos];
                boolean isStand = op.equals("numsign") || op.equals("capsletter") || op.startsWith("beg") || op.startsWith("end") || op.equals("space");
                mCharEdit.setVisibility(isStand ? View.GONE : View.VISIBLE);
            }
            @Override public void onNothingSelected(AdapterView<?> p) {}
        });
        editorBox.addView(mOpcodeSpinner);

        LinearLayout charRow = new LinearLayout(this);
        charRow.setOrientation(LinearLayout.HORIZONTAL);
        mCharEdit = new EditText(this);
        mCharEdit.setHint("Char");
        mCharEdit.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        
        mCharEdit.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override
            public void afterTextChanged(android.text.Editable s) {
                if (s.length() == 1) {
                    char c = s.charAt(0);
                    String suggestedOp = "sign";
                    if (Character.isDigit(c)) suggestedOp = "digit";
                    else if (Character.isLowerCase(c)) suggestedOp = "lowercase";
                    else if (Character.isUpperCase(c)) suggestedOp = "uppercase";
                    else if (".,;:!?¡¿\"'()[]{}“”«»".indexOf(c) != -1) suggestedOp = "punctuation";
                    else if ("+-*×/÷=<>±%^".indexOf(c) != -1) suggestedOp = "math";
                    
                    for (int i = 0; i < OPCODES.length; i++) {
                        if (OPCODES[i].equals(suggestedOp)) {
                            mOpcodeSpinner.setSelection(i);
                            break;
                        }
                    }
                }
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
        root.addView(editorBox);

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
        } else {
            addDefault6DotMappings();
        }
    }

    private void addDefault6DotMappings() {
        if (!mEightDotCheck.isChecked()) {
            addNumsignIfMissing();
            mMappings.add(new Mapping("capsletter", "", parseDots("46")));
            mMappings.add(new Mapping("begcapsword", "", parseDots("46-46")));
            mMappings.add(new Mapping("endcapsword", "", parseDots("46-3")));
            refreshSpinner();
        }
    }

    private void addNumsignIfMissing() {
        boolean found = false;
        for (Mapping m : mMappings) if (m.opcode.equals("numsign")) { found = true; break; }
        if (!found) {
            mMappings.add(new Mapping("numsign", "", parseDots("3456")));
            refreshSpinner();
        }
    }

    private void removeNumsign() {
        boolean removed = false;
        for (int i = mMappings.size() - 1; i >= 0; i--) {
            if (mMappings.get(i).opcode.equals("numsign")) {
                mMappings.remove(i);
                removed = true;
            }
        }
        if (removed) {
            refreshSpinner();
            Toast.makeText(this, "Number sign removed", Toast.LENGTH_SHORT).show();
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

    private void loadTableData(String tableId) {
        try {
            CustomTableManager manager = new CustomTableManager(this);
            String fileName = tableId;
            if (fileName.startsWith("custom:")) fileName = fileName.substring(7);
            File f = manager.getCustomTableFile(fileName);
            if (!f.exists()) return;

            mTableNameEdit.setText(fileName);
            mMappings.clear();

            Scanner scanner = new Scanner(f, "UTF-8");
            while (scanner.hasNextLine()) {
                String line = scanner.nextLine().trim();
                if (line.startsWith("#")) {
                    if (line.startsWith("# Author: ")) mAuthorEdit.setText(line.substring(10));
                    else if (line.startsWith("# Description: ")) mDescriptionEdit.setText(line.substring(15));
                    
                    if (line.contains("latinLetterDef8Dots.uti")) mEightDotCheck.setChecked(true);
                    if (line.contains("digits6Dots.uti")) mInclude6DotDigits.setChecked(true);
                    if (line.contains("digits8Dots.uti")) mInclude8DotDigits.setChecked(true);
                    continue;
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
                                 opcode.equals("space");

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
                    mMappings.add(new Mapping(opcode, charPart, parseDots(dotsPart)));
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
        PresetCategory catIt = new PresetCategory(getString(R.string.preset_cat_it_accents), "lowercase");
        catIt.presets.add(new Preset("a grave", "à", new int[][]{{1,2,3,5,6}}, new int[][]{{1,2,3,5,6,8}}));
        catIt.presets.add(new Preset("e grave", "è", new int[][]{{2,3,4,6}},   new int[][]{{2,3,4,6,8}}));
        catIt.presets.add(new Preset("e acute", "é", new int[][]{{1,2,3,4,5,6}}, new int[][]{{1,2,3,4,5,6,8}}));
        catIt.presets.add(new Preset("i grave", "ì", new int[][]{{3,4}},     new int[][]{{3,4,8}}));
        catIt.presets.add(new Preset("o grave", "ò", new int[][]{{3,4,6}},   new int[][]{{3,4,6,8}}));
        catIt.presets.add(new Preset("u grave", "ù", new int[][]{{2,3,4,5,6}}, new int[][]{{2,3,4,5,6,8}}));
        mPresetCategories.add(catIt);

        PresetCategory catItCap = new PresetCategory("Accenti ITA (Maiusc.)", "uppercase");
        catItCap.presets.add(new Preset("A grave", "À", new int[][]{{4,6}, {1,2,3,5,6}}, new int[][]{{2,3,6,7,8}}));
        catItCap.presets.add(new Preset("E grave", "È", new int[][]{{4,6}, {2,3,4,6}},   new int[][]{{3,5,7,8}}));
        catItCap.presets.add(new Preset("E acute", "É", new int[][]{{4,6}, {1,2,3,4,5,6}}, new int[][]{{1,2,3,4,5,6,7}}));
        catItCap.presets.add(new Preset("I grave", "Ì", new int[][]{{4,6}, {3,4}},     new int[][]{{5,7}}));
        catItCap.presets.add(new Preset("O grave", "Ò", new int[][]{{4,6}, {3,4,6}},   new int[][]{{5,7,8}}));
        catItCap.presets.add(new Preset("U grave", "Ù", new int[][]{{4,6}, {2,3,4,5,6}}, new int[][]{{3,5,6,7,8}}));
        mPresetCategories.add(catItCap);

        PresetCategory catAcute = new PresetCategory(getString(R.string.preset_cat_acute), "lowercase");
        catAcute.presets.add(new Preset("a acute", "á", new int[][]{{1,2,3,5,6}}, new int[][]{{1,6,8}}));
        catAcute.presets.add(new Preset("i acute", "í", new int[][]{{3,4}},     new int[][]{{1,4,6,8}}));
        catAcute.presets.add(new Preset("o acute", "ó", new int[][]{{3,4,6}},   new int[][]{{1,4,5,6,8}}));
        catAcute.presets.add(new Preset("u acute", "ú", new int[][]{{2,3,4,5,6}}, new int[][]{{1,5,6,8}}));
        catAcute.presets.add(new Preset("n tilde (ñ)", "ñ", new int[][]{{1,2,4,5,6}}, new int[][]{{1,3,4,5,8}}));
        mPresetCategories.add(catAcute);

        PresetCategory catCirc = new PresetCategory(getString(R.string.preset_cat_circ), "lowercase");
        catCirc.presets.add(new Preset("a circumflex", "â", new int[][]{{1,6}}, new int[][]{{1,6,7}}));
        catCirc.presets.add(new Preset("e circumflex", "ê", new int[][]{{1,2,6}}, new int[][]{{1,2,6,7}}));
        catCirc.presets.add(new Preset("oe ligature (œ)", "œ", new int[][]{{2,4,6}}));
        catCirc.presets.add(new Preset("i circumflex", "î", new int[][]{{1,4,6}}, new int[][]{{1,4,6,7}}));
        catCirc.presets.add(new Preset("o circumflex", "ô", new int[][]{{1,4,5,6}}, new int[][]{{1,4,5,6,7}}));
        catCirc.presets.add(new Preset("u circumflex", "û", new int[][]{{1,5,6}}, new int[][]{{1,5,6,7}}));
        mPresetCategories.add(catCirc);

        PresetCategory catDier = new PresetCategory(getString(R.string.preset_cat_dier), "lowercase");
        catDier.presets.add(new Preset("a diaeresis", "ä", new int[][]{{3,4,5}}, new int[][]{{3,4,5,8}}));
        catDier.presets.add(new Preset("e diaeresis", "ë", new int[][]{{1,2,4,6}}, new int[][]{{1,2,4,6,8}}));
        catDier.presets.add(new Preset("i diaeresis", "ï", new int[][]{{1,2,4,5,6}}, new int[][]{{1,2,4,5,6,8}}));
        catDier.presets.add(new Preset("o diaeresis", "ö", new int[][]{{2,4,6}}, new int[][]{{2,4,6,8}}));
        catDier.presets.add(new Preset("u diaeresis", "ü", new int[][]{{1,2,5,6}}, new int[][]{{1,2,5,6,8}}));
        mPresetCategories.add(catDier);

        PresetCategory catPunc = new PresetCategory(getString(R.string.preset_cat_punc), "punctuation");
        catPunc.presets.add(new Preset("Full stop .", ".", new int[][]{{2,5,6}}, new int[][]{{3}}));
        catPunc.presets.add(new Preset("Comma ,", ",", new int[][]{{2}}));
        catPunc.presets.add(new Preset("Semicolon ;", ";", new int[][]{{2,3}}));
        catPunc.presets.add(new Preset("Colon :", ":", new int[][]{{2,5}}));
        catPunc.presets.add(new Preset("Question mark ?", "?", new int[][]{{2,6}}));
        catPunc.presets.add(new Preset("Exclamation !", "!", new int[][]{{2,3,5}}));
        catPunc.presets.add(new Preset("Apostrophe '", "'", new int[][]{{3}}, new int[][]{{6}}));
        catPunc.presets.add(new Preset("Quotes \"", "\"", new int[][]{{4}}, new int[][]{{4}}));
        catPunc.presets.add(new Preset("Open Quote “", "“", new int[][]{{6}, {2,3,6}}, new int[][]{{2,3,6}}));
        catPunc.presets.add(new Preset("Close Quote ”", "”", new int[][]{{6}, {3,5,6}}, new int[][]{{3,5,6}}));
        catPunc.presets.add(new Preset("Inv. Question ¿", "¿", new int[][]{{2,6}}, new int[][]{{3,8}}));
        catPunc.presets.add(new Preset("Inv. Excl. ¡", "¡", new int[][]{{2,3,5,6}}, new int[][]{{3,6,7}}));
        catPunc.presets.add(new Preset("Open Paren (", "(", new int[][]{{2,3,5,6}}, new int[][]{{2,3,6}}));
        catPunc.presets.add(new Preset("Close Paren )", ")", new int[][]{{2,3,5,6}}, new int[][]{{3,5,6}}));
        catPunc.presets.add(new Preset("Slash /", "/", new int[][]{{2,5,6}}, new int[][]{{2,5,6}}));
        catPunc.presets.add(new Preset("At sign @", "@", new int[][]{{4}, {1}}, new int[][]{{3,4,5}}));
        catPunc.presets.add(new Preset("Vertical bar |", "|", new int[][]{{4,5,6}}, new int[][]{{4,5,6}}));
        mPresetCategories.add(catPunc);

        PresetCategory catMath = new PresetCategory(getString(R.string.preset_cat_math), "math");
        catMath.presets.add(new Preset("Plus +", "+", new int[][]{{2,3,5}}, new int[][]{{2,3,5}}));
        catMath.presets.add(new Preset("Minus -", "-", new int[][]{{3,6}},   new int[][]{{3,6}}));
        catMath.presets.add(new Preset("Asterisk *", "*", new int[][]{{3,5}},   new int[][]{{3,5}}));
        catMath.presets.add(new Preset("Multiplication x", "×", new int[][]{{2,3,6}}, new int[][]{{2,3,4,6,8}}));
        catMath.presets.add(new Preset("Division /", "÷", new int[][]{{2,5,6}}, new int[][]{{1,2,5,6,7,8}}));
        catMath.presets.add(new Preset("Less than <", "<", new int[][]{{5,6}}, new int[][]{{5,6}}));
        catMath.presets.add(new Preset("Greater than >", ">", new int[][]{{4,5}}, new int[][]{{4,5}}));
        catMath.presets.add(new Preset("Caret ^", "^", new int[][]{{4,5}, {2,3,4,6}}, new int[][]{{2,3,4,6,7}}));
        catMath.presets.add(new Preset("Euro €", "€", new int[][]{{4}, {1,5}}, new int[][]{{4,5,7}}));
        catMath.presets.add(new Preset("Section §", "§", new int[][]{{4,5}, {1,2,3}}, new int[][]{{3,5,7}}));
        mPresetCategories.add(catMath);

        PresetCategory catControl = new PresetCategory("Segni di Controllo (6-pt)", "capsletter");
        catControl.presets.add(new Preset("Segnamaiuscola", "", new int[][]{{4,6}}));
        catControl.presets.add(new Preset("Inizio Parola Maiusc.", "", new int[][]{{4,6}, {4,6}}));
        catControl.presets.add(new Preset("Fine Parola Maiusc.", "", new int[][]{{4,6}, {3}}));
        catControl.presets.add(new Preset("Segnanumero", "", new int[][]{{3,4,5,6}}));
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
                    mMappings.add(new Mapping(cat.defaultOpcode, p.character, pPatterns));
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

    private void addOrUpdateMapping() {
        String opcode = OPCODES[mOpcodeSpinner.getSelectedItemPosition()];
        String character = mCharEdit.getText().toString();
        if (mCurrentPatterns.isEmpty()) { Toast.makeText(this, "Please add dots first", Toast.LENGTH_SHORT).show(); return; }
        
        for (int i = 0; i < mMappings.size(); i++) {
            if (i == mEditingIndex) continue;
            Mapping existing = mMappings.get(i);
            if (existing.patterns.equals(mCurrentPatterns)) {
                String existingChar = (existing.character == null || existing.character.isEmpty()) ? existing.opcode : existing.character;
                Toast.makeText(this, "Warning: Dots already used for '" + existingChar + "'", Toast.LENGTH_LONG).show();
                break;
            }
        }

        Mapping m = new Mapping(opcode, character, mCurrentPatterns);
        if (mEditingIndex != -1) { mMappings.set(mEditingIndex, m); mEditingIndex = -1; mAddMappingBtn.setText("Add mapping to list"); }
        else { mMappings.add(m); }
        refreshSpinner();
        mCharEdit.setText(""); mCurrentPatterns.clear(); updateDotsDisplay();
    }

    private void loadMapping(int index) {
        mEditingIndex = index;
        Mapping m = mMappings.get(index);
        for (int i=0; i<OPCODES.length; i++) if (OPCODES[i].equals(m.opcode)) { mOpcodeSpinner.setSelection(i); break; }
        mCharEdit.setText(m.character);
        mCurrentPatterns.clear(); mCurrentPatterns.addAll(m.patterns);
        updateDotsDisplay();
        mAddMappingBtn.setText("Update selected mapping");
    }

    private void deleteSelected() {
        int pos = mMappedItemsSpinner.getSelectedItemPosition();
        if (pos > 0) {
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
            StringBuilder sb = new StringBuilder(friendlyOp);
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
        GridLayout g = new GridLayout(this);
        g.setColumnCount(2);
        int[] order = (dotCount == 6) ? new int[]{1, 4, 2, 5, 3, 6} : new int[]{1, 4, 2, 5, 3, 6, 7, 8};
        CheckBox[] boxes = new CheckBox[dotCount];
        for (int i=0; i<dotCount; i++) {
            boxes[i] = new CheckBox(this);
            boxes[i].setText(String.format(getString(R.string.label_dot), order[i]));
            g.addView(boxes[i]);
        }
        b.setView(g);
        b.setPositiveButton("OK", (d, w) -> {
            int p = 0;
            for (int i=0; i<dotCount; i++) if (boxes[i].isChecked()) p |= (1 << (order[i]-1));
            if (p > 0) {
                if (!append) mCurrentPatterns.clear();
                mCurrentPatterns.add(p); updateDotsDisplay();
            }
        });
        b.setNegativeButton(R.string.btn_cancel, null);
        b.show();
    }

    private String patternToDotsString(int pattern) {
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<8; i++) if ((pattern & (1 << i)) != 0) sb.append(i + 1);
        return sb.toString();
    }

    private void saveTable() {
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, R.string.error_no_name, Toast.LENGTH_SHORT).show(); return; }
        if (!name.endsWith(".ctb")) name += ".ctb";

        StringBuilder sb = new StringBuilder("# Custom Table for Soft Braille Keyboard\n");
        String author = mAuthorEdit.getText().toString().trim();
        if (!author.isEmpty()) sb.append("# Author: ").append(author).append("\n");
        String desc = mDescriptionEdit.getText().toString().trim();
        if (!desc.isEmpty()) sb.append("# Description: ").append(desc).append("\n");
        sb.append("\ninclude unicode.dis\n");
        sb.append(mEightDotCheck.isChecked() ? "include latinLetterDef8Dots.uti\n" : "include latinLetterDef6Dots.uti\n");
        sb.append("space \\x0020 0\nspace \\x00a0 0\n");
        if (mInclude6DotDigits.isChecked()) sb.append("include digits6Dots.uti\n");
        if (mInclude8DotDigits.isChecked()) sb.append("include digits8Dots.uti\n");
        sb.append("include braille-patterns.cti\n\n# Custom Mappings\n");
        
        for (Mapping m : mMappings) {
            StringBuilder dots = new StringBuilder();
            for (int i=0; i<m.patterns.size(); i++) {
                if (i > 0) dots.append("-");
                dots.append(patternToDotsString(m.patterns.get(i)));
            }
            boolean stand = m.opcode.equals("numsign") || m.opcode.equals("capsletter") || m.opcode.startsWith("beg") || m.opcode.startsWith("end") || m.opcode.equals("space");
            if (stand) {
                sb.append(m.opcode).append(" ").append(dots).append("\n");
            } else {
                if (m.character == null || m.character.isEmpty()) continue;
                char c = m.character.charAt(0);
                sb.append(m.opcode).append(" ").append(String.format("\\x%04x", (int)c)).append(" ").append(dots).append("\n");
                if (!mEightDotCheck.isChecked() && m.opcode.equals("lowercase")) {
                    char upper = Character.toUpperCase(c);
                    if (upper != c) sb.append("base uppercase ").append(String.format("\\x%04x", (int)upper)).append(" ").append(String.format("\\x%04x", (int)c)).append("\n");
                }
            }
        }

        try {
            CustomTableManager manager = new CustomTableManager(this);
            File f = manager.getCustomTableFile(name);
            try (FileOutputStream fos = new FileOutputStream(f)) { fos.write(sb.toString().getBytes(StandardCharsets.UTF_8)); }
            Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
        } catch (Exception e) { Toast.makeText(this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show(); }
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

    private void exportTable() {
        String name = mTableNameEdit.getText().toString().trim();
        if (name.isEmpty()) { Toast.makeText(this, "Save the table first", Toast.LENGTH_SHORT).show(); return; }
        if (!name.endsWith(".ctb")) name += ".ctb";
        CustomTableManager manager = new CustomTableManager(this);
        File f = manager.getCustomTableFile(name);
        if (!f.exists()) { Toast.makeText(this, "File not found. Save it first.", Toast.LENGTH_SHORT).show(); return; }
        
        Toast.makeText(this, "Table exported to app private storage. Use 'Share' to send it to external folders.", Toast.LENGTH_LONG).show();
    }
}
