# Plan: Fix Table Creator 'Clone' Mode

## Objective
Fix the behavior of spinners (Script, Num System, Locale) when importing/cloning an external table so they sync correctly with the imported data and add `include` directives without modifying or deleting existing mappings (like lowercase/uppercase letters).

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`

## Implementation Steps

1.  **Sync Spinners on Clone (`performClone`):**
    -   While parsing the cloned table lines into `Mapping` objects, intercept any `opcode == "include"`.
    -   If `m.character` matches an alphabet script file (checking `SCRIPTS_6` and `SCRIPTS_8`), set `mScriptSpinner.setSelection(i)`.
    -   If `m.character` matches a known numeric file (e.g., `digits6Dots.uti`, `litdigits6DotsPlusDot6.uti`), set `mNumSystemSpinner` to the corresponding `NUM_*` constant.
    -   (Locale spinner is already correctly synchronized during parsing via `#+locale:`).

2.  **Fix Script Spinner in Clone Mode (`applyAlphabetScript`):**
    -   Currently, changing the script spinner removes all lowercase/uppercase alphabet mappings and imports letters from JSON.
    -   Modify `applyAlphabetScript`: if `!mIsManagedTable` (clone mode), do NOT call `removeCurrentAlphabetMappings()`.
    -   Instead, remove ONLY the old script `include` directives, and insert the new `include` directive (e.g. `include latinLetterDef6Dots.uti`). Return `true` without loading the JSON.

3.  **Fix Numeric Spinner in Clone Mode (`mNumSystemSpinner.onItemSelected`):**
    -   Currently, changing the number system removes all `litdigit` and `numsign` mappings, which can destroy the cloned table's custom data.
    -   Modify the listener: if `!mIsManagedTable` (clone mode), ONLY remove old numeric `include` directives from the list. Do NOT remove `numsign` or `litdigit`.
    -   When calling `getNumericMappings()` in clone mode, ensure it only provides the `include` directive (skip adding default `numsign` mappings to avoid duplicating/overriding user's custom `numsign`).

## Verification & Testing
1. Import an external table (Clone mode) that has `include latinLetterDef6Dots.uti` and `include digits6Dots.uti`.
2. Verify that the Script spinner is set to "Latin" and Num System spinner is set to "Classic".
3. Change the Num System spinner to "Antoine". Verify that only the `include` changes, and no other dots/mappings are altered or deleted.
4. Change the Script spinner to "Greek". Verify that it changes the `include` to Greek without importing single letters and without deleting any existing mappings.