@ECHO OFF
REM Windows �T�[�r�X�폜�iSRVC)
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
ECHO "%I_SRVC%"�̃T�[�r�Y��OS�ォ��폜���܂��B
ECHO ���[�U �A�J�E���g������(IROOTWD.EXE)���o���ꍇ�͋����ĉ������B
ECHO ���s����ꍇ�͉����L�[�������ĉ������B
ECHO *******************************************************************
IF NOT "%1"=="CONT" PAUSE
%SYSTEMDRIVE%\I\BIN%I_VER%\IROOTWD.EXE %0 %1 PAUSE PAUSE
:FIN