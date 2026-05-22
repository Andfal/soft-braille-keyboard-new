# Plan: Enhancing Table Creator UI and Mass Actions

## Objective
Fix the behavior where expanding the header triggers `onItemSelected` on the spinners (Script, Num System) and causes them to delete custom includes because they were defaulting to 0 ("none"). Implement long-press block selection in the Mass Actions dialog.

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`

## Implementation Steps

1.  **Add State Tracking Variables:**
    -   Add `private int mLastScriptPos = -1;`
    -   Add `private int mLastNumPos = -1;`
    
2.  **Fix Spinner Initialization on Import (`performClone`):**
    -   Update `performClone` so when it sets the `mScriptSpinner` and `mNumSystemSpinner` selections based on detected includes, it also sets `mLastScriptPos` and `mLastNumPos` to the detected positions.
    
3.  **Update Spinner Listeners to Ignore Spurious Events:**
    -   In `mScriptSpinner.setOnItemSelectedListener`, add `if (pos == mLastScriptPos) return; mLastScriptPos = pos;` right after the `mIsUpdatingUI` check.
    -   In `mNumSystemSpinner.setOnItemSelectedListener`, add `if (pos == mLastNumPos) return; mLastNumPos = pos;` right after the `mIsUpdatingUI` check.
    -   This perfectly prevents `expandHeader()` or layout passes from triggering the deletion logic when the spinner's conceptual value hasn't actually changed.

4.  **Implement Block Selection in Mass Actions (`showMassActionsDialog`):**
    -   Add `lv.setOnItemLongClickListener` to the `ListView`.
    -   Find the lowest index of the currently checked items (`lv.getCheckedItemPositions()`).
    -   If a checked item exists and is different from the long-pressed position, iterate from the lowest checked index to the long-pressed position and call `lv.setItemChecked(i, true)`.
    -   Return `true` to consume the long-press event.

## Verification & Testing
1. Import an external table (Clone mode) that has `include latinLetterDef6Dots.uti`. Expand the header. Verify the include is NOT deleted.
2. Open the mass action dialog. Check the first item (e.g., index 2), then long-press on index 10. Verify that all items from 2 to 10 become checked.