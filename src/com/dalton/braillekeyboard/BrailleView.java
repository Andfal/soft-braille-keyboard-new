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

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.os.Vibrator;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.accessibility.AccessibilityManager;

import com.dalton.braillekeyboard.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.Pad.Coords;
import com.dalton.braillekeyboard.Pad.Swipe;

/**
 * This View facilitates displaying a Braille keyboard to the user on the entire
 * screen and handling taps and swipes by using the ActionHandler.
 */
public class BrailleView extends View {
    private static final long LONG_VIBRATION = 300;
    private static final long MEDIUM_VIBRATION = 125;
    private static final byte NO_DOTS = 0;
    private static final long LONG_HOLD_DELAY = 1200;
    private static final long QUICK_VIBRATION = 25;

    private final AccessibilityManager accessibilityManager;
    private final List<Coords> lastDotList = new ArrayList<Coords>();
    private final Paint circlePaint;
    private final Paint paint;
    private final Rect circleTextBounds = new Rect();
    private final Vibrator vibrator;
    private final ActionHandler.OnActionListener actionListener = new ActionHandler.OnActionListener() {

        @Override
        public void onSetDots(boolean dot7, boolean dot8) {
            setDotsSevenEight(dot7, dot8);
        }

        @Override
        public void onText(String format, String text, boolean isPasswordField) {
            speech.readConsiderPassword(getContext(), format, text,
                    isPasswordField, Speech.QUEUE_FLUSH);
        }

        @Override
        public void onText(String format, String text, boolean isPasswordField,
                int mode) {
            speech.readConsiderPassword(getContext(), format, text,
                    isPasswordField, mode);
        }

        @Override
        public void onNotify(boolean vibrate, boolean playSound) {
            sendNotification(vibrate, playSound);
        }

        @Override
        public void onSetLocale(Locale locale) {
            setLocale(locale);
        }

        @Override
        public void onShrink() {
            setLocale(Locale.getDefault());
            shrinkKeyboard = true;
            
            if (android.os.Build.VERSION.SDK_INT >= 16) {
                setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_YES);
                setFocusable(true);
                setClickable(true);
            }
            
            invalidate();
            requestLayout();
            listener.updateFullscreenMode();
        }

        @Override
        public void onPrivacy() {
            setPrivacy();
        }

