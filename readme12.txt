================================================================
=== I言語 Ver12.0 バージョンアップ情報 (2015-1-2現在)===
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
◎************( 2015-1-2 VER12.1提供 )*********
▲VER12.0(20141231)Firebirdのオブジェクト更新(ZZZZ010229)で名前が30文字だとエラーと成るのでテーブル名と同じ様に２８文字に制限しました。
■VER12.0(20141223).NET Frameworkの場合もデータベースのトランザクション開始中にユーザを切り替えると
    、更新が無視される場合が有るので、I言語側でコミットを無条件で実行しトランザクションを終了するようにしました。
   (Javaはその後トランザクションを開始していましたが、開始をしないように改めました）
■VER12.0(20141212)DB2のLinuxのユーザが８文字以下小文字の制限があるので、
  システム名を２文字に制限し、ユーザをシステム名で始まる８文字に圧縮し小文字に変更しました。
▲VER12.0(20141209)インストール時インストールファイル作成部分を別処理から統合し連続処理としました。
■VER12.0(20141209)I12JAVA.jarをI12SETUP.jarに変更しixsetup_l.cssを取った物をI12JAVA.jarとしました。
(ixsetup_l.clsssをインストールツール内に置く事でインストールファイルがむやみに作れないようにする為）
===================================================================
◎当バージョンでLinux and Java and （DB2 or Oracle）にも対応します。
===================================================================
