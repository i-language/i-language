@ECHO OFF
call C_BEGIN.BAT
rem %SYSTEMDRIVE%\TEMP\%I_VER%TESTWM.EXE
rem pause
%I_XCOPYD% ..\%I_VER%_EXE\%I_VER%*U4.EXE %SYSTEMDRIVE%\I\BIN%I_VER%\
%I_XCOPYD% ..\%I_VER%_EXE\ICHARTU4.EXE  %SYSTEMDRIVE%\I\BIN%I_VER%\
SET mono="C:\Program Files (x86)\Mono\bin\mono.exe" 
SET prog=%SYSTEMDRIVE%\I\BIN%I_VER%\
start "" %mono% %prog%%I_VER%MENUU4.EXE JA 30/600 NOBUMICHI-PC_%I_VER%ORG.I ZZZZ010305
PAUSE
start "" %mono% %prog%ICHARTU4.EXE ZZZZ010305ICHART1.TXT ZZZZ010305ICHART2.TXT ZZZZ010305ICHART3.TXT
PAUSE
rem ***( DB2 )***
rem SET MONO_PATH=C:\Program Files\IBM\SQLLIB\BIN;C:\Program Files\IBM\SQLLIB\BIN\netf40
rem SET PATH=%PATH%;%MONO_PATH%
rem %prog%YI.I
rem %mono% %prog%YI.I
rem ***( Oracle )***
rem SET ORACLE_HOME=C:\oraclexe\app\oracle\product\11.2.0\server
rem SET ORACLE_SID=XE
rem SET NLS_LANG=JA
rem SET PATH=%PATH%;%ORACLE_HOME%/bin
rem SET MONO_PATH=C:\oraclexe\app\oracle\product\11.2.0\server\lib;C:\oraclexe\app\oracle\product\11.2.0\server\bin 
rem SET LD_LIBRARY_PATH=C:\oraclexe\app\oracle\product\11.2.0\server\bin
