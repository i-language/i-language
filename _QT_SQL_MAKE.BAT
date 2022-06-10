@echo off
CALL _BEGIN.BAT
ECHO ???は,Orcaleがoci,Mariadbがmysql,DB2がdb2の意味です。
ECHO 実行前に各RDBMSのincludeをC:\Qtsql\???\includeにlibをC:\Qtsql\???\libにコピーして下さい。
ECHO 実行前に%I_QT_DIR%\Src\qtbase\src\plugins\sqldrivers\???の???.proのQMAKE_USEを#QMAKE_USEに変更しコメントにして下さい。
PAUSE
REM XCOPY /E /I /Y %I_QT_DIR%\Src\qtbase\src\sql\kernel\*.* %I_QT_DIR%\%I_DIR_WC1%\include\QtSql\%I_VER_C%\QtSql\private
SET PATH=%I_QT_TOOLS%;%PATH%
REM ====( START )====
C:
CD %I_QT_DIR%\Src\qtbase\src\plugins\sqldrivers
ERASE /Q Makefile.* 2>NUL
REM %I_QMAKE_W% sqldrivers.pro
%I_CMAKE_W% .
REM ==========
SET I_I=db2
SET I_I2=-ldb2repl64
REM =====(LOOP)=====
:LOOP
echo ==(%I_I%)==
CD %I_QT_DIR%\Src\qtbase\src\plugins\sqldrivers\%I_I%
SET LIBS="LIBS += -L'C:/QtSql/%I_I%/lib/' %I_I2%"
SET INCLUDEPATH="INCLUDEPATH += 'C:/QtSql/%I_I%/include'"
ERASE /Q Makefile.* 2>NUL
RMDIR /S /Q .moc .obj .pch 2>NUL
REM %I_QMAKE_W% %LIBS% %INCLUDEPATH% 
%I_CMAKE_W% .
%I_MAKE_W% -j6 
IF "%I_I%"=="db2"   SET I_I=mysql&SET I_I2=&    GOTO LOOP
IF "%I_I%"=="mysql" SET I_I=oci& SET I_I2=-loci&GOTO LOOP
rem IF "%I_I%"=="oci"   SET I_I=psql&SET I_I2=& GOTO LOOP
%I_XCOPYF% %I_QT_DIR%\Src\qtbase\src\plugins\sqldrivers\plugins\sqldrivers\*.dll %I_QT_DIR%\%I_DIR_WC1%\plugins\sqldrivers 2>NUL
PAUSE