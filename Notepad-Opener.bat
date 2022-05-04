@echo off
IF [%1] == [] (set _par=10) else (set /a _par=%1)
IF [%1] == [0] goto kill
for /l %%i in (1, 1, %_par%) DO start "" Notepad
goto end

:end
exit

rem Reverse:
:kill
taskkill /F /PID Notepad.exe
goto end
