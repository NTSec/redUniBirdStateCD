netsh advfirewall set allprofiles state on



net user guest /active:no

wmic useraccount where name='guest' set disabled=true

 
net accounts /minpwage:15
net accounts /maxpwage:30
net accounts /minpwlen:8
net accounts /uniquepw:5

net accounts /lockoutduriation:5
net accounts /lockoutthreshold:5
net accounts /lockoutwindow:2

sc config wuauserv start= auto

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 0 /f
