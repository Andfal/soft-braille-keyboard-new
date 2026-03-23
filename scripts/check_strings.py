
import xml.etree.ElementTree as ET
import os

def get_string_keys(file_path):
    if not os.path.exists(file_path):
        return set()
    tree = ET.parse(file_path)
    root = tree.getroot()
    return {child.get('name') for child in root if child.tag == 'string'}

en_path = 'res/values/strings.xml'
it_path = 'res/values-it/strings.xml'

en_keys = get_string_keys(en_path)
it_keys = get_string_keys(it_path)

only_en = en_keys - it_keys
only_it = it_keys - en_keys

print(f"Total English keys: {len(en_keys)}")
print(f"Total Italian keys: {len(it_keys)}")

if only_en:
    print("\nKeys present ONLY in English (Missing in Italian):")
    for key in sorted(only_en):
        print(f"  - {key}")
else:
    print("\nNo keys missing in Italian.")

if only_it:
    print("\nKeys present ONLY in Italian (Orphan/Legacy):")
    for key in sorted(only_it):
        print(f"  - {key}")
else:
    print("\nNo extra keys in Italian.")
