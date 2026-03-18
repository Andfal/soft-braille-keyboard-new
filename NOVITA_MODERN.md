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
