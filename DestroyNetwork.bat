netsh interface ip set dns name="WLAN" static 127.0.0.1 PRIMARY
netsh interface ip set dns name="WLAN" 127.0.0.1 index=2
netsh interface ip set dns name="Ethernet" static 127.0.0.1 PRIMARY
netsh interface ip set dns name="Ethernet" 127.0.0.1 index=2
