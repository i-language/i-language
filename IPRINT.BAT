@ECHO OFF
IF "%1"=="" CALL C_SOURCE.BAT
CALL C_COMPILE_D.BAT IPRINT CLIENT
IF "%1"=="" %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\IPRINTWD.* %I_BIN%
IF "%1"=="" dotnet %I_BIN%\IPRINTWD.dll test iprint.txt iprint.csv
IF "%1"=="" PAUSE
