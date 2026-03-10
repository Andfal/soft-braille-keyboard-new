import os
import shutil
import zipfile

def update():
    basedir = os.getcwd()
    srcdir = os.path.join(basedir, 'third_party/Liblouis/tables')
    temp_dir = os.path.join(basedir, 'temp_zip')
    tables_dest_dir = os.path.join(temp_dir, 'liblouis/tables')
    zip_dst = os.path.join(basedir, 'brailleback/braille/service/res/raw/translationtables.zip')
    assets_dir = os.path.join(basedir, 'brailleback/braille/service/assets')
    index_file = os.path.join(assets_dir, 'liblouis_files.txt')

    print("Cleaning up temporary directory...")
    if os.path.exists(temp_dir):
        shutil.rmtree(temp_dir)
    os.makedirs(tables_dest_dir)

    if not os.path.exists(assets_dir):
        os.makedirs(assets_dir)

    print(f"Copying ALL tables from {srcdir}...")
    # Copy all files with relevant extensions
    extensions = ('.ctb', '.utb', '.cti', '.uti', '.dis', '.dic', '.tbl')
    count = 0
    all_files = []
    for file in sorted(os.listdir(srcdir)):
        if file.endswith(extensions):
            shutil.copy(os.path.join(srcdir, file), tables_dest_dir)
            all_files.append(file)
            count += 1
    
    print(f"Copied {count} files.")

    # Generate index file for dynamic loading
    print(f"Generating index file at {index_file}...")
    with open(index_file, 'w') as f:
        for file in all_files:
            f.write(file + '\n')

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
