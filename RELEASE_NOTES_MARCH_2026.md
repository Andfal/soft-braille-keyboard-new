# Latest Updates - March 20, 2026 (v5)

## 1. Tabletop Layout: Inverted Y-Axis
- **Context-Specific Inversion:** Implemented an automatic Y-axis inversion exclusively for the **Tabletop Layout**. When the phone is placed on a table, swiping towards the user now correctly triggers actions previously mapped to "swipe up" and vice versa.
- **Improved Intuition:** Physical swipe-up (away from user) now activates **Privacy Mode** (FOUR_UP), while physical swipe-down (towards user) now inserts a **Newline** (FOUR_DOWN) in Tabletop mode.
- **Selective Application:** This change only affects the Tabletop layout, leaving Horizontal and Vertical layouts unchanged.

---

# Ultimi Aggiornamenti - 20 Marzo 2026 (v5)

## 1. Layout da Tavolo: Inversione Asse Y
- **Inversione Specifica per Contesto:** Implementata l'inversione automatica dell'asse Y esclusivamente per il **Layout da Tavolo**. Quando il telefono è appoggiato, lo swipe verso l'utente ora attiva correttamente le azioni precedentemente mappate come "swipe su" e viceversa.
- **Intuizione Migliorata:** Lo swipe fisico verso l'alto (lontano dall'utente) ora attiva la **Modalità Privacy** (FOUR_UP), mentre lo swipe fisico verso il basso (verso l'utente) ora inserisce una **Nuova riga** (FOUR_DOWN) nel layout da tavolo.
- **Applicazione Selettiva:** Questa modifica riguarda solo il layout da tavolo, mantenendo inalterati i layout Orizzontale e Verticale.

# Latest Updates - March 19, 2026 (v4)

## 1. Voice Input "Frozen Touch" Fix
- **State Restoration:** Fixed a critical bug where the keyboard would become "frozen" and unresponsive to touch after voice dictation. 
- **Error Resilience:** The keyboard now correctly resets its listening state even if no speech is detected (ERROR_NO_MATCH), ensuring immediate transition back to Braille typing.
- **Reliable Alternation:** You can now alternate between dictation and typing seamlessly without needing to close and reopen the keyboard.

---

# Ultimi Aggiornamenti - 19 Marzo 2026 (v4)

## 1. Risoluzione "Tocco Congelato" dopo Dettatura
- **Ripristino dello Stato:** Risolto un bug critico per cui la tastiera diventava "congelata" e insensibile al tocco dopo l'uso della dettatura vocale.
- **Resilienza agli Errori:** La tastiera ora resetta correttamente lo stato di ascolto anche se non viene rilevato alcun parlato (ERROR_NO_MATCH), garantendo il ritorno immediato alla scrittura Braille.
- **Alternanza Affidabile:** È ora possibile alternare tra dettatura e scrittura in modo fluido senza dover chiudere e riaprire l'app.

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
