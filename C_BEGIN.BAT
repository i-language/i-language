@ECHO OFF
REM ===( Ý’è )===
CALL _BEGIN.BAT
REM ==( MKDIR )=================
for %%d in (WORK BIN)                                                 do if not exist ..\%I_VER%_%%d MKDIR ..\%I_VER%_%%d
for %%d in (BIN\SERVER_UD BIN\SERVER_WD  BIN\CLIENT_UD BIN\CLIENT_WD) do if not exist ..\%I_VER%_%%d MKDIR ..\%I_VER%_%%d
for %%d in (BIN\JAVA BIN\CLIENT_WC BIN\CLIENT_UC)                     do if not exist ..\%I_VER%_%%d MKDIR ..\%I_VER%_%%d
IF NOT EXIST %I_HOME% MKDIR %I_HOME% 
IF NOT EXIST %I_TMP%  MKDIR %I_TMP% 
IF EXIST %I_BIN% GOTO SKIP_BIN 
mkdir    %I_BIN% 
echo Y>%I_TMP%\Y.TXT
cacls %SYSTEMDRIVE%\I /P SYSTEM:F ADMINISTRATORS:F %USERNAME%:F EVERYONE:R < %I_TMP%\Y.TXT 
cacls %I_TMP% /E /P EVERYONE:F
cacls %I_BIN% /E /P EVERYONE:F
:SKIP_BIN