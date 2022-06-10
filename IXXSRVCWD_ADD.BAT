@echo OFF
REM Windows サービス登録（I?SRVC?)
SET I_SRVC=%0
SET I_SRVC=%I_SRVC:~-18,9%
SET  I_VER=%I_SRVC:~0,3%
IF NOT "%1"=="ROOT" IF "%2"=="" GOTO FIRST
SET I_SC=CREATE %I_SRVC% BINPATH= %SYSTEMDRIVE%\I\BIN%I_VER%\ISRVCWD.EXE TYPE= SHARE START= AUTO
ECHO  SC %I_SC%
      SC %I_SC%
SC START %I_SRVC%
IF "%1"=="PAUSE" PAUSE
GOTO FIN
:FIRST
ECHO *******************************************************************
ECHO "%I_SRVC%"のサービズをOS上に登録します。
ECHO ユーザ アカウント制御画面(IROOTWD)が出た場合は許可して下さい。
ECHO 実行する場合は何かキーを押して下さい。
ECHO *******************************************************************
IF NOT "%1"=="CONT" PAUSE
%SYSTEMDRIVE%\I\BIN%I_VER%\IROOTWD %0 %1 PAUSE PAUSE
:FIN 
