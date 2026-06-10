@echo off
IF "%I_VER%"=="" CALL C_BEGIN.BAT
rem set I_MSVC=C:\Program Files\Microsoft Visual Studio\18\Community\Common7\Tools\VsDevCmd.bat
rem if not exist "%I_MSVC%" echo not found "%I_MSVC%"&PAUSE
rem call "%I_MSVC%"
rem set CMAKE_PREFIX_PATH=%I_DIR_WC%\%I_DIR_WC1%
set Path=%Path%;%I_DIR_WC%\%I_DIR_WC2%\bin
IF "%I_VER%"=="" CALL C_BEGIN.BAT
SET I_LOG=TMP_CPP_COMPILE.TXT
SET I_LOG_W=TMP_CPP_COMPILE_W.TXT
SET I_LOG_U=TMP_CPP_COMPILE_U.TXT
REM SET Path=%Path%;%I_QT_TOOLS%;%I_QT_TOOLS2%
SET Path=%Path%;%I_QT_TOOLS%
REM ====================
IF "%1"=="" CALL C_SOURCE.BAT CONT
CD ..\%I_VER%_WORK
ECHO START>%I_LOG%
ECHO START>%I_LOG_W%
ECHO START>%I_LOG_U%
SET I_PROGRAMS=IROOT IPRINT IMENU
IF "%I_QT_SERVER_SW%"=="YES" SET I_PROGRAMS=%I_PROGRAMS% ISETUP ISRVC ITIME
IF NOT "%I_QT_COMPILE%"==""  SET I_PROGRAMS=%I_QT_COMPILE% 
FOR %%I IN (%I_PROGRAMS%) DO ( 
   FOR %%J IN (h cpp o) DO (
   IF EXIST release\*.%%J ERASE /Q release\*.%%J  
   )
   ECHO PROGRAM=%%I
   IF EXIST Makefile ERASE /Q Makefile
REM =====( cmake w )=====
rem    %I_QMAKE_W% %%IWC.pro -spec win32-g++ "CONFIG+=qtquickcompiler"
   COPY %%IWC.txt CMakeLists.txt
   IF EXIST BUILD RD /S /Q BUILD 
   MKDIR BUILD
   PUSHD BUILD
rem    CMAKE .. -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%
rem    CMAKE .. -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release 
rem   CMAKE .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%I_DIR_WC%\%I_DIR_WC1%  >>..\%I_LOG_W% 2>>&1
rem   CMAKE .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=%I_DIR_WC%\%I_DIR_WC2%/bin/mingw32-make.exe -DCMAKE_C_COMPILER=clang.exe -DCMAKE_CXX_COMPILER=clang++.exe -DCMAKE_PREFIX_PATH=%I_DIR_WC%\%I_DIR_WC1% >> ..\%I_LOG_W% 2>&1 
   CMAKE .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang.exe -DCMAKE_CXX_COMPILER=clang++.exe -DCMAKE_PREFIX_PATH=%I_DIR_WC%\%I_DIR_WC1%  >> ..\%I_LOG_W% 2>&1
rem   CMAKE .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang.exe -DCMAKE_CXX_COMPILER=clang++.exe -DCMAKE_PREFIX_PATH=%I_DIR_WC%\%I_DIR_WC1%  >> ..\%I_LOG_W% 2>&1
rem   CMAKE --build . --config Release                                                                                                                                >> ..\%I_LOG_W% 2>&1
   CMAKE --build . >> ..\%I_LOG_W% 2>&1                                                                                                                             
rem   %I_MAKE_W% -j8 >>..\%I_LOG_W% 2>>..\%I_LOG%
   POPD
rem  %I_QT_TOOLS%\mingw32-make -j6 >NUL 2>>%I_LOG%
REM =====( make w )=====
REM  %I_MAKE_W% -j6 >>%I_LOG_W% 2>>%I_LOG%
rem  %I_MAKE_W% -j8 >>%I_LOG_W% 2>>%I_LOG%
rem   IF EXIST *.o ERASE /Q *.o  
rem    %I_XCOPYF% BUILD\Release\%%IWC.EXE ..\%I_VER%_BIN\CLIENT_WC
   %I_XCOPYF% BUILD\%%IWC.EXE ..\%I_VER%_BIN\CLIENT_WC
   if "%%I"=="IROOT" copy IROOT.EXE.MANIFEST ..\%I_VER%_BIN\CLIENT_WC\IROOT.EXE.MANIFEST
REM   if not "%I_SET_ZIP_SW%"=="YES" %I_XCOPYF% release\%%IWC.EXE %I_BIN%
REM   if "%%I"=="IROOT" copy IROOT.EXE.MANIFEST %I_BIN%\IROOT.EXE.MANIFEST
rem   IF EXIST %%IWC.EXE ERASE /Q %%IWC.EXE
rem   if not "%%I"=="IROOT" WSL sh %I_DIR_WSL%/i-language/_COMPILE_C.SH %I_DIR_WSL%/%I_VER%_WORK %I_QMAKE_U% %%IUC.pro 2>>%I_LOG%
rem    FOR %%J IN (h cpp o) DO (
rem    IF EXIST release\*.%%J ERASE /Q release\*.%%J  
rem    )
rem    IF EXIST Makefile ERASE /Q Makefile
REM =====( cmake u )=====
IF NOT "%I_QT_COMPILE%"=="" GOTO SKIP
rem   if not "%%I"=="IROOT" WSL sh ../i-language/C_COMPILE_C.SH ../%I_VER%_WORK %I_QMAKE_U% %%IUC.pro 2>>%I_LOG%
rem   if not "%%I"=="IROOT" WSL sh ../i-language/C_COMPILE_C.SH ../%I_VER%_WORK %I_QMAKE_U% %%IUC.txt %I_LOG_U% %I_LD_LIB_U% 2>>%I_LOG%
      if not "%%I"=="IROOT" WSL sh ../i-language/C_COMPILE_C.SH ../%I_VER%_WORK %%IUC.txt %I_MAKE_U% %I_LOG_U% %I_DIR_UC%/%I_DIR_UC1% 
      if not "%%I"=="IROOT" %I_XCOPYF% BUILD\%%IUC ..\%I_VER%_BIN\CLIENT_UC 
rem   IF EXIST BUILD\%%IUC ERASE /Q BUILD\%%IUC
)
rem FOR %%J IN (h cpp o) DO (
rem    IF EXIST release\*.%%J ERASE /Q release\*.%%J  
rem )
:SKIP
FIND "error:" %I_LOG%
FIND "error:" %I_LOG_W%
FIND "error:" %I_LOG_U%
CD ..\i-language
rem FIND "error:" %I_LOG%
IF "%1"=="" %I_XCOPYF% ..\%I_VER%_BIN\CLIENT_WC\*C.exe %I_BIN%
REM =============================
IF "%1"=="" PAUSE