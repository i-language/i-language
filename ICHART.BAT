@ECHO OFF
IF "%I_VER%"=="" CALL C_BEGIN.BAT
IF NOT "%1"=="" GOTO J1
CALL C_SOURCE.BAT
IF NOT EXIST %I_BIN%\ICHART2WD.EXE CALL C_COMPILE_D.BAT ICHART2
REM IF "%1"=="" %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
IF "%1"==""  %I_BIN%\ICHART2WD.EXE
:J1
CALL C_COMPILE_D.BAT ICHART CLIENT
IF "%1"=="" PAUSE
