import os
import shutil
import zipfile

def update():
    basedir = os.getcwd()
    srcdir = os.path.join(basedir, 'third_party/Liblouis/tables')
    temp_dir = os.path.join(basedir, 'temp_zip')
    tables_dest_dir = os.path.join(temp_dir, 'liblouis/tables')
    zip_dst = os.path.join(basedir, 'brailleback/braille/service/res/raw/translationtables.zip')

    print("Cleaning up temporary directory...")
    if os.path.exists(temp_dir):
        shutil.rmtree(temp_dir)
    os.makedirs(tables_dest_dir)

    print(f"Copying ALL tables from {srcdir}...")
    # Copy all files with relevant extensions
    extensions = ('.ctb', '.utb', '.cti', '.uti', '.dis', '.dic', '.tbl', '.dic')
    count = 0
    for file in os.listdir(srcdir):
        if file.endswith(extensions):
            shutil.copy(os.path.join(srcdir, file), tables_dest_dir)
            count += 1
    
    print(f"Copied {count} files.")

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
