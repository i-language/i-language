@ECHO OFF
SET I_NAME=ITESTWA
IF "%I_VER%"=="" CALL C_BEGIN.BAT
IF "%1"=="" CALL C_SOURCE.BAT 
dotnet build -c Release -r win-x64 --no-self-contained ..\%I_VER%_WORK\%I_NAME%.csproj 
%I_XCOPYD% ..\%I_VER%_WORK\bin\Release\net10.0-windows\win-x64\%I_NAME%.* %I_BIN%
IF "%1"=="" DOTNET %I_BIN%\%I_NAME%.dll
IF "%1"=="" PAUSE
