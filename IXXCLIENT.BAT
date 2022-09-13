@ECHO OFF
REM I?CILENT.BAT
SET I_SERVER_DIR=%1
SHIFT
REM (SHIFT-1) %1=I_VERSION %2=DB %3=LANG %4=TIMEOUT_CONNECT/TIMEOUT_SQL %5=EVENT_FILE %6=MENU %7=TITLE %8=FRAMEWORK %9=JDBC
IF "%9"=="" EXIT /B
IF NOT EXIST %SYSTEMDRIVE%\I       MKDIR %SYSTEMDRIVE%\I
IF NOT EXIST %SYSTEMDRIVE%\I\TMP   MKDIR %SYSTEMDRIVE%\I\TMP
ICACLS       %SYSTEMDRIVE%\I\TMP   /grant:r everyone:(OI)(CI)(F)
IF NOT EXIST %SYSTEMDRIVE%\I\BIN%1 MKDIR %SYSTEMDRIVE%\I\BIN%1
ICACLS       %SYSTEMDRIVE%\I\BIN%1 /grant:r everyone:(OI)(CI)(F)
XCOPY /C /E /Y %I_SERVER_DIR%\BIN%1\*.*   %SYSTEMDRIVE%\I\BIN%1
XCOPY /C /E /Y %I_SERVER_DIR%\BIN%1%8\*.* %SYSTEMDRIVE%\I\BIN%1
XCOPY /C /E /Y %I_SERVER_DIR%\CLIENT\%5   %SYSTEMDRIVE%\I\BIN%1
REM IF "%2"=="P" XCOPY /C /E  %SYSTEMDRIVE%\I\BIN%1\FRAMEWORK%8\*.* %SYSTEMDRIVE%\I\BIN%1
WSCRIPT.EXE %I_SERVER_DIR%\CLIENT\%1CLIENT.JS %1 %3 %4 %5 %6 %7 %8 %9 DESKTOP
ECHO *===========================================================================*
ECHO ★クライアントにインストールの最終作業です。
ECHO 　これから全てのユーザーのディスクトップにアイコンを表示できるようにしますが
ECHO　　Windowsの管理者権限が無いと実行にパスワードを求めてきます、パスワード不明の場合
ECHO　　個人のデスクトップには既に作られているので、右上の×をクリックし終了です。
ECHO　　Enterでは続行すれば、全ユーザー用のアイコンも作られるので、自分のデスクトップ上の
ECHO　　アイコンは事前に消してください。（サーバーインストール中は消して下さい）
ECHO　　(*I言語サーバーインストール中も消して下さい*）
ECHO *===========================================================================*
PAUSE
%SYSTEMDRIVE%\I\BIN%1\IROOTWD.EXE WSCRIPT.EXE %I_SERVER_DIR%\CLIENT\%1CLIENT.JS %1 %3 %4 %5 %6 %7 %8 %9 ALLUSERSDESKTOP
REM ECHO    クライアントのインストールが終了しました。　Enterで終了します。
REM PAUSE
