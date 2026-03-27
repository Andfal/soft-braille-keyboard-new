import os
import re

def fix_strings(file_path, new_entries):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Remove old entries
    for key in ["btn_sync_folder", "msg_sync_desc", "msg_sync_success", "msg_sync_error", "label_external_synced", "msg_sync_folder_desc"]:
        content = re.sub(f'\\s*<string name="{key}">.*?</string>', '', content)
    
    # Re-insert
    formatted_entries = ""
    for key, value in new_entries.items():
        formatted_entries += f'    <string name="{key}">{value}</string>\n'
    
    content = content.replace('</resources>', formatted_entries + '</resources>')
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)

it_entries = {
    "btn_sync_folder": "Dai accesso alla cartella per la scansione",
    "msg_sync_folder_desc": "Seleziona la cartella soft-braille per caricare automaticamente i file.",
    "msg_sync_success": "Accesso alla cartella attivato!",
    "msg_sync_error": "Errore durante la richiesta di accesso.",
    "label_external_synced": "[Esterna]"
}

en_entries = {
    "btn_sync_folder": "Grant folder access for scanning",
    "msg_sync_folder_desc": "Select the soft-braille folder to automatically load files.",
    "msg_sync_success": "Folder access activated!",
    "msg_sync_error": "Error requesting folder access.",
    "label_external_synced": "[External]"
}

fix_strings(r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\res\values-it\strings.xml', it_entries)
fix_strings(r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\res\values\strings.xml', en_entries)

# Also update Java code to use the new name
java_path = r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\src\com\dalton\braillekeyboard\TableManagerActivity.java'
with open(java_path, 'r', encoding='utf-8') as f:
    java_content = f.read()
java_content = java_content.replace('R.string.msg_sync_desc', 'R.string.msg_sync_folder_desc')
with open(java_path, 'w', encoding='utf-8') as f:
    f.write(java_content)
