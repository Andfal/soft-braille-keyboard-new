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
import java.util.Set;
import java.util.HashSet;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.provider.UserDictionary;
import android.util.Log;

public class SpellChecker {
    private static final int MAX_SUGGESTIONS = 8;
    private static final int MAX_SENTENCE_LENGTH = 200;
    private static final int SENTENCES_TO_CONSIDER = 6;

    public interface SpellingSuggestionsReadyListener {
        void suggestionsReady(Suggestion result);
    }

    public enum Direction {
        LEFT, UNDER_CURSOR, RIGHT;
    }

    private final Context context;
    private Locale currentLocale;
    private SpellingSuggestionsReadyListener listener;
    private int cursor;
    private Direction direction;
    private String text;
    private int startOffset;
    private int endOffset;

    private final Handler handler = new Handler(Looper.getMainLooper());
    
    // Local dictionary fields
    private final Set<String> localDictionary = new HashSet<String>();
    private final List<String> dictionaryList = new ArrayList<String>();
    private String loadedLanguage = "";

    private static class WordToken {
        final String text;
        final int offset;
        final int length;

        WordToken(String text, int offset, int length) {
            this.text = text;
            this.offset = offset;
            this.length = length;
        }
    }

    public SpellChecker(Context context) {
        this.context = context;
        Log.d("SBK_SpellChecker", "Local SpellChecker constructor called.");
    }

    public void onStartInput(Locale locale) {
        if (locale == null) {
            locale = Locale.getDefault();
        }
        currentLocale = locale;
        Log.d("SBK_SpellChecker", "onStartInput called with locale: " + locale);
        loadDictionaryForLanguage(locale.getLanguage());
    }

    public boolean checkSpelling(final SpellingSuggestionsReadyListener listener,
            final String text, final int cursor, final Direction direction) {
        Log.d("SBK_SpellChecker", "checkSpelling called. text length: " + text.length() + ", cursor: " + cursor + ", direction: " + direction);
        if (text.length() > 0) {
            this.cursor = cursor;
            this.direction = direction;
            this.text = text;
            this.listener = listener;
            initOffsets();
            
            // Run spell check on main thread, but post it to execute asynchronously matching original callback behavior
            handler.post(new Runnable() {
                @Override
                public void run() {
                    doLocalSpellCheck();
                }
            });
            return true;
        } else {
            Log.d("SBK_SpellChecker", "checkSpelling returning false (empty text).");
            return false;
        }
    }

    private void doLocalSpellCheck() {
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        loadDictionaryForLanguage(currentLocale.getLanguage());
        
        String sub = text.substring(startOffset, endOffset);
        
        // Find all word tokens in the substring
        List<WordToken> tokens = new ArrayList<WordToken>();
        int i = 0;
        int subLen = sub.length();
        while (i < subLen) {
            while (i < subLen && !Character.isLetter(sub.charAt(i))) {
                i++;
            }
            if (i >= subLen) {
                break;
            }
            int start = i;
            while (i < subLen && Character.isLetter(sub.charAt(i))) {
                i++;
            }
            String wordText = sub.substring(start, i);
            tokens.add(new WordToken(wordText, start, i - start));
        }
        
        int count = tokens.size();
        int start = direction == Direction.LEFT ? count - 1 : 0;
        int end = direction == Direction.LEFT ? -1 : count;
        int step = end < start ? -1 : 1;
        
        Log.d("SBK_SpellChecker", "doLocalSpellCheck: direction=" + direction + ", cursor=" + cursor + ", startOffset=" + startOffset + ", endOffset=" + endOffset + ", tokens count=" + count);

        Suggestion results = null;
        int idx = start;
        while (idx != end && results == null) {
            WordToken token = tokens.get(idx);
            int absOffset = token.offset + startOffset;
            
            boolean match = false;
            if (direction == Direction.UNDER_CURSOR) {
                if (cursor >= absOffset) {
                    if (idx == count - 1) {
                        match = true;
                    } else {
                        WordToken nextToken = tokens.get(idx + 1);
                        int nextAbsOffset = nextToken.offset + startOffset;
                        match = cursor < nextAbsOffset;
                    }
                }
            } else {
                match = isDirection(direction, cursor, token.length, absOffset);
            }
            
            boolean misspelled = isWordMisspelled(token.text);
            Log.d("SBK_SpellChecker", "token='" + token.text + "', absOffset=" + absOffset + ", length=" + token.length + ", match=" + match + ", misspelled=" + misspelled);

            if (match) {
                if (misspelled) {
                    results = generateSuggestionsForWord(token.text, absOffset);
                } else if (direction == Direction.UNDER_CURSOR) {
                    boolean isUserDict = isWordInUserDictionary(token.text) || isWordInUserDictionary(token.text.toLowerCase());
                    if (isUserDict) {
                        results = generateUserDictRemoveSuggestions(token.text, absOffset);
                    }
                }
            }
            idx += step;
        }
        
        boolean moreToExpand = expandOffsets(true);
        Log.d("SBK_SpellChecker", "results: " + (results != null ? results.getCurrent() : "null") + ", moreToExpand: " + moreToExpand);
        if (results != null || !moreToExpand) {
            if (listener != null) {
                listener.suggestionsReady(results);
            }
        } else {
            // Expand search range and retry
            doLocalSpellCheck();
        }
    }

