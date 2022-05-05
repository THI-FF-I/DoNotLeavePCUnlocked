@echo off
IF [%1] == [] (set _par=1000) else (set /a _par=%1)
rem Shutdown in %1 seconds
shutdown -s -t %1
