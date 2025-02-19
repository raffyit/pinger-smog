@echo off
chcp 65001
title Smog
color 7
:menu
cls
echo ███████╗███╗   ███╗ ██████╗  ██████╗ 
echo ██╔════╝████╗ ████║██╔═══██╗██╔════╝ 
echo ███████╗██╔████╔██║██║   ██║██║  ███╗
echo ╚════██║██║╚██╔╝██║██║   ██║██║   ██║
echo ███████║██║ ╚═╝ ██║╚██████╔╝╚██████╔╝
echo ╚══════╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ 


for /f "tokens=2 delims==" %%u in ('echo %%') do set "=%%u"
set /p IP="Host: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo L'IP e' inesistente o downed.)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top
pause
goto menu
