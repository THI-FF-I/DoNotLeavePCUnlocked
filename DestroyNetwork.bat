@Echo Off
title DoNotLeavePCUnlocked, Mauro!
netsh interface ip set dns name="WLAN" static 127.0.0.1 BOTH
netsh interface ip set dns name="Ethernet" static 127.0.0.1 BOTH
rem netsh interface ip set address "WLAN" static 127.0.0.1 255.255.255.255 127.0.0.1 1
rem netsh interface ip set address "Ethernet" static 127.0.0.1 255.255.255.255 127.0.0.1 1