    private boolean isWordMisspelled(String word) {
        if (localDictionary.isEmpty()) {
            // Dictionary not loaded/supported for this language, treat all words as correct
            return false;
        }
        String lower = word.toLowerCase();
        if (localDictionary.contains(lower)) {
            return false;
        }
        if (isWordInUserDictionary(word) || isWordInUserDictionary(lower)) {
            return false;
        }
        return true;
    }

    private Suggestion generateSuggestionsForWord(String word, int offset) {
        Suggestion suggestion = new Suggestion(word, offset);
        
        List<String> dist1 = new ArrayList<String>();
        List<String> dist2 = new ArrayList<String>();
        
        String lowerWord = word.toLowerCase();
        int wordLen = lowerWord.length();
        
        // Iterate through the list of dictionary words (already sorted by frequency)
        for (String dictWord : dictionaryList) {
            int dictLen = dictWord.length();
            if (Math.abs(dictLen - wordLen) > 2) {
                continue;
            }
            
            int dist = getLevenshteinDistance(lowerWord, dictWord);
            if (dist == 1) {
                dist1.add(matchCapitalization(word, dictWord));
            } else if (dist == 2) {
                dist2.add(matchCapitalization(word, dictWord));
            }
        }
        
        // Populate suggestion results, prioritizing distance 1 then distance 2
        int added = 0;
        for (String s : dist1) {
            if (added >= MAX_SUGGESTIONS) break;
            suggestion.results.add(s);
            added++;
        }
        for (String s : dist2) {
            if (added >= MAX_SUGGESTIONS) break;
            suggestion.results.add(s);
            added++;
        }
        
        return suggestion;
    }

    private Suggestion generateUserDictRemoveSuggestions(String word, int offset) {
        return new Suggestion(word, offset, true);
    }

    private String matchCapitalization(String original, String suggestion) {
        if (original == null || original.isEmpty() || suggestion == null || suggestion.isEmpty()) {
            return suggestion;
        }
        boolean isAllUpper = true;
        for (int i = 0; i < original.length(); i++) {
            if (Character.isLetter(original.charAt(i)) && !Character.isUpperCase(original.charAt(i))) {
                isAllUpper = false;
                break;
            }
        }
        if (isAllUpper) {
            return suggestion.toUpperCase();
        }
        if (Character.isUpperCase(original.charAt(0))) {
            return Character.toUpperCase(suggestion.charAt(0)) + (suggestion.length() > 1 ? suggestion.substring(1) : "");
        }
        return suggestion;
    }

    private synchronized void loadDictionaryForLanguage(String lang) {
        if (lang == null || lang.isEmpty()) {
            lang = "en";
        }
        if (lang.equals(loadedLanguage)) {
            return;
        }
        
        localDictionary.clear();
        dictionaryList.clear();
        loadedLanguage = lang;
        
        String fileName = "dictionaries/" + lang + ".txt";
        Log.d("SBK_SpellChecker", "Loading local dictionary: " + fileName);
        
        java.io.BufferedReader reader = null;
        try {
            reader = new java.io.BufferedReader(
                    new java.io.InputStreamReader(context.getAssets().open(fileName), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (!line.isEmpty()) {
                    localDictionary.add(line);
                    dictionaryList.add(line);
                }
            }
            Log.d("SBK_SpellChecker", "Successfully loaded " + localDictionary.size() + " words from " + fileName);
        } catch (Exception e) {
            Log.e("SBK_SpellChecker", "Error loading dictionary " + fileName + ". Leaving dictionary empty (spellcheck disabled for " + lang + ").", e);
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (Exception e) {
                    // Ignore
                }
            }
        }
    }

    public void destroy() {
        Log.d("SBK_SpellChecker", "destroy called.");
        localDictionary.clear();
        dictionaryList.clear();
        loadedLanguage = "";
    }

    public boolean isSpellCheckAvailable() {
        return true;
    }

    private boolean isWordInUserDictionary(String word) {
        if (word == null || word.trim().isEmpty()) {
            return false;
        }
        Cursor cursor = null;
        try {
            ContentResolver resolver = context.getContentResolver();
            String selection = UserDictionary.Words.WORD + "=?";
            String[] selectionArgs = new String[] { word };
            cursor = resolver.query(
                    UserDictionary.Words.CONTENT_URI,
                    new String[] { UserDictionary.Words.WORD },
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

    private static int getLevenshteinDistance(String s, String t) {
        if (s == null || t == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        int n = s.length();
        int m = t.length();
        if (n == 0) return m;
        if (m == 0) return n;
        if (n > m) {
            String tmp = s;
            s = t;
            t = tmp;
            n = s.length();
            m = t.length();
        }
        int p[] = new int[n + 1];
        int d[] = new int[n + 1];
        int _d[];
        int i, j, cost;
        char sa;
        char ta;
        for (i = 0; i <= n; i++) {
            p[i] = i;
        }
        for (j = 1; j <= m; j++) {
            ta = t.charAt(j - 1);
            d[0] = j;
            for (i = 1; i <= n; i++) {
                sa = s.charAt(i - 1);
                cost = sa == ta ? 0 : 1;
                d[i] = Math.min(Math.min(d[i - 1] + 1, p[i] + 1), p[i - 1] + cost);
            }
            _d = p;
            p = d;
            d = _d;
        }
        return p[n];
    }

    public static class Suggestion {
        public final List<String> results = new ArrayList<String>();
        public final int offset;
        public final boolean isUserDictWord;
        private final String originalWord;
        private int current = 0;
        private int length = -1;

        public Suggestion(String word, int offset) {
            this(word, offset, false);
        }

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
