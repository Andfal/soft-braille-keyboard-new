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

import android.content.Context;
import android.content.Intent;

import com.googlecode.eyesfree.braille.translate.TranslatorClient;

// TODO(ddalton): Find a way to use the service directly without this class.
public class MyTranslatorClient extends TranslatorClient {
    private Intent mServiceIntent;

    public MyTranslatorClient(Context context, OnInitListener onInitListener) {
        mContext = context;
        mOnInitListener = onInitListener;
        mServiceIntent = new Intent(
                context,
                com.googlecode.eyesfree.braille.service.translate.TranslatorService.class);
        doBindService();
    }

    public com.googlecode.eyesfree.braille.translate.TranslationResult translate(String text, String tableId,
            int cursorPosition, boolean computerBrailleAtCursor) {
        com.googlecode.eyesfree.braille.translate.ITranslatorService localService = getTranslatorService();
        if (localService != null) {
            try {
                return localService.translate(text, tableId,
                        cursorPosition, computerBrailleAtCursor);
            } catch (android.os.RemoteException ex) {
                android.util.Log.e("MyTranslatorClient", "Error in translate", ex);
            }
        }
        return null;
    }

    public String backTranslate(byte[] cells, String tableId) {
        com.googlecode.eyesfree.braille.translate.ITranslatorService localService = getTranslatorService();
        if (localService != null) {
            try {
                return localService.backTranslate(cells, tableId);
            } catch (android.os.RemoteException ex) {
                android.util.Log.e("MyTranslatorClient", "Error in backTranslate", ex);
            }
        }
        return null;
    }

    private com.googlecode.eyesfree.braille.translate.ITranslatorService getTranslatorService() {        
        if (mConnection != null) {
            try {
                // TranslatorClient has a private 'mConnection' field, and inside that,
                // there is a field that holds the service.
                java.lang.reflect.Field field = TranslatorClient.Connection.class.getDeclaredField("mService");
                field.setAccessible(true);
                Object service = field.get(mConnection);
                if (service instanceof com.googlecode.eyesfree.braille.translate.ITranslatorService) {
                    return (com.googlecode.eyesfree.braille.translate.ITranslatorService) service;
                }
            } catch (Exception e) {
                android.util.Log.e("MyTranslatorClient", "Reflection error getting service", e);
            }
        }
        android.util.Log.w("MyTranslatorClient", "TranslatorService not yet available via reflection");
        return null;
    }
    private void doBindService() {
        Connection localConnection = new Connection();
        if (!mContext.bindService(mServiceIntent, localConnection,
                Context.BIND_AUTO_CREATE)) {
            mHandler.scheduleRebind();
            return;
        }
        mConnection = localConnection;
    }
}


