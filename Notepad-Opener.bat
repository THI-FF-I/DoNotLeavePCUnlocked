@echo off
IF [%1] == [] (set _par=30) else (set /a _par=%1)
for /l %%i in (1, 1, %_par%) DO start "" Notepad

rem Reverse:
rem taskkill /F /PID Notepad.exe
