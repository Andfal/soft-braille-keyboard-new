# Latest Updates - April 3, 2026 (v12)

## 1. Absolute User Priority in Table Creator
- **Smart Include Ordering:** Re-engineered the table generation engine to prioritize user-selected Alphabet and Number Systems over inherited base tables. If you choose Cyrillic over an Italian base, your Cyrillic characters now correctly override the default Latin ones.
- **Explicit "None" Options:** Added "None" as the default option for both Alphabet and Number System spinners. This allows experts to build tables from scratch without unwanted system rules interfering.
- **Consolidated "Export":** The 'Export' feature now uses the exact same generation logic as 'Save', ensuring 100% consistency between local and shared files.
- **Cleaner Table Files:** Removed redundant system includes (like unicode.dis duplications) for leaner, more professional-looking .ctb files.

## 2. Global Version Synchronization
- **Parity Achievement:** Successfully aligned the Modern (AndroidX) and Stable (Legacy) branches. Both now share the same feature set, including the v11 Intelligent Keyboard Help and Advanced Rule Search.

---

# Ultimi Aggiornamenti - 3 Aprile 2026 (v12)

## 1. PrioritÃ  Assoluta dell'Utente nel Creatore Tabelle
- **Ordinamento Include Intelligente:** Riprogettato il motore di generazione per dare precedenza ad Alfabeto e Sistemi Numerici scelti dall'utente rispetto alle tabelle ereditate. Se scegli il Cirillico sopra una base Italiana, i caratteri cirillici ora sovrascrivono correttamente quelli latini predefiniti.
- **Opzioni "Nessuno" Esplicite:** Aggiunta l'opzione "Nessuno" (None) come scelta predefinita per gli spinner di Alfabeto e Sistema Numerico. Questo permette agli esperti di costruire tabelle da zero senza interferenze non volute.
- **Esportazione Consistente:** La funzione 'Esporta' ora utilizza la stessa logica di generazione del salvataggio locale, garantendo una coerenza del 100% tra i file.
- **File Tabella piÃ¹ Puliti:** Rimossa l'inclusione ridondante di unicode.dis nei file generati per ottenere file .ctb piÃ¹ snelli e professionali.

## 2. Sincronizzazione Globale delle Versioni
- **Raggiungimento ParitÃ :** Allineati i rami Moderno (AndroidX) e Stabile (Legacy). Entrambi ora condividono lo stesso set di funzionalitÃ , inclusi l'Aiuto Tastiera Intelligente e la Ricerca Regole Avanzata della v11.

---

# Latest Updates - March 26, 2026 (v11)

## 1. Storage Access Framework (SAF) Integration
- **Modern File Synchronization:** Implemented the Storage Access Framework (SAF) to allow users to safely select and synchronize external Braille tables from any location, including the **Download** folder and cloud services.
- **Background I/O:** The synchronization process now runs entirely in the background, ensuring the keyboard remains responsive while processing large table sets.
- **Android 11+ Compatibility:** This update ensures full compliance with modern Android security standards (Scoped Storage), allowing the app to access necessary files without requiring broad "All Files Access" permissions.
- **Modern Implementation:** In the Modern version, utilized `ActivityResultLauncher` for a more robust and lifecycle-aware file picking experience.

## 2. Pixel-Based Calibration & Layout Persistence
- **Absolute Precision:** Migrated the finger calibration system from approximate percentages to absolute pixel coordinates. This ensures that the keyboard recognizes the exact physical touch points across device reboots.
- **Layout Type Memory:** Fixed a bug where the keyboard would occasionally revert to the default 6-dot layout even after an 8-dot calibration. The specific layout type (6 or 8 dots) is now permanently persisted alongside the finger coordinates.
- **Resolution Independence:** Implemented resolution-independent mapping to ensure calibration remains accurate even if the system's DPI or screen resolution settings are changed.

## 3. Table Creator & List Refactoring
- **Dynamic Presets:** Replaced hardcoded table configurations in the Table Creator with a dynamic JSON-based lookup system. This makes it easier to add or update supported languages without modifying the core code.
- **Direct Table Visibility:** Updated the internal `tablelist.xml` to reference `.utb` and `.ctb` files directly instead of opaque master `.tbl` files. This significantly improves the accuracy and visibility of available tables within the Table Creator interface.
- **Code Optimization:** Cleaned up redundant UI methods and legacy code in the `TableCreator` and `TableList` classes, reducing the app's memory footprint and improving maintainability.

---

# Ultimi Aggiornamenti - 26 Marzo 2026 (v11)

