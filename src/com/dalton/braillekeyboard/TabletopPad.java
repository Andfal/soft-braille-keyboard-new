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

import java.util.Collections;
import java.util.List;

import android.content.Context;
import android.util.TypedValue;

/**
 * Implements a tabletop style Braille Pad.
 *
 * This is exactly like a conventional perkins Brailler where dots are arranged from
 * left to right when looking at the screen. Dot 3 on the far left, then dot 2, dot 1, 
 * and on the right hand they span 4, 5, 6 where 6 is the far right dot.
 *
 * This implements the appropriate methods to facilitate loading, drawing and
 * saving/restoring a pad of this nature.
 *
 * Unlike HorizontalPad, this pad is meant to be used while facing the screen,
 * so it does NOT flip gestures or invert layout automatically based on portrait mode.
 */
public class TabletopPad extends Pad {
    private static final int MAX_HORIZONTAL_DISTANCE = 80; // 2/3 inch;

    public TabletopPad(Context context, Coords[] coords, int width,
            int height, boolean portrait, boolean invert, boolean useEightDots) {
        super(context, coords, width, height, R.string.pad_tabletop, invert);
        save(context, getPrefKey(portrait, invert), portrait);
        sortKeys(keys, portrait, invert, useEightDots);
    }

    public static int getPrefKey(boolean portrait, boolean invert) {
        if (portrait && !invert) {
            return R.string.pref_keyboard_save_tabletop_portrait_key;
        } else if (!portrait && !invert) {
            return R.string.pref_keyboard_save_tabletop_landscape_key;
        } else if (portrait && invert) {
            return R.string.pref_keyboard_save_tabletop_portrait_invert_key;
        } else {
            return R.string.pref_keyboard_save_tabletop_landscape_invert_key;
        }
    }

    public static Pad displayDefaultPad(Context context, int width, int height,
            boolean portrait, boolean invert, boolean useEightDots) {
        int offsetWidth = Math.min(width / 8, (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, MAX_HORIZONTAL_DISTANCE, context
                        .getResources().getDisplayMetrics()));
        Coords[] coords = new Coords[6];
        // compute the coordinates
        int y = height / 2;
        int x = offsetWidth;
        for (int i = 0; i < coords.length / 2; i++) {
            coords[i] = new Coords(x, y);
            x += offsetWidth;
        }
        x = width - offsetWidth;
        for (int i = coords.length / 2; i < coords.length; i++) {
            coords[i] = new Coords(x, y);
            x -= offsetWidth;
        }
        if (invert) {
            coords = swapKeys(coords);
        }
        return new TabletopPad(context, coords, width, height, portrait,
                invert, useEightDots);
    }

    private static Coords[] swapKeys(Coords[] keys) {
        for (int i = 0; i < keys.length / 2; i++) {
            Coords temp = keys[i];
            keys[i] = keys[i + keys.length / 2];
            keys[i + keys.length / 2] = temp;
        }
        return keys;
    }

    private void insertSpecialDots() {
        int xGapLeft = getXGap(keys.subList(0, 3));
        int yGapLeft = getYGap(keys.subList(0, 3));
        int xGapRight = getXGap(keys.subList(3, 6));
        int yGapRight = getYGap(keys.subList(3, 6));
        int leftX = keys.get(2).x - xGapLeft;
        int leftY = keys.get(2).y - yGapLeft;
        int rightX = keys.get(5).x + xGapRight;
        int rightY = keys.get(5).y - yGapRight;
        keys.add(new Coords(leftX < 0 ? 0 : leftX, leftY < 0 ? 0 : leftY));
        keys.add(new Coords(rightX > viewWidth ? viewWidth : rightX,
                rightY < 0 ? 0 : rightY));
    }

    private void sortKeys(List<Coords> coords, boolean portrait, boolean invert,
            boolean useEightDots) {
        Collections.sort(coords, comparatorX);
        Collections.swap(keys, 0, 2);
        if (useEightDots) {
            insertSpecialDots();
        }
        if (invert) {
            swapLeftRight();
        }
    }

    private void swapLeftRight() {
        int i = 0;
        int j = 3;
        while (i < 3 && j < 6) {
            Collections.swap(keys, i++, j++);
        }
        if (keys.size() == 8) {
            Collections.swap(keys, 6, 7);
        }
    }

    @Override
    public Swipe getSwipe(Coords[] coords, boolean swap) {
        // Tabletop mode does not swap left/right gestures as the user faces the screen
        return getGenericSwipeAction(coords, swap);
    }
}


