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

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.textservice.SentenceSuggestionsInfo;
import android.view.textservice.SpellCheckerSession;
import android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener;
import android.view.textservice.SuggestionsInfo;
import android.view.textservice.TextInfo;
import android.view.textservice.TextServicesManager;

public class SpellChecker {
    private static final String TAG = "SBK_SpellChecker";
    private static final int MAX_SUGGESTIONS = 8;
    private static final int MAX_SENTENCE_LENGTH = 200;
    private static final int SENTENCES_TO_CONSIDER = 6;

    public interface SpellingSuggestionsReadyListener {
        void suggestionsReady(Suggestion result);
    }

    public enum Direction {
        LEFT, UNDER_CURSOR, RIGHT;
    }

    private final SpellCheckerSessionListener spellCheckerListener = new SpellCheckerSessionListener() {
        @Override
        public void onGetSuggestions(final SuggestionsInfo[] arg0) {
        }

        @Override
        @SuppressLint("NewApi")
        public void onGetSentenceSuggestions(SentenceSuggestionsInfo[] arg0) {
            Log.d(TAG, "onGetSentenceSuggestions() received. Results length: " + (arg0 != null ? arg0.length : "null"));
            if (arg0 != null && arg0.length == 1) {
                SentenceSuggestionsInfo ssi = arg0[0];
                Suggestion results = null;
                if (ssi != null) {
                    int count = ssi.getSuggestionsCount();
                    Log.d(TAG, "onGetSentenceSuggestions(): suggestions count = " + count);
                    int start = direction == Direction.LEFT ? count - 1 : 0;
                    int end = direction == Direction.LEFT ? -1 : count;
                    int step = end < start ? -1 : 1;
                    int i = start;
                    while (i != end && results == null) {
                        int lengthAt = ssi.getLengthAt(i);
                        int offsetAt = ssi.getOffsetAt(i) + startOffset;
                        boolean matchDir = isDirection(direction, cursor, lengthAt, offsetAt);
                        Log.d(TAG, "  suggestion index " + i + ": length=" + lengthAt + ", offset=" + offsetAt + ", matchDir=" + matchDir);
                        if (matchDir) {
                            results = compileSuggestions(
                                    ssi.getSuggestionsInfoAt(i),
                                    lengthAt, offsetAt);
                        }
                        i += step;
                    }
                }

                boolean moreToExpand = expandOffsets(true);
                Log.d(TAG, "onGetSentenceSuggestions(): results = " + (results != null ? results.getCurrent() : "null") + ", moreToExpand = " + moreToExpand);
                if (results != null || !moreToExpand) {
                    listener.suggestionsReady(results);
                } else {
                    doSpellCheck();
                }
            } else {
                Log.w(TAG, "onGetSentenceSuggestions(): invalid arg0 length: " + (arg0 != null ? arg0.length : 0));
            }
        }
    };

    private final Context context;
    private SpellCheckerSession spellChecker;
    private Locale currentLocale;
    private SpellingSuggestionsReadyListener listener;
    private int cursor;
    private Direction direction;
    private String text;
    private int startOffset;
    private int endOffset;

    public SpellChecker(Context context) {
        this.context = context;
    }

