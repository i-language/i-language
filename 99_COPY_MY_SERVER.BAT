REM ********( 現行MY システムへコピー）
CALL _BEGIN.BAT
IF EXIST %SYSTEMDRIVE%\I for /d %%p in (%SYSTEMDRIVE%\I\I.%I_VER%* %SYSTEMDRIVE%\I\I.I%I_VER:~2%) DO %I_XCOPYD% ZZZZ*.BAT %%p\BAT
rem IF EXIST %SYSTEMDRIVE%\I %I_XCOPYD% %I_VER%SRVC.* 　   %SYSTEMDRIVE%\I  
rem IF EXIST %SYSTEMDRIVE%\I %I_XCOPYD% %I_VER%RESCUE.*    %SYSTEMDRIVE%\I  
rem IF EXIST %SYSTEMDRIVE%\I %I_XCOPYD% %I_VER%UNINSTALL.* %SYSTEMDRIVE%\I  
IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%  %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D
IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%  %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WC\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%C
IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%  %I_XCOPYD% ..\%I_VER%_BIN\JAVA\*.*      %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%J
IF EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%    %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_UD\*.* %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%D
IF EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%    %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_UC\*.* %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%C
IF EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%    %I_XCOPYD% ..\%I_VER%_BIN\JAVA\*.*      %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%J
PAUSE
