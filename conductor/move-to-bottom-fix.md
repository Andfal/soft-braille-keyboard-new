# Plan: Refining 'Move to Bottom' Behavior

## Objective
Ensure that using ordering actions (specifically "Sposta in fondo" / "Move to Bottom", but also others like Move Up/Down/Top) within the order actions dialog does NOT load the item into the editor fields. This prevents the "Update" button from unnecessarily appearing, treating ordering purely as a list manipulation.

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`

## Implementation Steps

1.  **Analyze Current Ordering Logic:**
    -   In `showOrderActionsDialog`, the ordering buttons (Up, Down, Top, Bottom) modify the `mMappings` list and then call `updateUI.run()`.
    -   `updateUI` is defined as: `Runnable updateUI = () -> { refreshSpinner(); int newPos = mMappings.indexOf(mapping); if (newPos != -1) mMappedItemsSpinner.setSelection(newPos + 1); };`
    -   *The Root Cause:* Calling `mMappedItemsSpinner.setSelection(newPos + 1)` triggers the spinner's `onItemSelected` listener.
    -   The `onItemSelected` listener calls `loadMapping(pos - 1)` (or `loadMappingFromObject`), which loads the item into the EditText fields and changes the button text to "Update".

2.  **Fix the `updateUI` Runnable:**
    -   We need to refresh the spinner to show the new order, but we MUST NOT trigger the `loadMapping` side-effect if we only want to change the order.
    -   Instead of `mMappedItemsSpinner.setSelection(newPos + 1)` (which fires the listener), we can temporarily disable the listener, set the selection, and re-enable it, OR we can just reset the editor state entirely.
    -   Since the user is just moving items around, it's cleaner to just clear the editor state so they are ready for a new action.
    -   Alternatively, we can set `mIsUpdatingUI = true;` around `setSelection` to prevent the listener from processing it.

3.  **Specific Changes in `showOrderActionsDialog`:**
    -   Modify `updateUI` to:
        ```java
        Runnable updateUI = () -> { 
            mIsUpdatingUI = true; 
            refreshSpinner(); 
            int newPos = mMappings.indexOf(mapping); 
            if (newPos != -1) mMappedItemsSpinner.setSelection(newPos + 1); 
            mIsUpdatingUI = false;
        };
        ```
    -   This ensures the spinner visually tracks the moved item, but because `mIsUpdatingUI` is true, the spinner's `onItemSelected` listener will immediately return `if (mIsUpdatingUI) return;` (we need to ensure the listener has this check, which it currently might not have for `mMappedItemsSpinner`).

4.  **Check `mMappedItemsSpinner` Listener:**
    -   Looking at `mMappedItemsSpinner.setOnItemSelectedListener`, it currently does:
        ```java
        @Override public void onItemSelected(AdapterView<?> p, View v, int pos, long id) { 
            if (pos <= 0) return;
            // ... loads mapping
        }
        ```
    -   Add `if (mIsUpdatingUI) return;` at the very beginning of this listener.

## Verification
1. Select an item in the Mapped Items spinner.
2. Long press to open the Order Actions dialog.
3. Click "Sposta in fondo" (Move to Bottom).
4. Verify the item moves to the bottom of the list visually.
5. Verify the Add/Update button says "Add" (Aggiungi) and the edit fields are not filled with the moved item's data (or if they were already filled, they don't re-trigger an update state). Actually, to be perfectly clean, we should call `finishMappingAction()` after an ordering action to ensure the editor is cleared.

Let's refine `updateUI` to also clear the editor:
```java
Runnable updateUI = () -> { 
    mIsUpdatingUI = true; 
    refreshSpinner(); 
    int newPos = mMappings.indexOf(mapping); 
    if (newPos != -1) mMappedItemsSpinner.setSelection(newPos + 1); 
    mIsUpdatingUI = false;
    finishMappingAction(); // Clear editor and hide 'Update'
};
```