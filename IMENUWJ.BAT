@echo off
CALL 92_ALL_COMPILE_J.BAT COMPILE
java.exe -cp C:\I\BIN%I_VER%\purejavacomm.jar;C:\I\BIN%I_VER%\jna.jar;%SYSTEMDRIVE%\I\BIN%I_VER%\mssql-jdbc-13.4.0.jre11.jar;%SYSTEMDRIVE%\I\BIN%I_VER%\IJAVA.jar imenu_l JA 60/900 I_%COMPUTERNAME%_%I_VER%ORG.I ZZZZ