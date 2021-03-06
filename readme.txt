==========================================================
=== I言語の説明 (2020-11-06現在)===
=================================
１．はじめに。
１）I言語は難しい事は全てコンピュータに任せる事で、
　　誰でも簡単に早くプログラミングが出来る物です。
　　開発支援も運用支援も充実しており、インストールすれば、
　　その日から基幹システムとして動かす事が出来ます。
２）I言語は、最新のWindows-64BitのOSで、
　　最新MicrosoftSQLServer（M)で、
　　最新の.NET上で動くソフトです。
　　最新MicrosoftSQLServerをインストール後、　
    [SETUP_JA.BAT]を実行しインストールします。
　　この場合は[I??_??_SETUP_ETC]は不要です。
３）適用範囲を広げる意味で、他の環境でも動きますが、
　　動作を完全に確認している訳では無いので、
　　十分に動作確認をして下さい。
　　[I??_??_SETUP_ETC]もダウンロードし同じ場所で解凍し、
　　[COPY_ETC.BAT]で[I??_??_SETUP]内にコピーして、
　　動作させるdllをインターネットからダウンロード後
　　再コンパイルする必要が有ります。
*+*+*+*+*+*+*+*+*++*+*+*+
★依頼★：PostgreSQLは12:00に起動するバックアップが
Npgsql.dllのバージョンアップで「SELECT PG_STOP_BACKUP(...)」
がエラーと成るように成ってしまいました。
対応方法を検討しましたが、サーバーのバッチファイルにpostgresのパスワードを設定
しないと動かないので、対応は保留としました、バッチファイルにパスワードを設定しても
良いと判断された場合は以下の作業で対応して下さい。
(1)ZZZZ999850の「P+=DBO_SQL{SELECT PG_START_BACKUP('?WN.DATE_TIME?')};」
と「P+=DBO_SQL{SELECT PG_STOP_BACKUP()};」の2行の頭に*を付けてコメント化します。
(2)「C:\I\I.[システム名]\BAT\ZZZZZZBACKUP.BAT」の
REM ***( NEW BEGIN )***から**( NEW END )までの4行のREMを取って、
PGPASSWORDにパスワードを設定し、pg_basebackupのディレクトリ情報を正しく修正します。
(3)正しく動くか必ず動作確認を行って下さい。
*+*+*+*+*+*+*+*+*++*+*+*+
===================================
２．別の環境について。 
１）グラフを表示するプログラムは動きません。
２）印刷するプログラムは一部動かない機能が存在します。
３）WindowsではサーバーはC++がOS上で動きます、
　　クライアントはJavaがJavaVM上で、C++がOS上で動きます。
４）LinuxではC#がMONOでJavaがJavaVMでC++がOS上で動きます。
５）RDBMSはIBM DB2(I),Oracle(O),PostgreSQL(P),MariaDB(L)
    か動きます。	　　
６）Firebird(D),HiRDB(H)は問題が多く今は動きません。
７）Symfoware(F)は機能不足で途中で開発を中止しました。
８）MONO版は[SETUP_JA_MONO.SH]を起動しますが、
　　DB2とOracleはライブラリが無いので動きません。
９）Java版はシリアルポートライブラリを使うので
    [purejavacomm]をインストールし[purejavacomm.jar]
　　と[jna-4.0.0.jar]（数値は最新のバージョン）
　　を[jna.jar]に名前を変えてこのディレクトリ上にコピー
　　してから[SETUP_JA_JAVA.SH]を起動します。
10）C++版はQtをインストールします。
　　QtではSQL ServerはODBC接続しか無く、
　　ODBC接続は管理者のsaでの接続が出来ないので、
　　サーバーのインストールは無理のようです。
  　他のRDBMSも取り合えずODBCによる接続のみ対応中なので
　　かなり問題が有ります、使う場合は十分に動作確認後
　　使って下さい。
==========================================================
３．動作状況
（◎=推奨,○=動きます）
｛▲=昔は動きました,＊=未確認,X=動きません）
（S=Server,C=Client)(D=.NET,J=Java,+=C++)

            　　===Windows====  ====Linux=====
                SDCD SJCJ S+C+  SDCD SJCJ S+C+
1)SQL Server(M) ◎◎ ×＊ ×〇  〇〇 〇〇 ×〇(+はODBC接続)　
2)IBM DB2(I)    〇〇 ×＊ ××  ×× 〇〇 ××(+は文字化け)
3)Oracle(O)　 　〇〇 ×＊ ××  ×× 〇〇 ××(+は文字化け)　　
4)PostgreSQL(P) 〇〇 ×＊ ｘｘ  〇〇 〇〇 ｘｘ(+は'エラー)
5)MariaDB(L)    〇〇 ×＊ ｘｘ  〇〇 〇〇 ｘｘ(+は'エラー)
6)Firbird(D)    ▲▲ ×＊ ＊＊  ▲▲ ＊＊ ＊＊
7)HiRDB(H)　    ▲▲ ×＊ ＊＊  ▲▲ ＊＊ ＊＊
8)Symfoware（F) ×× ×× ××  ×× ×× ×× 　　

提供者：原沢信道
以上
