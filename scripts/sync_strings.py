import xml.etree.ElementTree as ET
import os

def align_strings(source_path, target_path):
    ET.register_namespace('', "")
    source_tree = ET.parse(source_path)
    target_tree = ET.parse(target_path)
    
    source_root = source_tree.getroot()
    target_root = target_tree.getroot()
    
    source_keys = {elem.attrib['name']: elem for elem in source_root if elem.tag == 'string'}
    target_keys = {elem.attrib['name']: elem for elem in target_root if elem.tag == 'string'}
    
    # Check for missing keys in target
    added_count = 0
    for key, elem in source_keys.items():
        if key not in target_keys:
            # Create a copy of the source element to add to target
            new_elem = ET.SubElement(target_root, 'string', {'name': key})
            new_elem.text = elem.text
            added_count += 1
            print(f"Added missing key to Italian: {key}")
            
    # Check for missing keys in source (keys that exist in IT but not in EN)
    for key, elem in target_keys.items():
        if key not in source_keys:
            new_elem = ET.SubElement(source_root, 'string', {'name': key})
            new_elem.text = elem.text
            print(f"Added missing key to English: {key}")

    # Sort elements by name to keep them consistent
    def sort_elements(root):
        elements = list(root)
        # Separate comments and strings if possible, or just sort strings
        strings = [e for e in elements if e.tag == 'string']
        comments = [e for e in elements if e.tag != 'string']
        strings.sort(key=lambda x: x.attrib.get('name', ''))
        
        # Clear and rebuild
        for e in elements:
            root.remove(e)
        for e in strings:
            root.append(e)
            
    sort_elements(source_root)
    sort_elements(target_root)
    
    source_tree.write(source_path, encoding='utf-8', xml_declaration=True)
    target_tree.write(target_path, encoding='utf-8', xml_declaration=True)
    print(f"Alignment complete. Added {added_count} missing strings.")

align_strings('res/values/strings.xml', 'res/values-it/strings.xml')
