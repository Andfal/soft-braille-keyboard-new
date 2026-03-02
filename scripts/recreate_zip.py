import os
import zipfile

def create_zip(src_dir, zip_path):
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(src_dir):
            for file in files:
                abs_path = os.path.join(root, file)
                rel_path = os.path.relpath(abs_path, src_dir)
                rel_path = rel_path.replace(os.sep, '/')
                zipf.write(abs_path, rel_path)

if __name__ == '__main__':
    create_zip('temp_zip', 'res/raw/translationtables.zip')
