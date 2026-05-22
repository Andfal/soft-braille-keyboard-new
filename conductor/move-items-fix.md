# Plan: Fix Move Items Loading Issue

## Objective
Prevent `include` directives (or any mapped items) from being inadvertently loaded into the edit fields when using the ordering actions (Up, Down, Top, Bottom, Move To). Currently, moving an item triggers the spinner's `onItemSelected` listener asynchronously, causing the item to be loaded into the editor and changing the "Add" button to "Update", which is disruptive for pure reordering operations.

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`

## Implementation Steps

1.  **Fix `showOrderActionsDialog`**:
    -   The `updateUI` `Runnable` currently sets `mIsUpdatingUI = false` immediately after `mMappedItemsSpinner.setSelection()`. Because `setSelection` dispatches the selection event asynchronously on the main thread, the listener fires *after* `mIsUpdatingUI` is already false.
    -   **Solution:** Delay resetting the flag by posting it to the spinner's message queue using `mMappedItemsSpinner.post(() -> mIsUpdatingUI = false);`. This guarantees the flag remains true during the asynchronous `onItemSelected` callback.
    -   Update the runnable as follows:
        ```java
        Runnable updateUI = () -> { 
            mIsUpdatingUI = true; 
            refreshSpinner(); 
            int newPos = mMappings.indexOf(mapping); 
            if (newPos != -1) {
                mMappedItemsSpinner.setSelection(newPos + 1); 
                mMappedItemsSpinner.post(() -> mIsUpdatingUI = false);
            } else {
                mIsUpdatingUI = false;
            }
            finishMappingAction(); // Clears editor and 'Update' button
        };
        ```

2.  **Fix `showMoveToDialog`**:
    -   The "Move To" (Sposta in posizione) action currently does not use `mIsUpdatingUI` at all when calling `setSelection()`, causing the moved item to always load into the editor.
    -   **Solution:** Wrap the reordering logic with `mIsUpdatingUI = true`, use the same `.post()` delay for resetting it, and call `finishMappingAction()`.
    -   Update the `setPositiveButton` callback:
        ```java
        b.setPositiveButton(R.string.btn_ok, (d, w) -> { 
            try { 
                int target = Integer.parseInt(input.getText().toString()) - 1; 
                if (target >= 0 && target <= mMappings.size()) { 
                    int oldIdx = mMappings.indexOf(mapping); 
                    mMappings.remove(oldIdx); 
                    if (target > mMappings.size()) target = mMappings.size(); 
                    mMappings.add(target, mapping); 
                    
                    mIsUpdatingUI = true;
                    refreshSpinner(); 
                    mMappedItemsSpinner.setSelection(target + 1); 
                    mMappedItemsSpinner.post(() -> mIsUpdatingUI = false);
                    finishMappingAction();
                } else Toast.makeText(TableCreatorActivity.this, R.string.msg_invalid_pos, 0).show(); 
            } catch (Exception e) {} 
        });
        ```

## Verification
1.  Open Table Creator and add an `include` directive or a normal mapping.
2.  Select it and long-press to open the Order Actions dialog.
3.  Click "Sposta in fondo" (Move to Bottom) or "Sposta in posizione" (Move To).
4.  Verify the item moves in the spinner list.
5.  Verify the edit fields remain empty (or clear out if they had something) and the button says "Add", confirming that the moved item wasn't loaded into the editor.