## 1. Integrazione Storage Access Framework (SAF)
- **Sincronizzazione File Moderna:** Implementato lo Storage Access Framework (SAF) per consentire agli utenti di selezionare e sincronizzare in sicurezza tabelle Braille esterne da qualsiasi posizione, inclusa la cartella **Download** e i servizi cloud.
- **I/O in Background:** Il processo di sincronizzazione ora avviene interamente in background, garantendo che la tastiera rimanga reattiva durante l'elaborazione di set di tabelle di grandi dimensioni.
- **Compatibilità Android 11+:** Questo aggiornamento garantisce la piena conformità con i moderni standard di sicurezza di Android (Scoped Storage), consentendo all'app di accedere ai file necessari senza richiedere permessi invasivi di "Accesso a tutti i file".
- **Implementazione Moderna:** Nella versione Modern, è stato utilizzato `ActivityResultLauncher` per un'esperienza di selezione file più robusta e consapevole del ciclo di vita dell'applicazione.

## 2. Calibrazione basata su Pixel e Persistenza Layout
- **Precisione Assoluta:** Migrato il sistema di calibrazione delle dita da percentuali approssimate a coordinate in pixel reali. Questo assicura che la tastiera riconosca gli esatti punti fisici di tocco anche dopo il riavvio del dispositivo.
- **Memoria del Tipo di Layout:** Risolto un bug per cui la tastiera a volte tornava al layout predefinito a 6 punti anche dopo una calibrazione a 8 punti. Il tipo specifico di layout (6 o 8 punti) è ora salvato in modo permanente insieme alle coordinate delle dita.
- **Indipendenza dalla Risoluzione:** Implementata una mappatura indipendente dalla risoluzione per garantire che la calibrazione rimanga accurata anche in caso di modifica dei DPI o della risoluzione dello schermo nelle impostazioni di sistema.

## 3. Rifattorizzazione Table Creator e Table List
- **Preset Dinamici:** Sostituiti i preset delle tabelle cablati nel Table Creator con un sistema di ricerca dinamico basato su JSON. Ciò rende più semplice aggiungere o aggiornare le lingue supportate senza modificare il codice sorgente.
- **Visibilità Diretta delle Tabelle:** Aggiornato il file interno `tablelist.xml` per referenziare direttamente i file `.utb` e `.ctb` invece dei file master `.tbl`. Questo migliora significativamente la precisione e la visibilità delle tabelle disponibili nell'interfaccia del Table Creator.
- **Ottimizzazione del Codice:** Puliti i metodi UI ridondanti e il codice legacy nelle classi `TableCreator` e `TableList`, riducendo l'impatto sulla memoria e migliorando la manutenibilità.

# Latest Updates - March 24, 2026 (v10)

## 1. Double-Letter "Swallowing" Fix
- **Intelligent Snapshot:** Implemented a new context-aware check that prevents the keyboard from accidentally discarding intentional double letters (like "pp" or "tt").
- **Chrome Compatibility:** This fix resolves a long-standing conflict where Google Chrome's address bar would cause the first character to be duplicated, but without breaking standard typing of repeated letters.
- **Accurate Input:** The keyboard now takes a "snapshot" of the text field before each stroke to distinguish between actual user input and browser-generated duplications.

## 2. Context-Aware Backspace (UEB & Punctuation)
- **Fluid Deletion:** Refactored the Backspace logic to use a more surgical approach. When deleting a single character, the keyboard now removes only the last Braille cell and re-translates the remaining word.
- **UEB Fix:** By preventing the automatic clearing of the Braille buffer during deletion, the keyboard now correctly maintains context for punctuation (e.g., "?" remains a question mark even after a backspace).
- **Improved Announcements:** Restored the vocal announcement for deleted characters (e.g., "Deleted: p") which was previously missing in certain punctuation contexts.
- **Visual Sync:** Fixed a bug where characters would remain on screen after a backspace when typing specific punctuation marks or starting a new word.

---

# Ultimi Aggiornamenti - 24 Marzo 2026 (v10)

## 1. Risoluzione "Lettere Doppie Inghiottite"
- **Snapshot Intelligente:** Implementato un nuovo controllo contestuale che impedisce alla tastiera di scartare accidentalmente le lettere doppie intenzionali (come "pp" o "tt").
- **Compatibilità Chrome:** Questa correzione risolve un conflitto storico in cui la barra degli indirizzi di Google Chrome causava la duplicazione del primo carattere, ma senza rompere la normale digitazione di lettere ripetute.
- **Input Accurato:** La tastiera ora scatta una "istantanea" del campo di testo prima di ogni tocco per distinguere tra l'input reale dell'utente e le duplicazioni generate dal browser.

