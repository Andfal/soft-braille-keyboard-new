import sys
import os
import re

def find_in_file(pattern, file_path, visited_files=None):
    if visited_files is None:
        visited_files = set()
    
    abs_path = os.path.abspath(file_path)
    if abs_path in visited_files:
        return
    visited_files.add(abs_path)
    
    if not os.path.exists(file_path):
        # Try to find it in the same directory as the parent if not found
        return

    # Regex to match the exact dot pattern as a discrete "cell"
    # Matches the pattern if it's surrounded by non-digits 1-8 or start/end of string
    # This handles [@45], @45, 45-12, etc.
    regex_pattern = r'(?<![1-8])' + re.escape(pattern) + r'(?![1-8])'
    
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            for line_num, line in enumerate(f, 1):
                clean_line = line.strip()
                if not clean_line or clean_line.startswith('#'):
                    continue
                
                # Handle includes
                if clean_line.startswith('include '):
                    included_file = clean_line.split()[1]
                    # Search in the same directory as the current file
                    base_dir = os.path.dirname(file_path)
                    find_in_file(pattern, os.path.join(base_dir, included_file), visited_files)
                
                # Search for the pattern in the line
                if re.search(regex_pattern, clean_line):
                    print(f"{file_path}:{line_num}: {clean_line}")
                    
    except Exception as e:
        print(f"Error reading {file_path}: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python find_smart_combination.py <dots> <starting_file>")
        sys.exit(1)
    
    search_pattern = sys.argv[1]
    start_file = sys.argv[2]
    
    print(f"Searching for dots '{search_pattern}' starting from {start_file}...\n")
    find_in_file(search_pattern, start_file)
