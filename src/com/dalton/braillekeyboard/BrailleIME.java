/*
 * Copyright (C) 2016 The Soft Braille Keyboard Authors
 *
 * Licensed under the Apache License, Version 2.0 (the \"License\");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an \"AS IS\" BASIS,
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
        mIsFinishing = false;
        // Successful retry configuration
        scheduleAccessibilityUpdate(5, 400);
    }

    private void scheduleAccessibilityUpdate(final int retriesLeft, long delay) {
        mAccessibilityHandler.removeCallbacksAndMessages(null);
        mAccessibilityHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (brailleView != null && brailleView.isShown() && brailleView.getWidth() > 0) {
                    updatePassthroughRegion();
                } 
                if (retriesLeft > 0 && !mIsFinishing) {
                    scheduleAccessibilityUpdate(retriesLeft - 1, 400);
                }
            }
        }, delay);
    }

    private void updatePassthroughRegion() {
        if (brailleView == null || !brailleView.isShown()) return;

        if (android.os.Build.VERSION.SDK_INT >= 30) {
            BrailleAccessibilityService accService = BrailleAccessibilityService.getInstance();
            if (accService != null) {
                if (brailleView.getShrinkKeyboard()) {
                    // MUST clear passthrough in shrink mode to allow focus navigation
                    android.util.Log.d("BrailleIME", "Shrink mode: clearing passthrough to unlock focus.");
                    accService.clearPassthroughRegion();
                    return;
                }
                
                int[] location = new int[2];
                brailleView.getLocationOnScreen(location);
                if (brailleView.getWidth() > 0 && brailleView.getHeight() > 0) {
                    try {
                        accService.updatePassthroughRegion(location[0], location[1],
                                brailleView.getWidth(), brailleView.getHeight());
                        
                        // Wake up Mu Launcher focus (Fix 1)
                        brailleView.sendAccessibilityEvent(android.view.accessibility.AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED);
                    } catch (Exception e) {
                        android.util.Log.e("BrailleIME", "Error updating passthrough", e);
                    }
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
        
        cells.clear();
        composingText.setLength(0);
        
        mAccessibilityHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                updateShiftState();
            }
        }, 50);
        
        if (!BrailleAccessibilityService.isServiceEnabled() && !BrailleAccessibilityService.isJieshuoActive(this)) {
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
    public void onStartInputView(EditorInfo info, boolean restarting) {
        super.onStartInputView(info, restarting);
        mIsFinishing = false;
        if (!restarting && brailleView != null) {
            brailleView.onInitialiseForInput(this, this);
        }
        brailleParser.setTranslator(this);
        scheduleAccessibilityUpdate(3, 400);
    }

    @Override
    public void onFinishInputView(boolean finishingInput) {
        super.onFinishInputView(finishingInput);
        if (brailleView != null) {
            brailleView.close();
        }
    }

    @Override
    public void onWindowHidden() {
        super.onWindowHidden();
        if (brailleView != null) {
            brailleView.sendAccessibilityEvent(android.view.accessibility.AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED);
        }
        mIsFinishing = true;
        mAccessibilityHandler.removeCallbacksAndMessages(null);
        clearAccessibilityState();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (brailleView != null) {
            brailleView.sendAccessibilityEvent(android.view.accessibility.AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED);
        }
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
        
        // Recuperiamo la posizione del cursore. Usiamo this.cursor se impostato da un gesto recente.
        int currentCursor = (this.cursor != -1) ? this.cursor : getCursor();
        int[] positions = getSelectionBoundaries(currentCursor);
        
        // Se non c'è una selezione valida, usciamo.
        if (positions == null || positions[0] == positions[1]) return false;

        int start = positions[0];
        int end = positions[1];

        // Reset dello stato interno prima dell'operazione asincrona
        mark = -1;
        selectAll = false;
        this.cursor = start; // Il cursore finale sarà all'inizio della zona eliminata

        // Utilizziamo un batch edit per garantire la sequenzialità dei comandi su Android
        ic.beginBatchEdit();
        try {
            finishComposingText(false);
            
            // 1. Spostiamo il cursore alla FINE della selezione.
            // Questo garantisce che la cancellazione avvenga "all'indietro" (before),
            // che è il metodo più supportato dalle app Android (rispetto alla cancellazione in avanti).
            ic.setSelection(end, end);
            
            // 2. Cancelliamo i caratteri tra l'inizio e la fine.
            ic.deleteSurroundingText(end - start, 0);
        } finally {
            ic.endBatchEdit();
        }
        return true;
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
        // Restituiamo il cursore solo se non c'è una selezione attiva (start == end)
        if (et != null && et.selectionStart == et.selectionEnd) {
            cursor = et.startOffset + et.selectionStart;
        } else {
            cursor = -1;
        }
        return cursor;
    }

    @Override
    public boolean deselect() {
        if (selectAll) return false;
        ExtractedText et = getAllText();
        if (et == null) return false;
        int end = et.startOffset + et.selectionEnd;
        return setSelection(end, end);
    }

    @Override
    public boolean setCursorToStartOfSelection() {
        int currentCursor = getCursor();
        if (currentCursor == -1 || mark == -1) {
            ExtractedText et = getAllText();
            if (et != null && mark != -1) {
                currentCursor = Math.min(et.startOffset + et.selectionStart, mark);
            } else {
                return false;
            }
        } else {
            currentCursor = Math.min(currentCursor, mark);
        }
        return setSelection(currentCursor, currentCursor);
    }

    @Override
    public boolean selectAll() {
        getCursor();
        ExtractedText text = getAllText();
        if (text != null) {
            mark = text.text.length();
            setSelection(0, mark);
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
            InputConnection ic = getCurrentInputConnection();
            String snapshot = "";
            if (ic != null) {
                CharSequence before = ic.getTextBeforeCursor(20, 0);
                if (before != null) snapshot = before.toString();
            }

            // If dots is 0 (space) or contains space-like behavior, finish composition
            if (dots == 0) {
                finishComposingText(true);
                return " ";
            }
            
            Locale locale = getLocale();
            boolean isEnglish = locale != null && locale.getLanguage().equals(Locale.ENGLISH.getLanguage());
            if (isEnglish && dots == 32 && cells.contains((byte) 60)) {
                finishComposingText(true);
            }
            String oldText = composingText.toString();
            setCells(dots);
            String text = brailleParser.backTranslate(this, cells.toArray(new Byte[cells.size()]));
            if (text != null) {
                text = compose(text.subSequence(0, text.length()), snapshot);
            } else {
                cells.remove(cells.size() - 1);
                return null;
            }
            return text != null ? stringDifference(oldText, text) : null;
        }
        return null;
    }

    private String compose(CharSequence text, String snapshot) {
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
                    String beforeStr = beforeCursor.toString();
                    if (composingText.length() > 0) {
                        if (beforeStr.length() > composingText.length()) {
                            prev = beforeStr;
                        }
                    } else if (snapshot.length() == 0 || !snapshot.endsWith(beforeStr)) {
                        prev = beforeStr;
                    }
                }
                int commonLen = 0;
                while (commonLen < prev.length() && commonLen < curr.length() && prev.charAt(commonLen) == curr.charAt(commonLen)) commonLen++;
                int deleteCount = prev.length() - commonLen;
                if (deleteCount > 0) {
                    ic.deleteSurroundingText(deleteCount, 0);
                }
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
        switch (keyCode) {
        case Keyboard.KEYCODE_DELETE: keyDownUp(ic, KeyEvent.KEYCODE_DEL); break;
        case Keyboard.KEYCODE_DONE:
        case '\n':
            keyDownUp(ic, KeyEvent.KEYCODE_ENTER);
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
        if (mark == -1) return null;
        
        ExtractedText text = getAllText();
        if (text == null || text.text == null) return null;

        int currentCursor = cursor;
        // Se c'è già una selezione (cursor == -1), recuperiamo la posizione reale da Android
        if (currentCursor == -1) {
            currentCursor = text.startOffset + text.selectionEnd;
        }
        
        // Calcoliamo la lunghezza totale disponibile nel buffer
        int bufferLength = text.startOffset + text.text.length();
        
        // Assicuriamoci che marcatore e cursore siano entro i limiti del documento
        int effectiveMark = Math.max(0, Math.min(mark, bufferLength));
        int effectiveCursor = Math.max(0, Math.min(currentCursor, bufferLength));

        int[] array = new int[2];
        array[0] = Math.min(effectiveCursor, effectiveMark);
        array[1] = Math.max(effectiveCursor, effectiveMark);
        
        // LOGICA ORIGINALE (Inclusiva): Aggiungiamo +1 alla fine della selezione
        // per includere il carattere su cui si trova il cursore.
        if (array[1] < bufferLength) {
            array[1]++;
        }
        
        return array;
    }

    @Override
    public EditingUtilities.Word handleBackspace() {
        if (cells.size() > 1) { // We have at least one character cell (index 0 is the space/null)
            int cursor = getCursor();
            String deletedChar = "";
            InputConnection ic = getCurrentInputConnection();
            CharSequence before = getTextBeforeCursor(1);
            if (before != null && before.length() > 0) {
                deletedChar = before.toString();
            }

            // Commit current composition to screen before moving cursor
            finishComposingText(true, false);

            // Remove the last cell
            cells.remove(cells.size() - 1);
            
            // Move cursor back directly via InputConnection to avoid calling 
            // the local setSelection() which would clear the cells buffer.
            if (ic != null && cursor > 0) {
                ic.setSelection(cursor - 1, cursor - 1);
                this.cursor = cursor - 1;
            }

            // Restore the composingText state for the remaining cells
            if (cells.size() > 1) {
                String text = brailleParser.backTranslate(this, cells.toArray(new Byte[cells.size()]));
                if (text != null) {
                    composingText.setLength(0);
                    composingText.append(text);
                }
            } else {
                composingText.setLength(0);
            }
            
            // Return a Word object so ActionHandler can announce it and handle deletion from editor
            EditingUtilities.Word word = new EditingUtilities.Word(deletedChar, 1, 0);
            word.moveLeft = true;
            return word;
        }
        return null;
    }

    @Override
    public void finishComposingText() { finishComposingText(true); }

    private void finishComposingText(boolean commit) {
        finishComposingText(commit, true);
    }

    private void finishComposingText(boolean commit, boolean clearCells) {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) { 
            composingText.setLength(0); 
            if (clearCells) cells.clear(); 
            return; 
        }
        if (composingText.length() > 0) {
            if (predictionOn && commit) ic.commitText(composingText, 1);
            composingText.setLength(0);
        }
        if (clearCells) cells.clear();
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
