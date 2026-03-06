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
import java.util.List;
import java.util.Locale;

import android.Manifest;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.inputmethodservice.InputMethodService;
import android.inputmethodservice.Keyboard;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.ContextCompat;
import android.text.InputType;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;

import com.googlecode.eyesfree.braille.translate.TableInfo;

/**
 * Implementation of an Input method service for Android.
 */
public class BrailleIME extends InputMethodService implements KeyboardListener {
    private final List<Byte> cells = new ArrayList<Byte>();
    private final StringBuilder composingText = new StringBuilder();
    private final Handler mAccessibilityHandler = new Handler(Looper.getMainLooper());

    private BrailleParser brailleParser;
    private BrailleView brailleView = null;
    private int caps;
    private int cursor = -1;
    private int mark = -1;
    private boolean predictionOn;
    private boolean selectAll = false;
    private boolean mIsFinishing = false;

    private final View.OnLayoutChangeListener mLayoutChangeListener = new View.OnLayoutChangeListener() {
        @Override
        public void onLayoutChange(View v, int left, int top, int right, int bottom,
                                   int oldLeft, int oldTop, int oldRight, int oldBottom) {
            if (left != oldLeft || top != oldTop || right != oldRight || bottom != oldBottom) {
                updatePassthroughRegion();
            }
        }
    };

    @Override
    public void onCreate() {
        super.onCreate();
        if (brailleParser == null) {
            brailleParser = new BrailleParser(this,
                    new BrailleParser.BrailleParserListener() {
                        @Override
                        public void onTranslatorReady(int status) {
                            brailleParserReady(status);
                        }
                    });
        }
    }

    @Override
    public void onWindowShown() {
        super.onWindowShown();
        startAccessibilityTimer();
    }

    @Override
    public void onStartInputView(EditorInfo info, boolean restarting) {
        super.onStartInputView(info, restarting);
        if (!restarting && brailleView != null) {
            brailleView.onInitialiseForInput(this, this);
        }
        brailleParser.setTranslator(this);
        startAccessibilityTimer();
    }

    private void startAccessibilityTimer() {
        // Use 500ms globally for maximum safety margin.
        // This ensures TalkBack always latches correctly onto the window.
        long delay = 500;
        scheduleAccessibilityUpdate(3, delay);
    }

