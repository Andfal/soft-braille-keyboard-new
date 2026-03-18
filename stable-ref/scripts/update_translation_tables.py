import os
import shutil
import zipfile
import re

# List of official languages to be included in the non-extended list
CORE_LANGUAGES = [
    'ar', 'bg', 'ca', 'cs', 'da', 'de', 'el', 'en', 'es', 'et', 'fi', 'fr', 
    'gu', 'he', 'hi', 'hr', 'hu', 'is', 'it', 'ja', 'km', 'kn', 'ko', 'lv', 
    'lt', 'ml', 'mr', 'ne', 'nl', 'no', 'pl', 'pt', 'ro', 'ru', 'se', 'sk', 
    'sr', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'yue', 'zh', 'grc', 'si',
    'ckb', 'cy', 'pa', 'sd', 'afr'
]

# Manual mappings for complex cases (id, dots, grade, variant, fileName)
# If a language is here, automatic selection for that category is skipped.
OFFICIAL_MAPPINGS = [
    # Chinese
    ('zh-china-common', 6, 1, 'Common (China)', 'zhcn-g1.ctb'),
    ('zh-china-tones', 6, 1, 'With tones (China)', 'zhcn-cbs.ctb'),
    ('zh-china-no-tones', 6, 1, 'Without tones (China)', 'zhcn-g2.ctb'),
    ('zh-taiwan', 6, 1, 'Taiwan', 'zh-tw.ctb'),
    # English
    ('en-ueb-g1', 6, 1, 'UEB', 'en-ueb-g1.ctb'),
    ('en-ueb-g2', 6, 2, 'UEB', 'en-ueb-g2.ctb'),
    ('en-us-comp8', 8, 0, '', 'en-us-comp8.ctb'),
    # Italian
    ('it-g1', 6, 1, 'table_variant_unofficial', 'it-it-g1.ctb'),
    ('it-comp8', 8, 0, 'table_variant_unofficial', 'it-it-comp8.utb'),
    # Russian (ru) - Ordered: G1, G2, Comp8
    ('ru-g1', 6, 1, '', 'ru-litbrl.ctb'),
    ('ru-g2', 6, 2, 'Contracted', 'ru-ru-g1.ctb'),
    ('ru-comp8', 8, 0, '', 'ru-comp8.utb'),
    # Kurdish (ckb)
    ('ckb-g1', 6, 1, '', 'ckb-g1.ctb'),
    # Welsh (cy)
    ('cy-g1', 6, 1, '', 'cy-cy-g1.utb'),
    ('cy-g2', 6, 2, '', 'cy-cy-g2.ctb'),
    # Punjabi (pa) - Manual because Liblouis uses 'pu-' prefix for files
    ('pa-g1', 6, 1, '', 'pu-in-g1.utb'),
    # Sindhi (sd) - Manual because Liblouis uses 'si-' prefix (shares with Sinhala)
    ('sd-g1', 6, 1, '', 'si-in-g1.utb'),
    # Others
    ('grc-g1', 6, 1, '', 'grc-international-en.utb'),
    ('yue-g1', 6, 1, '', 'zh-hk.ctb'),
    ('ne-g1', 6, 1, 'table_variant_unofficial', 'np-in-g1.utb'),
    ('si-sinhala', 6, 1, '', 'sin.utb'),
    ('unicode-braille', 8, 0, 'Unicode', 'unicode-braille.utb')
]

