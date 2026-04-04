# Analisi Calibrazione TalkBack (Braille IME)

Documento di riferimento per l'implementazione della calibrazione dinamica basata sul modello Google.

## 1. Struttura Dati (JSON)
TalkBack non salva solo le coordinate, ma l'intero contesto hardware:
- `orientation`: L'orientamento fisico al momento del tocco (1=Port, 2=Land).
- `screen_width` / `screen_height`: Risoluzione reale del display.
- `points`: Array di oggetti `{x, y}`.

## 2. Meccanismo di Trasformazione (Matrix)
Utilizza `android.graphics.Matrix` per manipolare i punti in tempo reale:
- **Scaling proporzionale**: Se la finestra dell'app corrente è più piccola della schermata di calibrazione, i punti vengono moltiplicati per un fattore `dim_attuale / dim_riferimento`.
- **Rotazione Fisica**: Se l'utente ruota il dispositivo, TalkBack non cambia profilo, ma applica una rotazione di 90°/-90° alle coordinate salvate.

## 3. Algoritmi di Mapping (da BrailleUtils.java)
```java
// Esempio logico di rotazione 90° e riposizionamento
matrix.preRotate(90f);
matrix.postTranslate(newWidth, 0);
matrix.preScale(scaleH, scaleW);
```

## 4. Vantaggi per Soft Braille Keyboard
Implementando questo sistema risolveremo:
1. **Recall Bug**: Non serviranno più chiavi diverse. Una calibrazione funzionerà ovunque.
2. **Offset/Scaling Bug**: La 's' non diventerà più 'f' perché i punti si "stringeranno" o "allargheranno" insieme alla finestra dell'app.
3. **Stabilità**: La calibrazione sarà legata alla geometria del display, non alla variabilità delle app.
