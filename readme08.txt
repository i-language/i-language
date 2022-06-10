================================================================
=== I言語 Ver8.10 バージョンアップ情報 (2012-11-06現在)===
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
◎************( 2012-11-06 VER8.10提供 )*********
★VER8.10-17(20121022)EXIT{+1};で次のプログラムに行った場合,BEGIN,START,SET=,DATA=,STOP_BEFORE,STOP_AFTERではEXIT{+1};の
                               次のプログラムに戻るように変更しました。
                               尚、COLOR,SQL,END,INPUT=で指定した場合はエラーになるようにしました。
●VER8.10-16(20121021)COMMENT2_BEGINとCOMMENT2_ENDを新設。（COMMENT_BEGIN,ENDの中で更にコメント化を可能にしました）
★VER8.10-15(20121019)VIEWへのGRANTは、更新系のUPDATE,INSERT,(DELETE)は設定しない事とします。
                     （VIEWは更新出来ない。更新系を設定するとエラーとなる場合がある為）　
★VER8.10-14(20121018)PostgreSQLのZZZZZZ_DAY_DATE_FUNC,ZZZZZZ_WEEK_DATE_FUNCの日付型を他のRDBMSと合せるためTIMESTAMPからDATEに変更しました。
　　　　　　　　　　　（?_NOW0?を使っている場合は?_NOW_DATE?に変更が必要です）　
■VER8.10-13(20121016)FUNCTIONとVIEWのインストール方法を大幅に変更しました。（ZZZZZZ_I_OBJECT_TABLEにも登録されます）
　　　　　　　　　　　関連でVIEW作成に使用の為_DB_HEADER（データベースの先頭文字の一部）のシステム変数を新設しました。
★VER8.10-12(20121009)ZZZZZZ_I_OBJECT_TABLEのZZZZZZ_OBJECTをCHAR(61)からCHAR(59)に変更しZZZZZZ_OBJECTの前にZZZZZZ_SIGN　CHAR(1)を追加しました。
　　　　　　　　　　　注意：再インストールする場合は事前にテーブル構造を対応しておかないとインストール出来ません。
                     (RDBMS共通で使用出来るようにDBにより採用や不採用の行指定を出来るようにしました）　
■VER8.10-11(20121003)MySQL用に..._TRIGI(INSERT),.._TRIGU(UPDATE),..._TRIGD(DELETE)を新設しました。
■VER8.10-10(20121001)TRIGをTRIGGERでなくTRIGERと変換してしまう問題に対応しました。
■VER8.10-9(20121001)DB2のCREATE_TABLE{}でNを陽に指定した場合,CHARとなってしまう問題に対応しました。
▲VER8.10-8(20120929)オブジェクトのファイル出力をデーターベース毎に名前を変えていましたが同じに変更しました。
▲VER8.10-7(20120928)FirberdでPROCEDUE一覧が表示されないのでOBJECT_VIEWを変更しました。
▲VER8.10-6(20120927)PostgreSQLのFUNCの削除で型が必要なためOBJECT_VIEWにZZZZZZ_TYPESを追加し関連プログラムを修正しました。
★VER8.10-5(20120926)SET{_EDIT=で変換出来ないと異常終了していましたが、エラー終了に改めました。
■VER8.10-4(20120925)FirberdでPROCEDUEのGRANT{}でエラーとなる問題に対処しました。
■VER8.10-3(20120925)_ESC=1の時キャンセル処理の中止も有効になってしまう問題に対処しました。
■VER8.10-2(20120923)カーソル命令SQL_CURSORを追加。
■VER8.10-1(20120919)カーソルを含むオブジェクト関連の各種システム変数(_CURSOR_..,_FUNC_...,_O_..,_OBJECT_,_PROC..)を追加しました。
◎************( 2012-08-14 VER8.9提供 )*********
■VER8.9-1(20120813)インストール時64桁のパスワードの最後が空白の場合エラーになる問題に対処しました。
▲VER8.8-2(20120604)IPRINTW.EXEがFramewoek4で動く場合IPRINTW4.EXEにならない問題に対処しました。（VER7のバージョン判定削除）
◎************( 2012-05-23 VER8.8提供 )*********
■VER8.8-1(20120523)32ビットパスワードの前後が空白となった場合"No good"になってしまう問題に対処しました。
▲VER8.7-7(20120522)PostgreSQL9.2.Xに対応しました。
◎************( 2012-05-13 VER8.7(その２)提供 )*********
▲VER8.7-6(20120513)DB2のサービス名が"DB2"でない場合は"DB2-0"で再確認のロジックを追加しました。
▲VER8.7-5(20120504)データベース名I10（DB2 V10.1用)を追加しました。
▲VER8.7-4(20120416)ヘルプの内容を見直し、説明を増やしましたました。
◎************( 2012-04-03 VER8.7提供 )*********
■VER8.7-3(20120401)SQL_REPEAT命令で全データを一気に変数に設定する命令を新設しました。(_SQL_REPEAT_COUNT,_SQL_REPEAT_COLUMN新設）
★VER8.7-2(20120322)Windows8でATコマンドが廃止されたのでSCHTASKSに変更します。（再インストール時は時間起動予約の設定しなおしが必要です）
■VER8.7-1(20120308)MySQL Connector Netを6.5.4にバージョンアップしました。
●VER8.6-14(20120221)IPRINT.EXEに"DATA_FIX","TEXT_FIX"命令を新設し、全体の印字幅を指定出来る機能を追加しました。
■VER8.6-13(20120220)IPRINT.EXEの文字印字位置を文字幅に合わせるように変更しました。
●VER8.6-12(20120220)IPRINT.EXEに"DATA_V","TEXT_V"命令を新設し縦印字を可能にしました。
■VER8.6-11(20120219)IPRINT.EXEのTEST表示のPRINTが最初のページしか印字出来ない問題に対処しました。
●VER8.6-10(20120218)IPRINT.EXEにIMAGEファイル印刷機能を付加しVERSION3としました。
◎************( 2012-02-13 VER8.6提供 )*********
■VER8.6-9(20120209)MySQLのTIMESTAMPをDATETIMEに変更。（TIMSTAMPは自動更新される場合があるため）
■VER8.6-8(20120119)DATA=に属性５を新設、１から９までの数値で「長さ１」を数値分増やします。
■VER8.6-7(20120114)%Z_CANCEL_WHEREの初期値をPROGRAM=のテーブルにZ_CANCELがない場合は'-'にしました。。
■VER8.6-6(20120102)データ名に"."が２個以上ある場合は２個前の"."以前は列名に含めない事とします。
■VER8.6-5(20111222)MONOを2.10.6から2.10.8に上げました。
■VER8.6-4(20111220)Firbirdの.NET　Providerを2.6.5から2.7.0に上げました。
■VER8.6-3(20111213)MySQLで型が’DATETIME'の場合、数値のみに変換されない問題に対応しました。
▲VER8.6-2(20111206)混在テーブルにZZZZZZ_PASSWORD_LENGTH,ZZZZZZ_PASSWORD_ALPHABET,ZZZZZZ_PASSWORD_NUMBERを新設し
　　　　　　　　　　パスワード登録時の最少の長さ、英字の最少数、数字の最少数判定に使用。　
■VER8.6-1(20111108)INSERT_FILEのUNIONをUNION ALLに変更し,"_UNION_ALL数"変数を新設しました。（UNIONでは重複データが排除されてしまうので）
◎************( 2011-11-06 VER8.5提供 )*********
▲VER8.5-8(20111105)ZZZZ010539の「リンクサーバー設定(MSSQL ONLY)」をMySQL,Firebird,HiRDBに対応しました。ただし、MySQLとFirebirdは日本語が有るとエラーになります。
■VER8.5-7(20111027)CONTROL=SMTPとするとSMTP命令で確認画面を表示しません。
■VER8.5-6(20111015)MONOを2.10.6にバージョンアップしました。
▲VER8.5-5(20111009)MSSQL2011以降用にSP_DBOPTIONをALTER　DATABASEに変更。
▲VER8.5-4(20111008)MySQLのCREATE　SCHEMAに" CHARACTER SET utf8"を追加しました。(MySQL5.6がインストール出来ない為）
■VER8.5-3(20111005)データ名@ARG,@CODE,@CODE39,@DATE_GOOD,@DATETIME,@DATETIME_GOOD,@DIGIT11,@EDIT_ERROR,@FULL_SIZE,@NEXT,@SPACE,@TRIMを新設。
■VER8.5-2(20110928)Oracle開発環境を11G Express Editionにバージョンアップしました。
■VER8.5-1(20110928)MySQL Connecter を6.4.4バージョンアップしました。
◎************( 2011-09-01 VER8.4　その2提供 )*********
▲VER8.4-1(20110901)ZZZZ999855のDBログバックアッププログラムに問題が有り対応しました。
3500 =E:IF{_DB_ERROR!='M4214'}ERROR{};
を
3500 =E:IF{_DB_ERROR!='M3013'}ERROR{};
に変更。
◎************( 2011-08-31 VER8.4提供 )*********
■VER8.4-6(20110826)MySQL Connector Netを6.4.3にバージョンアップしました。
■VER8.4-5(20110826)MONOを2.10.5にバージョンアップしました。
■VER8.4-4(20110825)INPUT=及び_INPUTを新設し入力時の文字判定が出来ます。文字を_INPUTに設定し、INPUT=を実行して入力ERROR{}でエラーを返します。
■VER8.4-3(20110802)Firbirdの.NET　Providerを2.5.2から2.6.5(NET2.0用)に上げました。
▲VER8.4-2(20110729)HELPの内容を充実。
▲VER8.4-1(20110707)テーブルからプログラムを作成する時、TABLE=で部分が余分に付いてしまう問題を修正しました。
◎************( 2011-07-01 VER8.3提供 )*********
●VER8.3-11(20110628)"データ名@UPPER"及び"データ名@LOWER"を新設しました。
●VER8.3-11(20110627)_FROM,_FOR変数を追加しました。Firebird（Symfoware)でSUBSTRING(名前 FROM 開始位置　FOR　長さ）に対応の為。（通常は',')
　　　　　　　　　　SQLは?_SUBSTR?(列名?_FROM?開始位置?_FOR?長さ）として下さい。　　 
★VER8.3-10(20110626)_WORK_TABLE,_W等の命名方法を変更しました。（長さをそろえる為、部分の無い物はその場所に'__'を付加）
■VER8.3-9(20110624)CONTROL=1_PROGRAM,2_PROGRAM,3_PROGRAMを追加しました。それぞれ更新処理を実行しません。
★VER8.3-8(20110621)雛型給与計算で使用のテーブルの列名を変更しました。（Firebirdが日本語列名を使えない為、Ver8.2とは非互換です）
★VER8.3-7(20110616)データベース接続方法を見直し、可能な限り同じユーザーIDで接続を続けるように改善しました。
（★警告★新たな問題発生の危険が有ります、VER8.2以前には再インストールはしないで下さい）
★VER8.3-6(20110610)PostgeSQLの_DB_ERRORの内容を変更しました。（PostgeSQLの本来のエラー番号に変更）(VER7とは非互換)
●VER8.3-5(20110609)_UTF8_SET(DB2は3以外は1),_UTF8_GET(DB2とFIREBIRDは3以外は1)を新設。(VER7とは非互換)
●VER8.3-4(20110608)_SQL_CHAR_SET,_UTF8_SET,_UTF8_GETを新設,FIREBIRDの場合"CHARACTER SET UNICODE_FSS"を設定。(VER7とは非互換)
■VER8.3-3(20110608)I,L,PのZZZZZZ_M_ZZZZ_COLUMN_VIEWでZZZZZZ_I_DIRECTORY_TABLEのJOINを追加しNCHAR、NVCHARの設定とバイト数を調整。(VER7とは非互換)
★警告：IBM　DB2,PostgreSQL,MySQLを使用の場合、非互換に成りましたので、VER8.2以前には絶対に再インストールしないで下さい。
▲VER8.3-2(20110606)支援システムでZZZZZZ_DAY_DATE_FUNCとZZZZZZ_WEEK_DATE_FUNCに与えている?_NOW0?を?_NOW_DATE?に変更しました。(VER7とは非互換)
　　　　　　　　　（関数名にDATEを使っているので与えるデータ型をTIMESTAMPからDATEとしました）
★         IBM DB2のZZZZZZ_DAY_DATE_FUNCとZZZZZZ_WEEK_DATE_FUNCのTIMESTAMPをDATEに変更しました。(VER7とは非互換)
★VER8.3-1(20110606)IBM DB2のデータベースのCODESETをIBM-943からUTF-8に変更。(VER7とは非互換)
◎************( 2011-06-01 VER8.2提供 )*********
■VER8.2-4(20110529)SET=にSELECT=を設定すると_WHERE##の左辺のデータ名をこの内容で置き換えます。
★VER8.2-3(20110528)PostgreSQLのNpgsqlを2.0.11に上げました。
■VER8.2-2(20110525)INSERT_FILEでINSERTを１件単位で行っていたが64件単位にし、スピードアップした。
■VER8.2-1(20110521)_DB_I_ERROR変数新設。ERROR,EXIST,NOT_EXIST,DUPLICATE_KEYの4種類のエラーのみ返す。
◎************( 2011-05-17 VER8.1提供 )*********
■VER8.1-5(20110507)SPLIT_CHARで、最後が空白の場合設定されない問題に対処しました。
■VER8.1-4(20110504)ZZZZZZ_I_KEEP_TABEのデータを削除した場合、キー重複の追加エラーとなる問題に対処しました。
■VER8.1-4(20110503)MySQLの文字結合用に_CL='CONCAT('と_CR=')'を新設し、関連プログラムを修正。MySQL以外は空白。(VER7は全て空白で対応）
              ((((SQLの文字列の結合は、先頭に?_CL?を付け、最後に?_CR?を付けて、途中を?_C?で結合して下さい。))))
■VER8.1-3(20110501)_YEN='\'を新設。(VER7も対応）
■VER8.1-2(20110430)IF条件が成り立たないで実行されないはずの命令で、文字列変換エラーが発生するとエラーとなる問題に対処しました。(VER7も対応）
■VER8.1-1(20110423)VER7に対しMySQLに対応の為,命名規約を変更します。
◎MySQLはユーザー名が最大１６字の制約が有るので、命名規約の改定が必要。
(1)'REAL','TEST','DBO','INP','OUT','LNK','MAST','WORK'の各文字を先頭１文字の表現とする。
ユーザー名。
例）ユーザー名 は"I_システム名_[R,T]_[D,I,O,L]_許可"でMySQLのシステム名は５文字以下とする。
データベース名。
スキーマ名。
デバイス名。
ビュー名。
(2)"ZZZZ"で開始の名前は全て"ZZZZZZ"とし、文字数が多くなるものは、名前を変更する。
"ZZZZZZ_HOLIDAY_TABLE"("ZZZZ_CALENDAR_HOLIDAY_TABLE"）
"ZZZZZZ_SECURITY_G_J_TABLE"（"ZZZZ_SECURITY_G_JOB_TABLE")
"ZZZZZZ_SECURITY_J_TABLE"（"ZZZZ_SECURITY_JOB_TABLE",2-2と合わせる為)
VIEWは"_SYS"を取る。
(3)ETC_TABLEのZZZZZZ_KEY2の文字数オーバーに対応。
ZZZZZZ_DBBACKUP_COUNT_SAVE_R(ZZZZ_DBBACKUP_COUNT_SAVE_REAL)
ZZZZZZ_DBBACKUP_COUNT_SAVE_T(ZZZZ_DBBACKUP_COUNT_SAVE_TEST)
(4)ZZZZZZ_I_MENU_TABLEにZZZZZZ_PART(部分、CHAR(2)）を追加。
（データ名の先頭を許可＋部分を可能とするため）
"_PART"変数追加。
"_MM"変数追加(_M+_PART）。
"_MM_REAL"変数追加(_M_REAL+_PART）。
"_MM_TEST"変数追加(_M_TEST+_PART）。
"~+"を追加（~~+_PARTに変換）。
"~-"を追加（_PARTに変換）。
