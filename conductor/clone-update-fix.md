# Clone Mode Update Fix Plan

## Objective
Ensure that when the user updates an existing rule in "Clone Mode" (`mIsCloningMode == true`), the rule is updated strictly in place and is never moved by priority sorting. The duplicate dialog should still appear if dots are changed to match an existing combination, but resolving the duplicate (via Overwrite or Add Anyway) must also respect the in-place constraints. Adding new items will continue to respect priority.

## Key Files & Context
- `src/com/dalton/braillekeyboard/TableCreatorActivity.java`
  - Function: `addOrUpdateMapping()`
  - Function: `showDuplicateDialogInternal()`

## Background & Motivation
In the current implementation:
1. Updating an item without changing its dots calls `insertMappingWithPriority`, moving it to the top of its priority block.
2. Updating an item and changing its dots to a unique combination already correctly updates it in place.
3. The duplicate dialog uses `insertMappingWithPriority` when overwriting, which can move items inappropriately in Clone Mode.

## Implementation Steps

1. **Fix In-Place Update for Unchanged Dots:**
   In `addOrUpdateMapping()`, replace the logic for `dupIdx == mEditingIndex` to respect `mIsCloningMode`:
   ```java
        if (mEditingIndex != -1 && dupIdx == mEditingIndex) { 
            int originalIndex = mEditingIndex;
            mMappings.remove(originalIndex);
            if (mIsCloningMode) {
                mMappings.add(originalIndex, m);
            } else {
                insertMappingWithPriority(m, high, originalIndex);
            }
            mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); return; 
        }
   ```

2. **Fix Priority Intervention in Duplicate Dialog (`showDuplicateDialogInternal`):**
   Update the `overBtn` (Overwrite) and `anywayBtn` (Add Anyway) onClick listeners to avoid `insertMappingWithPriority` when in Clone Mode, opting instead for a direct `mMappings.add(targetIndex, newMapping)`.
   ```java
        overBtn.setOnClickListener(v -> {
            if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
            if (!isPreset) {
                int realIdx = mMappings.indexOf(mMappings.get(existingIndex < mMappings.size() ? existingIndex : mMappings.size()-1));
                if (realIdx != -1) mMappings.remove(realIdx);
                if (mIsCloningMode) {
                    mMappings.add(existingIndex < mMappings.size() ? existingIndex : mMappings.size(), newMapping);
                } else {
                    insertMappingWithPriority(newMapping, newMapping.isHighPriority, existingIndex);
                }
            } else {
                if (mIsCloningMode && mEditingIndex != -1) {
                    mMappings.add(mEditingIndex, newMapping);
                } else {
                    insertMappingWithPriority(newMapping, newMapping.isHighPriority, -1);
                }
            }
            mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            mCharEdit.announceForAccessibility(getString(R.string.msg_rule_updated));
            dialog.dismiss();
        });
   ```

   ```java
        anywayBtn.setOnClickListener(v -> {
            int targetPos = (mEditingIndex != -1) ? mEditingIndex : existingIndex;
            if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
            if (!isPreset) {
                if (targetPos > mMappings.size()) targetPos = mMappings.size();
                mMappings.add(targetPos, newMapping);
            } else {
                if (mIsCloningMode) {
                    mMappings.add(targetPos > mMappings.size() ? mMappings.size() : targetPos, newMapping);
                } else {
                    insertMappingWithPriority(newMapping, newMapping.isHighPriority, targetPos);
                }
            }
            mAddMappingBtn.setText(R.string.btn_add); finishMappingAction();
            dialog.dismiss();
        });
   ```

## Verification & Testing
1. **Unchanged Dots:** Edit a cloned item, change only the character/comment, click "Aggiorna". Verify it stays exactly in its original position.
2. **Duplicate Overwrite:** Edit a cloned item, change its dots to match another existing item, click "Aggiorna". The duplicate dialog should appear. Click "Sovrascrivi". The old duplicate should be replaced in its exact position by the updated mapping.
3. **Duplicate Add Anyway:** Edit a cloned item, change dots to match another. Click "Aggiungi Comunque". It should replace the originally edited item in its exact position without moving it to the top.
4. **New Item:** Create a completely new item and mark it as high priority. Verify it is inserted at the top of the non-fixed items, respecting priority.
