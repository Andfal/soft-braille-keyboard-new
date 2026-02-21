import os
import re
import subprocess
import shutil
import zipfile

def update():
    basedir = os.getcwd()
    tablelist_path = os.path.join(basedir, 'brailleback/braille/service/res/xml/tablelist.xml')
    srcdir = os.path.join(basedir, 'third_party/Liblouis/tables')
    temp_dir = os.path.join(basedir, 'temp_zip')
    tables_dest_dir = os.path.join(temp_dir, 'liblouis/tables')
    zip_dst = os.path.join(basedir, 'brailleback/braille/service/res/raw/translationtables.zip')
    copywithdeps_script = os.path.join(basedir, 'brailleback/braille/service/tables/copywithdeps.py')

    if os.path.exists(temp_dir):
        shutil.rmtree(temp_dir)
    os.makedirs(tables_dest_dir)

    # Extract filenames from tablelist.xml
    with open(tablelist_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Simple regex to find fileName="something"
    filenames = re.findall(r'fileName\s*=\s*"([^"]+)"', content)
    
    full_paths = [os.path.join(srcdir, f) for f in filenames]
    
    print(f"Found {len(filenames)} tables in tablelist.xml")

    # Run copywithdeps.py
    # Command: py copywithdeps.py FILE... DESTDIR
    cmd = ['py', copywithdeps_script] + full_paths + [tables_dest_dir]
    print("Running copywithdeps.py...")
    subprocess.run(cmd, check=True)

    # Create ZIP
    print(f"Creating zip at {zip_dst}...")
    with zipfile.ZipFile(zip_dst, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(temp_dir):
            for file in files:
                abs_path = os.path.join(root, file)
                rel_path = os.path.relpath(abs_path, temp_dir)
                rel_path = rel_path.replace(os.sep, '/')
                zipf.write(abs_path, rel_path)
    
    print("Update complete!")

if __name__ == '__main__':
    update()
