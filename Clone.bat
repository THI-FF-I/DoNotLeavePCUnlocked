@echo off
title DoNotLeaveYourPCUnlocked %1
IF [%1] == [] (set _par=10) else (set /a _par=%1-1)
color 0a
echo Do not leave your PC unlocked
Pushd "%~dp0"
:loop
timeout /t 2 /nobreak >nul
set /a _par=%_par%-1
rem start Clone.bat %_par%
start "DoNotLeaveYourPCUnlocked %_par%" %0 %_par%
IF [%_par%] == [0] goto kill
goto loop
:kill
taskkill /F /PID Cmd.exe
exit
