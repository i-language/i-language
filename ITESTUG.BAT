@ECHO OFF
SET I_NAME=ITESTUG
CALL _BEGIN.BAT
SET I_LOG_U=D:\HARASAWA\%I_VER%_WORK\TMP_CSC_COMPILE_U.TXT
IF "%1"=="" CALL C_SOURCE.BAT
wsl dotnet build -c Release -r linux-x64 --no-self-contained /mnt/d/HARASAWA/%I_VER%_WORK/%I_NAME%.csproj > %I_LOG_U%
if not errorlevel 1 wsl sh /mnt/d/HARASAWA/i-language/%I_NAME%.SH&goto fin
notepad %I_LOG_U%
:fin
pause
