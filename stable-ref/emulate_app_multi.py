import os
import re

TABLES_DIR = "third_party/Liblouis/tables"
VALID_OPS = ["lowercase", "uppercase", "letter", "digit", "punctuation", "math", "sign", "always", "word", "partword", "litdigit", "midnum"]

def parse_recursive(filename, mappings, seen, depth=0):
    if depth > 10: return
    path = os.path.join(TABLES_DIR, filename)
    if not os.path.exists(path): return
    
    with open(path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'): continue
            
            if line.startswith('include '):
                # Robust parsing for include
                parts = line.split()
                if len(parts) < 2: continue
                inc = parts[1].strip()
                # Handle potential comments after the filename
                if '#' in inc:
                    inc = inc.split('#')[0].strip()
                
                if inc.endswith('.dis') or inc == 'braille-patterns.cti': continue
                parse_recursive(inc, mappings, seen, depth + 1)
                continue
            
            parts = line.split()
            if len(parts) < 2: continue
            
            opcode = parts[0]
            if opcode not in VALID_OPS: continue
            if len(parts) < 3: continue
            
            char_part = parts[1]
            dots_part = parts[2]
            
            c = char_part
            if char_part.startswith('\\x'):
                try:
                    val = int(char_part[2:], 16)
                    if 0x2800 <= val <= 0x28FF: continue
                    c = chr(val)
                except: pass
            elif char_part == '\\s': c = ' '
            
            key = (opcode, c)
            if key not in seen:
                seen.add(key)
                mappings.append((opcode, char_part, dots_part))

def emulate_table(base_file, output_file, lang_label):
    mappings = []
    seen = set()
    parse_recursive(base_file, mappings, seen)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(f"# {output_file}\n")
        f.write(f"# Author: Gemini Emulation ({lang_label})\n")
        f.write(f"#+locale: {lang_label}\n\n")
        f.write("include braille-patterns.cti\n")
        f.write("include unicode.dis\n\n")
        f.write("# --- EXPLODED RULES ---\n")
        for op, char, dots in mappings:
            if char == '\\': char = '\\\\'
            f.write(f"{op} {char} {dots}\n")
    
    print(f"Generata: {output_file} ({len(mappings)} regole)")

# Test cases including Grade 2
test_cases = [
    ("en-ueb-g2.ctb", "esplosa_inglese_g2.ctb", "en")
]

for base, out, lang in test_cases:
    emulate_table(base, out, lang)
