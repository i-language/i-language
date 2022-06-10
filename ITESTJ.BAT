@ECHO OFF
CALL C_BEGIN.BAT
rem goto aaa
SET param=/C /D /E /I /H /R /K /V /Y
del /q ..\%I_VER%_WORK\*.*
..\%I_VER%_EXE\ISOURCEW4.EXE %I_VER%
del /q ..\%I_VER%_WORK\ii_socket_l.java
del /q ..\%I_VER%_WORK\ii_receive_l.java
del /q ..\%I_VER%_WORK\II_SERIALPORT_l.java
del /q ..\%I_VER%_WORK\ii_print_l.java
rem "C:\Program Files\Java\jdk1.7.0_45\bin\javac" -help -X
rem pause
cd ..\%I_VER%_WORK
SET src=imenu*.java ii_*.java ixtest*.java
rem del /q ..\%I_VER%_WORK2\*.*
rem copy iprint_l.java     ..\%I_VER%_WORK2 
rem copy ii_print_l.java   ..\%I_VER%_WORK2 
rem copy ii_zz_l.java      ..\%I_VER%_WORK2
rem copy ii_z_l.java       ..\%I_VER%_WORK2
rem copy ii_read_l.java    ..\%I_VER%_WORK2
rem copy ii_write_l.java   ..\%I_VER%_WORK2
rem copy ii_version_l.java ..\%I_VER%_WORK2
rem cd ..\%I_VER%_WORK2
rem "C:\Program Files\Java\jdk-%I_VER_J%\bin\javac" -Xlint:unchecked %src% 2> java.tmp
SET err=0
"C:\Program Files\Java\jdk-%I_VER_J%\bin\javac" -Xlint:unchecked -d ..\%I_VER%_EXE\%I_VER%JAVA %src% 2> java0.tmp
if errorlevel 1 SET err=1
..\%I_VER%_EXE\ijavaw4.exe <java0.tmp >java.tmp
if %err%==1 notepad java.tmp 
if %err%==1 pause
xcopy %param% ..\%I_VER%_EXE\%I_VER%JAVA\*.* %SystemDrive%\I\BIN\%I_VER%JAVA >nul
SET CLASSPATH=%CLASSPATH%;C:\Microsoft JDBC Driver 4.0 for SQL Server\sqljdbc_4.0\jpn\sqljdbc4.jar;c:\postgresql-9.2-1002.jdbc4.jar
:aaa
java.exe -cp c:\I\BINI_VER%\IJAVA.jar itest_l 
pause