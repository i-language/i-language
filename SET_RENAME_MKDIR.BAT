@ECHO OFF
REM SET_RENAME_MKDIR.BAT  %1=OLD %2=NEW %3-%9=�R�}���h
:B1
IF "%2"=="" ECHO �p�����[�^�[�����G���[&PAUSE&GOTO B1
:B2
IF "%2"== "%1" ECHO �p�����[�^�[�������G���[&PAUSE&GOTO B2
ECHO �f�B���N�g����%1��%2�Ƀ��l�[��������%1�����܂��B
IF NOT EXIST %1  ECHO %1���L��܂���B&ECHO ���s�����RENAME���Ȃ���MAKDIR�̂ݎ��s���܂��B&PAUSE&GOTO MKDIR
IF EXIST %2 ECHO %2 �f�B���N�g�����L��܂��B&ECHO ���s����Ɖ������Ȃ��ŏI�����܂��B&PAUSE&GOTO FIN
:RENAME
ECHO RENAME %1 %2
     RENAME %1 %2
IF EXIST %1 ECHO %1�̖��O���ύX�o���܂���B&ECHO ��������菜���đ��s����΍ēxRENAME���܂��B&PAUSE&GOTO RENAME
:MKDIR
ECHO MKDIR %1
     MKDIR %1
IF NOT EXIST %1 ECHO %1�̃f�B���N�g�������O�����܂���B&ECHO ��������菜���đ��s����΍ēxMKDIR���܂��BPAUSE&GOTO MKDIR
IF "%3"=="" GOTO FIN
ECHO %3 %4 %5 %6 %7 %8 %9
     %3 %4 %5 %6 %7 %8 %9
:FIN