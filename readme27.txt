================================================================
=== I言語 Ver27.1 バージョンアップ情報 (2018-08-31 現在)===
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
◎************( 2018-08-31 VER27.1提供 )*********
★(2018-08-07)パッケージソフト用列名の先頭は「許可名_」の５文字固定の仕様に変更しました。
■(2017-06-02)パスワードチェックで正常処理時SYSTEM_ERROR_COUNTが0に戻らない問題に対処しました。
■(2017-05-28)MariaDBのバージョン10.3のDROP_OBJECTでViewが存在しない場合にエラーと成る問題を修正しました。
▲(2017-05-17)Linuxで次回の時間起動が予約されない問題に対処しました。（ZZZZ999959のWN.QUEUEをWN.QUEREに修正)
★(2017-05-13)MariaDBがMySQL.Data.dllの8.0.11でSLL not support エラーと成る問題に対処しました。
★(2017-04-16)_XXX("NAME")等のシステム変数扱いの関数でNAMEが空の場合''となっていましたが、’'（空白付加）に改めました。
■(2017-04-11)URL{}でhttpsのSSL使用のホームぺージでGetResponse()がエラーと成る場合が有る問題に対処しました。
■(2017-04-11)_SQRT((NAME))等のデータ名からの値の置き換えで、数値(型１が+と-)の場合で値が無い場合は"0"を陽に設定しました。
