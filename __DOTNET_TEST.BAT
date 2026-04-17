@echo off
CALL _BEGIN.BAT
notepad ..\%I_VER%_WORK\IMENUWD.csproj 
DOTNET build   -c Release  ..\%I_VER%_WORK\ISOURCEWD.csproj 
REM DOTNET build   -c Release  ..\%I_VER%_WORK\IMENUUD.csproj 
REM DOTNET build   --no-self-contained -c Release ..\%I_VER%_WORK\IMENUUD.csproj 
PAUSE