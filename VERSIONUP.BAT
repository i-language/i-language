@ECHO OFF
REM %1=JA,EN
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ��I����̃o�[�W������(%I_VER%)��.NET��(%I_VER2RUN%)��.NET���o�[�W�����A�b�v���܂��B
ECHO ��Windows�̊Ǘ��Ҍ��������������[�U�[���s���ĉ������B
ECHO ��.NET�͒���I�Ƀo�[�W�������オ��܂��A�T�|�[�g�������L��̂ŁA�������߂Â������_��
ECHO�@ �o�[�W�����A�b�v�����鎖�������߂��܂��B
ECHO ������;���R�ł����A�܂��o�Ă��Ȃ��o�[�W�����ł̓���m�F�͂��ĂȂ��̂ŁA
ECHO    �{�ԃV�X�e���̃A�b�v�̑O�ɕʃ}�V���ɐV�o�[�W�������C���X�g�[����
ECHO    �\���ɓ���m�F���s���Ă���{�ԃV�X�e���̃A�b�v�����ĉ������B
ECHO �@���A.NET�͋����o�[�W�����������T�|�[�g��(LTS)�ł��B
:LOOP
ECHO #=========================================================================================#
ECHO #                                                                                         #
ECHO #   1---�Z�b�g�A�b�v�t�@�C���̃v���O�������o�[�W�����A�b�v���܂��B                        #
ECHO #       (�����Ӂ��듮��h�~�ׁ̈A�Y��I����T�[�o�[�ł͎��s���Ȃ��ŉ������j                #
ECHO #      �i�C���^�[�l�b�g����.NET SDK���_�E�����[�h����K�v���L��܂��j �@�@�@�@�@�@�@      #
ECHO #      �i�Y��I����N���C�A���g�Ŏ��s���ĉ������j                                          #
ECHO #                                                                                         #
ECHO #   2---����m�F�p�ŃN���C�A���g�̃v���O���������ւ��܂��B                              #
ECHO #      �i�Y��I����N���C�A���g�Ŏ��s���ĉ������j                                          #
ECHO #      �i����ŁA�N���C�A���g�̓���m�F�����A��薳����΃T�[�o�[��3�����s���܂��j        #
ECHO #                                                                                         #
ECHO #   3---�T�[�o�[�̃v���O���������ւ��܂��B                                              #
ECHO #      �i�Y��I����T�[�o�[�Ŏ��s���ĉ������j                                              #
ECHO #      �iI����T�[�o�[�������Ԏg���Ȃ��Ȃ�̂ŁA���s���Ԃɒ��ӂ��ĉ������j                #
ECHO #      �i����ւ�������̓N���C�A���g�̍ŏ��̗����グ���Ƀo�[�W�����A�b�v�����s����܂��j # 
ECHO #                                                                                         #
ECHO #   9---�������Ȃ��ŏI�����܂��B                                                          # 
ECHO #                                                                                         #
ECHO #=========================================================================================#  
:B1
IF NOT EXIST %I_BIN% ECHO �Y��I����N���C�A���g���͊Y��I����T�[�o�[�ł��ĉ������B&PAUSE&GOTO B1
SET I_DATE=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO ��Ɣԍ�����͂��Ă��������B
SET /P I_INPUT="NO:"
IF "%I_INPUT%"=="1" GOTO NO1
IF "%I_INPUT%"=="2" GOTO NO2
IF "%I_INPUT%"=="3" GOTO NO3
IF "%I_INPUT%"=="9" EXIT /B
ECHO ***** INPUT ERROR *****
GOTO LOOP
:NO1
ECHO �o�[�W�����A�b�v�����{���܂��B
IF NOT EXIST %I_BIN%\IMENUWD.EXE ECHO �Y��I����N���C�A���g�Ŏ��s���ĉ������B&PAUSE&GOTO LOOP
IF NOT EXIST ..\%I_VER%_BIN ECHO ..\%I_VER%_BIN �f�B���N�g�����L��܂���B&PAUSE&GOTO LOOP
SET I_OBFUSCATE=NO
IF EXIST ..\%I_VER%_BIN_OBFUSCATE SET I_OBFUSCATE=YES
%I_BIN%\IMENUWD.EXE %1 30/600 VERSIONUP.TXT SET_BEGIN.TXT OBFUSCATE=%I_OBFUSCATE%
GOTO LOOP  
:NO2
ECHO �N���C�A���g�\�t�g�̃v���O���������ւ��܂�,Enter�Ŏ��s���܂��B
IF NOT EXIST %I_BIN%\IMENUWD.EXE ECHO �Y��I����N���C�A���g�Ŏ��s���ĉ������B&PAUSE&GOTO LOOP
PAUSE
CALL SET_RENAME_MKDIR.BAT %I_BIN% BIN%I_VER%_%I_DATE% CACLS %I_BIN% /E /T /C /P EVERYONE:F
%I_XCOPYF% %I_BIN%_%I_DATE%\I_*.*        %I_BIN%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.*  %I_BIN% 
ECHO �N���C�A���g�\�t�g�̃v���O���������ւ��܂�������m�F���ĉ������B
PAUSE
EXIT
:NO3
ECHO 3---�T�[�o�[�̃v���O���������ւ��܂��B�i�Y��I����T�[�o�[�Ŏ��s���܂��j
IF NOT EXIST %I_BIN%\ISRVCWD.EXE ECHO �Y��I����T�[�o�[�Ŏ��s���ĉ������B&PAUSE&GOTO LOOP
IF NOT EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D ECHO %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%�f�B���N�g�����L��܂���B&PAUSE&GOTO LOOP
REM (�ۗ���)IF NOT EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U   ECHO %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U%�f�B���N�g�����L��܂���B&PAUSE&GOTO LOOP
ECHO %I_VER%SRVCD ���~���܂��B(�{�ԉғ����͒��ӂ��K�v�ł��j
PAUSE
%I_BIN%\IROOTWD.EXE STOP %I_VER%SRVCWD
PAUSE
REM ***( SHARE WINDOWS )***
CALL SET_RENAME_MKDIR.BAT               %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D BIN%I_VER%D_%I_DATE%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D 
REM ***( SHARE LINUX )***
REM (�ۗ���) CALL SET_RENAME_MKDIR.BAT               %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U   BIN%I_VER%U_%I_DATE%
REM (�ۗ���) %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WU\*.* %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U 
REM ****( BIN )***
CALL SET_RENAME_MKDIR.BAT %I_BIN% BIN%I_VER%_%I_DATE% CACLS %I_BIN% /E /T /C /P EVERYONE:F
%I_XCOPYF% %I_BIN%_%I_DATE%\I_*.*       %I_BIN%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN% 
%I_XCOPYD% ..\%I_VER%_BIN\SERVER_WD\*.* %I_BIN% 
%I_BIN%\IROOTWD.EXE SC START %I_VER%SRVCWD
ECHO �S�Ẵv���O���������ւ��܂����B
ECHO ���Y��I����N���C�A���g���N�����A�W���u�́uZZZZ010531�v�����s���A�o�[�W�����A�b�v���m�肵�ĉ������B���@
PAUSE
EXIT


 