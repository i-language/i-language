================================================================
=== I言語 Ver9.1 バージョンアップ情報 (2014-04-03現在)===
================================================================
（★=非互換発生、■＝EXE修正、▲＝支援プログラム修正、●＝新機能追加）
===================================================================
●VER9.0(20140307)_TMPシステム変数を追加、作業フォルダーを返します。
★VER9.0(20140301)LINUXはJAVA1.7版、WINDOWSは.NET　Framework4.5.1版のプログラム使用を基本とします。
_IPRINTシステム変数を新設（IPRINTのプログラム名.NET　Framework4.5.1は%SystemDrive%\I\BIN\IPRINTW4.EXE、
　JAVAは/home/I/BIN/I9JAVA.jar iprint_lとなります。
★VER9.0(20140208)SMTPはJavaで標準で動かないのでJAVA版では動きません。
★VER9.0(20140201)Java対応の為VER8との非互換があります。
(1)CHANGE_DIRを廃止しました。（Javaで実現出来ない為）
プログラム内で作業ディレクトリを%SystemDrive%\I\TMPに変更していましたが、出来なくなったので、
作業ディレクトリは未定て動きます。
（作業ディレクトリが%SystemDrive%\I\TMPである保証は有りません）
(2)_REGISTRY_READ,_REGISTRY_WRITE,_WMI変数はJAVA版では動きません。
(3)SERIALPORT1,2関連の命令はJavaで標準サポートされていないのでJAVA版では動きません。
(4)通常プログラムを.NET Framework2版から.NET Framework4版に改め、_FRAMEWORK変数の値も変更しました。
　　.NET Framework2.0(3.0,3.5も可)は空白を"2"に変更。（プログラム名もI9MENUW.EXEからI9MENUW2.EXEに変更）
　　.NET Framework4.5.1は"4"で通常プログラムはこちらを使います。
　　新たにJAVA1.7版として"J"を新設しました。
(5)I言語で扱うファイルの文字コードはUTF-8で有る事を想定して動くように改めました。
==（VER９について。）======================================================
★VER9は新たにJavaクライアントプログラム（メニューと印刷プログラムのみ対応）にも対応します。
　その為Javaでも動くように大幅にプログラムに手を入れました、新たな問題が発生している可能性があります。
また、Javaでは実現出来ない機能や標準で提供されていない機能も有り、今までの機能を一部廃止します。
