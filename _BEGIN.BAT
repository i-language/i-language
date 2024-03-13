@ECHO OFF
REM ===( I_...環境変数設定 )===
REM ===( 最新バージョンを設定 )===
CALL _BEGIN_VER2.BAT
SET I_VER=I37
SET I_VER_J=21
rem SET I_VER_C=6.4.3
rem SET I_VER_C=6.5.2
SET I_VER_C=6.6.2
REM ===( MONO mono使用中 )==========
SET I_MONO_SW=YES
REM ===( QtはODBC接続のみでsa接続が出来ないので、サーバー構築は保留中 )===
SET I_QT_SERVER_SW=NO 	
REM ===( I_DB 5 RDBMS )=============
SET I_DB=;M;I;L;O;P
REM ===( dir )===
SET I_DIR_J=%SystemDrive%
rem SET I_DIR_WC=%SystemDrive%
SET I_DIR_WC=%SystemDrive%\Qt%I_VER_C%
rem SET I_DIR_WC1=mingw81_64
SET I_DIR_WC1=mingw_64
rem SET I_DIR_WC2=mingw810_64
rem SET I_DIR_WC2=mingw900_64
SET I_DIR_WC2=mingw1120_64
rem SET I_DIR_UD=/opt
SET I_DIR_UD=/home/ubuntu/Qt%I_VER_C%
rem SET I_DIR_UC=/opt
SET I_DIR_UC=/home/ubuntu/Qt%I_VER_C%
SET I_DIR_UC1=gcc_64
REM ====( e.t.c )==================================
SET I_XCOPYF=XCOPY /C /D /H /I /K /R /V /Y
SET I_XCOPYD=%I_XCOPYF% /E
SET I_HOME=%SystemDrive%\I
SET I_BIN=%I_HOME%\BIN%I_VER%
SET I_TMP=%I_HOME%\TMP
REM ===( Java )============================
REM SET I_JAVA=%I_DIR_J%\jdk-%I_VER_J%\bin
REM SET I_JAVAC=%I_JAVA%\javac.exe
SET I_JAVAC=javac.exe
REM SET I_JAVA=C:\Program Files\Java\jdk-%I_VER_J%\bin
SET I_JAVA=C:\jdk-%I_VER_J%\bin
SET I_JAR="%I_JAVA%\jar.exe"
REM ===( Qt 当面開発中止　)=============================
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