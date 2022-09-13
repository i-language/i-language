@ECHO OFF
REM %1=JA,EN
IF "%1"=="" EXIT /B
CALL _BEGIN.BAT
ECHO ◎I言語のバージョンが(%I_VER%)の.NETが(%I_VER2RUN%)の.NETをバージョンアップします。
ECHO ★Windowsの管理者権限を持ったユーザーが行って下さい。
ECHO ◎.NETは定期的にバージョンが上がります、サポート期限が有るので、期限が近づいた時点で
ECHO　 バージョンアップをする事をお勧めします。
ECHO ★注意;当然ですが、まだ出ていないバージョンでの動作確認はしてないので、
ECHO    本番システムのアップの前に別マシンに新バージョンをインストールし
ECHO    十分に動作確認を行ってから本番システムのアップをして下さい。
ECHO 　尚、.NETは偶数バージョンが長期サポート版(LTS)です。
:LOOP
ECHO #=========================================================================================#
ECHO #                                                                                         #
ECHO #   1---セットアップファイルのプログラムをバージョンアップします。                        #
ECHO #       (★注意★誤動作防止の為、該当I言語サーバーでは実行しないで下さい）                #
ECHO #      （インターネットから.NET SDKをダウンロードする必要が有ります） 　　　　　　　      #
ECHO #      （該当I言語クライアントで実行して下さい）                                          #
ECHO #                                                                                         #
ECHO #   2---動作確認用でクライアントのプログラムを入れ替えます。                              #
ECHO #      （該当I言語クライアントで実行して下さい）                                          #
ECHO #      （これで、クライアントの動作確認をし、問題無ければサーバーで3を実行します）        #
ECHO #                                                                                         #
ECHO #   3---サーバーのプログラムを入れ替えます。                                              #
ECHO #      （該当I言語サーバーで実行して下さい）                                              #
ECHO #      （I言語サーバーが数分間使えなくなるので、実行時間に注意して下さい）                #
ECHO #      （入れ替え完了後はクライアントの最初の立ち上げ時にバージョンアップが実行されます） # 
ECHO #                                                                                         #
ECHO #   9---何もしないで終了します。                                                          # 
ECHO #                                                                                         #
ECHO #=========================================================================================#  
:B1
IF NOT EXIST %I_BIN% ECHO 該当I言語クライアント又は該当I言語サーバーでして下さい。&PAUSE&GOTO B1
SET I_DATE=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%
ECHO 作業番号を入力してください。
SET /P I_INPUT="NO:"
IF "%I_INPUT%"=="1" GOTO NO1
IF "%I_INPUT%"=="2" GOTO NO2
IF "%I_INPUT%"=="3" GOTO NO3
IF "%I_INPUT%"=="9" EXIT /B
ECHO ***** INPUT ERROR *****
GOTO LOOP
:NO1
ECHO バージョンアップを実施します。
IF NOT EXIST %I_BIN%\IMENUWD.EXE ECHO 該当I言語クライアントで実行して下さい。&PAUSE&GOTO LOOP
IF NOT EXIST ..\%I_VER%_BIN ECHO ..\%I_VER%_BIN ディレクトリが有りません。&PAUSE&GOTO LOOP
SET I_OBFUSCATE=NO
IF EXIST ..\%I_VER%_BIN_OBFUSCATE SET I_OBFUSCATE=YES
%I_BIN%\IMENUWD.EXE %1 30/600 VERSIONUP.TXT SET_BEGIN.TXT OBFUSCATE=%I_OBFUSCATE%
GOTO LOOP  
:NO2
ECHO クライアントソフトのプログラムを入れ替えます,Enterで実行します。
IF NOT EXIST %I_BIN%\IMENUWD.EXE ECHO 該当I言語クライアントで実行して下さい。&PAUSE&GOTO LOOP
PAUSE
CALL SET_RENAME_MKDIR.BAT %I_BIN% BIN%I_VER%_%I_DATE% ICACLS %I_BIN% /grant:r EVERYONE:(OI)(CI)(F)
%I_XCOPYF% %I_BIN%_%I_DATE%\I_*.*        %I_BIN%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.*  %I_BIN% 
ECHO クライアントソフトのプログラムを入れ替えました動作確認して下さい。
PAUSE
EXIT
:NO3
ECHO 3---サーバーのプログラムを入れ替えます。（該当I言語サーバーで実行します）
IF NOT EXIST %I_BIN%\ISRVCWD.EXE ECHO 該当I言語サーバーで実行して下さい。&PAUSE&GOTO LOOP
IF NOT EXIST %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D ECHO %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%ディレクトリが有りません。&PAUSE&GOTO LOOP
REM (保留中)IF NOT EXIST %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U   ECHO %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U%ディレクトリが有りません。&PAUSE&GOTO LOOP
ECHO %I_VER%SRVCD を停止します。(本番稼働中は注意が必要です）
PAUSE
%I_BIN%\IROOTWD.EXE STOP %I_VER%SRVCWD
PAUSE
REM ***( SHARE WINDOWS )***
CALL SET_RENAME_MKDIR.BAT               %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D BIN%I_VER%D_%I_DATE%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %SYSTEMDRIVE%\I\SHARE\WINDOWS\BIN%I_VER%D 
REM ***( SHARE LINUX )***
REM (保留中) CALL SET_RENAME_MKDIR.BAT               %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U   BIN%I_VER%U_%I_DATE%
REM (保留中) %I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WU\*.* %SYSTEMDRIVE%\I\SHARE\LINUX\BIN%I_VER%U 
REM ****( BIN )***
CALL SET_RENAME_MKDIR.BAT %I_BIN% BIN%I_VER%_%I_DATE% ICACLS %I_BIN% /grant:r EVERYONE:(OI)(CI)(F)
%I_XCOPYF% %I_BIN%_%I_DATE%\I_*.*       %I_BIN%
%I_XCOPYD% ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN% 
%I_XCOPYD% ..\%I_VER%_BIN\SERVER_WD\*.* %I_BIN% 
%I_BIN%\IROOTWD.EXE SC START %I_VER%SRVCWD
ECHO 全てのプログラムを入れ替えました。
ECHO ★該当I言語クライアントを起動し、ジョブの「ZZZZ010531」を実行し、バージョンアップを確定して下さい。★　
PAUSE
EXIT


 