@echo off
CALL 92_ALL_COMPILE_J.BAT
java.exe -cp C:\I\BIN%I_VER%\purejavacomm.jar;C:\I\BIN%I_VER%\jna.jar;%SYSTEMDRIVE%\I\BIN%I_VER%\sqljdbc42.jar;%SYSTEMDRIVE%\I\BIN%I_VER%\IJAVA.jar imenu_l JA 60/900/trace  IMENUZZ.TXT