    private synchronized void initSession() {
        Log.d(TAG, "initSession() called. currentLocale = " + currentLocale);
        if (spellChecker != null) {
            Log.d(TAG, "initSession(): spellChecker already exists");
            return;
        }
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
            Log.d(TAG, "initSession(): currentLocale was null, set to default: " + currentLocale);
        }
        final TextServicesManager tsm = (TextServicesManager) context
                .getSystemService(Context.TEXT_SERVICES_MANAGER_SERVICE);
        if (tsm != null) {
            try {
                Log.d(TAG, "initSession(): creating newSpellCheckerSession");
                spellChecker = tsm.newSpellCheckerSession(null, currentLocale,
                        spellCheckerListener, false);
                Log.d(TAG, "initSession(): newSpellCheckerSession returned: " + spellChecker);
            } catch (Exception e) {
                Log.e(TAG, "initSession(): Exception creating spell checker session", e);
            }
        } else {
            Log.w(TAG, "initSession(): TextServicesManager is null");
        }
    }

    public synchronized void onStartInput(Locale locale) {
        Log.d(TAG, "onStartInput() called with locale: " + locale);
        if (locale == null) {
            locale = Locale.getDefault();
        }
        if (currentLocale == null || !locale.equals(currentLocale)) {
            currentLocale = locale;
            Log.d(TAG, "onStartInput(): locale changed to " + currentLocale + ", closing old spellChecker");
            if (spellChecker != null) {
                spellChecker.close();
                spellChecker = null;
            }
        }
        initSession();
    }

    public boolean checkSpelling(SpellingSuggestionsReadyListener listener,
            String text, int cursor, Direction direction) {
        Log.d(TAG, "checkSpelling() called: text='" + text + "', cursor=" + cursor + ", direction=" + direction);
        initSession();
        if (text != null && text.length() > 0) {
            this.cursor = cursor;
            this.direction = direction;
            this.text = text;
            this.listener = listener;

            if (direction == Direction.UNDER_CURSOR) {
                int start = cursor;
                while (start > 0 && isWordChar(text.charAt(start - 1))) {
                    start--;
                }
                int end = cursor;
                while (end < text.length() && isWordChar(text.charAt(end))) {
                    end++;
                }
                if (start < end) {
                    String word = text.substring(start, end);
                    boolean inDict = isWordInUserDictionary(word) || isWordInUserDictionary(word.toLowerCase());
                    Log.d(TAG, "checkSpelling(): checking under cursor word='" + word + "', inDict=" + inDict);
                    if (inDict) {
                        listener.suggestionsReady(new Suggestion(word, start, true));
                        return true;
                    }
                }
            }

            if (spellChecker != null) {
                initOffsets();
                Log.d(TAG, "checkSpelling(): triggering doSpellCheck() with offsets: " + startOffset + " to " + endOffset);
                doSpellCheck();
                return true;
            } else {
                Log.w(TAG, "checkSpelling(): spellChecker is null!");
            }
        }
        return false;
    }

    @SuppressLint("NewApi")
    private void doSpellCheck() {
        if (spellChecker != null) {
            Log.d(TAG, "doSpellCheck(): requesting suggestions for: '" + text.substring(startOffset, endOffset) + "'");
            // Removed spellChecker.cancel() to prevent session state issues
            spellChecker.getSentenceSuggestions(
                    new TextInfo[] { new TextInfo(text.substring(startOffset,
                            endOffset) + " ") }, MAX_SUGGESTIONS);
        } else {
            Log.w(TAG, "doSpellCheck(): spellChecker is null!");
        }
    }

    public synchronized void destroy() {
        Log.d(TAG, "destroy() called. spellChecker is null? " + (spellChecker == null));
        if (spellChecker != null) {
            spellChecker.close();
            spellChecker = null;
        }
    }

    public boolean isSpellCheckAvailable() {
        return Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN;
    }

    private Suggestion compileSuggestions(SuggestionsInfo suggestionInfo,
            int length, int offset) {
        String originalWord = text.substring(offset, length + offset);
        int attrs = suggestionInfo.getSuggestionsAttributes();
        int count = suggestionInfo.getSuggestionsCount();
        Log.d(TAG, "compileSuggestions(): word='" + originalWord + "', attributes=" + attrs + ", count=" + count);
        if (suggestionInfo.getSuggestionsAttributes() == SuggestionsInfo.RESULT_ATTR_IN_THE_DICTIONARY
                || !isPotentialWord(text.substring(offset, offset + length))) {
            Log.d(TAG, "compileSuggestions(): word is in dictionary or not potential word, returning null");
            return null;
        }

        boolean isUser = isWordInUserDictionary(originalWord);
        Suggestion suggestion = new Suggestion(originalWord, offset, isUser);
        for (int i = 0; i < count; i++) {
            String sug = suggestionInfo.getSuggestionAt(i);
            Log.d(TAG, "  suggestion result " + i + ": " + sug);
            if (sug != null && !sug.isEmpty()) {
                suggestion.results.add(sug);
            }
        }

        return suggestion;
    }

    private boolean isWordInUserDictionary(String word) {
        if (word == null || word.trim().isEmpty()) {
            return false;
        }
        android.database.Cursor cursor = null;
        try {
            android.content.ContentResolver resolver = context.getContentResolver();
            String selection = android.provider.UserDictionary.Words.WORD + "=?";
            String[] selectionArgs = new String[] { word };
            cursor = resolver.query(
                    android.provider.UserDictionary.Words.CONTENT_URI,
                    new String[] { android.provider.UserDictionary.Words.WORD },
                    selection,
                    selectionArgs,
                    null
            );
            if (cursor != null && cursor.getCount() > 0) {
                return true;
            }
        } catch (Exception e) {
            // Ignore permission issues or unavailable provider
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return false;
    }

    private static boolean isDirection(Direction direction, int cursor,
            int length, int offset) {
        switch (direction) {
        case UNDER_CURSOR:
            return cursor >= offset && cursor < (length + offset);
        case LEFT:
            return (length + offset) <= cursor;
        case RIGHT:
            return offset > cursor;
        default:
            throw new IllegalArgumentException(
                    "No implementation for direction = " + direction);
        }
    }

    private static boolean isPotentialWord(String word) {
        for (int i = 0; i < word.length(); i++) {
            if (Character.isLetter(word.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    private static boolean isWordChar(char c) {
        return Character.isLetter(c) || c == '\'' || c == '\u2019';
    }

    private void initOffsets() {
        startOffset = Math.max(0, cursor - MAX_SENTENCE_LENGTH);
        endOffset = Math.min(cursor + MAX_SENTENCE_LENGTH, text.length());
        expandOffsets(false);
    }

    private boolean expandOffsets(boolean shrinkVisitedRegion) {
        int tempOffset;
        boolean expanded;
        switch (direction) {
        case UNDER_CURSOR:
            return false;
        case LEFT:
            tempOffset = Math.max(0, startOffset - MAX_SENTENCE_LENGTH
                    * SENTENCES_TO_CONSIDER);
            expanded = startOffset != tempOffset;
            if (shrinkVisitedRegion) {
                endOffset = startOffset;
            }
            startOffset = tempOffset;
            break;
        case RIGHT:
            tempOffset = Math.min(text.length(), endOffset
                    + MAX_SENTENCE_LENGTH * SENTENCES_TO_CONSIDER);
            expanded = endOffset != tempOffset;
            if (shrinkVisitedRegion) {
                startOffset = endOffset;
            }
            endOffset = tempOffset;
            break;
        default:
            throw new IllegalArgumentException("No implementation for: "
                    + direction);
        }

        if (expanded) {
            normaliseOffsets();
        }
        return expanded;
    }

    private void normaliseOffsets() {
        for (int i = startOffset; i >= 0; i--) {
            startOffset = i;
            if (Character.isWhitespace(text.charAt(i))) {
                break;
            }
        }

        for (int i = endOffset; i < text.length(); i++) {
            endOffset = i;
            if (Character.isWhitespace(text.charAt(i))) {
                break;
            }
        }
    }

    public static class Suggestion {
        public final List<String> results = new ArrayList<String>();
        public final int offset;
        public final boolean isUserDictWord;
        private final String originalWord;
        private int current = 0;
        private int length = -1;

        public Suggestion(String word, int offset, boolean isUserDictWord) {
            this.offset = offset;
            this.isUserDictWord = isUserDictWord;
            this.originalWord = word;
            if (isUserDictWord) {
                results.add("##REMOVE_FROM_DICTIONARY##");
            } else {
                results.add("##REMOVE_FROM_DICTIONARY##");
                results.add("##ADD_TO_DICTIONARY##");
            }
            results.add(word);
            current = results.indexOf(word);
        }

        public String next() {
            current = ++current >= results.size() ? 0 : current;
            return getCurrent();
        }

        public String prev() {
            current = --current < 0 ? results.size() - 1 : current;
            return getCurrent();
        }

        public String getCurrent() {
            String val = results.get(current);
            if ("##ADD_TO_DICTIONARY##".equals(val) || "##REMOVE_FROM_DICTIONARY##".equals(val)) {
                return originalWord;
            }
            return val;
        }

        public boolean isAddToDictionaryOption() {
            return "##ADD_TO_DICTIONARY##".equals(results.get(current));
        }

        public boolean isRemoveFromDictionaryOption() {
            return "##REMOVE_FROM_DICTIONARY##".equals(results.get(current));
        }

        public String getOriginalWord() {
            return originalWord;
        }

        public void setLength() {
            length = getCurrent().length();
        }

        public int getLength() {
            return length == -1 ? originalWord.length() : length;
        }

        public boolean isMisspelledWord() {
            return current == results.indexOf(originalWord);
        }
    }
}


