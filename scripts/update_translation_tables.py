import os
import shutil
import zipfile
import re

# List of official languages to be included in the non-extended list
CORE_LANGUAGES = [
    'ar', 'bg', 'ca', 'cs', 'da', 'de', 'el', 'en', 'es', 'et', 'fi', 'fr', 
    'gu', 'he', 'hi', 'hr', 'hu', 'is', 'it', 'ja', 'km', 'kn', 'ko', 'lv', 
    'lt', 'ml', 'mr', 'ne', 'nl', 'no', 'pl', 'pt', 'ro', 'ru', 'se', 'sk', 
    'sr', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'yue', 'zh', 'grc', 'si'
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
    # Others
    ('grc-g1', 6, 1, '', 'grc-international-en.utb'),
    ('yue-g1', 6, 1, '', 'zh-hk.ctb'),
    ('ne-g1', 6, 1, 'table_variant_unofficial', 'np-in-g1.utb'),
    ('si-sinhala', 6, 1, '', 'sin.utb'),
    ('unicode-braille', 8, 0, 'Unicode', 'unicode-braille.utb')
]

def analyze_table(file_path):
    """
    Analyzes a Liblouis table file to determine dots (6/8), grade (1/2), and display name.
    """
    dots = 6
    grade = 1
    display_name = ""
    
    file_name = os.path.basename(file_path)
    
    # Heuristic: file names often tell the truth even if incomplete
    if "comp8" in file_name or "8dot" in file_name:
        dots = 8
    if "g2" in file_name:
        grade = 2

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
            
            if meta_name:
                display_name = meta_name.group(1).strip()

            # 2. Search for inclusions of known character sets
            if 'latinLetterDef8Dots.uti' in content or 'text_nabcc.dis' in content:
                dots = 8
            elif 'latinLetterDef6Dots.uti' in content or 'digits6Dots.uti' in content:
                # Only set to 6 if not already forced to 8 by metadata
                if not meta_dots or int(meta_dots.group(1)) != 8:
                    dots = 6

            # 3. Deep Scan for dot patterns (ignoring comments and braille-patterns.cti)
            if dots == 6 and "braille-patterns.cti" not in file_name:
                lines = content.splitlines()
                for line in lines:
                    clean_line = line.split('#')[0].strip()
                    if re.search(r'\b[12345678]*[78][12345678]*\b', clean_line):
                        dots = 8
                        break

    except Exception as e:
        print(f"Error analyzing {file_name}: {e}")

    return dots, grade, display_name

def generate_tablelist_xml(index_entries):
    """
    Generates tablelist.xml based on analyzed entries and CORE_LANGUAGES.
    """
    print("Generating tablelist.xml automatically...")
    xml_header = '<?xml version="1.0" encoding="utf-8"?>\n<table-list>\n'
    xml_footer = '</table-list>\n'
    
    # Track which files are already handled by manual mappings
    handled_files = set(m[4] for m in OFFICIAL_MAPPINGS)
    
    # Store candidates for each core language
    candidates = {} # lang -> {'6': [], '8': []}
    for entry in index_entries:
        fname, dots, grade, display_name = entry.split('|')
        if fname in handled_files: continue
        
        # Get language from filename (e.g. ar-ar-g1.utb -> ar)
        lang = fname.split('-')[0].split('.')[0]
        if lang in CORE_LANGUAGES:
            if lang not in candidates: candidates[lang] = {'6': [], '8': []}
            candidates[lang][str(dots)].append({
                'fname': fname, 'dots': dots, 'grade': grade, 'name': display_name
            })

    # Build the table list
    tables_xml = []
    
    # 1. Add Manual Mappings first
    for tid, dots, grade, variant, fname in OFFICIAL_MAPPINGS:
        v_attr = f' variant="{variant}"' if variant else ''
        g_attr = f' grade="{grade}"' if dots == 6 else ''
        # Determine locale from id or fname
        loc = tid.split('-')[0]
        if loc == 'unicode': loc = 'und'
        if loc == 'en': loc = 'en' # Special case for UEB
        if tid == 'en-us-comp8': loc = 'en_US'
        
        tables_xml.append(f'    <table id="{tid}" locale="{loc}" dots="{dots}"{g_attr}{v_attr} fileName="{fname}" />')

    # 2. Add Automatic Core Tables
    for lang in sorted(CORE_LANGUAGES):
        if lang in ['zh', 'en', 'it', 'ne', 'grc', 'yue', 'si']: continue # Handled by manual
        
        if lang in candidates:
            # Pick best 6-dot
            if candidates[lang]['6']:
                # Priority: ends with -g1.ctb, then .tbl, then others
                best6 = sorted(candidates[lang]['6'], key=lambda x: (
                    0 if x['fname'].endswith('-g1.ctb') else 1 if x['fname'].endswith('.tbl') else 2,
                    x['fname']
                ))[0]
                tables_xml.append(f'    <table id="{lang}-g1" locale="{lang}" dots="6" grade="1" fileName="{best6["fname"]}" />')
            
            # Pick best 8-dot
            if candidates[lang]['8']:
                # Priority: ends with -comp8.utb, then others
                best8 = sorted(candidates[lang]['8'], key=lambda x: (
                    0 if x['fname'].endswith('-comp8.utb') else 1 if x['fname'].endswith('-8dot.ctb') else 2,
                    x['fname']
                ))[0]
                tables_xml.append(f'    <table id="{lang}-comp8" locale="{lang}" dots="8" fileName="{best8["fname"]}" />')

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
