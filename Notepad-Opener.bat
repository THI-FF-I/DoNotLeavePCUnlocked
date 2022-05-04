@echo off
for /l %%i in (1, 1, 50) DO start "" Notepad

rem Reverse:
rem taskkill /F /PID Notepad.exe
