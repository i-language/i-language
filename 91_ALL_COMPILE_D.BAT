@ECHO OFF
REM ALL DOTNET COMPILE 
IF "%I_VER%"=="" CALL C_BEGIN.BAT 
REM IF NOT "%1"=="" GOTO SKIP1 
REM IF NOT EXIST ..\i-download\%I_H1_DLL% ECHO ^(SKIP H^(HIDB^)^) 
REM IF NOT EXIST ..\i-download\%I_F_DLL%  ECHO ^(SKIP F^(Symfoware^)^)
REM IF NOT EXIST ..\i-download\%I_D_DLL%  ECHO ^(SKIP D^(FireBird^)^) 
REM :SKIP1
REM IF NOT EXIST ..\i-download\%I_I_DLL%  ECHO ^(SKIP I^(DB2^)^) 
REM IF NOT EXIST ..\i-download\%I_L_DLL%  ECHO ^(SKIP L^(MariaDB^)^) 
REM IF NOT EXIST ..\i-download\%I_O_DLL%  ECHO ^(SKIP O^(Oracle^)^) 
REM IF NOT EXIST ..\i-download\%I_P_DLL%  ECHO ^(SKIP P^(PosgreSQL^)^)
CALL C_SOURCE.BAT CONT 
CALL ISOURCE.BAT CONT
CALL IROOT.BAT  CONT
CALL IMENU.BAT  CONT
CALL IPRINT.BAT  CONT
CALL ICHART.BAT  CONT
CALL ITIME.BAT  CONT
CALL ISETUP.BAT CONT
CALL ISRVC.BAT  CONT
IF EXIST ..\%I_VER%_BIN\CLIENT_UD\*.pdb ERASE /Q ..\%I_VER%_BIN\CLIENT_UD\*.pdb >NUL
IF EXIST ..\%I_VER%_BIN\CLIENT_WD\*.pdb ERASE /Q ..\%I_VER%_BIN\CLIENT_WD\*.pdb >NUL
IF EXIST ..\%I_VER%_BIN\SERVER_UD\*.pdb ERASE /Q ..\%I_VER%_BIN\SERVER_UD\*.pdb >NUL
IF EXIST ..\%I_VER%_BIN\SERVER_WD\*.pdb ERASE /Q ..\%I_VER%_BIN\SERVER_WD\*.pdb >NUL
REM ERASE /Q SERVER --- CLIENT
FOR /R ..\%I_VER%_BIN\CLIENT_UD %%D IN (*) DO IF EXIST ..\%I_VER%_BIN\SERVER_UD\\%%~NXD ERASE /Q    ..\%I_VER%_BIN\SERVER_UD\\%%~NXD
FOR /R ..\%I_VER%_BIN\CLIENT_UD %%D IN (.) DO IF EXIST ..\%I_VER%_BIN\SERVER_UD\\%%~ND  RMDIR /Q /S ..\%I_VER%_BIN\SERVER_UD\\%%~ND
FOR /R ..\%I_VER%_BIN\CLIENT_WD %%D IN (*) DO IF EXIST ..\%I_VER%_BIN\SERVER_WD\\%%~NXD ERASE /Q    ..\%I_VER%_BIN\SERVER_WD\\%%~NXD
FOR /R ..\%I_VER%_BIN\CLIENT_WD %%D IN (.) DO IF EXIST ..\%I_VER%_BIN\SERVER_WD\\%%~ND  RMDIR /Q /S ..\%I_VER%_BIN\SERVER_WD\\%%~ND
REM IF NOT "%1"=="" GOTO FIN
REM ***(���s�V�X�e���R�s�[)***
REM ECHO ***�i���肢�j**************************************************
REM ECHO ���s�V�X�e���̃v���O���������ւ��܂��B����ւ���ꍇ��[Enter]�ő��s���ĉ������B
REM ECHO ������1;I����̃v���O�������N�����Ă���ꍇ�́A�C�����ĉ������B
REM ECHO ������2;�T�[�r�X��ISRVCWD���g�p���ł��A�蓮�Œ�~���đ��s���A�Ō�ɋN�����ĉ������B
REM ECHO ***************************************************************
REM START %SystemRoot%\system32\services.msc
REM PAUSE 
REM IF EXIST %I_BIN%                                  %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
REM IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER% %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%
REM IF EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%   %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_UD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%
REM ECHO ���s�V�X�e���̃v���O���������ւ��܂����B[Enter]�ŏI�����ĉ������BREM 
REM PAUSE
REM :FIN