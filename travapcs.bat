@echo off
rem --- configurações ---
set "count=200"        rem número de janelas (aumente para estressar mais)
set "waitSeconds=2"    rem tempo antes de matar o Chrome

echo Abrindo %count% janelas do Chrome MUITO rápido...

rem --- abre várias instâncias em paralelo ---
for /l %%i in (1,1,%count%) do (
    start "" /b "chrome" --new-window "about:blank"
)

echo Foram abertas %count% janelas.
timeout /t %waitSeconds% >nul

echo Fechando todas as janelas do Chrome...
taskkill /IM chrome.exe /T /F >nul 2>&1

if %ERRORLEVEL% equ 0 (
    echo Chrome fechado com sucesso.
) else (
    echo Nao foi possivel fechar o Chrome (ou nao havia processos do Chrome rodando).
)
pause

