@ECHO OFF
REM SET_FIRE.BAT HARASWA 1=name 2-9=program
IF "%2"=="" goto fin
SET program=%2
IF "%3"=="" goto ok
SET program=%2 %3
IF "%4"=="" goto ok
SET program=%2 %3 %4
IF "%5"=="" goto ok
SET program=%2 %3 %4 %5
IF "%6"=="" goto ok
SET program=%2 %3 %4 %5 %6
IF "%7"=="" goto ok
SET program=%2 %3 %4 %5 %6 %7
IF "%8"=="" goto ok
SET program=%2 %3 %4 %5 %6 %7 %8
IF "%9"=="" goto ok
SET program=%2 %3 %4 %5 %6 %7 %8 %9
:ok
IF "%ALLUSERSPROFILE%"=="C:\ProgramData" goto vista
:xp
netsh  firewall delete allowedprogram program="%program%"
netsh  firewall add    allowedprogram name="%1" program="%program%"
goto fin
:vista
netsh  advfirewall firewall delete rule name="%1"
netsh  advfirewall firewall add rule dir=in action=allow  name="%1" program="%program%" description="%program%"
:fin
