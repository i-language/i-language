================================================================
=== I言語 Ver26.1 バージョンアップ情報 (2017-12-06 現在)===
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
◎************( 2018-04-03 VER26.1提供 予定 )*********
●(2-18-02-27)_#='#',_$='$'のシステム変数を追加しました。
■(2018-02-06)npgsql.dllのPgsqlExceptionのCodeとPositionのプロパティがバージョン3.2.6でなくなってしまいコンパイル出来ない問題に対処しました。
              尚、System.Threading.Tasks.Extensions.dllがnpgsql.dllのフォルダーに有り、これも必要となりました。
　　　　　　　（CodeをMessageの先頭５文字とします、Positionは使用を中止しました）　　
■(2018-02-03)MariaDBでGRANTのLOCALHOST設定でエラーと成るようになったので、とりあえず設定を止めました。
■(2018-01-22)SQL_SETとSQL_REAPEATでIF_ERROR_を付けた場合エラーを判定できるようにしました。
▲(2017-12-03)インストールで難読化済は難読化を迂回していましたが、再難読化したい場合には再難読化出来るようにしました。