def analyze_table(file_path):
    """
    Analyzes a Liblouis table file to determine dots (6/8), grade (1/2/3), and display name.
    Uses metadata, include signatures, and opcode scanning.
    """
    dots = 6
    grade = 1
    display_name = ""
    
    file_name = os.path.basename(file_path)
    
    # Heuristic: file names often tell the truth even if incomplete
    if "comp8" in file_name or "8dot" in file_name:
        dots = 8
    if "-g2" in file_name:
        grade = 2
    elif "-g3" in file_name:
        grade = 3

    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            
            # 1. Search for explicit metadata (Standard Liblouis headers)
            meta_dots = re.search(r'^#\+\s*dots:\s*(\d)', content, re.MULTILINE)
            if meta_dots:
                dots = int(meta_dots.group(1))
            
            meta_type = re.search(r'^#\+\s*type:\s*(\w+)', content, re.MULTILINE)
            if meta_type:
                if meta_type.group(1).lower() == 'computer':
                    dots = 8
                elif meta_type.group(1).lower() == 'literary':
                    dots = 6

            meta_grade = re.search(r'^#\+\s*grade:\s*(\d)', content, re.MULTILINE)
            if meta_grade:
                grade = int(meta_grade.group(1))

            meta_name = re.search(r'^#\s*liblouis:\s*(.*)', content, re.MULTILINE)
            if not meta_name:
                meta_name = re.search(r'^#-\s*display-name:\s*(.*)', content, re.MULTILINE)
            if not meta_name:
                meta_name = re.search(r'^#-index-name:\s*(.*)', content, re.MULTILINE)
            
            if meta_name:
                display_name = meta_name.group(1).strip()

            # 2. Search for inclusions of known character sets (Signatures)
            # 6-dot signatures have high priority for literary tables
            if any(sig in content for sig in ['latinLetterDef6Dots.uti', 'digits6Dots.uti', 'litdigits6Dots.uti', 'en-ueb-chardefs.uti', 'de-chardefs6.cti']):
                dots = 6
            # 8-dot signatures
            elif any(sig in content for sig in ['latinLetterDef8Dots.uti', 'digits8Dots.uti', 'text_nabcc.dis', 'de-chardefs8.cti']):
                dots = 8
            # Only set to 8 if forced by meta
            if meta_dots and int(meta_dots.group(1)) == 8:
                dots = 8
            elif meta_type and meta_type.group(1).lower() == 'computer':
                dots = 8

            # Grade 2/3 signatures
            if any(sig in content for sig in ['g2-core.cti', 'g2-rules.cti']):
                if grade < 2: grade = 2
            
            # 3. Opcode scanning for contractions (Grade 2/3 marker)
            if grade < 2:
                # Require 'contraction' as the primary marker for Grade 2
                if re.search(r'^contraction\s+', content, re.MULTILINE):
                    grade = 2

    except Exception as e:
        print(f"Error analyzing {file_name}: {e}")

    return dots, grade, display_name

def generate_tablelist_xml(index_entries):
    """
    Generates tablelist.xml based on analyzed entries and CORE_LANGUAGES.
    Includes all available grades for each core language.
    """
    print("Generating tablelist.xml automatically...")
    xml_header = '<?xml version="1.0" encoding="utf-8"?>\n<table-list>\n'
    xml_footer = '</table-list>\n'
    
    # Track which files are already handled by manual mappings
    handled_files = set(m[4] for m in OFFICIAL_MAPPINGS)
    
    # Store candidates for each core language: lang -> dots -> grade -> list of files
    candidates = {} 
    for entry in index_entries:
        fname, dots, grade, display_name = entry.split('|')
        if fname in handled_files: continue
        
        # Get language from filename (e.g. ar-ar-g1.utb -> ar)
        lang = fname.split('-')[0].split('.')[0]
        if lang in CORE_LANGUAGES:
            if lang not in candidates: candidates[lang] = {'6': {}, '8': {}}
            d_str = str(dots)
            g_str = str(grade)
            if g_str not in candidates[lang][d_str]: candidates[lang][d_str][g_str] = []
            candidates[lang][d_str][g_str].append({
                'fname': fname, 'dots': dots, 'grade': grade, 'name': display_name
            })

    # Build the table list
    tables_xml = []
    
    # 1. Add Manual Mappings first
    for tid, dots, grade, variant, fname in OFFICIAL_MAPPINGS:
        v_attr = f' variant="{variant}"' if variant else ''
        g_attr = f' grade="{grade}"' if dots == 6 else ''
        loc = tid.split('-')[0]
        if loc == 'unicode': loc = 'und'
        if loc == 'en': loc = 'en'
        if tid == 'en-us-comp8': loc = 'en_US'
        
        tables_xml.append(f'    <table id="{tid}" locale="{loc}" dots="{dots}"{g_attr}{v_attr} fileName="{fname}" />')

    # 2. Add Automatic Core Tables
    # Exclude languages already handled manually
    EXCLUDED = ['zh', 'en', 'it', 'ne', 'grc', 'yue', 'si', 'ckb', 'cy', 'pa', 'sd', 'ru']
    
    for lang in sorted(CORE_LANGUAGES):
        if lang in EXCLUDED: continue
        
        if lang in candidates:
            # 6-dot: include ALL available grades
            for grade_val in sorted(candidates[lang]['6'].keys()):
                grade_candidates = candidates[lang]['6'][grade_val]
                # Pick the best file for this specific grade
                best_file = sorted(grade_candidates, key=lambda x: (
                    0 if x['fname'].endswith(f'-g{grade_val}.ctb') else 1 if x['fname'].endswith('.tbl') else 2,
                    x['fname']
                ))[0]
                
                tid = f"{lang}-g{grade_val}"
                tables_xml.append(f'    <table id="{tid}" locale="{lang}" dots="6" grade="{grade_val}" fileName="{best_file["fname"]}" />')
            
            # 8-dot: include ALL (usually grade 0 or 1)
            for grade_val in sorted(candidates[lang]['8'].keys()):
                grade_candidates = candidates[lang]['8'][grade_val]
                best_file = sorted(grade_candidates, key=lambda x: (
                    0 if x['fname'].endswith('-comp8.utb') else 1 if x['fname'].endswith('-8dot.ctb') else 2,
                    x['fname']
                ))[0]
                tid = f"{lang}-comp8" if grade_val in ['0', '1'] else f"{lang}-comp8-g{grade_val}"
                tables_xml.append(f'    <table id="{tid}" locale="{lang}" dots="8" fileName="{best_file["fname"]}" />')

    full_xml = xml_header + '\n'.join(tables_xml) + '\n' + xml_footer
    return full_xml

