@ECHO OFF
REM COMPILE 1=SOURCE 2=,CLIENT,SERVER
IF "%1"=="" EXIT /B
IF "%2"=="" EXIT /B
IF "%I_VER%"=="" CALL _BEGIN.BAT
CALL _PACKAGE_MONO.BAT
SET I_NAME=%1
SET I_NAME2=%I_NAME:~1%
IF NOT "%I_NAME:~0,3%"=="%I_VER%" GOTO J1
SET I_NAME2=%I_NAME:~3%
SET I_NAME=IX%I_NAME2%
:J1
IF "%I_NAME2%"=="MENU"  GOTO WINEXE
IF "%I_NAME2%"=="TIME"  GOTO WINEXE
IF "%I_NAME2%"=="PRINT" GOTO WINEXE
IF "%I_NAME2%"=="CHART" GOTO WINEXE
SET I_WINEXE=exe
GOTO SKIP_WINEXE
:WINEXE
SET I_WINEXE=winexe
:SKIP_WINEXE
SET I_P=/r:System.Web /r:System.Management /r:System.Data /r:System.Drawing /r:System.Windows.Forms /r:System.Configuration.Install
SET I_P=%I_P% /r:System.ServiceProcess /r:System.IO.Compression.FileSystem.dll /r:System.Windows.Forms.DataVisualization.dll
SET I_RESU=
IF "%1"=="IMENU" SET I_RESU=-res:imenu_l.resources -win32icon:I_MENU.ICO
SET I_ARG=-t:%I_WINEXE% %I_RESU% %I_P% %I_PACKAGE_MONO% -d:MONO -d:%I_NAME2% -d:U
CALL "C:\Program Files\Mono\bin\mcs" %I_ARG% -out:..\%I_VER%_BIN\%2_U\%1UD.EXE ..\%I_VER%_WORK\%I_NAME%.CS ..\%I_VER%_WORK\II_*.CS 
IF ERRORLEVEL 1 PAUSE
IF EXIST %I_BIN%_MONO COPY ..\%I_VER%_BIN\%2_U\%1UD.EXE %I_BIN%_MONO
