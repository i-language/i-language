@ECHO OFF
REM %1=JA,EN   
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ��I����o�[�W������(%I_VER%)��.NET��(%I_VER2RUN%)��I����T�[�o�[���C���X�g�[�����܂��B
ECHO ��Windows�̊Ǘ��Ҍ��������������[�U�[���s���ĉ������B
ECHO �����Ӂ�I����o�[�W����(%I_VER%)�����ɉғ����Ă���ꍇ�̓v���O���������L����̂�
ECHO�@�@�@�@�@.NET�̃����^�C���������ŗL��K�v������܂��B���A�^�p����ςł��̂ł����߂͏o���܂���B�@
IF EXIST --SELF-CONTAINED.--SELF-CONTAINED GOTO NOTNET_OK
ECHO �����Ӂ�.NET %I_VER2RUN%�́u�f�X�N�g�b�v�����^�C���v���C���X�g�[������Ă���K�v���L��܂��B
ECHO       �@�C���X�g�[������Ă��Ȃ��ꍇ�̓C���^�[�l�b�g����_�E�����[�h���悤�Ƃ���̂ŁA
ECHO         �C���^�[�l�b�g�ɐڑ�����Ă��Ȃ��ꍇ�͕ʂ̕��@�Łu�f�X�N�g�b�v �����^�C���v��
ECHO �@      �C���X�g�[�������� [Enter]�ő��s���ĉ������B
:NOTNET_OK
PAUSE
IF NOT EXIST %I_HOME% MKDIR %I_HOME%
IF NOT EXIST %I_BIN%  MKDIR %I_BIN%
IF NOT EXIST %I_TMP%  MKDIR %I_TMP%
ECHO Y>%I_TMP%\Y.TXT
CACLS %I_HOME% /P SYSTEM:F ADMINISTRATORS:F %USERNAME%:F EVERYONE:R < %I_TMP%\Y.TXT 
CACLS %I_TMP%  /E /P EVERYONE:F
CACLS %I_BIN%  /E /P EVERYONE:F
%I_XCOPYF% /Q ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
%I_XCOPYF% /Q ..\%I_VER%_BIN\SERVER_WD\*.* %I_BIN%
%I_XCOPYF% /Q I_*.ICO                      %I_BIN%
%I_XCOPYF% /Q I_LANG??W.TXT                %I_BIN%
%I_BIN%\IMENUWD.EXE %1 30/600 SET_PASSWORD.TXT
START "" %I_BIN%\IROOTWD.EXE %I_BIN%\IMENUWD.EXE %1 30/600 SET_I.TXT SET_BEGIN.TXT SET_DB_P.TXT SET_DB_M.TXT SET_DB_I.TXT SET_DB_O.TXT SET_DB_L.TXT SET_END.TXT