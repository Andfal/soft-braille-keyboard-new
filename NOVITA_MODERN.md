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

# Novità Soft Braille Keyboard - Versione MODERN

Data: 18 Marzo 2026

## 1. Architettura di Salvataggio Percentuale (Esclusiva Modern)
- **Indipendenza dalla Risoluzione:** Introdotto un nuovo formato di salvataggio delle coordinate basato su **percentuali dello schermo** (flag ,P).
- **Resilienza:** La calibrazione rimane valida anche al cambio di DPI, risoluzione o passando da uno schermo all'altro su dispositivi pieghevoli.
- **Auto-Rilevamento:** Il sistema riconosce automaticamente se una calibrazione è nel vecchio formato (pixel) o nel nuovo (percentuale).

## 2. Dettatura Vocale Sincronizzata
- **Lingua Dinamica:** L'input vocale rileva la lingua della tabella Braille in uso e la imposta come lingua di dettatura, superando il limite della lingua di sistema.

## 3. Ottimizzazioni SharedPreferences
- **Affidabilità:** Corretto bug del putStringSet che impediva il salvataggio casuale delle calibrazioni.
- **Performance:** Passaggio ad pply() per evitare freeze dell'interfaccia durante i salvataggi configurazione.

## 4. RoadMap Evolutiva
- Vedi file piani futuri.txt per le prossime implementazioni (Feedback Aptico, Room DB per Emoji, Supporto Foldable).
