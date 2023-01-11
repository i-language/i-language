@echo off
IF "%I_VER%"=="" CALL C_BEGIN.BAT
SET I_LOG=TMP_CPP_COMPILE.TXT
REM SET Path=%Path%;%I_QT_TOOLS%;%I_QT_TOOLS2%
SET Path=%Path%;%I_QT_TOOLS%
REM ====================
IF "%1"=="" CALL C_SOURCE.BAT CONT 
PUSHD ..\%I_VER%_WORK
ECHO START>%I_LOG%
SET I_PROGRAMS=IMENU IROOT IPRINT
IF "%I_QT_SERVER_SW%"=="YES" SET I_PROGRAMS=%I_PROGRAMS% ISETUP ISRVC ITIME 
FOR %%I IN (%I_PROGRAMS%) DO ( 
   FOR %%J IN (h cpp o) DO (
   IF EXIST release\*.%%J ERASE /Q release\*.%%J  
   )
   ECHO PROGRAM=%%I
   IF EXIST Makefile ERASE /Q Makefile
REM =====( qmake w )=====
    %I_QMAKE_W% %%IWC.pro -spec win32-g++ "CONFIG+=qtquickcompiler"
   rem  %I_QT_TOOLS%\mingw32-make -j6 >NUL 2>>%I_LOG%
REM =====( make w )=====
    %I_MAKE_W% -j6 >NUL 2>>%I_LOG%
   IF EXIST *.o ERASE /Q *.o  
   %I_XCOPYF% release\%%IWC.EXE ..\%I_VER%_BIN\CLIENT_WC
   if "%%I"=="IROOT" copy IROOT.EXE.MANIFEST ..\%I_VER%_BIN\CLIENT_WC\IROOT.EXE.MANIFEST
REM   if not "%I_SET_ZIP_SW%"=="YES" %I_XCOPYF% release\%%IWC.EXE %I_BIN%
REM   if "%%I"=="IROOT" copy IROOT.EXE.MANIFEST %I_BIN%\IROOT.EXE.MANIFEST
   IF EXIST %%IWC.EXE ERASE /Q %%IWC.EXE
rem   if not "%%I"=="IROOT" WSL sh %I_DIR_WSL%/i-language/_COMPILE_C.SH %I_DIR_WSL%/%I_VER%_WORK %I_QMAKE_U% %%IUC.pro 2>>%I_LOG%
   FOR %%J IN (h cpp o) DO (
   IF EXIST release\*.%%J ERASE /Q release\*.%%J  
   )
   IF EXIST Makefile ERASE /Q Makefile
REM =====( qmake/make u )=====
rem   if not "%%I"=="IROOT" WSL sh ../i-language/C_COMPILE_C.SH ../%I_VER%_WORK %I_QMAKE_U% %%IUC.pro 2>>%I_LOG%
   if not "%%I"=="IROOT" WSL sh ../i-language/C_COMPILE_C.SH ../%I_VER%_WORK %I_QMAKE_U% %%IUC.pro %I_LD_LIB_U% 2>>%I_LOG%
   if not "%%I"=="IROOT" %I_XCOPYF% %%IUC ..\%I_VER%_BIN\CLIENT_UC 
   IF EXIST %%IUC ERASE /Q %%IUC
)
rem FOR %%J IN (h cpp o) DO (
rem    IF EXIST release\*.%%J ERASE /Q release\*.%%J  
rem )
FIND "error:" %I_LOG%
POPD
IF "%1"=="" %I_XCOPYF% ..\%I_VER%_BIN\CLIENT_WC\*C.exe %I_BIN%
REM =============================
IF "%1"=="" PAUSE