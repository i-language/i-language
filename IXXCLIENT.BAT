@ECHO OFF
REM I?CILENT.BAT
SET I_SERVER_DIR=%1
SHIFT
REM (SHIFT-1) %1=I_VERSION %2=DB %3=LANG %4=TIMEOUT_CONNECT/TIMEOUT_SQL %5=EVENT_FILE %6=MENU %7=TITLE %8=FRAMEWORK %9=JDBC
IF "%9"=="" EXIT /B
IF NOT EXIST %SYSTEMDRIVE%\I       MKDIR %SYSTEMDRIVE%\I
IF NOT EXIST %SYSTEMDRIVE%\I\TMP   MKDIR %SYSTEMDRIVE%\I\TMP
CACLS        %SYSTEMDRIVE%\I\TMP   /E /T /C /P EVERYONE:F
IF NOT EXIST %SYSTEMDRIVE%\I\BIN%1 MKDIR %SYSTEMDRIVE%\I\BIN%1
CACLS        %SYSTEMDRIVE%\I\BIN%1 /E /T /C /P EVERYONE:F
XCOPY /C /E /Y %I_SERVER_DIR%\BIN%1\*.*   %SYSTEMDRIVE%\I\BIN%1
XCOPY /C /E /Y %I_SERVER_DIR%\BIN%1%8\*.* %SYSTEMDRIVE%\I\BIN%1
XCOPY /C /E /Y %I_SERVER_DIR%\CLIENT\%5   %SYSTEMDRIVE%\I\BIN%1
REM IF "%2"=="P" XCOPY /C /E  %SYSTEMDRIVE%\I\BIN%1\FRAMEWORK%8\*.* %SYSTEMDRIVE%\I\BIN%1
WSCRIPT.EXE %I_SERVER_DIR%\CLIENT\%1CLIENT.JS %1 %3 %4 %5 %6 %7 %8 %9 DESKTOP
ECHO *===========================================================================*
ECHO ���N���C�A���g�ɃC���X�g�[���̍ŏI��Ƃł��B
ECHO �@���ꂩ��S�Ẵ��[�U�[�̃f�B�X�N�g�b�v�ɃA�C�R����\���ł���悤�ɂ��܂���
ECHO�@�@Windows�̊Ǘ��Ҍ����������Ǝ��s�Ƀp�X���[�h�����߂Ă��܂��A�p�X���[�h�s���̏ꍇ
ECHO�@�@�l�̃f�X�N�g�b�v�ɂ͊��ɍ���Ă���̂ŁA�E��́~���N���b�N���I���ł��B
ECHO�@�@Enter�ł͑��s����΁A�S���[�U�[�p�̃A�C�R���������̂ŁA�����̃f�X�N�g�b�v���
ECHO�@�@�A�C�R���͎��O�ɏ����Ă��������B�i�T�[�o�[�C���X�g�[�����͏����ĉ������j
ECHO�@�@(*I����T�[�o�[�C���X�g�[�����������ĉ�����*�j
ECHO *===========================================================================*
PAUSE
%SYSTEMDRIVE%\I\BIN%1\IROOTWD.EXE WSCRIPT.EXE %I_SERVER_DIR%\CLIENT\%1CLIENT.JS %1 %3 %4 %5 %6 %7 %8 %9 ALLUSERSDESKTOP
REM ECHO    �N���C�A���g�̃C���X�g�[�����I�����܂����B�@Enter�ŏI�����܂��B
REM PAUSE