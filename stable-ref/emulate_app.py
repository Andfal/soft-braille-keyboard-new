import os
import re

TABLES_DIR = "third_party/Liblouis/tables"
BASE_FILE = "it-it-g1.ctb"
OUTPUT_FILE = "emulazione_esplosa_italiana.ctb"

VALID_OPS = ["lowercase", "uppercase", "letter", "digit", "punctuation", "math", "sign", "always", "word", "partword", "litdigit", "midnum"]

mappings = []
seen = set()

def parse_dots(dots_part):
    # Simplified version of the app's parseDots
    return dots_part

def parse_recursive(filename, depth=0):
    if depth > 10: return
    path = os.path.join(TABLES_DIR, filename)
    if not os.path.exists(path): return
    
    with open(path, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith('#'): continue
            
            if line.startswith('include '):
                inc = line[8:].strip()
                if inc.endswith('.dis') or inc == 'braille-patterns.cti': continue
                parse_recursive(inc, depth + 1)
                continue
            
            parts = line.split()
            if len(parts) < 2: continue
            
            opcode = parts[0]
            if opcode not in VALID_OPS: continue
            if len(parts) < 3: continue
            
            char_part = parts[1]
            dots_part = parts[2]
            
            # Handle hex
            c = char_part
            if char_part.startswith('\\x'):
                try:
                    val = int(char_part[2:], 16)
                    # Smart Filter: Skip Unicode Braille Patterns
                    if 0x2800 <= val <= 0x28FF: continue
                    c = chr(val)
                except: pass
            elif char_part == '\\s': c = ' '
            
            # Priority check
            key = (opcode, c)
            if key not in seen:
                seen.add(key)
                mappings.append((opcode, char_part, dots_part))

# 1. Explode
parse_recursive(BASE_FILE)

# 2. Build Output (App Logic)
with open(OUTPUT_FILE, 'w', encoding='utf-8') as f:
    f.write(f"# {OUTPUT_FILE}\n")
    f.write("# Author: Gemini Emulation\n")
    f.write("#+locale: it\n\n")
    f.write("include braille-patterns.cti\n")
    f.write("include unicode.dis\n\n")
    f.write("# --- EXPLODED RULES ---\n")
    for op, char, dots in mappings:
        # App fix: escape backslash
        if char == '\\': char = '\\\\'
        f.write(f"{op} {char} {dots}\n")

print(f"Tabella emulata generata: {OUTPUT_FILE} con {len(mappings)} regole.")
