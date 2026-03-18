# Progetto: Soft Braille Keyboard (STABILE CLASSICA)

## Identità e Vincoli
- **Stato:** Versione NON refattorizzata (Struttura originale Eyes-Free).
- **Compatibilità:** minSdkVersion 14 (Supporta Android 4.0+).
- **Librerie:** Utilizza `android-support-v4` e strutture JAR classiche.
- **Package Name:** `com.dalton.braillekeyboard` (NON MODIFICARE - Fondamentale per Jieshuo).
- **Relazione:** Gemello funzionale del progetto `soft-braille-keyboard-modern`, ma con architettura legacy per massima compatibilità.

# Gemini CLI Session Summary - March 10, 2026

## Accomplishments

### 1. Liblouis Table System Restoration
- **Root Cause Analysis:** Identified a critical conflict where a redundant `res/raw/translationtables.zip` in the main app (3.4 MB, incorrect structure) was overwriting the correct library resource (1.1 MB).
- **Structural Fix:** Removed the incorrect ZIP from the main app and synchronized the project to use exclusively `brailleback/braille/service/res/raw/translationtables.zip`.
- **Tablelist Alignment:** Synchronized `res/xml/tablelist.xml` and `brailleback/braille/service/res/xml/tablelist.xml` to ensure consistency in table definitions (adding `variant="table_variant_unofficial"` where missing).
- **Verified Italian Support:** Confirmed that Italian 6-dot (`it-it-g1.ctb`) and 8-dot (`it-it-comp8.utb`) tables are now correctly loaded and functional.

### 2. Global Table Update & Synchronization
- **GitHub Sync:** Successfully updated the entire Liblouis table set in `third_party/Liblouis/tables/` with the latest version from the official master branch.
- **Data Preservation:** Implemented a backup-and-restore workflow to protect custom Italian and Nepali tables during the global update.
- **Fat ZIP Implementation:** Updated `scripts/update_translation_tables.py` to include ALL 455+ files from Liblouis in the `translationtables.zip` (~3.4 MB). This makes the app future-proof, as adding new languages only requires an XML change in `tablelist.xml`.
- **Index Generation:** The script now also generates `assets/liblouis_files.txt` in the service module, resolving a `FileNotFoundException` that occurred during dynamic table loading.
- **Cleanup:** Permanently deleted the problematic `scripts/recreate_zip.py`.

### 3. Direct Boot & Security Clarity
- **Direct Boot Utility:** Confirmed that `directBootAware="true"` is essential for accessibility services to be available immediately after a reboot.
- **OS Limitations:** Documented that Android prevents third-party IMEs from being used for initial PIN/Password entry for security reasons; the keyboard becomes available immediately after the first unlock.

## Technical Notes

### Table Loading Architecture
- **Source:** `third_party/Liblouis/tables/`
- **ZIP Path:** `brailleback/braille/service/res/raw/translationtables.zip`
- **Internal Structure:** All files MUST be under `liblouis/tables/` inside the ZIP.
- **Extraction:** `TranslatorService` extracts this to the app's internal `translator/` directory at runtime.

### Third-Party Components
- **Liblouis:** Engine for Braille translation (C-based). Tables are synced with version 3.36.0+.
- **BrailleBack:** Adaptation of Google's service for device communication and translation management.
- **Android Support V4:** Required for backward compatibility (API 19+).

### Chronology
- **2018-10-08:** Initial integration of `third_party` structure.
- **2026-02-21:** Massive update to Liblouis 3.36.0 tables.
- **2026-03-10:** Resolution of ZIP structural conflicts and global table refresh from GitHub.

### Liblouis Table Insights
- **Rule Priority:** Liblouis uses the FIRST matching rule encountered. To ensure custom mappings (like Italian accents) override base definitions, they must be placed at the top of the file, BEFORE any `include` statements.
- **8-Dot Indicators:** 
    - `braille-patterns.cti` is NOT a reliable indicator for 8-dot tables as it is included in both 6-dot and 8-dot tables for Unicode Braille passthrough (U+2800 to U+28FF).
    - `latinLetterDef8Dots.uti` is a standard sub-table containing only the Latin alphabet (a-z, A-Z) with dot 7 used as the capital indicator. It does not contain accented characters.
- **Deep Analysis:** Reliable classification of 6 vs 8 dot tables requires scanning for metadata headers (`#+ dots: 8`), specific included charsets (e.g., `latinLetterDef8Dots.uti`), or the physical presence of dots 7/8 in character definitions (outside the Unicode passthrough range).

## Future Recommendations
- **Table Updates:** To update specific tables, copy the `.ctb` to `third_party/Liblouis/tables/` and run `scripts/update_translation_tables.py`. NEVER add ZIPs directly to the main app's `res/raw/`.
- **JAVA_HOME:** Always use `C:\Program Files\Android\Android Studio\jbr` for builds on this machine.
- **Apktool:** L'eseguibile si trova in `C:\Users\sergi\StudioProjects\soft-braille-keyboard\apktool.jar`. Per eseguirlo usare: `& 'C:\Program Files\Android\Android Studio\jbr\bin\java.exe' -jar apktool.jar`.
