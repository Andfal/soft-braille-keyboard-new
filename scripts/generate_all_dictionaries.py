import urllib.request
import os
import re

# Core languages to process
CORE_LANGUAGES = [
    'ar', 'bg', 'ca', 'cs', 'da', 'de', 'el', 'en', 'es', 'et', 'fi', 'fr', 
    'gu', 'he', 'hi', 'hr', 'hu', 'is', 'it', 'ja', 'km', 'kn', 'ko', 'lv', 
    'lt', 'ml', 'mr', 'ne', 'nl', 'no', 'pl', 'pt', 'ro', 'ru', 'se', 'sk', 
    'sr', 'sv', 'ta', 'te', 'tr', 'uk', 'ur', 'vi', 'yue', 'zh', 'grc', 'si',
    'ckb', 'cy', 'pa', 'sd', 'afr'
]

# Map of language code to LibreOffice folder and .dic file name
LIBREOFFICE_MAP = {
    'it': ('it_IT', 'it_IT.dic'),
    'en': ('en', 'en_US.dic'),
    'ru': ('ru_RU', 'ru_RU.dic'),
    'ar': ('ar', 'ar.dic'),
    'hu': ('hu_HU', 'hu_HU.dic'),
    'pl': ('pl_PL', 'pl_PL.dic'),
    'es': ('es', 'es_ES.dic'),
    'fr': ('fr_FR', 'fr.dic'),
    'de': ('de', 'de_DE_frami.dic'),
    'pt': ('pt_PT', 'pt_PT.dic'),
    'nl': ('nl', 'nl_NL.dic'),
    'sv': ('sv_SE', 'sv_SE.dic'),
    'no': ('no', 'no.dic'),
    'da': ('da_DK', 'da_DK.dic'),
    'cs': ('cs_CZ', 'cs_CZ.dic'),
    'sk': ('sk_SK', 'sk_SK.dic'),
    'ro': ('ro', 'ro.dic'),
    'bg': ('bg_BG', 'bg_BG.dic'),
    'hr': ('hr_HR', 'hr_HR.dic'),
    'sr': ('sr', 'sr.dic'),
    'uk': ('uk_UA', 'uk_UA.dic'),
    'tr': ('tr_TR', 'tr_TR.dic'),
    'el': ('el_GR', 'el_GR.dic'),
    'ca': ('ca', 'ca.dic'),
    'et': ('et_EE', 'et_EE.dic'),
    'lt': ('lt', 'lt.dic'),
    'lv': ('lv_LV', 'lv_LV.dic'),
    'he': ('he_IL', 'he_IL.dic'),
    'hi': ('hi_IN', 'hi_IN.dic'),
    'ne': ('ne_NP', 'ne_NP.dic'),
    'vi': ('vi', 'vi.dic'),
}

def download_url(url):
    try:
        req = urllib.request.Request(
            url, 
            headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'}
        )
        with urllib.request.urlopen(req, timeout=10) as response:
            return response.read().decode('utf-8', errors='ignore')
    except Exception as e:
        # Fine if some URLs fail or are not found
        return None

SINGLE_LETTER_WORDS = {
    'en': {'a', 'i', 'o'},
    'it': {'a', 'e', 'i', 'o', 'u'},
    'es': {'a', 'e', 'o', 'u', 'y'},
    'fr': {'a', 'y', 'ô'},
    'pt': {'a', 'e', 'o'},
    'de': {'o'},
    'nl': {'u', 'a', 'i', 'o'},
    'sv': {'i', 'å', 'ö'},
    'da': {'i', 'å', 'ø'},
    'no': {'i', 'å', 'ø'},
    'pl': {'a', 'i', 'o', 'u', 'w', 'z'},
    'ru': {'а', 'и', 'о', 'у', 'в', 'с', 'к', 'я'},
    'uk': {'а', 'і', 'и', 'о', 'у', 'в', 'з', 'я'},
    'bg': {'а', 'и', 'о', 'у', 'в', 'с', 'к', 'я'},
    'cs': {'a', 'i', 'o', 'u', 'v', 's', 'k', 'z'},
    'sk': {'a', 'i', 'o', 'u', 'v', 's', 'k', 'z'},
    'hr': {'a', 'i', 'o', 'u', 's', 'k', 'v'},
    'sr': {'а', 'и', 'о', 'у', 'с', 'к', 'в'},
    'tr': {'o', 'a'},
    'el': {'ο', 'η', 'α', 'ι'},
    'ca': {'a', 'e', 'o', 'u'},
    'et': {'a', 'e', 'i', 'o', 'u'},
    'lt': {'a', 'i', 'o', 'u'},
    'lv': {'a', 'i', 'o', 'u'},
}

