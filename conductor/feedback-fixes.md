# Plan: Addressing Feedback on Spinners, Duplicates, and Ordering

## Objective
Address the 4 specific user issues:
1. Ensure `loadTableData` detects `include` statements for imported external tables and synchronizes `mScriptSpinner` and `mNumSystemSpinner` correctly.
2. In the Duplicate Detection dialog (`showDuplicateDialogInternal`), ensure the "Add Anyway" (Proceed) button is ALWAYS visible even if the duplicate is a preset.
3. Add a "Move to Bottom" (Sposta in fondo) action to the ordering dialog.
4. Ensure the `mMappingPriorityCheck` state is respected when adding `include` files via the Script and Number System spinners in Clone Mode (inserting at the top for High Priority, or at the current selection for Low Priority).

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`

## Implementation Steps

1.  **Spinner Detection on Load:**
    -   In `loadTableData`, add a check after parsing `Mapping m = new Mapping(line);` to intercept `opcode.equals("include")`. Set `mScriptSpinner` or `mNumSystemSpinner` and the respective tracking variables (`mLastScriptPos`, `mLastNumPos`).

2.  **Duplicate Dialog 'Proceed' Button:**
    -   In `addOrUpdateMapping`, remove the `&& mIsTemplateUsed` constraint for the preset duplicate check so that the warning shows up in Clone mode.
    -   In `showDuplicateDialogInternal`, remove `if (!isPreset)` before adding `btn_add_anyway` to the list.
    -   In the onClick handler for `btn_add_anyway`, if `isPreset` is true, handle it gracefully by calling `insertMappingWithPriority(newMapping, newMapping.isHighPriority, -1)` instead of attempting to insert at `existingIndex` (which is -1 and would crash).

3.  **Order Dialog 'Move to Bottom':**
    -   In `showOrderActionsDialog`, create `Button bottomBtn = new Button(this); bottomBtn.setText("Sposta in fondo");`.
    -   Add it to the layout. Enable it when `!mapping.isFixed`.
    -   Add `bottomBtn.setOnClickListener(v -> { int idx = mMappings.indexOf(mapping); mMappings.remove(idx); mMappings.add(mapping); updateUI.run(); });`.

4.  **Spinner Include Priority:**
    -   In `applyAlphabetScript`: Read `boolean high = mMappingPriorityCheck.isChecked()`. If `high`, calculate `insertPos` as the first non-fixed position. If not `high`, use `mMappedItemsSpinner.getSelectedItemPosition()`. Pass `high` to `new Mapping(..., high)`.
    -   In `mNumSystemSpinner` listener: Same logic as above for calculating `insertPos` based on `high`, then `mMappings.addAll(insertPos, rules);`.

## Verification
- Load an external table: verify spinners update to reflect includes.
- In clone mode, add a duplicate preset character: verify the "Proceed/Add Anyway" option appears and works.
- Open ordering dialog: verify "Sposta in fondo" appears and works.
- In clone mode, change Script spinner with Priority checked/unchecked: verify the `include` moves to the top/current selection accordingly.