        @Override
        public void onShutup() {
            speech.stop();
        }
    };

    private ActionHandler actionHandler;
    private DisplayParams displayParams = null;
    private boolean dot7;
    private boolean dot8;
    private Coords[] dotsDown = new Coords[8];
    private boolean handledSwipe = false;
    private KeyboardListener listener;
    private Pad pad;
    private long requiredTouchTime = 0;
    private boolean shrinkKeyboard;
    private Speech speech;
    private boolean mIsManualCalibrating = false;
    private int mCurrentCalibrationStep = 0;
    private List<Coords> mManualCalibrationDots = new ArrayList<Coords>();

    public BrailleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        paint = new Paint();
        circlePaint = new Paint();
        accessibilityManager = (AccessibilityManager) context
                .getSystemService(Context.ACCESSIBILITY_SERVICE);
        vibrator = (Vibrator) context
                .getSystemService(Context.VIBRATOR_SERVICE);
    }

    @Override
    public boolean performClick() {
        if (shrinkKeyboard) {
            android.util.Log.d("BrailleView", "Accessibility click detected, expanding keyboard...");
            expandKeyboard();
            return true;
        }
        return super.performClick();
    }

    public void onInitialiseForInput(Context context, KeyboardListener listener) {
        this.listener = listener;

        if (android.os.Build.VERSION.SDK_INT >= 16) {
            setFocusable(false);
        }

        speech = new Speech(getContext(), new Speech.OnReadyListener() {
            @Override
            public void ttsReady() {
                setLocale(BrailleView.this.listener.getLocale());
                speech.speak(getContext(),
                        getContext().getString(R.string.ready),
                        Speech.QUEUE_FLUSH);
            }
        });

        if (shrinkKeyboard) {
            expandKeyboard();
        }

        if (displayParams != null) {
            loadInitialPad(getWidth(), getHeight());
            invalidate();
            requestLayout();
        }
        actionHandler = new ActionHandler(context);
        actionHandler.setCallback(actionListener);
        actionHandler.setKeyboardListener(listener);
    }

    private String getDynamicCalibrationKey(int width, int height) {
        String baseKey = getContext().getString(R.string.pref_custom_dots_key);
        // L'orientamento fisico determina il profilo di calibrazione da caricare (_PORTRAIT o _LANDSCAPE).
        // Il bug precedente impediva il caricamento del profilo _PORTRAIT quando autoRotate era attivo.
        boolean isPortrait = height > width;
        String orientation = isPortrait ? "_PORTRAIT" : "_LANDSCAPE";
        
        // Calcola la larghezza minima in dip per distinguere telefono da tablet/foldable aperto
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        float widthDp = Math.min(width, height) / displayMetrics.density;
        String size = widthDp >= 600 ? "_LARGE" : "_SMALL";
        
        return baseKey + orientation + size;
    }

    private void loadInitialPad(int w, int h) {
        boolean locked = Options.getBooleanPreference(getContext(), R.string.pref_lock_calibration_key, false);
        if (locked) {
            String dynamicKey = getDynamicCalibrationKey(w, h);
            Coords[] savedDots = Pad.loadStringKey(getContext(), w, h, dynamicKey, h > w && !displayParams.autoRotate);
            if (savedDots != null && selectPad(savedDots, w, h)) {
                android.util.Log.i("BrailleView", "Loaded locked custom layout from: " + dynamicKey);
                return;
            }
        }
        loadDefaultPad(w, h);
    }

    public void close() {
        if (Options.getBooleanPreference(
                getContext(),
                R.string.pref_vibrate_on_exit_key,
                Boolean.parseBoolean(getContext().getString(
                        R.string.pref_vibrate_on_exit_default)))) {
            vibrator.vibrate(LONG_VIBRATION * 2);
        }
        speech.shutdown(getContext().getString(R.string.closing_keyboard));
        actionHandler.shutdown();
        setLocale(Locale.getDefault(), false);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        setDisplayParams(w, h);
        loadInitialPad(w, h);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (mIsManualCalibrating) {
            paint.setTextSize(50);
            String msg = getContext().getString(R.string.calibration_step, mCurrentCalibrationStep + 1);
            canvas.drawText(msg, 50, 100, paint);
        }
        if (!shrinkKeyboard
                && displayParams != null
                && Options.getBooleanPreference(
                        getContext(),
                        R.string.pref_show_circles_key,
                        Boolean.parseBoolean(getContext().getString(
                                R.string.pref_show_circles_default)))) {
            if (accessibilityManager.isTouchExplorationEnabled()) {
                setContentDescription(getContext().getString(
                        R.string.switch_off_talkback));
            } else {
                setContentDescription(null);
            }

            List<Coords> keys = getKeys();
            for (int i = 0; i < keys.size(); i++) {
                int x = displayParams.autoRotate || getWidth() >= getHeight() ? keys
                        .get(i).x : keys.get(i).y;
                int y = displayParams.autoRotate || getWidth() >= getHeight() ? keys
                        .get(i).y : keys.get(i).x;
                String text = String.valueOf(i + 1);
                paint.getTextBounds(text, 0, text.length(), circleTextBounds);
                canvas.drawCircle(x, y, displayParams.radius, circlePaint);
                canvas.drawText(text, x, y, paint);
            }
        } else if (shrinkKeyboard) {
            String text = getContext().getString(R.string.expand_keyboard);
            if (accessibilityManager.isTouchExplorationEnabled()) {
                text = getContext()
                        .getString(R.string.expand_keyboard_talkback);
            }
            canvas.drawText(text, displayParams.x, displayParams.y, paint);
            setContentDescription(text);
        }
        setPrivacy();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        final int SHRINK_FACTOR = 2;
        int widthSize = MeasureSpec.getSize(widthMeasureSpec);
        int heightSize = MeasureSpec.getSize(heightMeasureSpec);

        int width = widthSize;
        int height = heightSize;

        if (shrinkKeyboard) {
            height /= SHRINK_FACTOR;
        }
        setMeasuredDimension(width, height);
    }

    @Override
    public boolean onHoverEvent(MotionEvent event) {
        if (accessibilityManager.isTouchExplorationEnabled()) {
            if (shrinkKeyboard) {
                speech.speak(
                        getContext(),
                        getContext().getString(
                                R.string.expand_keyboard_talkback),
                        Speech.QUEUE_FLUSH);
            } else {
                speech.speak(getContext(),
                        getContext().getString(R.string.switch_off_talkback),
                        Speech.QUEUE_FLUSH);
            }
        }
        return super.onHoverEvent(event);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = MotionEventCompat.getActionMasked(motionEvent);
        
        if (shrinkKeyboard) {
            if (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_POINTER_DOWN) {
                expandKeyboard();
            }
            return true;
        }

        int width = displayParams.autoRotate ? getWidth() : Math.max(
                getWidth(), getHeight());
        int height = displayParams.autoRotate ? getHeight() : Math.min(
                getWidth(), getHeight());
        int index = MotionEventCompat.getActionIndex(motionEvent);
        int id = MotionEventCompat.getPointerId(motionEvent, index);
        int x = (int) MotionEventCompat.getX(motionEvent, index);
        int y = (int) MotionEventCompat.getY(motionEvent, index);

        int tempX = x;
        x = displayParams.autoRotate || getWidth() >= getHeight() ? x : y;
        y = displayParams.autoRotate || getWidth() >= getHeight() ? y : tempX;

        if (mIsManualCalibrating) {
            if (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_POINTER_DOWN) {
                handleManualCalibrationTouch(x, y);
            }
            return true;
        }

        Swipe swipe;
        switch (action) {
        case MotionEvent.ACTION_DOWN:
        case MotionEvent.ACTION_POINTER_DOWN:
            requiredTouchTime = requiredTouchTime == 0 ? System
                    .currentTimeMillis() + LONG_HOLD_DELAY
                    : requiredTouchTime;

            if (!updatePointer(dotsDown, id, x, y, true)
                    && id < dotsDown.length) {
                dotsDown[id] = new Coords(id, x, y);
            }
            break;
        case MotionEvent.ACTION_HOVER_EXIT:
        case MotionEvent.ACTION_UP:
            if (!handleVoiceInput()) {
                if (pad != null && pressedDotString() != NO_DOTS) {
                    setDots();
                    if (!handledSwipe) {
                        if ((swipe = handledSwipeAction(dotsDown,
                                getHeight() > getWidth()
                                        && !displayParams.autoRotate)) != Swipe.NONE) {
                            actionHandler.handleSwipe(getContext(), swipe);
                        } else {
                            handleTypedCharacter();
                        }
                    }
                    lastDotList.clear();
                }
            }
            resetDots();

            if (pad != null) {
                boolean locked = Options.getBooleanPreference(getContext(), R.string.pref_lock_calibration_key, false);
                if (!locked) {
                    pad.updateKeys(!displayParams.autoRotate
                            && getHeight() > getWidth());
                }
            }

            if (Options.getBooleanPreference(
                    getContext(),
                    R.string.pref_show_circles_key,
                    Boolean.parseBoolean(getContext().getString(
                            R.string.pref_show_circles_default)))) {
                invalidate();
            }
            break;
        case MotionEventCompat.ACTION_HOVER_MOVE:
        case MotionEvent.ACTION_MOVE:
            updatePointer(dotsDown, id, x, y, false);
            break;
        case MotionEventCompat.ACTION_POINTER_UP:
            if (!setPad(id, width, height, displayParams.autoRotate)) {
                updatePointer(dotsDown, id, x, y, false);
                setDots();
                if ((swipe = handledSwipeAction(dotsDown,
                        getHeight() > getWidth() && !displayParams.autoRotate)) != Swipe.NONE) {
                    handledSwipe = true;
                    actionHandler.handleSwipe(getContext(), swipe);
                }
            }
            break;
        default:
        }
        return true;
    }

    private void handleManualCalibrationTouch(int x, int y) {
        int totalDots = listener.getDots();
        if (totalDots == -1) totalDots = 6;
        
        mManualCalibrationDots.add(new Coords(mCurrentCalibrationStep, x, y));
        vibrator.vibrate(QUICK_VIBRATION);
        mCurrentCalibrationStep++;
        
        if (mCurrentCalibrationStep >= totalDots) {
            finishManualCalibration();
        } else {
            speech.speak(getContext(), getContext().getString(R.string.calibration_step, mCurrentCalibrationStep + 1), Speech.QUEUE_FLUSH);
            invalidate();
        }
    }

    private void finishManualCalibration() {
        mIsManualCalibrating = false;
        int width = displayParams.autoRotate ? getWidth() : Math.max(getWidth(), getHeight());
        int height = displayParams.autoRotate ? getHeight() : Math.min(getWidth(), getHeight());
        
        Coords[] dots = mManualCalibrationDots.toArray(new Coords[mManualCalibrationDots.size()]);
        if (selectPad(dots, width, height)) {
            // Success! Save and Lock.
            String dynamicKey = getDynamicCalibrationKey(width, height);
            pad.saveStringKey(getContext(), dynamicKey, height > width && !displayParams.autoRotate, dots);
            Options.writeBooleanPreference(getContext(), R.string.pref_lock_calibration_key, true);
            
            speech.speak(getContext(), getContext().getString(R.string.calibration_success), Speech.QUEUE_FLUSH);
            vibrator.vibrate(LONG_VIBRATION);
        } else {
            speech.speak(getContext(), getContext().getString(R.string.keyboard_error), Speech.QUEUE_FLUSH);
        }
        mManualCalibrationDots.clear();
        resetDots();
        invalidate();
    }

    public boolean getShrinkKeyboard() {
        return shrinkKeyboard;
    }

    public boolean setLocale(Locale locale) {
        return setLocale(locale, true);
    }

    private boolean setLocale(Locale locale, boolean setTTSLocale) {
        if (locale != null) {
            Resources resources = getContext().getResources();
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            android.content.res.Configuration conf = resources
                    .getConfiguration();
            if (!conf.locale.equals(locale)) {
                if (!setTTSLocale || (setTTSLocale && speech.setLocale(locale))) {
                    conf.locale = locale;
                    resources.updateConfiguration(conf, displayMetrics);
                    return true;
                }
            }
        }
        return false;
    }

    private void loadDefaultPad(int w, int h) {
        int width = displayParams.autoRotate ? w : Math.max(w, h);
        int height = displayParams.autoRotate ? h : Math.min(w, h);
        if (!setDefaultPad(w, h, width, height)) {
            speech.speak(getContext(),
                    getContext().getString(R.string.keyboard_error),
                    Speech.QUEUE_FLUSH);
        }
    }

    private boolean setPad(int id, int width, int height, boolean autoRotate) {
        int totalDots = listener.getDots();
        if (totalDots == -1) totalDots = 6;
        final int ONE_SIDE = 3;
        
        // For whatever reason we won't be able to set a pad
        int dotsDownCount = countDotsDown(dotsDown);
        if (requiredTouchTime > System.currentTimeMillis()
                || (dotsDownCount != ONE_SIDE && dotsDownCount != totalDots)) {
            return false;
        }

        // Trigger manual calibration mode
        mIsManualCalibrating = true;
        mCurrentCalibrationStep = 0;
        mManualCalibrationDots.clear();
        
        // If triggered with all fingers, we can do instant calibration
        if (dotsDownCount == totalDots) {
            finishManualCalibrationInstant(id, width, height);
            return true;
        }

        // Else start step-by-step
        speech.speak(getContext(), getContext().getString(R.string.calibration_init_message), Speech.QUEUE_FLUSH);
        speech.speak(getContext(), getContext().getString(R.string.calibration_step, 1), Speech.QUEUE_ADD);
        vibrator.vibrate(MEDIUM_VIBRATION);
        lastDotList.clear();
        resetDots();
        invalidate();
        return true;
    }

    private void finishManualCalibrationInstant(int id, int width, int height) {
        int totalDots = listener.getDots();
        if (totalDots == -1) totalDots = 6;
        
        setDotsSevenEight(false, false);
        Coords[] dots = new Coords[totalDots];

        for (int i = 0, j = 0; i < dotsDown.length && j < dots.length; i++) {
            if (dotsDown[i] != null) {
                int localX = dotsDown[i].getSecondX();
                int localY = dotsDown[i].getSecondY();
                dots[j++] = new Coords(j, localX, localY);
            }
        }
        
        mIsManualCalibrating = false;
        if (selectPad(dots, width, height)) {
            String dynamicKey = getDynamicCalibrationKey(width, height);
            pad.saveStringKey(getContext(), dynamicKey, height > width && !displayParams.autoRotate, dots);
            Options.writeBooleanPreference(getContext(), R.string.pref_lock_calibration_key, true);
            speech.speak(getContext(), getContext().getString(pad.padString), Speech.QUEUE_FLUSH);
            speech.speak(getContext(), getContext().getString(R.string.calibration_success), Speech.QUEUE_ADD);
            vibrator.vibrate(MEDIUM_VIBRATION);
        } else {
            speech.speak(getContext(), getContext().getString(R.string.keyboard_error), Speech.QUEUE_FLUSH);
            vibrator.vibrate(QUICK_VIBRATION);
        }
        lastDotList.clear();
        resetDots();
        invalidate();
    }

    private boolean setDefaultPad(int w, int h, int padWidth, int padHeight) {
        boolean useEightDots = Options.getBooleanPreference(
                getContext(),
                R.string.pref_use_eight_dots_key,
                Boolean.parseBoolean(getContext().getString(
                        R.string.pref_use_eight_dots_default)));
        try {
            pad = PadUtilities
                    .displayDefaultPad(getContext(), padWidth, padHeight, h > w
                            && !displayParams.autoRotate, useEightDots);
            return true;
        } catch (IllegalArgumentException e) {
        }
        return false;
    }

    private boolean selectPad(Coords[] dots, int width, int height) {
        boolean useEightDots = Options.getBooleanPreference(
                getContext(),
                R.string.pref_use_eight_dots_key,
                Boolean.parseBoolean(getContext().getString(
                        R.string.pref_use_eight_dots_default)));
        try {
            pad = PadUtilities.selectPad(getContext(), dots, width, height,
                    !displayParams.autoRotate && getHeight() > getWidth(),
                    useEightDots);
            return true;
        } catch (IllegalArgumentException e) {
        }
        return false;
    }

    private List<Coords> getKeys() {
        List<Coords> keys = new ArrayList<Coords>();
        if (pad == null) return keys;
        List<Coords> padKeys = pad.getKeys();
        int dots = listener.getDots();
        if (dots == -1) {
            dots = padKeys.size();
        }
        int dotsInUse = Math.min(padKeys.size(), dots);
        keys.addAll(padKeys.subList(0, dotsInUse));
        return keys;
    }

    private void setDots() {
        if (pad == null) {
            return;
        }
        dotsDown = pad.getBrailleDots(dotsDown, listener.getDots());
    }

    private void resetDots() {
        requiredTouchTime = 0;
        for (int i = 0; i < dotsDown.length; i++) {
            dotsDown[i] = null;
        }
        handledSwipe = false;
    }

    private void setDotsSevenEight(boolean dot7, boolean dot8) {
        if (!dot7 && !dot8) {
            this.dot7 = dot7;
            this.dot8 = dot8;
        }
        if (dot7) {
            this.dot7 = dot7;
        }
        if (dot8) {
            this.dot8 = dot8;
        }
    }

    private byte pressedDotString() {
        byte mask = 1;
        byte value = 0;
        for (int i = 0; i < dotsDown.length - 2; i++) {
            if (dotsDown[i] != null) {
                value |= mask;
            }
            mask <<= 1;
        }
        if (dot7 || dotsDown[6] != null) {
            value |= mask;
        }
        mask <<= 1;
        if (dot8 || dotsDown[7] != null) {
            value |= mask;
        }
        return value;
    }

    private void sendNotification(boolean vibrate, boolean playSound) {
        if (vibrate
                && (KeyboardFeedback.VIBRATE.value & Integer.parseInt(Options
                        .getStringPreference(getContext(),
                                R.string.pref_keyboard_feedback_key,
                                KeyboardFeedback.ALL.getValue()))) != 0) {
            vibrator.vibrate(QUICK_VIBRATION);
        }
        if (playSound
                && (KeyboardFeedback.SOUND.value & Integer.parseInt(Options
                        .getStringPreference(getContext(),
                                R.string.pref_keyboard_feedback_key,
                                KeyboardFeedback.ALL.getValue()))) != 0) {
            playSoundEffect(SoundEffectConstants.CLICK);
        }
    }

    private void expandKeyboard() {
        speech.speak(getContext(),
                getContext().getString(R.string.keyboard_full_screen),
                Speech.QUEUE_FLUSH);
        shrinkKeyboard = false;
        
        // Reset focusability and importance when expanded
        if (android.os.Build.VERSION.SDK_INT >= 16) {
            setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
            setFocusable(false);
        }
        
        setLocale(listener.getLocale());
        invalidate();
        requestLayout();
        listener.updateFullscreenMode();
    }

    private static int countDotsDown(Coords[] dots) {
        int count = 0;
        for (Coords coords : dots) {
            if (coords != null) {
                ++count;
            }
        }
        return count;
    }

    private static boolean updatePointer(Coords[] coords, int id, int x, int y,
            boolean reset) {
        for (int i = 0; i < coords.length; i++) {
            if (coords[i] != null) {
                if (coords[i].id == id) {
                    if (reset) {
                        coords[i] = new Coords(id, x, y);
                    }
                    coords[i].setSecondCords(x, y);
                    return true;
                }
            }
        }
        return false;
    }

    private Swipe handledSwipeAction(Coords[] coords, boolean swap) {
        Swipe value;
        try {
            value = pad.getSwipe(coords, swap);
            return value;
        } catch (NullPointerException npe) {
        }
        return Swipe.NONE;
    }

    private void handleTypedCharacter() {
        byte value = pressedDotString();
        actionHandler.handleCharacter(getContext(), value);
    }

    private boolean setPrivacy() {
        if (Options.getBooleanPreference(
                getContext(),
                R.string.pref_privacy_key,
                Boolean.parseBoolean(getContext().getString(
                        R.string.pref_privacy_default)))) {
            setBackgroundColor(getContext().getResources().getColor(
                    android.R.color.black));
            return true;
        } else {
            setBackgroundColor(getContext().getResources().getColor(
                    android.R.color.transparent));
            return false;
        }
    }

    private void setDisplayParams(int w, int h) {
        final int CIRCLE_RADIUS = 40;
        final int STROKE_WIDTH = 8;
        final int TEXT_SIZE = 20;
        int strokeWidth = (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, STROKE_WIDTH, getContext()
                        .getResources().getDisplayMetrics());
        int textSize = (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, TEXT_SIZE, getContext()
                        .getResources().getDisplayMetrics());
        int radius = (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, CIRCLE_RADIUS, getContext()
                        .getResources().getDisplayMetrics());
        boolean autoRotate = Options.getBooleanPreference(
                getContext(),
                R.string.pref_auto_rotate_keyboard_key,
                Boolean.parseBoolean(getContext().getString(
                        R.string.pref_auto_rotate_keyboard_default)));
        displayParams = new DisplayParams(strokeWidth, textSize, radius,
                autoRotate);
        paint.setColor(getContext().getResources().getColor(
                android.R.color.black));
        paint.setTextSize(displayParams.textSize);
        paint.setAntiAlias(true);
        paint.setTextAlign(Paint.Align.CENTER);
        circlePaint.setColor(getContext().getResources().getColor(
                android.R.color.black));
        circlePaint.setAntiAlias(true);
        circlePaint.setStyle(Style.STROKE);
        circlePaint.setStrokeWidth(displayParams.strokeWidth);

        FontMetrics metrics = paint.getFontMetrics();
        float height = Math.abs(metrics.top - metrics.bottom);
        displayParams.x = getWidth() / 2;
        displayParams.y = (getHeight() / 2) + (height / 2);
    }

    private boolean handleVoiceInput() {
        if (System.currentTimeMillis() > requiredTouchTime
                && countDotsDown(dotsDown) == 1
                && Options.getBooleanPreference(
                        getContext(),
                        R.string.pref_voice_shortcut_key,
                        Boolean.parseBoolean(getContext().getString(
                                R.string.pref_voice_shortcut_default)))) {
            actionHandler.doVoiceInput(getContext(), false);
            return true;
        }
        return false;
    }

    private static class DisplayParams {
        public final int strokeWidth;
        public final int textSize;
        public final int radius;
        public final boolean autoRotate;
        public float x;
        public float y;

        public DisplayParams(int strokeWidth, int textSize, int radius,
                boolean autoRotate) {
            this.strokeWidth = strokeWidth;
            this.textSize = textSize;
            this.radius = radius;
            this.autoRotate = autoRotate;
        }
    }
}
