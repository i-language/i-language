@echo off
REM MY BIN にコピーします。
IF "%I_VER%"=="" CALL C_BEGIN.BAT
IF "%1"==""  START "" %SYSTEMDRIVE%\I\BIN%I_VER%\IROOTWD.exe 99_COPY_MY_BIN.BAT CONT&EXIT 
ECHO %I_VER%SRVCWD サービスを停止します。
PAUSE
NET STOP %I_VER%SRVCWD
TIMEOUT 5
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\* %I_BIN% 
%I_XCOPYD% ..\%I_VER%_BIN\SERVER_WD\* %I_BIN% 
%I_XCOPYD% ..\%I_VER%_BIN\JAVA\*      %I_BIN% 
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WC\* %I_BIN% 
NET START %I_VER%SRVCWD
PAUSE