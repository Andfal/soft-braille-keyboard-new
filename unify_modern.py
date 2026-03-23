import os
import re
import subprocess

modern_root = r'C:\Users\sergi\StudioProjects\soft-braille-keyboard-modern'

print("--- AVVIO SEMPLIFICAZIONE PROGETTO MODERNO ---")

# 1. Patch PadUtilities.java (Redirezione e Migrazione)
utils_path = os.path.join(modern_root, 'src', 'com', 'dalton', 'braillekeyboard', 'PadUtilities.java')
with open(utils_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix selectPad
content = re.sub(
    r'if\s*\(keyboard\s*==\s*KeyboardType\.TABLETOP\)\s*\{.*?\}\s*else if\s*\(keyboard\s*==\s*KeyboardType\.HORIZONTAL\)\s*\{.*?\}',
    '''if (keyboard == KeyboardType.TABLETOP || keyboard == KeyboardType.HORIZONTAL) {
                pad = new TabletopPad(context, coords, width, height,
                        portrait, invert, useEightDots);
            }''',
    content, flags=re.DOTALL
)

# Fix displayDefaultPad
content = re.sub(
    r'if\s*\(keyboard\s*==\s*KeyboardType\.TABLETOP\)\s*\{.*?\}\s*else if\s*\(keyboard\s*==\s*KeyboardType\.HORIZONTAL\s*\|\|\s*\(screen\s*>\s*maxScreen\s*&&\s*KeyboardType\.AUTO\s*==\s*keyboard\)\)\s*\{.*?\}',
    '''if (keyboard == KeyboardType.TABLETOP || keyboard == KeyboardType.HORIZONTAL
                || (screen > maxScreen && KeyboardType.AUTO == keyboard)) {
            Coords[] coords = null;
            int prefKey = TabletopPad.getPrefKey(portrait, invert);
            if ((coords = Pad.load(context, width, height, prefKey, portrait)) != null) {
                pad = new TabletopPad(context, coords, width, height,
                        portrait, invert, useEightDots);
            } else {
                // Migration path: if tabletop calibration is missing, try loading horizontal calibration
                int oldPrefKey = HorizontalPad.getPrefKey(portrait, invert);
                if ((coords = Pad.load(context, width, height, oldPrefKey, portrait)) != null) {
                    pad = new TabletopPad(context, coords, width, height,
                            portrait, invert, useEightDots);
                } else {
                    pad = TabletopPad.displayDefaultPad(context, width, height,
                            portrait, invert, useEightDots);
                }
            }
        }''',
    content, flags=re.DOTALL
)

# Fix Auto-mode in selectPad
content = re.sub(
    r'pad\s*=\s*new\s*HorizontalPad\(context,\s*coords,\s*width,\s*height,\s*portrait,\s*invert,\s*useEightDots\);',
    'pad = new TabletopPad(context, coords, width, height, portrait, invert, useEightDots);',
    content
)

with open(utils_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)
print("[OK] PadUtilities.java: Redirezione completata.")

# 2. Patch arrays.xml
arrays_path = os.path.join(modern_root, 'res', 'values', 'arrays.xml')
with open(arrays_path, 'r', encoding='utf-8') as f:
    content = f.read()

content = content.replace('<item>2</item>\n        <item>3</item>', '<item>3</item>')
content = content.replace('<item>@string/keyboard_horizontal</item>\n        <item>@string/keyboard_tabletop</item>', '<item>@string/keyboard_tabletop</item>')

with open(arrays_path, 'w', encoding='utf-8', newline='') as f:
    f.write(content)
print("[OK] arrays.xml: Voce Orizzontale rimossa.")

# 3. Delete HorizontalPad.java
horiz_path = os.path.join(modern_root, 'src', 'com', 'dalton', 'braillekeyboard', 'HorizontalPad.java')
if os.path.exists(horiz_path):
    os.remove(horiz_path)
    print("[OK] HorizontalPad.java eliminato.")

# 4. Build
print("--- AVVIO BUILD DI VERIFICA ---")
env = os.environ.copy()
env['JAVA_HOME'] = r'C:\Program Files\Android\Android Studio\jbr'
res = subprocess.run([r'.\gradlew.bat', 'assembleDebug'], cwd=modern_root, env=env, capture_output=True, text=True)
if res.returncode == 0:
    print("[OK] Build SUCCESSFUL")
else:
    print("[ERRORE] Build FAILED")
    print(res.stderr)
