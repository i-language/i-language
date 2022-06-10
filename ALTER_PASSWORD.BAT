@ECHO OFF
REM %1=JA,EN
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ◎何らかの理由でデータベースのパスワードを変更したい場合に使用します。
ECHO ★Windowsの管理者権限を持ったユーザーが行って下さい。
ECHO ★該当I言語サーバーで行って下さい。
ECHO ★実行すると全クライアントが動かなく成ります、対応バッチファイルが作られるので
ECHO　 事前に全利用者に動かなくなった時は
ECHO  「\\%COMPUTERNAME%\I_SHARE\ALTER_PASSWORD_%COMPUTERNAME%_(システム名).BAT」
ECHO　 のバッチファイルを実行するように依頼して下さい。

:B1
PAUSE
IF EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D IF EXIST %I_BIN%\IMENUWD.EXE GOTO OK
ECHO 該当I言語サーバー上で行って下さい。
GOTO B1
:OK
%I_BIN%\IMENUWD.EXE %1 30/600 SET_I.TXT ALTER_PASSWORD.TXT SET_BEGIN.TXT 
EXIT


 