# Gemini CLI Session Summary - January 29, 2026

## Accomplishments

### 1. Emoji Mode Improvements
- **Logic Fix:** Resolved a critical bug in `ActionHandler.java` where failed Braille translations during Emoji Mode would "fall through" and type raw Braille patterns into the editor. It now traps and consumes all input.
- **CLDR Data Integration:** Created `scripts/fetch_emojis.py` to fetch localized emoji annotations (keywords and short names) for 20+ languages from Unicode/CLDR.
- **Locale-Aware Search:** Rewrote `EmojiDictionary.java` to dynamically load JSON assets based on the active Braille table's locale.
- **Descriptive Navigation:** Updated the search UI to prioritize the emoji's "TTS short name," making it easier to distinguish between similar emojis (e.g., different types of "kiss" emojis).

### 2. Direct Boot Support
- **Manifest Updates:** Marked `BrailleIME` and `TranslatorService` as `android:directBootAware="true"`.
- **Storage Migration:** Refactored `Options.java` to use Device-Protected Storage (`createDeviceProtectedStorageContext()`) for all SharedPreferences, making the keyboard functional on the lock screen before device decryption.
- **Settings Migration Logic:** Implemented an automatic migration in `Options.java` (`moveSharedPreferencesFrom`) to transfer existing user settings from credential-protected storage to device-protected storage, preventing data loss.
- **Settings UI Alignment:** Updated `PreferenceIME.java` to ensure the settings activity correctly interacts with the protected storage area.

### 3. Build & Environment
- **SDK Path Fix:** Identified and fixed a build failure caused by spaces in the Android SDK path on Windows. Documented the requirement to use 8.3 short paths (e.g., `C:/Users/AMAIS1~1/...`) and forward slashes in `local.properties`.
- **Emoji Assets:** Populated `assets/emojis/` with localized JSON files for supported languages.

### 4. Bug Fixes
- **Chrome Address Bar Duplication:** Fixed an issue where the first character typed in the Google Chrome address bar (and potentially other fields) would be duplicated. This was caused by `deleteSurroundingText(0, 0)` being called unnecessarily when `composingText` was empty; added a check to skip deletion in this case.
- **Number Mode Exit:** Fixed an issue where typing Dot 6 (Capital Sign) while in Number Mode (after 3456) would fail to switch to Capital Mode and continue writing numbers. Added logic to detect Dot 6 input when the buffer contains a Number Sign, forcing a text commit to reset the state. **Update:** This fix is restricted to the **English locale** ("en") to avoid interfering with other languages where Dot 6 might have different meanings (e.g., as a punctuation mark in French or Spanish number modes).

## Technical Notes for Future Sessions
- **Emoji Data:** If new languages are added to `arrays.xml`, run `python scripts/fetch_emojis.py` after adding the lang code to the script's `LANGUAGES` list.
- **Direct Boot:** All new preference access must go through `Options.getSharedPreferences(context)` to maintain compatibility with the device-protected storage used on Android 7.0+.
- **Build Command:** Use `.\gradlew.bat assembleDebug` for testing. Ensure `local.properties` remains in the short-path format.

# Gemini CLI Session Summary - February 2, 2026

## Accomplishments

### 1. Bug Fixes
- **Character Duplication in Star Taxi:** Implemented a robust fix for character duplication in apps that handle input poorly (Star Taxi, Chrome address bar).
    - **Previous Reference Commit:** `6ffb3c1bcf064e2a3487032d1020b95f378b4ea9` (Last state with legacy composition logic).
    - **Root Cause:** The keyboard was using Android's "composing text" feature (`setComposingText`). Many apps do not handle composition spans correctly and append the entire composing buffer to the existing text on every update, instead of replacing it.
    - **Final Solution:**
        1. **Disabled system-level prediction/composition** globally in `BrailleIME.java`.
        2. **Manual Differential Update + Re-sync:** The keyboard now manually calculates the difference between what's in the editor (`getTextBeforeCursor`) and what it needs to write.
        3. **Append-Only Behavior:** For standard typing, the keyboard now only calls `commitText` for the single new character. It avoids delete/replace commands unless necessary.
    - **Result:** Completely eliminates duplication in problematic apps by mimicking standard physical keyboard behavior.

## Technical Notes
- **Input Compatibility:** Avoiding `setComposingText` and `deleteSurroundingText` for standard appends maximizes compatibility with non-standard Android UI frameworks.

# Gemini CLI Session Summary - February 27, 2026

## Accomplishments

