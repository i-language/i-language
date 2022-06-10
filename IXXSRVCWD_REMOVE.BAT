@ECHO OFF
REM Windows サービス削除（SRVC)
SET I_SRVC=%0
SET I_SRVC=%I_SRVC:~-21,9%
SET  I_VER=%I_SRVC:~0,3%
IF NOT "%1"=="ROOT" IF "%2"=="" GOTO FIRST
SC STOP   %I_SRVC%
ECHO SC DELETE %I_SRVC%
     SC DELETE %I_SRVC%
IF "%1"=="PAUSE" PAUSE
GOTO FIN
:FIRST
ECHO *******************************************************************
ECHO "%I_SRVC%"のサービズをOS上から削除します。
ECHO ユーザ アカウント制御画面(IROOTWD.EXE)が出た場合は許可して下さい。
ECHO 実行する場合は何かキーを押して下さい。
ECHO *******************************************************************
IF NOT "%1"=="CONT" PAUSE
%SYSTEMDRIVE%\I\BIN%I_VER%\IROOTWD.EXE %0 %1 PAUSE PAUSE
:FIN
