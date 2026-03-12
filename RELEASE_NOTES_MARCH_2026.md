# Latest Updates - March 12, 2026

## 1. Advanced Table Management & Export
- **System Table Export:** Users can now export any official system table directly to the public `Download/soft-braille` folder. This allows for external backup or manual editing on other devices.
- **Improved Context Menu:** The long-press menu in the Table Manager now includes a smart deletion logic. When deleting a custom table, the app offers to optionally delete its twin file from the Download folder to keep the device clean.
- **Safe Sharing:** Custom tables are shared as `.ctb` files using a secure FileProvider, compatible with all modern messaging and email apps.

## 2. Professional Table Creator (Rule Explosion)
- **Rule Explosion (Import All):** A new "Import All Rules" feature allows users to "deconstruct" any system table (e.g., Italian Grade 1). The app recursively parses all includes to extract the full alphabet, punctuation, and numbers directly into the editor.
- **Smart Recursive Parser:** The engine follows all library includes but automatically filters out technical infrastructure rules (like Unicode Braille patterns), resulting in a clean, human-readable, and fully editable table.
- **Autonomous Tables:** Tables created via "Rule Explosion" are entirely self-contained, meaning they no longer depend on system files and will work perfectly even if transferred to other devices.

## 3. Precision Search System
- **Smart Search Bar:** Added a surgical search bar in the Table Creator. It dynamically filters rules based on the user's intent:
    - **Single Character:** Finds the exact mapping for that character (no more generic keyword matches).
    - **Numeric Queries:** Searches exclusively within Braille dot combinations (e.g., searching "123" finds only 'l').
    - **Multiple Letters:** Searches across the entire rule description.
- **Real-time Feedback:** A new summary label provides instant visual and vocal (TalkBack) feedback on the number of results found.
- **Auto-Load Logic:** If a search yields exactly one result, the app automatically loads it into the editing fields for instant modification.

## 4. Seamless External Integration
- **Download Folder Sync:** The app now automatically monitors the `Download/soft-braille` folder. Any `.ctb` or `.utb` file copied there manually will appear in the Table Manager with a `[Download]` tag.
- **One-Tap Import:** Tapping an external file automatically imports it into the app's secure internal memory and opens the editor immediately for verification.

---

# Ultimi Aggiornamenti - 12 Marzo 2026

## 1. Gestione Avanzata ed Esportazione
- **Esporta Tabella di Sistema:** Gli utenti possono ora esportare qualsiasi tabella ufficiale direttamente nella cartella pubblica `Download/soft-braille`. Questo permette backup esterni o modifiche manuali su altri dispositivi.
- **Menu Contestuale Migliorato:** Il menu a pressione prolungata nel Gestore Tabelle ora include una logica di eliminazione intelligente. Quando si elimina una tabella, l'app offre di eliminare opzionalmente anche il file gemello nella cartella Download.
- **Condivisione Sicura:** Le tabelle personalizzate sono condivise come file `.ctb` tramite un FileProvider sicuro, compatibile con tutte le moderne app di messaggistica ed email.

## 2. Creatore Tabelle Professionale (Esplosione Regole)
- **Esplosione delle Regole (Importa tutto):** Una nuova funzione "Importa tutte le regole" permette di "smontare" qualsiasi tabella di sistema (es. Italiano Grado 1). L'app scansiona ricorsivamente tutti gli include per estrarre l'alfabeto completo, la punteggiatura e i numeri direttamente nell'editor.
- **Parser Ricorsivo Intelligente:** Il motore segue tutti gli include della libreria ma filtra automaticamente le regole tecniche di infrastruttura (come i pattern Braille Unicode), restituendo una tabella pulita, leggibile e interamente modificabile.
- **Tabelle Autonome:** Le tabelle create tramite "Esplosione" sono interamente indipendenti, non dipendono più dai file di sistema e funzioneranno perfettamente anche se trasferite su altri dispositivi.

## 3. Sistema di Ricerca di Precisione
- **Barra di Ricerca Intelligente:** Aggiunta una barra di ricerca "chirurgica" nel Creatore Tabelle. Filtra dinamicamente le regole in base all'intento dell'utente:
    - **Carattere Singolo:** Trova la mappatura esatta per quel carattere (niente più risultati generici).
    - **Query Numeriche:** Cerca esclusivamente tra le combinazioni di punti Braille (es. cercando "123" trova solo la 'l').
    - **Lettere Multiple:** Cerca in tutta la descrizione della regola.
- **Feedback in Tempo Reale:** Un'etichetta di riepilogo fornisce feedback visivo e vocale (TalkBack) istantaneo sul numero di risultati trovati.
- **Logica di Caricamento Automatico:** Se una ricerca produce un solo risultato, l'app lo carica automaticamente nei campi di modifica per una personalizzazione istantanea.

## 4. Integrazione Esterna Semplificata
- **Sincronizzazione Cartella Download:** L'app ora monitora automaticamente la cartella `Download/soft-braille`. Qualsiasi file `.ctb` o `.utb` copiato lì manualmente apparirà nel Gestore Tabelle con l'etichetta `[Download]`.
- **Importazione con un Tocco:** Toccare un file esterno lo importa automaticamente nella memoria interna sicura dell'app e apre immediatamente l'editor per la verifica.