def update():
    basedir = os.getcwd()
    srcdir = os.path.join(basedir, 'third_party/Liblouis/tables')
    temp_dir = os.path.join(basedir, 'temp_zip')
    tables_dest_dir = os.path.join(temp_dir, 'liblouis/tables')
    zip_dst = os.path.join(basedir, 'brailleback/braille/service/res/raw/translationtables.zip')
    assets_dir = os.path.join(basedir, 'brailleback/braille/service/assets')
    index_file = os.path.join(assets_dir, 'liblouis_files.txt')
    
    xml_paths = [
        os.path.join(basedir, 'res/xml/tablelist.xml'),
        os.path.join(basedir, 'brailleback/braille/service/res/xml/tablelist.xml')
    ]

    print("Cleaning up temporary directory...")
    if os.path.exists(temp_dir):
        shutil.rmtree(temp_dir)
    os.makedirs(tables_dest_dir)

    if not os.path.exists(assets_dir):
        os.makedirs(assets_dir)

    print(f"Analyzing and copying tables from {srcdir}...")
    extensions = ('.ctb', '.utb', '.cti', '.uti', '.dis', '.dic', '.tbl')
    count = 0
    index_entries = []
    
    for file in sorted(os.listdir(srcdir)):
        if file.endswith(extensions):
            src_path = os.path.join(srcdir, file)
            shutil.copy(src_path, tables_dest_dir)
            
            if file.endswith(('.ctb', '.utb', '.tbl')):
                dots, grade, display_name = analyze_table(src_path)
                index_entries.append(f"{file}|{dots}|{grade}|{display_name}")
            
            count += 1
    
    print(f"Copied {count} files.")

    # Generate XML
    tablelist_xml = generate_tablelist_xml(index_entries)
    for path in xml_paths:
        print(f"Writing updated XML to {path}...")
        with open(path, 'w', encoding='utf-8') as f:
            f.write(tablelist_xml)

    # Generate Index
    print(f"Generating enriched index file at {index_file}...")
    with open(index_file, 'w', encoding='utf-8') as f:
        for entry in index_entries:
            f.write(entry + '\n')

    # Create ZIP
    print(f"Creating 'fat' zip at {zip_dst}...")
    with zipfile.ZipFile(zip_dst, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(temp_dir):
            for file in files:
                abs_path = os.path.join(root, file)
                rel_path = os.path.relpath(abs_path, temp_dir)
                rel_path = rel_path.replace(os.sep, '/')
                zipf.write(abs_path, rel_path)
    
    print(f"Update complete! ZIP size: {os.path.getsize(zip_dst) / 1024:.2f} KB")

if __name__ == '__main__':
    update()