## 2. Backspace Intelligente (UEB e Punteggiatura)
- **Cancellazione Fluida:** Rifattorizzata la logica del Backspace per utilizzare un approccio più chirurgico. Quando si cancella un singolo carattere, la tastiera ora rimuove solo l'ultima cella Braille e ricalcola la traduzione della parola rimanente.
- **Risoluzione UEB:** Impedendo lo svuotamento automatico del buffer Braille durante la cancellazione, la tastiera ora mantiene correttamente il contesto per la punteggiatura (es. il "?" rimane un punto interrogativo anche dopo un backspace).
- **Annunci Migliorati:** Ripristinato l'annuncio vocale per i caratteri cancellati (es. "Cancellato: p"), precedentemente assente in alcuni contesti di punteggiatura.
- **Sincronizzazione Visiva:** Risolto un bug per cui i caratteri rimanevano a schermo dopo un backspace durante la digitazione di specifici segni di punteggiatura o all'inizio di una nuova parola.

# Latest Updates - March 24, 2026 (v10)

## 1. Double-Letter "Swallowing" Fix
- **Intelligent Snapshot:** Implemented a new context-aware check that prevents the keyboard from accidentally discarding intentional double letters (like "pp" or "tt").
- **Chrome Compatibility:** This fix resolves a long-standing conflict where Google Chrome's address bar would cause the first character to be duplicated, but without breaking standard typing of repeated letters.
- **Accurate Input:** The keyboard now takes a "snapshot" of the text field before each stroke to distinguish between actual user input and browser-generated duplications.

## 2. Context-Aware Backspace (UEB & Punctuation)
- **Fluid Deletion:** Refactored the Backspace logic to use a more surgical approach. When deleting a single character, the keyboard now removes only the last Braille cell and re-translates the remaining word.
- **Improved Announcements:** Restored the vocal announcement for deleted characters (e.g., "Deleted: p") which was previously missing in certain punctuation contexts.
- **Visual Sync:** Fixed a bug where characters would remain on screen after a backspace when typing specific punctuation marks or starting a new word.

---

# Ultimi Aggiornamenti - 24 Marzo 2026 (v10)

## 1. Risoluzione "Lettere Doppie Inghiottite"
- **Snapshot Intelligente:** Implementato un nuovo controllo contestuale che impedisce alla tastiera di scartare accidentalmente le lettere doppie intenzionali (come "pp" o "tt").
- **Compatibilità Chrome:** Questa correzione risolve un conflitto storico in cui la barra degli indirizzi di Google Chrome causava la duplicazione del primo carattere, ma senza rompere la normale digitazione di lettere ripetute.
- **Input Accurato:** La tastiera ora scatta una "istantanea" del campo di testo prima di ogni tocco per distinguere tra l'input reale dell'utente e le duplicazioni generate dal browser.

## 2. Backspace Intelligente (UEB e Punteggiatura)
- **Cancellazione Fluida:** Rifattorizzata la logica del Backspace per utilizzare un approccio più chirurgico. Quando si cancella un singolo carattere, la tastiera ora rimuove solo l'ultima cella Braille e ricalcola la traduzione della parola rimanente.
- **Annunci Migliorati:** Ripristinato l'annuncio vocale per i caratteri cancellati (es. "Cancellato: p"), precedentemente assente in alcuni contesti di punteggiatura.
- **Sincronizzazione Visiva:** Risolto un bug per cui i caratteri rimanevano a schermo dopo un backspace durante la digitazione di specifici segni di punteggiatura o all'inizio di una nuova parola.

# Latest Updates - March 23, 2026 (v9)

## 1. Tabletop 180° Rotation: Perfect Perkins Mapping
- **Fixed Dot Inversion:** Corrected a bug where activating "Invert keyboard" in Tabletop mode would swap hands but leave the internal dot sequence reversed.
- **Natural Posture:** Now, even with the device rotated 180 degrees (speaker on left), the physical layout remains a perfect Perkins sequence: **3-2-1 on the left hand** and **4-5-6 on the right hand**.
- **Universal Gesture Logic:** Refactored the core gesture engine in `Pad.java` to ensure that physical swipes (UP/DOWN/LEFT/RIGHT) are always correctly remapped when the phone is upside down, regardless of screen orientation.

---

# Ultimi Aggiornamenti - 23 Marzo 2026 (v9)

## 1. Rotazione Da Tavolo a 180°: Mappatura Perkins Perfetta
- **Correzione Inversione Punti:** Risolto un bug per cui attivando "Invert keyboard" in modalità Da Tavolo, le mani venivano scambiate ma la sequenza dei punti all'interno della mano rimaneva speculare.
- **Postura Naturale:** Ora, anche con il dispositivo ruotato di 180 gradi (speaker a sinistra), la disposizione fisica rimane una sequenza Perkins perfetta: **3-2-1 sulla mano sinistra** e **4-5-6 sulla mano destra**.
- **Logica Gesti Universale:** Rifattorizzato il motore dei gesti in `Pad.java` per garantire che gli swipe fisici siano sempre interpretati correttamente rispetto all'utente quando il telefono è capovolto, indipendentemente dall'orientamento dello schermo.

