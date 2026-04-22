@ECHO OFF
SET I_NAME=ITEST
IF "%I_VER%"=="" CALL C_BEGIN.BAT
IF "%1"=="" CALL C_SOURCE.BAT 
dotnet build -c Release -r win-x64 --no-self-contained ..\%I_VER%_WORK\%I_NAME%WA.csproj 
IF "%1"=="" DOTNET %I_BIN%\%I_NAME%WA.dll
IF "%1"=="" PAUSE
