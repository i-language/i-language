@ECHO OFF
REM COMPILE 1=SOURCE 2=,CLIENT,SERVER
IF "%1"=="" EXIT /B
IF "%2"=="" EXIT /B
IF "%I_VER%"=="" CALL _BEGIN.BAT
CALL _PACKAGE_MONO.BAT
SET I_NAME=%1
IF "%I_NAME%"=="IMENU"  GOTO WINEXE
IF "%I_NAME%"=="ITIME"  GOTO WINEXE
IF "%I_NAME%"=="IPRINT" GOTO WINEXE
IF "%I_NAME%"=="ICHART" GOTO WINEXE
SET I_WINEXE=exe
GOTO SKIP_WINEXE
:WINEXE
SET I_WINEXE=winexe
:SKIP_WINEXE
SET I_P=/r:System.Web /r:System.Management /r:System.Data /r:System.Drawing /r:System.Windows.Forms /r:System.Configuration.Install
SET I_P=%I_P% /r:System.ServiceProcess /r:System.IO.Compression.FileSystem.dll /r:System.Windows.Forms.DataVisualization.dll
SET I_P=%I_P% /r:%USERPROFILE%\.nuget\packages\system.text.encoding.codepages\9.0.2\lib\netstandard2.0\\system.text.encoding.codepages.dll
SET I_RESU=
IF "%1"=="IMENU" SET I_RESU=-res:imenu_l.resources -win32icon:I_MENU.ICO
SET I_ARG=-t:%I_WINEXE% %I_RESU% %I_P% %I_PACKAGE_MONO% -d:MONO -d:%I_NAME% -d:U
IF NOT EXIST ..\%I_VER%_BIN\%2_UM MKDIR ..\%I_VER%_BIN\%2_UM 
CALL "C:\Program Files\Mono\bin\mcs" %I_ARG% -out:..\%I_VER%_BIN\%2_UM\%1UM.EXE ..\%I_VER%_WORK\%I_NAME%.CS ..\%I_VER%_WORK\II_*.CS 
IF ERRORLEVEL 1 PAUSE
REM IF EXIST %I_BIN%_MONO COPY ..\%I_VER%_BIN\%2_UM\%1UM.EXE %I_BIN%_MONO