def clean_and_validate_word(word, lang):
    # Normalize curly apostrophes to straight apostrophes
    word = word.replace("\u2019", "'")
    # Strip leading/trailing apostrophes
    w = word.strip("'")
    if not w:
        return None
    # Check length
    if len(w) == 1:
        if not w.isalpha():
            return None
        if lang in SINGLE_LETTER_WORDS:
            if w.lower() in SINGLE_LETTER_WORDS[lang]:
                return w
            return None
        return w # Fallback for other languages
    # Check if all characters are letters or internal apostrophes
    if all(c.isalpha() or c == "'" for c in w):
        return w
    return None

def process_language(lang, output_dir):
    print(f"\n--- Processing language: {lang} ---")
    
    # 1. Try to download LibreOffice stems
    libre_words = set()
    if lang in LIBREOFFICE_MAP:
        folder, filename = LIBREOFFICE_MAP[lang]
        url = f"https://raw.githubusercontent.com/LibreOffice/dictionaries/master/{folder}/{filename}"
        print(f"Downloading LibreOffice stems from: {url}")
        dic_content = download_url(url)
        if dic_content:
            count = 0
            for line in dic_content.splitlines():
                line = line.strip()
                if not line or '/' in line and line.startswith('/'):
                    continue
                # Strip flags
                word = line.split('/')[0].strip().lower()
                # Clean and validate (supports unicode letters and apostrophes)
                validated = clean_and_validate_word(word, lang)
                if validated:
                    libre_words.add(validated)
                    count += 1
            print(f"Loaded {count} stems from LibreOffice.")
        else:
            print("LibreOffice dictionary not found or failed to download.")
    else:
        print("No LibreOffice mapping defined for this language.")

    # 2. Try to download Frequency list
    freq_words = []
    # Major languages get larger word counts, minor languages smaller to save space
    limit = 60000 if lang in ['it', 'en', 'es', 'fr', 'de', 'ru', 'pl'] else 30000
    
    url = f"https://raw.githubusercontent.com/hermitdave/FrequencyWords/master/content/2016/{lang}/{lang}_full.txt"
    print(f"Downloading Frequency list from: {url}")
    freq_content = download_url(url)
    
    if freq_content:
        count = 0
        seen = set()
        for line in freq_content.splitlines():
            parts = line.strip().split()
            if not parts:
                continue
            word = parts[0].strip().lower()
            validated = clean_and_validate_word(word, lang)
            if validated:
                if validated not in seen:
                    seen.add(validated)
                    freq_words.append(validated)
                    count += 1
                    if count >= limit:
                        break
        print(f"Loaded {len(freq_words)} frequency words.")
    else:
        print("Frequency list not found or failed to download.")

    # 3. Merge lists
    # We keep the frequency order first, then append any remaining LibreOffice stems
    merged_words = []
    seen_merged = set()
    
    for w in freq_words:
        if w not in seen_merged:
            seen_merged.add(w)
            merged_words.append(w)
            
    for w in libre_words:
        if w not in seen_merged:
            seen_merged.add(w)
            merged_words.append(w)

    if not merged_words:
        print(f"Skipping language {lang} (no words loaded).")
        return False

    # Save to file
    out_file = os.path.join(output_dir, f"{lang}.txt")
    print(f"Saving {len(merged_words)} words to {out_file}...")
    with open(out_file, "w", encoding="utf-8") as f:
        for w in merged_words:
            f.write(w + "\n")
    return True

if __name__ == "__main__":
    project_root = r"C:\Users\sergi\StudioProjects\soft-braille-keyboard"
    output_dir = os.path.join(project_root, "assets", "dictionaries")
    os.makedirs(output_dir, exist_ok=True)
    
    success_count = 0
    for lang in CORE_LANGUAGES:
        if process_language(lang, output_dir):
            success_count += 1
            
    print(f"\n========================================")
    print(f"Finished! Successfully generated {success_count} dictionaries.")
    print(f"========================================")
