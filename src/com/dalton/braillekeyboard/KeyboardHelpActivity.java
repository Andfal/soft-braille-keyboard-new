package com.dalton.braillekeyboard;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;
import androidx.preference.PreferenceManager;

import com.dalton.braillekeyboard.BrailleParser.BrailleType;
import com.googlecode.eyesfree.braille.service.translate.LibLouisWrapper;
import com.googlecode.eyesfree.braille.service.translate.TableList;
import com.googlecode.eyesfree.braille.translate.TranslationResult;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class KeyboardHelpActivity extends AppCompatActivity {
    private EditText mDotsInput;
    private Button mSearchButton;
    private TextView mActiveTableText;
    private ListView mResultsList;
    private BrailleParser mBrailleParser;
    private String mActiveTablePath;
    private final Handler mHandler = new Handler();
    private Runnable mDelayedSearch;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_keyboard_help);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle(R.string.keyboard_help_title);
        }

        mDotsInput = findViewById(R.id.dots_input);
        mSearchButton = findViewById(R.id.search_button);
        mActiveTableText = findViewById(R.id.active_table_text);
        mResultsList = findViewById(R.id.results_list);

        mBrailleParser = new BrailleParser(this, new BrailleParser.BrailleParserListener() {
            @Override
            public void onTranslatorReady(int status) {
                updateActiveTableInfo();
            }
        });

        mSearchButton.setOnClickListener(v -> executeSearchAction());

        mDotsInput.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence s, int start, int count, int after) {}
            @Override public void onTextChanged(CharSequence s, int start, int before, int count) {}
            @Override public void afterTextChanged(Editable s) {
                mHandler.removeCallbacks(mDelayedSearch);
                final String query = s.toString().trim();
                if (query.isEmpty()) { mResultsList.setAdapter(null); return; }
                long delay = query.matches("[1-8-]+") ? 150 : 500;
                mDelayedSearch = () -> performSmartSearch();
                mHandler.postDelayed(mDelayedSearch, delay);
            }
        });

        mDotsInput.setOnEditorActionListener((v, actionId, event) -> {
            executeSearchAction();
            return true;
        });
    }

    private void executeSearchAction() {
        hideKeyboard();
        mDotsInput.clearFocus();
        mHandler.removeCallbacks(mDelayedSearch);
        performSmartSearch();
    }

    private void hideKeyboard() {
        InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (imm != null) imm.hideSoftInputFromWindow(mDotsInput.getWindowToken(), 0);
    }

    private void updateActiveTableInfo() {
        Context storageContext = getApplicationContext();
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            storageContext = createDeviceProtectedStorageContext();
        }

        SharedPreferences prefs = Options.getSharedPreferences(storageContext);
        String brailleTypeStr = prefs.getString(getString(R.string.pref_braille_type_key), "0");
        BrailleType type = brailleTypeStr.equals("8") ? BrailleType.COMPUTER : BrailleType.LITERARY;
        String tableKey = (type == BrailleType.COMPUTER) ? getString(R.string.pref_braille_computer_table_key) : getString(R.string.pref_braille_literary_table_key);

        String tableId = prefs.getString(tableKey, "");
        if (tableId.isEmpty() || tableId.equals(getString(R.string.pref_braille_table_auto))) {
            tableId = mBrailleParser.getDefaultId(this, type);
        }

        TableList tableList = new TableList(this);
        String fileName = tableList.getFileName(tableId);
        
        if (fileName != null) {
            File baseDir = getDir("translator", MODE_PRIVATE);
            File tablesDir = new File(baseDir, "liblouis/tables");
            File tableFile = new File(tablesDir, fileName);
            mActiveTablePath = tableFile.getAbsolutePath();
            mActiveTableText.setText(getString(R.string.keyboard_help_active_table_label, fileName));
        } else {
            mActiveTableText.setText(R.string.keyboard_help_error_no_table);
        }
    }

    private void performSmartSearch() {
        updateActiveTableInfo();
        final String query = mDotsInput.getText().toString().trim();
        if (query.isEmpty()) return;
        if (mActiveTablePath == null || !new File(mActiveTablePath).exists()) {
            Toast.makeText(this, R.string.keyboard_help_file_not_available, Toast.LENGTH_SHORT).show();
            return;
        }

        if (query.matches("[1-8-]+")) performDotsSearch(query);
        else performCharacterSearch(query);
    }

    private void performDotsSearch(String dots) {
        BrailleRuleSearcher searcher = new BrailleRuleSearcher();
        List<BrailleRuleSearcher.BrailleRule> rules = searcher.search(dots, mActiveTablePath);
        updateListViewWithRules(rules, dots);
    }

    private void performCharacterSearch(String text) {
        TranslationResult result = LibLouisWrapper.translate(text, mActiveTablePath, -1, false);
        if (result == null || result.getCells() == null || result.getCells().length == 0) return;
        byte[] cells = result.getCells();
        StringBuilder dotsBuilder = new StringBuilder();
        for (int i = 0; i < cells.length; i++) {
            if (i > 0) dotsBuilder.append("-");
            dotsBuilder.append(byteToDots(cells[i]));
        }
        String dotsResult = dotsBuilder.toString();
        List<BrailleRuleSearcher.BrailleRule> displayList = new ArrayList<>();
        displayList.add(new BrailleRuleSearcher.BrailleRule("", 0, "", "REVERSE", "help_desc_default"));
        BrailleRuleSearcher searcher = new BrailleRuleSearcher();
        displayList.addAll(searcher.search(dotsResult, mActiveTablePath));
        updateListViewWithCharacterResult(displayList, text, dotsResult);
    }

    private String byteToDots(byte cell) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 8; i++) if ((cell & (1 << i)) != 0) sb.append(i + 1);
        return sb.length() == 0 ? "0" : sb.toString();
    }

    private void updateListViewWithRules(List<BrailleRuleSearcher.BrailleRule> rules, final String query) {
        ArrayAdapter<BrailleRuleSearcher.BrailleRule> adapter = new ArrayAdapter<BrailleRuleSearcher.BrailleRule>(
                this, android.R.layout.simple_list_item_2, android.R.id.text1, rules) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                View view = super.getView(position, convertView, parent);
                TextView text1 = view.findViewById(android.R.id.text1);
                TextView text2 = view.findViewById(android.R.id.text2);
                BrailleRuleSearcher.BrailleRule rule = getItem(position);
                int resId = getContext().getResources().getIdentifier(rule.resourceKey, "string", getContext().getPackageName());
                text1.setText((resId != 0) ? getContext().getString(resId, query) : rule.content);
                text2.setText("[" + rule.type + "] " + rule.fileName + " (Line " + rule.lineNumber + ")\n" + rule.content);
                return view;
            }
        };
        mResultsList.setAdapter(adapter);
    }

    private void updateListViewWithCharacterResult(List<BrailleRuleSearcher.BrailleRule> items, final String charQuery, final String dotsResult) {
        ArrayAdapter<BrailleRuleSearcher.BrailleRule> adapter = new ArrayAdapter<BrailleRuleSearcher.BrailleRule>(
                this, android.R.layout.simple_list_item_2, android.R.id.text1, items) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                View view = super.getView(position, convertView, parent);
                TextView text1 = view.findViewById(android.R.id.text1);
                TextView text2 = view.findViewById(android.R.id.text2);
                BrailleRuleSearcher.BrailleRule item = getItem(position);
                if (item.type.equals("REVERSE")) {
                    text1.setText(getContext().getString(R.string.keyboard_help_how_to_write_title, charQuery));
                    text1.setTextColor(android.graphics.Color.BLUE);
                    text2.setText(getContext().getString(R.string.keyboard_help_dots_result, dotsResult));
                    text2.setTextSize(18f);
                    text2.setTypeface(null, android.graphics.Typeface.BOLD);
                } else {
                    int resId = getContext().getResources().getIdentifier(item.resourceKey, "string", getContext().getPackageName());
                    text1.setText((resId != 0) ? getContext().getString(resId, dotsResult) : item.content);
                    text1.setTextColor(android.graphics.Color.BLACK);
                    text2.setText("[" + item.type + "] " + item.fileName + " (Line " + item.lineNumber + ")");
                    text2.setTextSize(14f);
                    text2.setTypeface(null, android.graphics.Typeface.NORMAL);
                }
                return view;
            }
        };
        mResultsList.setAdapter(adapter);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mBrailleParser != null) mBrailleParser.destroy();
    }
}
