================================================================
=== I言語 Ver17.1 バージョンアップ情報 (2015-11-06現在)===
   (★注意★：Ver16以前とは互換が有りません、注意して下さい。）
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
◎************( 2015-11-6 VER17.1提供 )*********
★(2015-10-31)SPLIT_CHAR{}で前後の空白を削除していましたが、削除しないようにしました。
●(2015-10-30)URL{}でファイル名が無いURL（最後がスラッシュ）の場合"INDEX.HTML"のファイル名として出力するようにしました。
●(2015-10-08)BACK{},JUMP{}の移動先が無い命令を動くようにしました。
              BACK{}は前方のセミコロンまで移動し、JUMP{}は後方の２個目のセミコロンまで移動します。
●(2015-09-13)バックアップしたデータベースを別のデータベース名でリストア出来るようにしました。（PostgreSQL,Oracle除く）
★(2015-09-08)SERVER_BATとBAT_SERVERの終了状況を命令内で判定出来るようにする為、
　　　　　　　起動時に?_WORK?.EXIT（NOT　START）のファイルを作るので、
　　　　　　　正常終了時バッチファイル内で'!!!'に書き換える仕様とします。
　　　　　　　尚、サービスに渡すメッセージの?_JOB?を?_WORK?に
　　　　　　　変更するので、サービスもVER16以前とは非互換と成ります。　
●(2015-09-07)システムがクラッシュした場合の再インストールを想定した環境を構築します。
★(2015-09-03)エラー時セミコロンまで移動する仕様を全面改定した結果、
　　　　　　　IFで始まる命令と_NEXTで終わる命令とSQL_SETが該当しない事に
　　　　　　　成りましたが、SQL_SETが中途半端な仕様となってしまったので、
　　　　　　　０件で無い時セミコロンまで移動を止め、０件は正常終了とするので、
　　　　　　　０件判定は陽に_SQL_SET_COUNTで行う仕様に変更します。
★(2015-09-01)エラー時セミコロンまで移動する仕様を全面改定し、
　　　　　　　IF_ERROR_が先頭に付いている場合のみに限定しました。
===================================================================
