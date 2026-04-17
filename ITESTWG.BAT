@ECHO OFF
SET I_NAME=ITEST
IF "%1"=="" CALL C_SOURCE.BAT
dotnet build -c Release -r win-x64 --self-contained true ..\%I_VER%_WORK\%I_NAME%WG.csproj 
if errorlevel 1 pause
IF NOT "%1"=="" GOTO FIN
IF NOT EXIST %I_BIN% GOTO FIN 
%I_XCOPYD% ..\%I_VER%_WORK\bin\Release\net10.0-windows\win-x64\*.* %I_BIN%
rem IF EXIST I_MENU.*        %I_XCOPYF% I_MENU.*        %I_BIN%
rem IF EXIST I_LANG_??_W.TXT %I_XCOPYF% I_LANG_??_W.TXT %I_BIN%
:OK
dotnet %I_BIN%\%I_NAME%WG.dll 
:FIN
IF "%1"=="" PAUSE
pause