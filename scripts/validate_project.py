import os
import json

DIRS_TO_CHECK = [
    r"assets",
    r"res",
    r"src",
    r"scripts",
    r"third_party/Liblouis/tables",
    r"brailleback"
]

EXTENSIONS = ('.json', '.xml', '.ctb', '.utb', '.uti', '.dis', '.java', '.py', '.md', '.txt', '.html')

def validate_file(path):
    # 1. Check Encoding
    try:
        with open(path, 'rb') as f:
            content = f.read()
        content.decode('utf-8')
    except UnicodeDecodeError:
        return False, "Not valid UTF-8"

    # 2. Check JSON syntax if applicable
    if path.endswith('.json'):
        try:
            with open(path, 'r', encoding='utf-8') as f:
                json.load(f)
        except Exception as e:
            return False, f"Invalid JSON: {e}"
            
    return True, "OK"

def main():
    errors = 0
    print("Starting Project Encoding & Integrity Scan...")
    for root_dir in DIRS_TO_CHECK:
        if not os.path.exists(root_dir): continue
        print(f"Scanning {root_dir}...")
        for root, _, files in os.walk(root_dir):
            for file in files:
                if file.endswith(EXTENSIONS):
                    full_path = os.path.join(root, file)
                    ok, msg = validate_file(full_path)
                    if not ok:
                        print(f"  [ERROR] {full_path}: {msg}")
                        errors += 1
    
    if errors == 0:
        print("\nSUCCESS: All scanned files are valid UTF-8 and structurally sound.")
    else:
        print(f"\nFAILURE: Found {errors} corrupted files.")
        exit(1)

if __name__ == "__main__":
    main()
