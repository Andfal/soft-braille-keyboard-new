import json
import os

template_dir = 'assets/templates'
files = [f for f in os.listdir(template_dir) if f.endswith('.json')]

results = []

for filename in files:
    path = os.path.join(template_dir, filename)
    try:
        with open(path, 'r', encoding='utf-8') as f:
            data = json.load(f)
            mappings = data.get('mappings', [])
            
            # Check for duplicates (same char or same dots)
            chars = {}
            dots_map = {}
            duplicates = []
            
            for i, m in enumerate(mappings):
                char = m.get('char', '')
                dots = m.get('dots', '')
                opcode = m.get('opcode', '')
                
                if opcode in ['lowercase', 'uppercase', 'punctuation', 'math', 'sign', 'space']:
                    if char:
                        if char in chars:
                            duplicates.append(f"Duplicate char '{char}' at index {i} and {chars[char]}")
                        chars[char] = i
                    
                    if dots and opcode != 'include':
                        if dots in dots_map:
                            # Check if it's a legitimate duplicate (e.g. uppercase and lowercase mapping to same dots)
                            prev_idx = dots_map[dots]
                            prev_m = mappings[prev_idx]
                            if prev_m.get('char') != char:
                                duplicates.append(f"Conflict: Dots '{dots}' used for '{char}' and '{prev_m.get('char')}'")
                        dots_map[dots] = i
            
            if duplicates:
                results.append(f"File: {filename}\n" + "\n".join(duplicates))
            else:
                results.append(f"File: {filename} - OK")
                
    except Exception as e:
        results.append(f"File: {filename} - Error: {str(e)}")

with open('template_analysis.txt', 'w', encoding='utf-8') as f:
    f.write("\n\n".join(results))
