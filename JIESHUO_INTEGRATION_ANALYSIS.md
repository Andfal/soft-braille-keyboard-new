# Analisi Integrazione Jieshuo (Commentary) & Soft Braille Keyboard

Data: 18 Marzo 2026
Oggetto: Meccanismo di interazione tra lo screen reader Jieshuo e SBK.

## Sintesi Tecnica
Jieshuo (pacchetto `com.nirenr.talkman`) implementa una gestione speciale per la Soft Braille Keyboard basata sul riconoscimento del Package Name e del View ID. Se questi non corrispondono esattamente a quelli "hard-coded" nel codice Smali di Jieshuo, l'integrazione fallisce e lo screen reader intercetta i gesti multi-touch, rendendo la tastiera inutilizzabile.

## Stringhe Whitelisted (Hard-coded)
*   **Package Name:** `com.dalton.braillekeyboard`
*   **View ID:** `com.dalton.braillekeyboard:id/keyboard`
*   **Altro pacchetto noto:** `com.osfans.trime.accessibility` (gestito con logica simile).

## Catena di Operazioni in Jieshuo (`TalkManAccessibilityService.smali`)

1.  **Rilevamento Evento:** Jieshuo monitora gli eventi di accessibilità. Quando rileva un nodo con l'ID `com.dalton.braillekeyboard:id/keyboard`, attiva il flag interno `D2`.
2.  **Attivazione "Bridge Mode":**
    *   **`setInputMode(false)`**: Sospende l'intercettazione dei gesti globali di Jieshuo.
    *   **`setGameMode(true)`**: Tratta la tastiera come un'app a tutto schermo (es. un gioco) che richiede il controllo esclusivo del touch.
    *   **`setTTSEnabled(false)`**: (Opzionale) Silenzia il feedback vocale di Jieshuo per evitare doppie letture (annuncio dei caratteri delegato alla tastiera).
3.  **Persistenza del Nodo (`E3`):** Salva il nodo della tastiera nel campo `E3` per monitorarne la visibilità. Se la tastiera viene chiusa, Jieshuo ripristina immediatamente i suoi gesti standard.
4.  **Isolamento del Focus:** Quando la tastiera è attiva, Jieshuo ignora i tentativi di spostamento del focus verso elementi esterni per evitare interruzioni durante la digitazione braille.

## Impatto sul Refactoring "SBK Modern"
Il cambio del package name (necessario per l'installazione side-by-side) rompe questa catena. Jieshuo non riconosce la nuova versione e continua a interpretare i tocchi sui punti braille come gesti di esplorazione o swipe dello screen reader.
