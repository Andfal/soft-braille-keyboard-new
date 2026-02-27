package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
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

public class TableCreatorActivity extends Activity {
    private static final String TAG = "TableCreatorActivity";
    
    private EditText mTableNameEdit;
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

    // PROFESSIONAL LIBLOUIS OPCODES
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
        String label; String character; int[][] cells;
        Preset(String l, String c, int[][] d) { label = l; character = c; cells = d; }
        @Override public String toString() { return label + " (" + character + ")"; }
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

        mEightDotCheck = new CheckBox(this);
        mEightDotCheck.setText(R.string.label_use_8_dots);
        root.addView(mEightDotCheck);

        mInclude6DotDigits = new CheckBox(this);
        mInclude6DotDigits.setText("Include 6-dot numbers (A-J)");
        root.addView(mInclude6DotDigits);

        mInclude8DotDigits = new CheckBox(this);
        mInclude8DotDigits.setText("Include 8-dot numbers (Computer)");
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

        setContentView(scroll);
    }

    private void initPresets() {
        PresetCategory catIt = new PresetCategory(getString(R.string.preset_cat_it_accents), "lowercase");
        catIt.presets.add(new Preset("a grave", "à", new int[][]{{1,2,3,5,6}}));
        catIt.presets.add(new Preset("e grave", "è", new int[][]{{2,3,4,6}}));
        catIt.presets.add(new Preset("e acute", "é", new int[][]{{1,2,3,4,5,6}}));
        catIt.presets.add(new Preset("i grave", "ì", new int[][]{{3,4}}));
        catIt.presets.add(new Preset("o grave", "ò", new int[][]{{3,4,6}}));
        catIt.presets.add(new Preset("u grave", "ù", new int[][]{{2,3,4,5,6}}));
        mPresetCategories.add(catIt);

        PresetCategory catAcute = new PresetCategory(getString(R.string.preset_cat_acute), "lowercase");
        catAcute.presets.add(new Preset("a acute", "á", new int[][]{{1,2,3,5,6}}));
        catAcute.presets.add(new Preset("i acute", "í", new int[][]{{3,4}}));
        catAcute.presets.add(new Preset("o acute", "ó", new int[][]{{3,4,6}}));
        catAcute.presets.add(new Preset("u acute", "ú", new int[][]{{2,3,4,5,6}}));
        catAcute.presets.add(new Preset("n tilde (ñ)", "ñ", new int[][]{{1,2,4,5,6}}));
        mPresetCategories.add(catAcute);

        PresetCategory catCirc = new PresetCategory(getString(R.string.preset_cat_circ), "lowercase");
        catCirc.presets.add(new Preset("a circumflex", "â", new int[][]{{1,6}}));
        catCirc.presets.add(new Preset("e circumflex", "ê", new int[][]{{1,2,6}}));
        catCirc.presets.add(new Preset("oe ligature (œ)", "œ", new int[][]{{2,4,6}}));
        catCirc.presets.add(new Preset("i circumflex", "î", new int[][]{{1,4,6}}));
        catCirc.presets.add(new Preset("o circumflex", "ô", new int[][]{{1,4,5,6}}));
        catCirc.presets.add(new Preset("u circumflex", "û", new int[][]{{1,5,6}}));
        mPresetCategories.add(catCirc);

        PresetCategory catDier = new PresetCategory(getString(R.string.preset_cat_dier), "lowercase");
        catDier.presets.add(new Preset("a diaeresis", "ä", new int[][]{{3,4,5}}));
        catDier.presets.add(new Preset("e diaeresis", "ë", new int[][]{{1,2,4,6}}));
        catDier.presets.add(new Preset("i diaeresis", "ï", new int[][]{{1,2,4,5,6}}));
        catDier.presets.add(new Preset("o diaeresis", "ö", new int[][]{{2,4,6}}));
        catDier.presets.add(new Preset("u diaeresis", "ü", new int[][]{{1,2,5,6}}));
        mPresetCategories.add(catDier);

        PresetCategory catPunc = new PresetCategory(getString(R.string.preset_cat_punc), "punctuation");
        catPunc.presets.add(new Preset("Full stop .", ".", new int[][]{{2,5,6}}));
        catPunc.presets.add(new Preset("Comma ,", ",", new int[][]{{2}}));
        catPunc.presets.add(new Preset("Semicolon ;", ";", new int[][]{{2,3}}));
        catPunc.presets.add(new Preset("Colon :", ":", new int[][]{{2,5}}));
        catPunc.presets.add(new Preset("Question mark ?", "?", new int[][]{{2,6}}));
        catPunc.presets.add(new Preset("Exclamation !", "!", new int[][]{{2,3,5}}));
        catPunc.presets.add(new Preset("Apostrophe '", "'", new int[][]{{3}}));
        catPunc.presets.add(new Preset("Inv. Question ¿", "¿", new int[][]{{2,6}}));
        catPunc.presets.add(new Preset("Inv. Excl. ¡", "¡", new int[][]{{2,3,5,6}}));
        catPunc.presets.add(new Preset("Open Paren (", "(", new int[][]{{2,3,5,6}}));
        catPunc.presets.add(new Preset("Close Paren )", ")", new int[][]{{2,3,5,6}}));
        catPunc.presets.add(new Preset("Slash /", "/", new int[][]{{2,5,6}}));
        catPunc.presets.add(new Preset("At sign @", "@", new int[][]{{4}, {1}}));
        mPresetCategories.add(catPunc);
        
        PresetCategory catMath = new PresetCategory(getString(R.string.preset_cat_math), "math");
        catMath.presets.add(new Preset("Plus +", "+", new int[][]{{2,3,5}}));
        catMath.presets.add(new Preset("Minus -", "-", new int[][]{{3,6}}));
        catMath.presets.add(new Preset("Asterisk *", "*", new int[][]{{3,5}}));
        catMath.presets.add(new Preset("Equals =", "=", new int[][]{{2,3,5,6}}));
        catMath.presets.add(new Preset("Euro €", "€", new int[][]{{4}, {1,5}}));
        catMath.presets.add(new Preset("Section §", "§", new int[][]{{4,5}, {1,2,3}}));
        mPresetCategories.add(catMath);
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
        AlertDialog.Builder b = new AlertDialog.Builder(this);
        b.setTitle(cat.name);
        String[] items = new String[cat.presets.size()];
        for (int i=0; i<cat.presets.size(); i++) items[i] = cat.presets.get(i).toString();
        
        b.setItems(items, (d, w) -> {
            final Preset p = cat.presets.get(w);
            
            final List<Integer> pPatterns = new ArrayList<>();
            for (int[] cellDots : p.cells) {
                int pattern = 0;
                for (int dot : cellDots) pattern |= (1 << (dot-1));
                pPatterns.add(pattern);
            }

            AlertDialog.Builder choice = new AlertDialog.Builder(TableCreatorActivity.this);
            choice.setTitle("Add " + p.character + "?");
            choice.setMessage("Dots: " + patternsToString(pPatterns));
            choice.setPositiveButton("Add Directly", (d2, w2) -> {
                mMappings.add(new Mapping(cat.defaultOpcode, p.character, pPatterns));
                refreshSpinner();
                Toast.makeText(TableCreatorActivity.this, "Added: " + p.label, Toast.LENGTH_SHORT).show();
            });
            choice.setNeutralButton("Edit Dots", (d2, w2) -> {
                mCharEdit.setText(p.character);
                mCurrentPatterns.clear();
                mCurrentPatterns.addAll(pPatterns);
                for (int i=0; i<OPCODES.length; i++) {
                    if (OPCODES[i].equals(cat.defaultOpcode)) {
                        mOpcodeSpinner.setSelection(i);
                        break;
                    }
                }
                updateDotsDisplay();
            });
            choice.show();
        });
        b.show();
    }

    private String patternsToString(List<Integer> patterns) {
        StringBuilder sb = new StringBuilder();
        for (int i=0; i<patterns.size(); i++) {
            if (i > 0) sb.append("-");
            sb.append(patternToDotsString(patterns.get(i)));
        }
        return sb.toString();
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
            StringBuilder sb = new StringBuilder(m.opcode);
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

        StringBuilder sb = new StringBuilder("# Custom Table for Soft Braille Keyboard\n\n");
        
        // 1. START: Visual mapping and basic character attributes
        sb.append("include unicode.dis\n");
        sb.append(mEightDotCheck.isChecked() ? "include latinLetterDef8Dots.uti\n" : "include latinLetterDef6Dots.uti\n");
        
        // Basic definitions to avoid "undefined" errors
        sb.append("\n# Base definitions\n");
        sb.append("space \\x0020 0\n");
        sb.append("space \\x00a0 0\n");
        
        // 2. MIDDLE: System fallbacks
        if (mInclude6DotDigits.isChecked()) sb.append("include litdigits6Dots.uti\n");
        if (mInclude8DotDigits.isChecked()) sb.append("include digits8Dots.uti\n\n");

        // 3. CLOSURE: Fallback visual patterns
        sb.append("\n# Final fallback visual patterns\n");
        sb.append("include braille-patterns.cti\n\n");

        // 4. ABSOLUTE FINAL: Custom rules (Highest priority override - European Style)
        sb.append("# Custom Mappings (User Overrides)\n");
        for (Mapping m : mMappings) {
            StringBuilder dots = new StringBuilder();
            for (int i=0; i<m.patterns.size(); i++) {
                if (i > 0) dots.append("-");
                dots.append(patternToDotsString(m.patterns.get(i)));
            }
            boolean stand = m.opcode.equals("numsign") || m.opcode.equals("capsletter") || 
                             m.opcode.startsWith("beg") || m.opcode.startsWith("end") || 
                             m.opcode.equals("space");
            if (stand) {
                sb.append(m.opcode).append(" ").append(dots).append("\n");
            } else {
                if (m.character == null || m.character.isEmpty()) continue;
                // Use \xXXXX format (Liblouis standard) and the specific opcode chosen (like lowercase, punctuation)
                sb.append(m.opcode).append(" ").append(String.format("\\x%04x", (int)m.character.charAt(0))).append(" ").append(dots).append("\n");
            }
        }

        try {
            CustomTableManager manager = new CustomTableManager(this);
            File dir = manager.getCustomDir();
            if (!dir.exists()) dir.mkdirs();
            File f = manager.getCustomTableFile(name);
            Log.i(TAG, "Saving European-style table to: " + f.getAbsolutePath());
            
            try (FileOutputStream fos = new FileOutputStream(f)) { 
                fos.write(sb.toString().getBytes(StandardCharsets.UTF_8)); 
                fos.flush();
            }
            
            if (f.exists()) {
                Toast.makeText(this, R.string.msg_table_saved, Toast.LENGTH_SHORT).show();
                finish();
            }
        } catch (Exception e) { 
            Log.e(TAG, "Failed to save table", e);
            Toast.makeText(this, "Error: " + e.getMessage(), Toast.LENGTH_SHORT).show(); 
        }
    }
}
