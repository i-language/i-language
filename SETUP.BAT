@ECHO OFF
REM %1=JA,EN   
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ◎I言語バージョンが(%I_VER%)で.NETが(%I_VER2RUN%)のI言語サーバーをインストールします。
ECHO ★Windowsの管理者権限を持ったユーザーが行って下さい。
ECHO ★注意★I言語バージョン(%I_VER%)が既に稼働している場合はプログラムを共有するので
ECHO　　　　　.NETのランタイムが同じで有る必要があります。尚、運用が大変ですのでお勧めは出来ません。　
IF EXIST --SELF-CONTAINED.--SELF-CONTAINED GOTO NOTNET_OK
ECHO ★注意★.NET %I_VER2RUN%の「デスクトップランタイム」がインストールされている必要が有ります。
ECHO       　インストールされていない場合はインターネットからダウンロードしようとするので、
ECHO         インターネットに接続されていない場合は別の方法で「デスクトップ ランタイム」を
ECHO 　      インストールした後 [Enter]で続行して下さい。
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
