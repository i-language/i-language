@ECHO OFF
CALL C_BEGIN.BAT
SET CLASSPATH=C:\purejavacomm-master\bin\purejavacomm.jar
if not exist %I_JAVAC% echo (SKIP) javac.exe not found&pause&goto fin2
del /q ..\%I_VER%_WORK\*.*
if not exist ..\%I_VER%_EXE\IJAVAW4.exe   echo ..\%I_VER%_EXE\IJAVAW4.exe not found &call IJAVA.BAT ALL 
if not exist ..\%I_VER%_EXE\ISOURCEW4.EXE echo ..\%I_VER%_EXE\ISOURCEW4.EXE not found&call ISOURCE.BAT ALL 
..\%I_VER%_EXE\ISOURCEW4.EXE %I_VER%
cd ..\%I_VER%_WORK
del ichart_l.java ichart2_l.java ii_chart_l.java
%I_JAVAC% -encoding utf-8 -Xlint:deprecation -Xlint:unchecked -d ..\%I_VER%_JAVA *.java 2> java0.tmp
if errorlevel 1 goto ERR_JAVA
type java0.tmp
cd         ..\%I_VER%_JAVA
%I_JAR% cvf ..\%I_VER%_EXE\%I_VER%TEST.jar  *.* >nul    
cd          ..\%I_VER%_SRC 
goto fin
:ERR_JAVA
..\%I_VER%_EXE\IJAVAW4.exe <java0.tmp >java.tmp
START notepad java.tmp 
cd ..\%I_VER%_SRC 
goto fin2
rem ==================================================================
:fin
C:\jdk-%I_VER_J%\bin\java.exe -cp ..\%I_VER%_EXE\%I_VER%TEST.jar ixtest_l    
pause
:fin2
:fin
PAUSE
