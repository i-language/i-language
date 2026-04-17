@ECHO OFF
SET I_NAME=IMENU
CALL _BEGIN.BAT
SET I_LOG_U=D:\HARASAWA\%I_VER%_WORK\TMP_CSC_COMPILE_U.TXT
IF "%1"=="" CALL C_SOURCE.BAT
dotnet build -c Release -r linux-x64 --self-contained true   ..\%I_VER%_WORK\%I_NAME%UD.csproj > %I_LOG_U%
if not errorlevel 1 wsl sh %I_NAME%UD.sh&goto fin
notepad %I_LOG_U%
:fin
pause
