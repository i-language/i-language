@echo off
notepad ..\I37_WORK\IMENUWD.csproj 
DOTNET build   -c Release  ..\I37_WORK\ISOURCEWD.csproj 
REM DOTNET build   -c Release  ..\I37_WORK\IMENUUD.csproj 
REM DOTNET build   --no-self-contained -c Release ..\I37_WORK\IMENUUD.csproj 
PAUSE