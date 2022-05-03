@echo off
color 0a
echo Do not leave your PC unlocked
Pushd "%~dp0"
:loop
title DoNotLeaveYourPCUnlocked
timeout /t 2 /nobreak >nul
start Clone.bat
goto loop
