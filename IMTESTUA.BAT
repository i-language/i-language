@ECHO OFF
SET I_NAME=IMTEST
CALL _BEGIN.BAT
IF "%1"=="" CALL C_SOURCE.BAT
dotnet build -c Release -r linux-x64 --self-contained true ..\%I_VER%_WORK\%I_NAME%UA.csproj > %I_LOG_U%
if not errorlevel 1 wsl sh %I_NAME%UA.sh&goto fin
notepad %I_LOG_U%
:fin
pause
