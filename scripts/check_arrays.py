import xml.etree.ElementTree as ET

def check_arrays(file_path):
    print(f"Checking {file_path}...")
    tree = ET.parse(file_path)
    root = tree.getroot()
    
    entries = []
    values = []
    
    for string_array in root.findall('string-array'):
        name = string_array.get('name')
        items = [item.text for item in string_array.findall('item')]
        if name == 'braille_action_entries':
            entries = items
        elif name == 'braille_action_values':
            values = items
            
    print(f"  Entries count: {len(entries)}")
    print(f"  Values count: {len(values)}")
    
    if len(entries) != len(values):
        print("  ERROR: Count mismatch!")
    
    for i in range(min(len(entries), len(values))):
        # print(f"  {i}: {entries[i]} -> {values[i]}")
        pass

check_arrays('res/values/strings.xml')
check_arrays('res/values-it/strings.xml')
