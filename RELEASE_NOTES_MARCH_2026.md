# Latest Updates - March 12, 2026

## 1. Table Cloning & Management
- **Cloning Feature:** Users can now clone any system table (including extended Liblouis tables) to create their own custom version. This is accessible via the new "Clone System Table" button in the Table Manager.
- **Context Menu:** Added a long-press menu in the Table Manager to quickly **Share** or **Delete** custom tables without having to open them in the Creator.
- **Improved Sharing:** Custom tables are shared as `.ctb` files using a secure FileProvider, making them easy to send via messaging apps or email.

## 2. Favorite Tables System
- **Pinned Tables:** Added a new "Favorite Tables" preference. Selected tables will always appear at the top of the selection lists (Literary, Computer, and Switch-on-the-fly).
- **Visual Indicators:** Favorite tables are clearly marked with a star (**★**) icon in all selection menus.
- **Integrated Sorting:** The sorting logic in `PreferenceIME` now prioritizes favorites while maintaining alphabetical order for the rest of the list.

## 3. Global Table Refinement (52 Core Languages)
- **Google Alignment:** Expanded the "Core" languages list to **52**, matching the official Google BrailleBack set. Added support for **Afrikaans, Kurdish, Welsh, Punjabi, and Sindhi**.
- **Manual Mappings:** Implemented specific manual rules for languages with inconsistent Liblouis filenames (e.g., Punjabi `pa` -> `pu`, Sindhi `sd` -> `si`) to ensure reliability.
- **Russian Fixed:** Corrected the Russian Grade 1 mapping to point to `ru-litbrl.ctb`, ensuring proper literary Braille with number sign (#3456) support.
- **Multi-Grade Support:** The official list now automatically includes all available grades (1, 2, and 3) for each core language.

## 4. Advanced Heuristics & Deduplication
- **Refined Analysis:** Improved the `analyze_table` script to accurately distinguish between 6-dot and 8-dot tables by prioritizing primary character sets over secondary display tables.
- **Smart Grade Detection:** Updated detection logic to require the `contraction` opcode for Grade 2, preventing false positives in Grade 1 tables that use `word` for symbols (like Italian and French).
- **No Duplicates:** Fixed a bug that caused manually mapped languages to appear twice in the selection list.

---

# Ultimi Aggiornamenti - 12 Marzo 2026

## 1. Clonazione e Gestione Tabelle
- **Funzione Clona:** Gli utenti possono ora clonare qualsiasi tabella di sistema (comprese le tabelle Liblouis estese) per crearne una propria versione personalizzata. Funzione accessibile tramite il nuovo pulsante "Clona tabella di sistema".
- **Menu Contestuale:** Aggiunto un menu a pressione prolungata nel Gestore Tabelle per **Condividere** o **Eliminare** rapidamente le tabelle personalizzate.
- **Condivisione Migliorata:** Le tabelle vengono condivise come file `.ctb` tramite un FileProvider sicuro, rendendole facili da inviare via app di messaggistica o email.

## 2. Sistema Tabelle Preferite
- **Tabelle Appuntate:** Aggiunta la preferenza "Tabelle Preferite". Le tabelle selezionate appariranno sempre in cima alle liste di selezione (Letteraria, Informatica e Cambio al volo).
- **Indicatori Visuali:** Le tabelle preferite sono chiaramente contrassegnate da una stella (**★**) in tutti i menu di selezione.
- **Ordinamento Integrato:** La logica di ordinamento in `PreferenceIME` ora dà priorità ai preferiti mantenendo l'ordine alfabetico per il resto della lista.

## 3. Perfezionamento Tabelle Globali (52 Lingue Core)
- **Allineamento Google:** Espanso l'elenco delle lingue "Core" a **52**, eguagliando il set ufficiale di Google BrailleBack. Aggiunto il supporto per **Afrikaans, Curdo, Gallese, Punjabi e Sindhi**.
- **Mappature Manuali:** Implementate regole manuali per lingue con nomi file Liblouis incoerenti (es. Punjabi `pa` -> `pu`, Sindhi `sd` -> `si`) per garantire la massima affidabilità.
- **Russo Corretto:** Corretta la mappatura del Russo Grado 1 verso `ru-litbrl.ctb`, garantendo il Braille letterario standard con supporto al segnanumero (#3456).
- **Supporto Multi-Grado:** La lista ufficiale ora include automaticamente tutti i gradi disponibili (1, 2 e 3) per ogni lingua core.

## 4. Euristiche Avanzate e Deduplicazione
- **Analisi Affinata:** Migliorato lo script `analyze_table` per distinguere accuratamente tra tabelle a 6 e 8 punti, dando priorità ai set di caratteri primari rispetto alle tabelle di visualizzazione secondarie.
- **Rilevamento Gradi Intelligente:** Aggiornata la logica di rilevamento che ora richiede l'opcode `contraction` per il Grado 2, evitando falsi positivi nelle tabelle di Grado 1 che usano `word` per i simboli (come Italiano e Francese).
- **Eliminazione Duplicati:** Risolto un bug che causava la comparsa doppia delle lingue mappate manualmente nella lista di selezione.
