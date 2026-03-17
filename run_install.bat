@echo off
:: Si sposta nella cartella del progetto
cd /d "%~dp0"
title Installazione SBK

echo ====================================================
echo  AVVIO PROCEDURA DI INSTALLAZIONE
echo ====================================================
echo.

:: Esegue lo script Python
python install_app.py

echo.
echo ====================================================
echo  PROCEDURA TERMINATA
echo ====================================================
echo Puoi controllare l'esito qui sopra.
echo.
echo Premi un tasto qualsiasi per chiudere questa finestra...
pause > nul
