@ECHO OFF
REM %1=JA,EN   
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ◎I言語バージョンが(%I_VER%)で.NETが(%I_VER2RUN%)のI言語をインストールします。
ECHO ★X64(X86-64)系CPUのWindowsOSマシンでないと動きません。
ECHO ★Windowsの管理者権限を持ったユーザーで行って下さい。
ECHO ★I言語バージョン(%I_VER%)が既に稼働している場合はプログラムを共有するので
ECHO　 ランタイムが同じで有る必要があります、運用が難しいのでお勧めは出来ません。　
ECHO ★RDBMSのMicrosoft SQL Server(推奨),IBM DB2,Oracle,PostgreSQL,MariaDBのどれか
ECHO   一つをこのユーザーIDで事前にインストールしておく必要が有ります。
ECHO   RDBMSをインストールしてない時は閉じてインストール後に再度起動して下さい。
ECHO ★Microsoft SQL Serverが暗号化対応されている場合の対策はされていません、
ECHO   暗号化されている場合はII_SQL2.SRCを暗号化対応し再コンパイルして下さい。
IF EXIST --SELF-CONTAINED.TXT GOTO DOTNET_OK
ECHO ★.NET %I_VER2RUN%の[デスクトップランタイム]がインストールされている必要が有ります。
ECHO   インストールされていない場合はインターネットからダウンロードしようとするので、
ECHO   インターネットに接続されていない場合は別の方法で「デスクトップ ランタイム」を
ECHO 　インストールした後 [Enter]で続行して下さい。
:DOTNET_OK
PAUSE
IF NOT EXIST %I_HOME% MKDIR %I_HOME%
IF NOT EXIST %I_BIN%  MKDIR %I_BIN%
IF NOT EXIST %I_TMP%  MKDIR %I_TMP%
REM ECHO Y>%I_TMP%\Y.TXT
ICACLS %I_HOME% /grant:r SYSTEM:(OI)(CI)(F) /grant:r ADMINISTRATORS:(OI)(CI)(F) /grant:r %USERNAME%:(OI)(CI)(F) /grant:r EVERYONE:(OI)(CI)(R)
ICACLS %I_TMP%  /grant:r everyone:(OI)(CI)(F)
ICACLS %I_BIN%  /grant:r everyone:(OI)(CI)(F)
%I_XCOPYD%  ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
%I_XCOPYD%  ..\%I_VER%_BIN\SERVER_WD\*.* %I_BIN%
%I_XCOPYF%  I_*.ICO                      %I_BIN%
%I_XCOPYF%  I_LANG_??_W.TXT              %I_BIN%
%I_BIN%\IMENUWD.EXE %1 30/600 SET_PASSWORD.TXT
START "" %I_BIN%\IROOTWD.EXE %I_BIN%\IMENUWD.EXE %1 30/600 SET_I.TXT SET_BEGIN.TXT SET_DB_P.TXT SET_DB_M.TXT SET_DB_I.TXT SET_DB_O.TXT SET_DB_L.TXT SET_END.TXT
