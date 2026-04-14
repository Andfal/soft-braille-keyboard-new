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
        Collections.sort(keys, comparatorX);
        if (keys.size() == 6) {
            // Standard Perkins: 3, 2, 1, 4, 5, 6 (ordinati per X)
            if (invert) {
                // Mapping per rotazione 180 gradi
                Coords d1 = keys.get(3);
                Coords d2 = keys.get(4);
                Coords d3 = keys.get(5);
                Coords d4 = keys.get(2);
                Coords d5 = keys.get(1);
                Coords d6 = keys.get(0);
                keys.set(0, d1);
                keys.set(1, d2);
                keys.set(2, d3);
                keys.set(3, d4);
                keys.set(4, d5);
                keys.set(5, d6);
            } else {
                // Standard Perkins (altoparlante a destra)
                // Vogliamo: Index 0=Dot1, 1=Dot2, 2=Dot3, 3=Dot4, 4=Dot5, 5=Dot6
                // keys attualmente: 0=Dot3, 1=Dot2, 2=Dot1, 3=Dot4, 4=Dot5, 5=Dot6
                Collections.swap(keys, 0, 2);
            }
            if (useEightDots) {
                insertSpecialDots();
            }
        } else if (keys.size() == 8) {
            // Se abbiamo 8 punti (ordinati per X): 7, 3, 2, 1, 4, 5, 6, 8
            // Vogliamo mappare agli indici corretti per Pad.getColumn:
            // LEFT: Index 0=Dot1, 1=Dot2, 2=Dot3, 6=Dot7
            // RIGHT: Index 3=Dot4, 4=Dot5, 5=Dot6, 7=Dot8
            
            // Creiamo una copia per non sovrascrivere mentre assegniamo
            List<Coords> sorted = new ArrayList<Coords>(keys);
            keys.clear();
            for (int i=0; i<8; i++) keys.add(null);
            
            if (invert) {
                // Invertito (Altoparlante a sinistra): 8, 6, 5, 4, 1, 2, 3, 7 (X crescente)
                keys.set(0, sorted.get(4)); // Dot 1
                keys.set(1, sorted.get(5)); // Dot 2
                keys.set(2, sorted.get(6)); // Dot 3
                keys.set(3, sorted.get(3)); // Dot 4
                keys.set(4, sorted.get(2)); // Dot 5
                keys.set(5, sorted.get(1)); // Dot 6
                keys.set(6, sorted.get(7)); // Dot 7
                keys.set(7, sorted.get(0)); // Dot 8
            } else {
                // Standard (Altoparlante a destra): 7, 3, 2, 1, 4, 5, 6, 8 (X crescente)
                keys.set(0, sorted.get(3)); // Dot 1
                keys.set(1, sorted.get(2)); // Dot 2
                keys.set(2, sorted.get(1)); // Dot 3
                keys.set(3, sorted.get(4)); // Dot 4
                keys.set(4, sorted.get(5)); // Dot 5
                keys.set(5, sorted.get(6)); // Dot 6
                keys.set(6, sorted.get(0)); // Dot 7
                keys.set(7, sorted.get(7)); // Dot 8
            }
        }
    }

    @Override
    public Swipe getSwipe(Coords[] coords, boolean swap) {
        return getGenericSwipeAction(coords, swap);
    }

    @Override
    public Options.KeyboardType getKeyboardType() {
        return Options.KeyboardType.TABLETOP;
    }
}
