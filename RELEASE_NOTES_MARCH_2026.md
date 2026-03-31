# Latest Updates - March 31, 2026 (v11)

## 1. Intelligent Keyboard Help
- **Dynamic Exploration:** Introduced a new "Keyboard Help" feature that allows users to query any Braille combination or character.
- **Instant Search:** Results appear in real-time as you type, explaining what specific dots do (e.g., "Capitalization Indicator") or how to write a specific character (e.g., "A -> dots 6-1" in UEB).
- **Localized Descriptions:** Complex Liblouis technical rules are translated into human-friendly language in both English and Italian (e.g., explaining whole-word contractions or ordinal rules).
- **On-the-fly Detection:** The help system automatically detects table switches made via gestures, ensuring you always get advice for the language you are currently typing.

## 2. Enhanced Table Creator
- **Deep Search:** The search tool now "digs" into inherited system files to find definitions for capital letters, numbers, and indicators (e.g., `base uppercase`, `numsign`, `capsletter`).
- **Inherited Rule Management:** Users can now "disable" inherited characters that cannot be deleted directly (as they are in system files). The app automatically creates a personal override with empty dots.
- **Stability Fixes:** Corrected a critical bug where deleting a mapping while a search filter was active could remove the wrong entry.

---

# Ultimi Aggiornamenti - 31 Marzo 2026 (v11)

## 1. Aiuto Tastiera Intelligente
- **Esplorazione Dinamica:** Introdotta la nuova funzione "Aiuto Tastiera" che permette agli utenti di interrogare qualsiasi combinazione Braille o carattere.
- **Ricerca Istantanea:** I risultati appaiono in tempo reale mentre scrivi, spiegando cosa fanno determinati punti (es. "Indicatore Maiuscola") o come si scrive un carattere (es. "A -> punti 6-1" in UEB).
- **Descrizioni Localizzate:** Le regole tecniche complesse di Liblouis sono tradotte in un linguaggio semplice sia in inglese che in italiano (es. spiegando le contrazioni a parola intera o le regole ordinali).
- **Rilevamento Automatico:** Il sistema di aiuto rileva automaticamente i cambi di tabella effettuati "al volo" tramite gesti, garantendo suggerimenti sempre pertinenti alla lingua in uso.

## 2. Creatore Tabelle Potenziato
- **Ricerca Profonda:** Lo strumento di ricerca ora scansiona anche i file di sistema ereditati per trovare definizioni di maiuscole, numeri e indicatori (es. `base uppercase`, `numsign`, `capsletter`).
- **Gestione Eredità:** Gli utenti possono ora "disattivare" i caratteri ereditati che non possono essere eliminati direttamente (perché residenti in file di sistema). L'app crea automaticamente una sovrascrittura personale con punti vuoti.
- **Correzioni di Stabilità:** Risolto un bug critico per cui l'eliminazione di una mappatura mentre era attivo un filtro di ricerca poteva rimuovere la voce sbagliata.

---

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
- **Modalità Servizio Dormiente:** Il Servizio di Accessibilità della tastiera ora rimane automaticamente dormiente quando viene rilevato Jieshuo. Questo evita conflitti con il "bridge" multi-touch nativo di Jieshuo, garantendo al contempo la piena funzionalità con TalkBack.
- **Operatività Silenziosa:** In modalità Jieshuo, il servizio non richiederà le regioni di bypass (passthrough) ad Android, garantendo la massima stabilità del sistema ed evitando problemi di doppio focus.
- **UX Senza Interruzioni:** La tastiera non chiederà più agli utenti di Jieshuo di abilitare il servizio di accessibilità, riconoscendo che Jieshuo implementa già la "Bridge Mode" nativamente.
