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

import com.dalton.braillekeyboard.R;
import com.dalton.braillekeyboard.Pad.Swipe;
import com.dalton.braillekeyboard.Pad.Coords;
import com.dalton.braillekeyboard.BrailleParser.BrailleType;
import com.dalton.braillekeyboard.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.Options.KeyboardEcho;
import com.dalton.braillekeyboard.Options.KeyboardType;
import com.dalton.braillekeyboard.Options.OptionList;
import com.dalton.braillekeyboard.EditingUtilities.Word;
import com.dalton.braillekeyboard.EmojiDictionary.EmojiEntry;
import com.dalton.braillekeyboard.SpellChecker.Suggestion;
import com.dalton.braillekeyboard.SpellChecker.SpellingSuggestionsReadyListener;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

import android.content.Context;
import android.os.Vibrator;
import android.util.TypedValue;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;


/**
 * Static methods to load a default pad from android settings or to calculate
 * dot positions according to supplied dimensions.
 *
 * There is also a method that handles calibration and selecting a keyboard
 * based on the position of fingers.
 *
 * If you add a new Pad you'll need to update both of these methods so it can be
 * used.
 */
public class PadUtilities {
    private static final int ERROR_DP = 120; // 2/3 inch
    private static final int MAX_SCREEN_SIZE = 160 * 6; // 6 inch

    private static void setPadStyle(Context context, Pad pad) {
        String style = Options.getStringPreference(context,
                R.string.pref_keyboard_style_key,
                context.getString(R.string.pref_keyboard_style_normal_value));

        if (style.equals(context
                .getString(R.string.pref_keyboard_style_slate_value))) {
            pad.makeSlateLayout();
        } else if (style.equals(context
                .getString(R.string.pref_keyboard_style_top_bottom_value))) {
            pad.swapTopBottom();
        }
    }

    public static Pad selectPad(Context context, Coords[] coords, int width,
            int height, boolean portrait, boolean useEightDots) {
        Pad pad;
        boolean autoSet = Options.getBooleanPreference(context,
                R.string.pref_auto_match_keyboard_key,
                Boolean.parseBoolean(context
                        .getString(R.string.pref_auto_match_keyboard_default)));
        boolean invert = Options.getBooleanPreference(context,
                R.string.pref_keyboard_invert_key, Boolean.parseBoolean(context
                        .getString(R.string.pref_keyboard_invert_default)));
        KeyboardType keyboard = KeyboardType
                .valueOf(Integer.parseInt(Options.getStringPreference(
                        context,
                        R.string.pref_default_keyboard_key,
                        context.getString(R.string.pref_default_keyboard_default))));

        List<Coords> keyList = Arrays.asList(coords);
        if (!autoSet && keyboard != KeyboardType.AUTO) {
            validateCalibrationGeometry(context, keyList, keyboard, width, height);
        }

        if (autoSet || keyboard == KeyboardType.AUTO) {
            List<Coords> keys = Arrays.asList(coords);
            int left = VerticalPad.getColumn(keys, VerticalPad.Column.LEFT);
            int right = VerticalPad.getColumn(keys, VerticalPad.Column.RIGHT);
            int leftCount = 0;
            int rightCount = 0;
            int errorMargin = (int) TypedValue.applyDimension(
                    TypedValue.COMPLEX_UNIT_DIP, ERROR_DP, context
                            .getResources().getDisplayMetrics());
            for (Coords coord : keys) {
                if (VerticalPad.isInKeyColumn(coord, left, errorMargin)) {
                    ++leftCount;
                } else if (VerticalPad.isInKeyColumn(coord, right, errorMargin)) {
                    ++rightCount;
                }
            }

            int expectedOneSide = useEightDots ? 4 : 3;
            if (leftCount == expectedOneSide && rightCount == expectedOneSide) {
                pad = new VerticalPad(context, coords, width, height, portrait,
                        invert, useEightDots);
            } else {
                pad = new TabletopPad(context, coords, width, height,
                        portrait, invert, useEightDots);
            }
        } else {
            if (keyboard == KeyboardType.TABLETOP || keyboard == KeyboardType.HORIZONTAL) {
                pad = new TabletopPad(context, coords, width, height,
                        portrait, invert, useEightDots);
            } else {
                pad = new VerticalPad(context, coords, width, height, portrait,
                        invert, useEightDots);
            }
        }

        setPadStyle(context, pad);
        return pad;
    }