### 1. Table Creator Improvements
- **Friendly Opcodes:** Localized Liblouis opcodes for Italian (e.g., "Segna numero", "Segna maiuscola") and improved English descriptions.
- **Menu Reorganization:** Moved the custom table management ("Manage/Create Braille Tables") into the "Braille Table Settings" category for better logic.
- **Capitalization Support:** Added support for `begcapsword` and `endcapsword` (Inizio/Fine parola maiuscola) and passage-level `begcaps`/`endcaps`.
- **Italics Removal:** Removed italics opcodes as they were deemed unnecessary for the current scope.
- **Labeling:** Custom tables in the selection list now use a clear "Personale: [nome]" or "Custom: [name]" prefix.

### 2. Table Analysis
- **Structure Validation:** Verified the syntax of custom tables (like `sergio.ctb`) using `lou_checktable`. Confirmed the "European Style" (header -> fallbacks -> custom overrides) is robust.

## Technical Notes
- **Cyrillic/International Support:** The Table Creator is designed to be script-agnostic. To support Cyrillic/Russian:
    1. Add a new `PresetCategory` for Cyrillic characters in `initPresets()`.
    2. Add a selector in the UI to change the "Base Script" (the `include` of `latinLetterDef6Dots.uti` vs `ru-ru-g1.utb`).
    3. The Unicode handling is already in place to convert characters to `\uXXXX` format.
- **Table Priority:** User-defined rules are written at the end of the `.ctb` file to ensure they have the highest priority over system includes.

# Gemini CLI Session Summary - March 3, 2026

## Accomplishments

### 1. Bug Fixes & Stability
- **Fixed Infinite Loop in Table Creator:** Identified and resolved a recursive update issue between the `CheckBox` listeners and `EditText` TextWatcher in `showCellEditor` and `showPrefixSelector` dialogs. Added a `mIsUpdatingUI` guard flag to prevent re-entrant calls that were causing a `StackOverflowError` (crash).
- **Clean Environment Recovery:** Reset the repository to the last stable commit (`967b788`) and purged untracked files to resolve build inconsistencies reported after the crash.

### 2. Table Creator Enhancements
- **Professional Opcode Support:** Refined the Table Creator to handle complex Liblouis opcodes with surgical precision:
    - **Caps Indicators:** `begcaps`, `endcaps`, `begcapsword`, and `endcapsword` now correctly serialize as standalone indicators (points only), resolving "Dots operand not specified" errors.
    - **Numeric Indicators:** `begnum` and `endnum` now automatically include a trigger character (e.g., `#` or `%`) to satisfy Liblouis 3.36 requirements.
    - **Punctuation Sync:** Renamed `openpunc`/`closepunc` to `prepunc`/`postpunc` to align with native Liblouis terminology.
- **Structural Integrity:**
    - **Foundational Includes:** Every custom table now writes foundational patterns (`braille-patterns.cti` and `unicode.dis`) at the very top, providing a consistent base for advanced opcodes.
    - **Logical Ordering:** Moved cumulative `numericmodechars` indicators to the end of each mapping section, ensuring all referenced characters are already defined.
- **Per-Mapping Priority:** Users can now choose whether a specific mapping should override (High Priority) or extend (Standard Priority) the system alphabet.
- **Automated Case Pairing:** Intelligent generation of `base uppercase` rules, including automatic `lowercase` definitions when only the uppercase is mapped.
- **Template System:** Implemented a JSON-based template engine. Created a comprehensive **Italian Standard (6-dot)** template that includes alphabet, accents, web symbols (@, /), and system indicators.

### 3. Build & Validation
- **Verified Compatibility:** Validated the generated tables with `lou_checktable`, achieving a "No errors found" state for all tested scenarios (Template, Manual, and Mixed priority).
- **Successful Build:** Verified the changes with clean builds and installs.

## Technical Notes
- **Liblouis Priority:** Reminded that for back-translation, the *first* rule wins, while for forward-translation, the *last* rule wins. The current implementation writes custom mappings at the top of the file to prioritize user choices for dots-to-text (braille input).
- **JAVA_HOME:** When building on this machine, use `C:\Program Files\Android\Android Studio\jbr` as `JAVA_HOME`.

## Roadmap / Upcoming Tasks
- **Table Validation:** Add a "Check Table" button to `TableCreatorActivity` that calls `lou_checktable` (via a native bridge or local script) to verify syntax before saving.
- **Automatic Uppercase:** Further refine the `base uppercase` generation to handle scripts other than Latin.

## Roadmap / Upcoming Tasks (Next Session)
- **Automatic Opcode Detection in Table Creator:**
    1.  Implement a listener on the character input field (`mCharEdit`).
    2.  If a single digit (0-9) is typed, automatically select the `digit` opcode.
    3.  If a letter (a-z, A-Z) is typed, select `lowercase` or `uppercase`.
    4.  If a standard symbol is typed, select `punctuation`.
    5.  Allow manual override by the user after the auto-selection.
