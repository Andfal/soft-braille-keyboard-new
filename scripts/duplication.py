import os

def clean_duplicates(file_path):
    if not os.path.exists(file_path): return
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    seen_keys = set()
    new_lines = []
    # Leggiamo al contrario per tenere l'ultima versione aggiunta (la più recente)
    for line in reversed(lines):
        if '<string name="' in line:
            key = line.split('name="')[1].split('"')[0]
            if key in seen_keys:
                continue
            seen_keys.add(key)
        new_lines.append(line)
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.writelines(reversed(new_lines))

clean_duplicates('res/values/strings.xml')
clean_duplicates('res/values-it/strings.xml')
