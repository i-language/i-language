@ECHO OFF
REM %1=JA,EN
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO �����炩�̗��R�Ńf�[�^�x�[�X�̃p�X���[�h��ύX�������ꍇ�Ɏg�p���܂��B
ECHO ��Windows�̊Ǘ��Ҍ��������������[�U�[���s���ĉ������B
ECHO ���Y��I����T�[�o�[�ōs���ĉ������B
ECHO �����s����ƑS�N���C�A���g�������Ȃ�����܂��A�Ή��o�b�`�t�@�C���������̂�
ECHO�@ ���O�ɑS���p�҂ɓ����Ȃ��Ȃ�������
ECHO  �u\\%COMPUTERNAME%\I_SHARE\ALTER_PASSWORD_%COMPUTERNAME%_(�V�X�e����).BAT�v
ECHO�@ �̃o�b�`�t�@�C�������s����悤�Ɉ˗����ĉ������B

:B1
PAUSE
IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D IF EXIST %I_BIN%\IMENUWD.EXE GOTO OK
ECHO �Y��I����T�[�o�[��ōs���ĉ������B
GOTO B1
:OK
%I_BIN%\IMENUWD.EXE %1 30/600 SET_I.TXT ALTER_PASSWORD.TXT SET_BEGIN.TXT 
EXIT


 