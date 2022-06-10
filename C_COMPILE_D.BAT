@echo off
REM .cs コンパイル　%1=ソースネーム %2=CLIENT,SERVER
IF "%I_VER%"=="" CALL C_BEGIN.BAT
:B1
IF "%1"==""  ECHO %0 ARG-1 NULL&PAUSE&GOTO B1
IF "%2"=="CLIENT" GOTO J1
IF "%2"=="SERVER" GOTO J1
IF "%2"==""       GOTO J1
REM ===(%2エラー)===
ECHO %0 ARG-2 CLIENT,SERVER ERROR
PAUSE
GOTO B1
:J1
IF EXIST %1.CS*     %I_XCOPYF% %1.CS*    ..\%I_VER%_WORK>NUL 
IF EXIST %1WD.CSP*  %I_XCOPYF% %1WD.CSP* ..\%I_VER%_WORK>NUL
REM ===( Windows )===
SET I_OS=W
SET I_OS2=win
:LOOP
rem IF "%I_SET_ZIP_SW%"=="YES" GOTO SET_ZIP
rem IF NOT "%I_OS%"=="U" GOTO SKIP_CHECK_MONO1
rem IF NOT "%I_MONO_SW%"=="YES" GOTO SKIP_CHECK_MONO1
rem CALL C_COMPILE_MONO.BAT %1 %2
rem GOTO SKIP_MONO1
rem :SKIP_CHECK_MONO1
rem IF ERRORLEVEL 1 PAUSE
rem :SKIP_MONO1
rem IF "%I_OS%"=="U" goto SKIP_U
rem %I_XCOPYD% ..\%I_VER%_WORK\bin\Release\netcoreapp5.0\%I_OS2%-x64\*.* %I_BIN% >NUL
rem :SKIP_U
rem IF not "%2"=="" %I_XCOPYD% ..\%I_VER%_WORK\bin\Release\netcoreapp5.0\%I_OS2%-x64\*.* ..\%I_VER%_BIN\%2_%I_OS%D >NUL
rem GOTO SKIP_SET_ZIP
rem :SET_ZIP
rem IF "%I_MONO_SW%"=="YES" GOTO MONO2
REM SET I_PUBLISH=\publish
REM SET I_DOTNET=publish -c Release --no-self-contained
SET I_DOTNET=--no-self-contained
IF "%I_SET_ZIP_SW%"=="YES" GOTO NOT_BUILD
IF         "%I_OS%"=="U"   GOTO NOT_BUILD
REM SET I_PUBLISH=
REM SET I_DOTNET=build -c Release
SET I_DOTNET=
:NOT_BUILD
REM =====( dotnet )=====
REM ECHO =====( %1 %2 )=====( %I_PUBLISH% %I_OS2% )=====
ECHO ==========( %1 %2 )==========( %I_DOTNET% %I_OS2% )==========
IF EXIST ..\%I_VER%_WORK\bin\*.* ERASE /Q /S ..\%I_VER%_WORK\bin\*.* >NUL
IF EXIST ..\%I_VER%_WORK\obj\*.* ERASE /Q /S ..\%I_VER%_WORK\obj\*.* >NUL
REM dotnet %I_DOTNET% ..\%I_VER%_WORK\%1%I_OS%D.csproj 
dotnet build -c Release %I_DOTNET% ..\%I_VER%_WORK\%1%I_OS%D.csproj
IF ERRORLEVEL 1 PAUSE
SET I_DIR_IN=..\%I_VER%_WORK\bin\Release\net%I_VER2DOTNET%
SET I_DIR_OUT=..\%I_VER%_BIN\%2_%I_OS%D
IF "%I_OS%"=="W" IF "%2"=="" SET I_DIR_OUT=%I_BIN%
REM IF EXIST %I_DIR_IN%\%I_OS2%-x64%I_PUBLISH%\*.*         %I_XCOPYD% %I_DIR_IN%\%I_OS2%-x64%I_PUBLISH%\*.*         %I_DIR_OUT% >NUL
REM IF EXIST %I_DIR_IN%-windows\%I_OS2%-x64%I_PUBLISH%\*.* %I_XCOPYD% %I_DIR_IN%-windows\%I_OS2%-x64%I_PUBLISH%\*.* %I_DIR_OUT% >NUL
IF EXIST %I_DIR_IN%\%I_OS2%-x64\*.*         %I_XCOPYD% %I_DIR_IN%\%I_OS2%-x64\*.*         %I_DIR_OUT% >NUL
IF EXIST %I_DIR_IN%-windows\%I_OS2%-x64\*.* %I_XCOPYD% %I_DIR_IN%-windows\%I_OS2%-x64\*.* %I_DIR_OUT% >NUL
REM IF EXIST %I_DIR_IN%\*.*         %I_XCOPYD% %I_DIR_IN%\*.*         %I_DIR_OUT% >NUL
REM IF EXIST %I_DIR_IN%-windows\*.* %I_XCOPYD% %I_DIR_IN%-windows\*.* %I_DIR_OUT% >NUL
IF EXIST ..\%I_VER%_WORK\bin\*.* ERASE /Q /S ..\%I_VER%_WORK\bin\*.*>NUL
IF EXIST ..\%I_VER%_WORK\obj\*.* ERASE /Q /S ..\%I_VER%_WORK\obj\*.*>NUL
rem GOTO SKIP_MONO2
rem :MONO2
REM =====( Linux )=====
IF "%I_SET_ZIP_SW%"=="YES" GOTO FIN
IF "%2"==""            GOTO FIN
IF "%1"=="ISOURCE"     GOTO FIN
IF "%1"=="IROOT"       GOTO FIN
IF "%I_OS%"=="U"       GOTO FIN
SET I_OS=U
SET I_OS2=linux
REM (★処理保留中★) GOTO LOOP
REM **************************************************************************************************
IF NOT "%I_MONO_SW%"=="YES" GOTO NOT_MONO
REM =====( MONO U )=====
REM      CALL C_COMPILE_MONO.BAT %1 %2
GOTO FIN
REM :NOT_MONO
REM IF NOT "%I_SET_ZIP_SW%"=="YES" GOTO LOOP
REM =====( dotnet build U )=====
REM dotnet build -c Release ..\%I_VER%_WORK\%1UD.csproj
REM IF ERRORLEVEL 1 PAUSE
REM %I_XCOPYD% ..\%I_VER%_WORK\bin\Release\netcoreapp5.0\%I_OS2%-x64\*.* ..\%I_VER%_BIN\%2_%I_OS%D >NUL
REM =====( dotnet publish U/WSL )=====
REM SET I_PUBLISH=\publish
REM WSL PATH=%I_DIR_UD%/dotnet;dotnet publish -c Release --no-self-contained ../%I_VER%_WORK/%1%I_OS%D.csproj
REM %I_XCOPYD% %I_DIR_IN%\%I_OS2%-x64\%I_PUBLISH%\*.*         ..\%I_VER%_BIN\%2_%I_OS%D>NUL
REM %I_XCOPYD% %I_DIR_IN%-windows\%I_OS2%-x64\%I_PUBLISH%\*.* ..\%I_VER%_BIN\%2_%I_OS%D>NUL
rem GOTO FIN
rem IF "%I_OS%"=="W" PAUSE
:FIN