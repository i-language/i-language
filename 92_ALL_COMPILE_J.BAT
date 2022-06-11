@echo off
IF "%I_VER%"=="" CALL C_BEGIN.BAT
rem PureJavaComm--------------------------------------------------
rem SET purejavacomm=C:\purejavacomm-master\bin\purejavacomm.jar
SET purejavacomm=..\i-download\purejavacomm.jar
:B1
if not exist %purejavacomm% echo %purejavacomm% not found&pause&goto B1
%I_XCOPYF%  %purejavacomm% %I_TMP%\
SET CLASSPATH=%I_TMP%\purejavacomm.jar
:B2
rem if not exist %I_JAVAC% echo %I_JAVAC% not found&pause&goto B2
if not exist %I_JAR%   echo %I_JAR%   not found&pause&goto B2
IF "%1"=="" CALL C_SOURCE.BAT CONT 
del ..\%I_VER%_WORK\ichart_l.java  ..\%I_VER%_WORK\ichart2_l.java ..\%I_VER%_WORK\ii_chart_l.java ..\%I_VER%_WORK\itest_l.java
rem %I_JAVAC% -encoding utf-8 -Xlint:deprecation -Xlint:unchecked -d ..\%I_VER%_WORK ..\%I_VER%_WORK\*.java 2> java0.tmp
%I_JAVAC% -encoding utf-8 -Xlint:deprecation -Xlint:unchecked -d ..\%I_VER%_WORK ..\%I_VER%_WORK\*.java 
if errorlevel 1 PAUSE
rem type java0.tmp
REM ================
CD ..\%I_VER%_WORK
del iroot_l.class
rem %I_JAR% cvf ..\%I_VER%_BIN\SERVER_WD\ISETUP.jar *.class >NUL 
rem del isetup_l.class
%I_JAR% cvf ..\%I_VER%_BIN\JAVA\IJAVA.jar  *.class >NUL    
rem %I_XCOPYF%  ..\i-download\*.ja? ..\%I_VER%_BIN\JAVA
CD ..\%I_VER%_SRC
REM ================
rem goto fin
rem :ERR_JAVA
rem if not exist %I_BIN%\IJAVAWD.exe   echo ..\%I_BIN%\IJAVAWD.exe not found &call IJAVA.BAT CONT 
rem ..\%I_VER%_EXE\IJAVAWD.exe <java0.tmp >java.tmp
rem START notepad java.tmp 
rem goto fin2
rem ==================================================================
rem :fin
if NOT "%1"=="" GOTO fin2
if "%I_SET_ZIP_SW%"=="YES" goto SKIP_SET_ZIP
%I_XCOPYF% ..\%I_VER%_BIN\JAVA\IJAVA.j* %I_BIN%
rem %I_XCOPYF% ..\i-download\sqljdbc42.ja?      %I_BIN%
:SKIP_SET_ZIP
rem %I_XCOPYD% ..\%I_VER%_BIN\JAVA\IJAVA.j* ..\..\linux\BIN%I_VER% 
rem del /q ..\%I_VER%_WORK\*.*
rem del /q ..\%I_VER%_JAVA\*.*
rem if exist \linux_bini11 %I_XCOPYD% ..\%I_VER%_EXE\IJAVA.j* \linux_bini11 
rem if exist \windows_bini11 %I_XCOPYD% ..\%I_VER%_EXE\IJAVA.j* \windows_bini11 
rem if exist %SystemDrive%\I\SHARE\LINUX\BIN%I_VER% %I_XCOPYD% ..\%I_VER%_EXE\IJAVA.j* %SystemDrive%\I\SHARE\LINUX\BIN%I_VER%
rem java.exe -cp c:\I\BIN%I_VER%\sqljdbc4.jar;%SystemDrive%\I\BIN%I_VER%\IJAVA.jar imenu_l JA 30/600 I_NOBUMICHI-PC_%I_VER%ORG.I ZZZZ
rem start c:\I\BIN\IPRINTW4.EXE
:fin2
IF "%1"=="" PAUSE