# Latest Updates - March 23, 2026 (v8)

## 1. Tabletop Gesture Alignment (Full Consistency)
- **Gesture Synchronization:** Removed the manual Y-axis inversion in **Tabletop Mode**. Gestures like swiping UP and DOWN are now identical across all keyboard layouts (Vertical and Tabletop). 
- **Predictable Behavior:** Swiping UP always triggers the same action (e.g., Privacy Mode or reading a character) regardless of the chosen layout, ensuring a more intuitive experience when switching modes.
- **Initialization Fix:** Corrected a legacy bug where Tabletop mode was initialized with an inverted layout by default. It now respects the global "Invert keyboard" setting consistently with other pads.

---

# Ultimi Aggiornamenti - 23 Marzo 2026 (v8)

## 1. Allineamento Gesture Da Tavolo (Piena Consistenza)
- **Sincronizzazione Gesture:** Rimossa l'inversione manuale dell'asse Y nella **Modalità Da Tavolo**. Le gesture come lo swipe verso l'ALTO e il BASSO sono ora identiche in tutti i layout (Verticale e Da Tavolo).
- **Comportamento Prevedibile:** Lo swipe verso l'ALTO attiva sempre la stessa azione (es. Modalità Privacy o lettura carattere) indipendentemente dal layout scelto, garantendo un'esperienza più intuitiva nel cambio modalità.
- **Correzione Inizializzazione:** Risolto un bug legacy per cui la modalità Da Tavolo veniva inizializzata con un layout invertito per impostazione predefinita. Ora rispetta l'impostazione globale "Invert keyboard" in modo coerente con gli altri pad.

# Latest Updates - March 21, 2026 (v7)

## 1. Default Tabletop Orientation (Port Left)
- **New Standard:** The Tabletop mode now defaults to functioning with the device's charging port facing **left**. This matches the most natural and requested posture for blind users.
- **Manual 180 Rotation:** If the port needs to face **right**, users can still activate the 'Invert keyboard' (Rotate 180) option in the settings.
- **Global Consistency:** This change has been applied to both the default layout calculation and custom finger calibration, ensuring a seamless experience for all users.

---

# Ultimi Aggiornamenti - 21 Marzo 2026 (v7)

## 1. Orientamento Predefinito Da Tavolo (Porta a Sinistra)
- **Nuovo Standard:** La modalità Da Tavolo ora funziona per impostazione predefinita con la porta di ricarica del dispositivo rivolta verso **sinistra**. Questo risponde alla postura più naturale e richiesta dagli utenti non vedenti.
- **Rotazione Manuale a 180:** Se la porta deve essere rivolta verso **destra**, gli utenti possono comunque attivare l'opzione 'Invert keyboard' (Ruota 180) nelle impostazioni.
- **Consistenza Globale:** Questa modifica è stata applicata sia al calcolo del layout predefinito che alla calibrazione personalizzata delle dita, garantendo un'esperienza coerente per tutti gli utenti.


---

# Latest Updates - March 20, 2026 (v6)

## 1. Jieshuo (Commentary) Intelligent Integration
- **Dormant Service Mode:** The keyboard's Accessibility Service now automatically remains dormant when Jieshuo is detected. This prevents conflicts with Jieshuo's native multi-touch bridge while allowing full functionality with TalkBack.
- **Silent Operation:** In Jieshuo mode, the service will not request Android passthrough regions, ensuring maximum system stability and preventing double-focus issues.
- **Seamless UX:** The keyboard will no longer prompt Jieshuo users to enable the accessibility service, recognizing that Jieshuo provides the necessary "Bridge Mode" out of the box.

---

# Ultimi Aggiornamenti - 20 Marzo 2026 (v6)

## 1. Integrazione Intelligente per Jieshuo (Commentary)
- **Modalità Servizio Dormiente:** Il Servizio di Accessibilità della tastiera ora rimane automaticamente dormiente quando viene rilevato Jieshuo. Questo evita conflitti con il "bridge" multi-touch nativo di Jieshuo, garantendo al contempo la piena funzionalità con TalkBack.
- **Operatività Silenziosa:** In modalità Jieshuo, il servizio non richiederà le regioni di bypass (passthrough) ad Android, garantendo la massima stabilità del sistema ed evitando problemi di doppio focus.
- **UX Senza Interruzioni:** La tastiera non chiederà più agli utenti di Jieshuo di abilitare il servizio di accessibilità, riconoscendo che Jieshuo implementa già la "Bridge Mode" nativamente.

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
