@ECHO OFF
REM ===( SET_ZIP 開始処理 )====
REM ===( 最新バージョンを設定 )============================
REM ===( I言語 VER1 )===
SET I_VER=I37
REM ===( I言語 VER2 )===
CALL _BEGIN_VER2.BAT 
REM ===( Java )===
rem SET I_VER_J=23
SET I_VER_J=21.0.2
REM ===( Qt(C++) )===
rem SET I_VER_C=6.6.3
rem SET I_VER_C=6.7.3
SET I_VER_C=6.8.1
REM ===( dir )===
SET I_DIR_J=%SystemDrive%
rem SET I_DIR_WC=%SystemDrive%
SET I_DIR_WC=%SystemDrive%\Qt%I_VER_C%
rem SET I_DIR_WC1=mingw81_64
SET I_DIR_WC1=mingw_64
rem SET I_DIR_WC2=mingw810_64
rem SET I_DIR_WC2=mingw900_64
rem SET I_DIR_WC2=mingw1120_64
SET I_DIR_WC2=mingw1310_64
rem SET I_DIR_UD=/opt
SET I_DIR_UD=/home/ubuntu/Qt%I_VER_C%
rem SET I_DIR_UC=/opt
SET I_DIR_UC=/home/ubuntu/Qt%I_VER_C%
SET I_DIR_UC1=gcc_64
REM =====================================================
REM ===( MONO 使用中 ただし、コンパイルは保留中 )==========
SET I_MONO_SW=YES
REM ===( Qtはサーバー構築は保留中 )===
SET I_QT_SERVER_SW=NO 	
REM ===( I_DB 5 RDBMS )=============
SET I_DB=;M;I;L;O;P
REM ====( e.t.c )==================================
SET I_XCOPYF=XCOPY /C /D /H /I /K /R /V /Y
SET I_XCOPYD=%I_XCOPYF% /E
SET I_HOME=%SystemDrive%\I
SET I_BIN=%I_HOME%\BIN%I_VER%
SET I_TMP=%I_HOME%\TMP
REM ===( Java )============================
REM SET I_JAVA=%I_DIR_J%\jdk-%I_VER_J%\bin
REM SET I_JAVAC=%I_JAVA%\javac.exe
rem SET I_JAVAC=javac.exe
REM SET I_JAVA=C:\Program Files\Java\jdk-%I_VER_J%\bin
SET I_JAVA=C:\jdk-%I_VER_J%\bin
SET I_JAVAC=%I_JAVA%\javac.exe
SET I_JAR="%I_JAVA%\jar.exe"
REM ===( C++(Qt) )=============================
IF "%I_VER_C%"=="" GOTO SKIP-C
rem SET I_QT_DIR=%SystemDrive%\QT\%I_VER_C%
SET I_QT_DIR=%SystemDrive%\QT%I_VER_C%\%I_VER_C%
SET I_QT_BIN=%I_QT_DIR%\%I_DIR_WC1%\bin
rem SET I_QT_TOOLS=%SystemDrive%\QT\tools\%I_DIR_WC2%\bin
SET I_QT_TOOLS=%I_DIR_WC%\tools\%I_DIR_WC2%\bin
SET I_QMAKE_W=%I_QT_BIN%\qmake.exe
SET I_MAKE_W=%I_QT_TOOLS%\mingw32-make.exe
SET I_CMAKE_W=%SystemDrive%\Qt\Tools\CMake_64\bin%\cmake.exe
rem SET I_QMAKE_U=%I_DIR_UC%/Qt/%I_VER_C%/%I_DIR_UC1%/bin/qmake
SET I_QMAKE_U=%I_DIR_UC%/%I_VER_C%/%I_DIR_UC1%/bin/qmake
SET I_LD_LIB_U=%I_DIR_UC%/%I_VER_C%/%I_DIR_UC1%/lib
:SKIP-C