    public static void validateCalibrationGeometry(Context context, List<Coords> coords, KeyboardType type, int width, int height) {
        if (coords.size() < 6) throw new IllegalArgumentException("Too few dots");

        int minX = Integer.MAX_VALUE, maxX = Integer.MIN_VALUE;
        int minY = Integer.MAX_VALUE, maxY = Integer.MIN_VALUE;
        for (Coords c : coords) {
            minX = Math.min(minX, c.x); maxX = Math.max(maxX, c.x);
            minY = Math.min(minY, c.y); maxY = Math.max(maxY, c.y);
        }
        int deltaX = maxX - minX;
        int deltaY = maxY - minY;

        boolean healed = false;

        if (type == KeyboardType.VERTICAL) {
            // For vertical, height of the bounding box should be significantly larger than width
            // Or at least not clearly horizontal.
            if (deltaY < deltaX / 2) {
                // Compress X around its center
                int centerX = minX + deltaX / 2;
                float scale = (deltaY * 1.2f) / (deltaX > 0 ? deltaX : 1);
                if (scale > 1.0f || scale <= 0.0f) scale = 0.5f;
                for (Coords c : coords) {
                    c.x = centerX + Math.round((c.x - centerX) * scale);
                    c.setSecondCords(c.x, c.y);
                }
                healed = true;
            }
        } else { // TABLETOP or HORIZONTAL
            // For horizontal layouts, width should be significantly larger than height
            if (deltaX < deltaY / 2) {
                // Compress Y around its center
                int centerY = minY + deltaY / 2;
                float scale = (deltaX * 1.2f) / (deltaY > 0 ? deltaY : 1);
                if (scale > 1.0f || scale <= 0.0f) scale = 0.5f;
                for (Coords c : coords) {
                    c.y = centerY + Math.round((c.y - centerY) * scale);
                    c.setSecondCords(c.x, c.y);
                }
                healed = true;
            }
            // Check hand separation: when sorted by X, there should be no overlap between halves
            Collections.sort(coords, Pad.comparatorX);
            int half = coords.size() / 2;
            if (coords.get(half).x <= coords.get(half - 1).x) {
                // Separate hands
                float density = context.getResources().getDisplayMetrics().density;
                if (density <= 0) density = 1.0f;
                int gap = Math.round(30 * density); // 30dp separation
                int overlap = (coords.get(half - 1).x - coords.get(half).x) + gap;
                int shift = overlap / 2;
                
                for (int i = 0; i < coords.size(); i++) {
                    Coords c = coords.get(i);
                    if (i < half) {
                        c.x -= shift;
                    } else {
                        c.x += shift;
                    }
                    c.setSecondCords(c.x, c.y);
                }
                healed = true;
            }
        }

        if (healed) {
            android.util.Log.i("PadUtilities", "Soft-Healing applied: " + (type == KeyboardType.VERTICAL ? "VERTICAL" : "TABLETOP/HORIZONTAL"));
            
            // Short dual-pulse vibration pattern
            Vibrator vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
            if (vibrator != null) {
                long[] pattern = {0, 60, 80, 60};
                vibrator.vibrate(pattern, -1);
            }
            
            // Speak via Accessibility TYPE_ANNOUNCEMENT
            AccessibilityManager manager = (AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE);
            if (manager != null && manager.isEnabled()) {
                android.view.accessibility.AccessibilityEvent event = android.view.accessibility.AccessibilityEvent.obtain();
                event.setEventType(android.view.accessibility.AccessibilityEvent.TYPE_ANNOUNCEMENT);
                event.setClassName("com.dalton.braillekeyboard.BrailleView");
                event.setPackageName(context.getPackageName());
                
                String msg = "Geometria di calibrazione ottimizzata automaticamente.";
                Locale currentLocale = context.getResources().getConfiguration().locale;
                if (currentLocale != null && !"it".equals(currentLocale.getLanguage())) {
                    msg = "Calibration geometry optimized automatically.";
                }
                event.getText().add(msg);
                manager.sendAccessibilityEvent(event);
            }
        }
    }

    public static Pad displayDefaultPad(Context context, int width, int height,
            boolean portrait, boolean useEightDots) {
        Pad pad;
        boolean invert = Options.getBooleanPreference(context,
                R.string.pref_keyboard_invert_key, Boolean.parseBoolean(context
                        .getString(R.string.pref_keyboard_invert_default)));
        KeyboardType keyboard = KeyboardType
                .valueOf(Integer.parseInt(Options.getStringPreference(
                        context,
                        R.string.pref_default_keyboard_key,
                        context.getString(R.string.pref_default_keyboard_default))));

        // Memory enhancement: If set to AUTO, first check if we have a record of the last calibrated layout.
        // This prevents the keyboard from reverting to Vertical on small screens if the user explicitly calibrated for Tabletop.
        if (keyboard == KeyboardType.AUTO) {
            int lastLayoutOrdinal = Options.getIntPreference(context, R.string.pref_last_calibrated_layout_key, -1);
            if (lastLayoutOrdinal != -1) {
                keyboard = KeyboardType.values()[lastLayoutOrdinal];
            }
        }

        int maxScreen = (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, MAX_SCREEN_SIZE, context
                        .getResources().getDisplayMetrics());
        int screen = (int) Math.sqrt(Math.pow(width, 2) + Math.pow(height, 2));
        if (keyboard == KeyboardType.TABLETOP || keyboard == KeyboardType.HORIZONTAL
                || (screen > maxScreen && KeyboardType.AUTO == keyboard)) {
            Coords[] coords = null;
            int prefKey = TabletopPad.getPrefKey(portrait, invert);
            if ((coords = Pad.load(context, width, height, prefKey, portrait)) != null) {
                pad = new TabletopPad(context, coords, width, height,
                        portrait, invert, useEightDots);
            } else {
                // Migration path: if tabletop calibration is missing, try loading horizontal calibration
                // In modern project we don't have HorizontalPad.getPrefKey anymore, but we know the R.string ID
                // or we can just rely on the classic version for now since TabletopPad is the target.
                pad = TabletopPad.displayDefaultPad(context, width, height,
                        portrait, invert, useEightDots);
            }
        } else {
            Coords[] coords = null;
            int prefKey = VerticalPad.getPrefKey(portrait, invert);
            if ((coords = Pad.load(context, width, height, prefKey, portrait)) != null) {
                pad = new VerticalPad(context, coords, width, height, portrait,
                        invert, useEightDots);
            } else {
                pad = VerticalPad.displayDefaultPad(context, width, height,
                        portrait, invert, useEightDots);
            }
        }

        setPadStyle(context, pad);
        return pad;
    }
}
