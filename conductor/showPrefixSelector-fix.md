# Fix Prefix Selector Positional Shift

## Objective
Prevent the `showPrefixSelector` from shifting lines when a prefix is added to an existing mapping in cloned/external tables.

## Background
The user edits a rule (e.g. `à`), enters the dots of an existing rule (e.g. `è`), triggering the Duplicate Dialog.
From the Duplicate Dialog, the user clicks "Aggiungi Prefisso".
The `showPrefixSelector` dialog appears. The user selects dots for the prefix and clicks OK.
Currently, `showPrefixSelector` removes the edited rule and hardcodes its re-insertion at `targetIndex + 1` (right after the duplicate rule `è`), completely destroying the original position of `à` in external/cloned tables.

## Implementation Steps
Update `showPrefixSelector` in `TableCreatorActivity.java`:
```java
        b.setPositiveButton(R.string.btn_ok, (d, w) -> { 
            int p = 0; for (char c : dotEdit.getText().toString().toCharArray()) p |= (1 << (Character.getNumericValue(c) - 1)); 
            if (p > 0) { 
                List<Integer> pts = new ArrayList<>(); pts.add(p); pts.addAll(mapping.patterns); 
                Mapping newMapping = new Mapping(mapping.opcode, mapping.character, pts, mapping.isHighPriority);
                if (mIsCloningMode || !mIsManagedTable) {
                    if (mEditingIndex != -1) {
                        mMappings.set(mEditingIndex, newMapping);
                    } else {
                        mMappings.add(newMapping);
                    }
                } else {
                    if (mEditingIndex != -1) mMappings.remove(mEditingIndex);
                    if (targetIndex != -1) { int insertAt = targetIndex + 1; if (mEditingIndex != -1 && mEditingIndex < insertAt) insertAt--; if (insertAt > mMappings.size()) insertAt = mMappings.size(); mMappings.add(insertAt, newMapping); }
                    else mMappings.add(mapping.isHighPriority ? 0 : mMappings.size(), newMapping);
                }
                mEditingIndex = -1; mAddMappingBtn.setText(R.string.btn_add); finishMappingAction(); 
            } 
        });
```

This enforces the strict in-place update rule even when the prefix selector is used.