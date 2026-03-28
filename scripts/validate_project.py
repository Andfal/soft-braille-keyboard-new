import os
import json
import argparse

# Common Mojibake patterns (broken UTF-8 sequences that are technically valid UTF-8 but look wrong)
MOJIBAKE_PATTERNS = [
    'Ã ', 'Ã ', 'Ã¨', 'Ã©', 'Ã¬', 'Ã²', 'Ã¹', 'Ã«', 'Ã¤', 'Ã¶', 'Ã¼', 'Ã¢', 'Ãª', 'Ã®', 'Ã´', 'Ã»', 'Ã§', 'Ã±', 'Ã¡', 'Ã³', 'Ãº', 'Å“', 'â‚¬', 'Ã€', 'Ã‰'
]

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
            raw_content = f.read()
        content = raw_content.decode('utf-8')
    except UnicodeDecodeError:
        return False, "Not valid UTF-8"

    # 2. Check for Mojibake (broken accents)
    # Exclude Liblouis tables as they might have deliberate escape sequences
    if not 'Liblouis' in path and not 'brailleback' in path:
        for pattern in MOJIBAKE_PATTERNS:
            if pattern in content:
                # Find line number for better reporting
                lines = content.split('\n')
                for i, line in enumerate(lines):
                    if pattern in line:
                        return False, f"Mojibake (Broken Accent) found: '{pattern}' at line {i+1}"

    # 3. Check JSON syntax if applicable
    if path.endswith('.json'):
        try:
            json.loads(content)
        except Exception as e:
            return False, f"Invalid JSON: {e}"

    return True, "OK"

def main():
    parser = argparse.ArgumentParser(description='Validate project encoding and integrity.')
    parser.add_argument('--project-path', type=str, default='.', help='Path to the project root.')
    args = parser.parse_args()

    project_root = args.project_path
    errors = 0
    print(f"Starting Project Encoding & Integrity Scan in: {project_root}")
    
    for relative_dir in DIRS_TO_CHECK:
        full_dir_path = os.path.join(project_root, relative_dir)
        if not os.path.exists(full_dir_path):
            print(f"Skipping missing directory: {relative_dir}")
            continue
            
        print(f"Scanning {relative_dir}...")
        for root, _, files in os.walk(full_dir_path):
            for file in files:
                if file.endswith(EXTENSIONS):
                    full_path = os.path.join(root, file)
                    ok, msg = validate_file(full_path)
                    if not ok:
                        # Print path relative to project root
                        rel_path = os.path.relpath(full_path, project_root)
                        print(f"  [ERROR] {rel_path}: {msg}")
                        errors += 1

    if errors == 0:
        print("\nSUCCESS: All scanned files are valid UTF-8, mojibake-free, and structurally sound.")
    else:
        print(f"\nFAILURE: Found {errors} corrupted or broken files.")
        exit(1)

if __name__ == "__main__":
    main()
