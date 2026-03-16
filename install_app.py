import subprocess
import os
import sys
import glob

def run_cmd_list(args, env=None):
    print(f"\n> Eseguendo: {' '.join(args)}")
    # Verifica esistenza dell'eseguibile se è il primo argomento
    if not os.path.exists(args[0]):
        print(f"ERRORE: Il file {args[0]} non esiste!")
        return False
    try:
        process = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, env=env)
        for line in process.stdout:
            print(line, end="")
        process.wait()
        return process.returncode == 0
    except Exception as e:
        print(f"Eccezione: {str(e)}")
        return False

print("=== SCRIPT DI INSTALLAZIONE SBK (Verified Paths) ===")

java_path = r"C:\Program Files\Android\Android Studio\jbr"
adb_exe = r"C:\Users\sergi\AppData\Local\Android\Sdk\platform-tools\adb.exe"

current_env = os.environ.copy()
current_env["JAVA_HOME"] = java_path

# 1. Compilazione
print("\n[1/3] Compilazione APK...")
gradle_bat = os.path.abspath("gradlew.bat")
if not run_cmd_list([gradle_bat, "assembleDebug"], env=current_env):
    print("\nERRORE nella compilazione.")
    sys.exit(1)

# 2. Ricerca APK
apk_files = glob.glob("build/outputs/apk/debug/*.apk")
if not apk_files:
    print("ERRORE: APK non trovato.")
    sys.exit(1)
apk_path = os.path.abspath(apk_files[0])

# 3. ADB (Percorso diretto)
print("\n[3/3] Operazioni ADB...")
if not os.path.exists(adb_exe):
    print(f"ERRORE CRITICO: ADB non trovato in {adb_exe}")
    sys.exit(1)

# Disinstallazione
run_cmd_list([adb_exe, "uninstall", "com.dalton.braillekeyboard"])

print(f"\nInstallazione di: {apk_path}")
if run_cmd_list([adb_exe, "install", apk_path]):
    print("\n====================================================")
    print(" INSTALLAZIONE COMPLETATA CON SUCCESSO! ")
    print("====================================================")
else:
    print("\nERRORE nell'installazione via ADB.")
