# Latest Updates - March 18, 2026 (v3)

## 1. Multilingual Voice Dictation Sync
- **Context-Aware Dictation:** Voice input now automatically uses the language of the active Braille table (e.g., Italian dictation for Italian table) regardless of system language settings.
- **Improved Accuracy:** Reduced errors in multi-language workflows by passing the dynamic Locale directly to Google's Speech-to-Text engine.

## 2. Calibration Reliability & Performance
- **Atomic Saving:** Fixed a silent Android bug in SharedPreferences that could cause calibration data loss; we now force a new HashSet instance for every save operation.
- **UI Responsiveness:** Switched from synchronous `commit()` to asynchronous `apply()` for all configuration changes, eliminating micro-lags during typing or calibration.

---

# Ultimi Aggiornamenti - 18 Marzo 2026 (v3)

## 1. Dettatura Vocale Multilingue Sincronizzata
- **Sincronizzazione Lingua:** L'input vocale ora utilizza automaticamente la lingua della tabella Braille attiva (es. dettatura in italiano per tabella italiana) indipendentemente dalla lingua di sistema di Android.
- **Precisione Migliorata:** Ridotti gli errori nei flussi di lavoro multilingua passando il Locale dinamico direttamente al motore Speech-to-Text di Google.

## 2. Affidabilità Calibrazione e Prestazioni
- **Salvataggio Atomico:** Risolto un bug silenzioso di Android nelle SharedPreferences che poteva causare la perdita dei dati di calibrazione; ora forziamo una nuova istanza di HashSet per ogni salvataggio.
- **Reattività UI:** Passaggio da `commit()` sincrono ad `apply()` asincrono per tutti i cambiamenti di configurazione, eliminando micro-lag durante la scrittura o la calibrazione.

# Latest Updates - March 16, 2026 (v2)

## 1. Professional Selection & Deletion Fixes
- **Atomic Deletion Engine:** Refactored the selection deletion logic to use Android Batch Edits. This ensures that deleting text works 100% of the time, even when jumping quickly to the start of the document (solving the "Go to Start" race condition).
- **Inclusive Selection (Classic Feel):** Restored the original Daniel Dalton behavior where the character at the cursor position is automatically included in the selection. This makes granular editing and "Speak Selection" much more intuitive.
- **Direction-Agnostic Editing:** Whether you select forward or backward, the deletion is now perfectly synchronized with the system cursor.

## 2. Global User Documentation
- **New Universal Guide:** Created `GUIDA_UTENTE.html`, a standalone, professional multilingual manual.
- **Language Specifics:** Full documentation for English, Italiano, Español, Polski, and Slovenský, including specialized Braille prefix tables for Grade 1.
- **Easy Navigation:** Features a clickable index for instant access to any language or technical section without requiring external apps or internet.

## 3. Gesture Refinements
- **New Closure Gesture:** Reassigned the keyboard closure gesture to a **1-2 swipe down** to prevent accidental dismissals.
- **Restored Two-Hand Logic:** Fixed and restored the original **HOLD swipe** logic for reliable multi-touch commands.

---

# Ultimi Aggiornamenti - 16 Marzo 2026 (v2)

## 1. Correzioni Professionali Selezione e Cancellazione
- **Motore di Cancellazione Atomica:** Rifattorizzata la logica di eliminazione della selezione tramite "Batch Edits" di Android. Questo garantisce che la cancellazione funzioni sempre, anche quando ci si sposta rapidamente all'inizio del documento (risolto il problema del "Go to Start").
- **Selezione Inclusiva (Feeling Classico):** Ripristinato il comportamento originale di Daniel Dalton in cui il carattere alla posizione del cursore viene incluso automaticamente nella selezione. Questo rende l'editing granulare e la funzione "Leggi Selezione" molto più intuitivi.
- **Editing Indipendente dalla Direzione:** Che si selezioni in avanti o all'indietro, la cancellazione è ora perfettamente sincronizzata con il cursore di sistema.

## 2. Documentazione Utente Globale
- **Nuova Guida Universale:** Creato il file `GUIDA_UTENTE.html`, un manuale multilingua professionale e autonomo.
- **Specifiche per Lingua:** Documentazione completa per Italiano, English, Español, Polski e Slovenský, incluse le tabelle dei prefissi Braille per il Grado 1.
- **Navigazione Semplificata:** Indice cliccabile per l'accesso istantaneo a qualsiasi lingua o sezione tecnica, senza necessità di app esterne o connessione internet.

## 3. Perfezionamento Gesture
- **Nuova Gesture di Chiusura:** La gesture per chiudere la tastiera è stata spostata allo **swipe verso il basso con i tasti 1-2** per evitare chiusure accidentali.
- **Ripristino Logica a Due Mani:** Corretta e ripristinata la logica originale **HOLD swipe** per comandi multi-touch affidabili.
