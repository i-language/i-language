@ECHO OFF
REM SET_RENAME_MKDIR.BAT  %1=OLD %2=NEW %3-%9=コマンド
:B1
IF "%2"=="" ECHO パラメーター無しエラー&PAUSE&GOTO B1
:B2
IF "%2"== "%1" ECHO パラメーターが同じエラー&PAUSE&GOTO B2
ECHO ディレクトリの%1を%2にリネームしから%1を作ります。
IF NOT EXIST %1  ECHO %1が有りません。&ECHO 続行するとRENAMEしないでMAKDIRのみ実行します。&PAUSE&GOTO MKDIR
IF EXIST %2 ECHO %2 ディレクトリが有ります。&ECHO 続行すると何もしないで終了します。&PAUSE&GOTO FIN
:RENAME
ECHO RENAME %1 %2
     RENAME %1 %2
IF EXIST %1 ECHO %1の名前が変更出来ません。&ECHO 原因を取り除いて続行すれば再度RENAMEします。&PAUSE&GOTO RENAME
:MKDIR
ECHO MKDIR %1
     MKDIR %1
IF NOT EXIST %1 ECHO %1のディレクトリが名前が作れません。&ECHO 原因を取り除いて続行すれば再度MKDIRします。PAUSE&GOTO MKDIR
IF "%3"=="" GOTO FIN
ECHO %3 %4 %5 %6 %7 %8 %9
     %3 %4 %5 %6 %7 %8 %9
:FIN
