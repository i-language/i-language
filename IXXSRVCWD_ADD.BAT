@echo OFF
REM Windows �T�[�r�X�o�^�iI?SRVC?)
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
ECHO "%I_SRVC%"�̃T�[�r�Y��OS��ɓo�^���܂��B
ECHO ���[�U �A�J�E���g������(IROOTWD)���o���ꍇ�͋����ĉ������B
ECHO ���s����ꍇ�͉����L�[�������ĉ������B
ECHO *******************************************************************
IF NOT "%1"=="CONT" PAUSE
%SYSTEMDRIVE%\I\BIN%I_VER%\IROOTWD %0 %1 PAUSE PAUSE
:FIN 