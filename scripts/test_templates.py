import json
import os
import subprocess
import sys

TEMPLATES_DIR = os.path.abspath(r"assets\templates")
TABLES_DIR = os.path.abspath(r"third_party\Liblouis\tables")
CHECK_EXE = os.path.abspath(r"tools\liblouis\bin_win64\bin\lou_checktable.exe")
TEMP_DIR = os.path.abspath(r"temp_test_tables")

def generate_ctb(template_path, output_path):
    with open(template_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    settings = data.get("settings", {})
    mappings = data.get("mappings", [])
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write("# Generated Test Table\n")
        f.write("include braille-patterns.cti\n")
        f.write("include unicode.dis\n\n")
        
        # Simulating Standard Priority
        script_file = settings.get("scriptFileName", "latinLetterDef6Dots.uti")
        f.write(f"include {script_file}\n")
        
        if "latinLetterDef6Dots.uti" in script_file:
             f.write("space \\x0020 0\nspace \\x00a0 0\n")
             
        for m in mappings:
            op = m["opcode"]
            char = m["char"]
            dots = m["dots"]
            
            # Escape char if needed
            if char:
                char_str = f"\\x{ord(char[0]):04x}"
            else:
                char_str = ""
            
            if op in ["begcaps", "endcaps", "begcapsword", "endcapsword"]:
                f.write(f"{op} {dots}\n")
            elif op in ["numsign", "capsletter", "letsign"]:
                f.write(f"{op} {dots}\n")
            elif char:
                f.write(f"{op} {char_str} {dots}\n")
            else:
                f.write(f"{op} {dots}\n")

def test_template(file_name):
    print(f"Testing {file_name}...")
    template_path = os.path.join(TEMPLATES_DIR, file_name)
    output_ctb = os.path.join(TEMP_DIR, file_name.replace(".json", ".ctb"))
    
    generate_ctb(template_path, output_ctb)
    
    # Set environment variable for Liblouis
    env = os.environ.copy()
    env["LOUIS_TABLEPATH"] = TABLES_DIR
    
    # We use the absolute path for the input file, which is outside the TABLEPATH
    # but Liblouis will search for INCLUDES in the TABLEPATH.
    try:
        result = subprocess.run([CHECK_EXE, os.path.abspath(output_ctb)], capture_output=True, text=True, env=env)
        if result.returncode == 0:
            print(f"  [PASS] {file_name}")
        else:
            print(f"  [FAIL] {file_name}")
        
        if result.stdout:
            print("STDOUT:")
            print(result.stdout)
        if result.stderr:
            print("STDERR:")
            print(result.stderr)
    except Exception as e:
        print(f"  [ERROR] {e}")

if __name__ == "__main__":
    if not os.path.exists(TEMP_DIR):
        os.makedirs(TEMP_DIR)
    
    templates = [f for f in os.listdir(TEMPLATES_DIR) if f.endswith(".json")]
    
    for t in templates:
        test_template(t)