    private void scheduleAccessibilityUpdate(final int retriesLeft, long delay) {
        mAccessibilityHandler.removeCallbacksAndMessages(null);
        mAccessibilityHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (brailleView != null && brailleView.isShown() && brailleView.getWidth() > 0) {
                    updatePassthroughRegion();
                } else if (retriesLeft > 0 && isInputViewShown()) {
                    scheduleAccessibilityUpdate(retriesLeft - 1, 300);
                }
            }
        }, delay);
    }

    private void updatePassthroughRegion() {
        if (!isInputViewShown() || brailleView == null || mIsFinishing) return;

        if (android.os.Build.VERSION.SDK_INT >= 30) {
            BrailleAccessibilityService accService = BrailleAccessibilityService.getInstance();
            if (accService != null) {
                if (brailleView.getShrinkKeyboard()) {
                    accService.clearPassthroughRegion();
                    return;
                }
                int[] location = new int[2];
                brailleView.getLocationOnScreen(location);
                if (brailleView.getWidth() > 0 && brailleView.getHeight() > 0) {
                    accService.updatePassthroughRegion(location[0], location[1],
                            brailleView.getWidth(), brailleView.getHeight());
                }
            }
        }
    }

    @Override
    public View onCreateInputView() {
        super.onCreateInputView();
        brailleView = (BrailleView) getLayoutInflater().inflate(R.layout.keyboard, null);
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            brailleView.removeOnLayoutChangeListener(mLayoutChangeListener);
            brailleView.addOnLayoutChangeListener(mLayoutChangeListener);
        }
        return brailleView;
    }

    @Override
    public void onStartInput(EditorInfo info, boolean restarting) {
        super.onStartInput(info, restarting);
        mIsFinishing = false;
        selectAll = false;
        mark = -1;
        predictionOn = false;
        
        // Clean buffers to prevent text leaking between fields
        cells.clear();
        composingText.setLength(0);
        
        // Refresh caps mode with delay to allow editor stabilization
        mAccessibilityHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                updateShiftState();
            }
        }, 50);
        
        if (!BrailleAccessibilityService.isServiceEnabled()) {
            boolean hasAskedAcc = Options.getBooleanPreference(this, R.string.pref_has_asked_accessibility_service_key, false);
            if (!hasAskedAcc) {
                Intent intent = new Intent(this, IntentActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.setAction("com.dalton.braillekeyboard.ACTION_ENABLE_ACCESSIBILITY");
                startActivity(intent);
                Options.switchBooleanPreference(this, R.string.pref_has_asked_accessibility_service_key, false);
                return;
            }
        }

        if (!Options.getBooleanPreference(this, R.string.pref_has_asked_record_audio_key, false)) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                Intent intent = new Intent(this, IntentActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intent.setAction(getString(R.string.action_record_audio_permission));
                startActivity(intent);
            }
            Options.switchBooleanPreference(this, R.string.pref_has_asked_record_audio_key, false);
        }
    }

    @Override
    public void onFinishInputView(boolean finishingInput) {
        super.onFinishInputView(finishingInput);
        // Clear timers, but keep the view alive for rapid restarts (WhatsApp)
        mAccessibilityHandler.removeCallbacksAndMessages(null);
    }

    @Override
    public void onWindowHidden() {
        super.onWindowHidden();
        mIsFinishing = true;
        mAccessibilityHandler.removeCallbacksAndMessages(null);
        
        if (brailleView != null) {
            // Real cleanup only when the keyboard window disappears
            if (android.os.Build.VERSION.SDK_INT >= 16) {
                brailleView.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);
            }
            brailleView.close();
        }
        clearAccessibilityState();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        mIsFinishing = true;
        mAccessibilityHandler.removeCallbacksAndMessages(null);
        if (brailleParser != null) {
            brailleParser.destroy();
            brailleParser = null;
        }
        clearAccessibilityState();
    }

    private void clearAccessibilityState() {
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            BrailleAccessibilityService accService = BrailleAccessibilityService.getInstance();
            if (accService != null) {
                accService.clearPassthroughRegion();
            }
        }
    }

    @Override
    public void onComputeInsets(Insets outInsets) {
        super.onComputeInsets(outInsets);
        if (brailleView != null && brailleView.getShrinkKeyboard()) {
            outInsets.contentTopInsets = brailleView.getTop();
            outInsets.visibleTopInsets = brailleView.getTop();
            outInsets.touchableInsets = Insets.TOUCHABLE_INSETS_VISIBLE;
        }
    }

    @Override
    public boolean onEvaluateFullscreenMode() {
        return brailleView != null ? !brailleView.getShrinkKeyboard() : false;
    }

    private void brailleParserReady(int status) {
        if (status == BrailleParser.STATUS_OK && brailleView != null) {
            brailleView.setLocale(getLocale());
        }
    }

    @Override
    public ExtractedText getAllText() {
        InputConnection ic = getCurrentInputConnection();
        return ic != null ? ic.getExtractedText(new ExtractedTextRequest(), 0) : null;
    }

    @Override
    public CharSequence getTextBeforeCursor(int n) {
        InputConnection ic = getCurrentInputConnection();
        return ic != null ? ic.getTextBeforeCursor(n, 0) : null;
    }

    @Override
    public CharSequence getTextAfterCursor(int n) {
        InputConnection ic = getCurrentInputConnection();
        return ic != null ? ic.getTextAfterCursor(n, 0) : null;
    }

    @Override
    public CharSequence getSelectedText(int flags) {
        InputConnection ic = getCurrentInputConnection();
        return ic != null ? ic.getSelectedText(flags) : null;
    }

    @Override
    public boolean setSelection() {
        int cursor = !selectAll ? getCursor() : 0;
        int[] positions = getSelectionBoundaries(cursor);
        return mark >= 0 && positions != null ? setSelection(positions[0], positions[1]) : false;
    }

    @Override
    public boolean setSelection(int cursor) {
        if (selectAll) { toggleMark(); selectAll = false; }
        finishComposingText();
        this.cursor = cursor;
        return setSelection(cursor, cursor);
    }

    private boolean setSelection(int start, int end) {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return false;
        finishComposingText();
        return ic.setSelection(start, end);
    }

    @Override
    public boolean performContextMenuAction(int id) {
        InputConnection ic = getCurrentInputConnection();
        return ic != null ? ic.performContextMenuAction(id) : false;
    }

    @Override
    public boolean deleteSurroundingText(int before, int after) {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return false;
        selectAll = false;
        return ic.deleteSurroundingText(before, after);
    }

    @Override
    public boolean deleteSelection() {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return false;
        int cursor = !selectAll ? getCursor() : 0;
        int[] positions = getSelectionBoundaries(cursor);
        if (positions == null) return false;
        setSelection(positions[1], positions[1]);
        return ic.deleteSurroundingText(positions[1] - positions[0], 0);
    }

    @Override
    public boolean toggleMark() {
        int cursor = getCursor();
        if (cursor == mark || selectAll) {
            mark = -1;
            selectAll = false;
        } else {
            mark = cursor;
        }
        return mark != -1;
    }

    @Override
    public int getCursor() {
        ExtractedText et = getAllText();
        if (et != null && et.startOffset + et.selectionStart == et.startOffset + et.selectionEnd) {
            cursor = et.startOffset + et.selectionStart;
        } else {
            cursor = -1;
        }
        return cursor;
    }

    @Override
    public boolean deselect() {
        if (selectAll) return false;
        int cursor = getCursor();
        return setSelection(cursor, cursor);
    }

    @Override
    public boolean setCursorToStartOfSelection() {
        cursor = Math.min(getCursor(), mark);
        return setSelection(cursor, cursor);
    }

    @Override
    public boolean selectAll() {
        getCursor();
        ExtractedText text = getAllText();
        if (text != null) {
            mark = text.text.length();
            setSelection(0, mark + 1);
            selectAll = true;
        }
        return selectAll;
    }

    @Override
    public boolean isSelectAll() { return selectAll; }

    @Override
    public Locale getLocale() {
        if (brailleParser != null) {
            TableInfo table = brailleParser.getTable(this);
            return table != null ? table.getLocale() : null;
        }
        return null;
    }

    @Override
    public int getDots() {
        return brailleParser != null ? brailleParser.getBrailleType(this).dots : -1;
    }

    @Override
    public String handleTypedCharacter(byte dots) {
        if (brailleParser != null) {
            Locale locale = getLocale();
            boolean isEnglish = locale != null && locale.getLanguage().equals(Locale.ENGLISH.getLanguage());
            if (isEnglish && dots == 32 && cells.contains((byte) 60)) {
                finishComposingText(true);
            }
            String oldText = composingText.toString();
            setCells(dots);
            String text = brailleParser.backTranslate(this, cells.toArray(new Byte[cells.size()]));
            if (text != null) {
                text = compose(text.subSequence(0, text.length()));
            } else {
                cells.remove(cells.size() - 1);
                return null;
            }
            return text != null ? stringDifference(oldText, text) : null;
        }
        return null;
    }

    private String compose(CharSequence text) {
        if (composingText.length() == 0) updateShiftState();
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return text.toString();
        if (selectAll) { toggleMark(); selectAll = false; }
        text = capitalise(text);
        ic.beginBatchEdit();
        try {
            if (predictionOn) {
                composingText.setLength(0);
                composingText.append(text);
                ic.setComposingText(composingText.toString(), composingText.length());
            } else if (text.length() > 0) {
                String prev = composingText.toString();
                String curr = text.toString();
                CharSequence beforeCursor = ic.getTextBeforeCursor(curr.length(), 0);
                if (beforeCursor != null && beforeCursor.length() > 0 && curr.startsWith(beforeCursor.toString())) {
                    prev = beforeCursor.toString();
                }
                int commonLen = 0;
                while (commonLen < prev.length() && commonLen < curr.length() && prev.charAt(commonLen) == curr.charAt(commonLen)) commonLen++;
                int deleteCount = prev.length() - commonLen;
                if (deleteCount > 0) for (int i = 0; i < deleteCount; i++) keyDownUp(ic, KeyEvent.KEYCODE_DEL);
                if (commonLen < curr.length()) {
                    CharSequence appendText = curr.subSequence(commonLen, curr.length());
                    ic.commitText(appendText, 1);
                }
                composingText.setLength(0);
                composingText.append(text);
            }
        } finally { ic.endBatchEdit(); }
        return text.toString();
    }

    private CharSequence capitalise(CharSequence text) {
        if (Options.getBooleanPreference(this, R.string.pref_auto_caps_key, Boolean.parseBoolean(getString(R.string.pref_auto_caps_default)))) {
            if (caps != 0 && text != null && text.length() > 0) {
                text = String.valueOf(Character.toUpperCase(text.charAt(0))) + text.subSequence(1, text.length());
            }
        }
        return text;
    }

    @Override
    public void onKey(int keyCode) {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return;
        if (selectAll) { toggleMark(); selectAll = false; }
        finishComposingText();
        
        EditorInfo info = getCurrentInputEditorInfo();
        
        switch (keyCode) {
        case Keyboard.KEYCODE_DELETE: keyDownUp(ic, KeyEvent.KEYCODE_DEL); break;
        case Keyboard.KEYCODE_DONE:
        case '\n':
            // Robust Enter: Use Editor Action if available (GBoard style)
            if (info != null && (info.imeOptions & EditorInfo.IME_MASK_ACTION) != EditorInfo.IME_ACTION_NONE) {
                ic.performEditorAction(info.imeOptions & EditorInfo.IME_MASK_ACTION);
            } else {
                keyDownUp(ic, KeyEvent.KEYCODE_ENTER);
            }
            break;
        default:
            if (keyCode >= '0' && keyCode <= '9') keyDownUp(ic, keyCode - '0' + KeyEvent.KEYCODE_0);
            else ic.commitText(String.valueOf((char) keyCode), 1);
            break;
        }
    }

    private void keyDownUp(InputConnection ic, int keyEventCode) {
        if (ic == null) return;
        ic.sendKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN, keyEventCode));
        ic.sendKeyEvent(new KeyEvent(KeyEvent.ACTION_UP, keyEventCode));
    }

    private int[] getSelectionBoundaries(int cursor) {
        int[] array = null;
        ExtractedText text = getAllText();
        if (text != null && text.text != null) {
            mark = mark > text.text.length() ? text.text.length() : mark;
            array = new int[2];
            array[0] = Math.min(cursor, mark);
            array[1] = Math.max(cursor, mark);
            array[1] = array[1] < text.text.length() ? array[1] + 1 : array[1];
        }
        return array;
    }

    @Override
    public void finishComposingText() { finishComposingText(true); }

    private void finishComposingText(boolean commit) {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) { composingText.setLength(0); cells.clear(); return; }
        if (composingText.length() > 0) {
            if (predictionOn && commit) ic.commitText(composingText, 1);
            composingText.setLength(0);
        }
        cells.clear();
    }

    private void setCells(byte dots) {
        if (cells.size() == 0) cells.add((byte) 0);
        cells.add(dots);
    }

    private static String stringDifference(String str1, String str2) {
        int i = -1;
        while (++i < Math.min(str1.length(), str2.length()) && Character.toLowerCase(str1.charAt(i)) == Character.toLowerCase(str2.charAt(i))) ;
        return i >= str2.length() ? str2 : str2.substring(i, str2.length());
    }

    private void updateShiftState() {
        caps = 0;
        EditorInfo info = getCurrentInputEditorInfo();
        InputConnection ic = getCurrentInputConnection();
        if (info != null && info.inputType != InputType.TYPE_NULL && ic != null) {
            caps = ic.getCursorCapsMode(info.inputType);
        }
    }

    @Override
    public void commitText(String text, int newCursorPosition) {
        finishComposingText();
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) return;
        if (selectAll) { toggleMark(); selectAll = false; }
        updateShiftState();
        text = capitalise(text.subSequence(0, text.length())).toString();
        ic.commitText(text, newCursorPosition);
    }

    @Override public void closeKeyboard() { requestHideSelf(0); }

    @Override
    public String translateOnly(byte dots) {
        if (brailleParser != null) {
            List<Byte> localCells = new ArrayList<Byte>();
            localCells.add((byte) 0);
            localCells.add(dots);
            return brailleParser.backTranslate(this, localCells.toArray(new Byte[localCells.size()]));
        }
        return null;
    }

    @Override
    public boolean isPasswordField() {
        EditorInfo info = getCurrentInputEditorInfo();
        if (info == null) return false;
        int inputType = info.inputType;
        return (inputType & InputType.TYPE_TEXT_VARIATION_PASSWORD) != 0 || (inputType & InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD) != 0 || (inputType & InputType.TYPE_TEXT_VARIATION_WEB_PASSWORD) != 0;
    }

    @Override public int switchBrailleType() { return brailleParser != null ? brailleParser.switchBrailleType(this).dots : -1; }
    @Override public String switchTable() { return brailleParser != null ? brailleParser.switchTable(this) : null; }
}
