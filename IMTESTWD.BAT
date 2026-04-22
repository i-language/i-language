@ECHO OFF
SET I_NAME=IMTEST
IF "%1"=="" CALL C_SOURCE.BAT
dotnet clean
dotnet build -c Release -r win-x64 --no-self-contained ..\%I_VER%_WORK\%I_NAME%WD.CSPROJ
if errorlevel 1 goto FIN
IF NOT "%1"=="" GOTO FIN
IF NOT EXIST %I_BIN% GOTO FIN 
%I_XCOPYD% ..\%I_VER%_WORK\bin\Releae\net10.0-windows\win-x64\* %I_BIN%
IF EXIST I_MENU.*        %I_XCOPYF% I_MENU.*                   %I_BIN%
IF EXIST I_LANG_??_W.TXT %I_XCOPYF% I_LANG_??_W.TXT            %I_BIN%
:OK
dotnet %I_BIN%\%I_NAME%WD.dll JA 30/600 I_%COMPUTERNAME%_%I_VER%ORG.I ZZZZ
:FIN
IF "%1"=="" PAUSE
