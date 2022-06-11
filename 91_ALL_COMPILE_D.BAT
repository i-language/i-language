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
REM ***(現行システムコピー)***
REM ECHO ***（お願い）**************************************************
REM ECHO 現行システムのプログラムを入れ替えます。入れ替える場合は[Enter]で続行して下さい。
REM ECHO ★注意1;I言語のプログラムが起動している場合は、修了して下さい。
REM ECHO ★注意2;サービスのISRVCWDが使用中です、手動で停止して続行し、最後に起動して下さい。
REM ECHO ***************************************************************
REM START %SystemRoot%\system32\services.msc
REM PAUSE 
REM IF EXIST %I_BIN%                                  %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
REM IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER% %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%
REM IF EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%   %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_UD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%
REM ECHO 現行システムのプログラムを入れ替えました。[Enter]で終了して下さい。REM 
REM PAUSE
REM :FIN