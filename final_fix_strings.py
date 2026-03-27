import os
import re

def clean_and_fix_xml(file_path, entries):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Rimuovi tutte le occorrenze delle chiavi problematiche per evitare duplicati
    keys_to_remove = ["btn_sync_folder", "msg_sync_folder_desc", "msg_sync_success", "msg_sync_error", "label_external_synced", "msg_sync_desc"]
    for key in keys_to_remove:
        content = re.sub(f'\\s*<string name="{key}">.*?</string>', '', content)
    
    # Prepara le nuove entry in formato XML pulito
    new_xml_entries = ""
    for key, value in entries.items():
        new_xml_entries += f'    <string name="{key}">{value}</string>\n'
    
    # Inserisci prima della chiusura del tag resources
    content = content.replace('</resources>', new_xml_entries + '</resources>')
    
    # Salva garantendo UTF-8 senza BOM
    with open(file_path, 'w', encoding='utf-8', newline='\n') as f:
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

clean_and_fix_xml(r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\res\values-it\strings.xml', it_entries)
clean_and_fix_xml(r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern\res\values\strings.xml', en_entries)
