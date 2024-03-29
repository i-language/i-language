**************************************************************************
** SQL Server2005 Express Edition インストール説明書 (2010年5月10日改定)**
**************************************************************************
(1)マイクロソフトのホームページのダウンロード(リソース)、
ダウンロードセンターのキーワードに"SQL Server 2005"と入れて検索後
"SQL Server 2005 Express Edition SP2"をダウンロード下さい。

(2)ダウンロードしたプログラム"SQLEXPR_JPN.EXE"を実行します。
①「機能の選択」で上の２個をそれぞれクリックし
[ローカルハードディスクにすべてインストール]をクリックして下さい。
②「認証モード」では必ず混合モードに変更しパスワードを２箇所入れてください。

(3)インストール後リモート接続を有効にするため以下の作業をします。
[スタート][すべてのプログラム][Microsoft SQL Server 2005][構成ツール]
[SQL Server セキュリティ構成][サービスと接続のセキュリティ構成］
[SQLEXPRESS][Database Engine][リモート接続］
でローカル接続及びリモート接続を選んで[適用]を押して。
上のサービスで[停止]を押して[開始]を押して下さい。
更に下のSQL  Server  Browserをクリック右のスタートアップの種類を[自動]にして
[適用]を押して[開始]を押して下さい。

(4)別のマシンから接続する場合は
  ファイヤーウオールの例外のプログラムの追加で
  c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Binn\sqlservr.exe(2005),
  c:\Program Files\Microsoft SQL Server\90\Shared\sqlbrowser.exe
  を設定して下さい。
  
混合モードとは：
認証方法は２種類あります１つ目がWindows認証でOSの認証と同じ物を使用します、
デフォルト(無指定)ではこれを使いますがI言語ではもう一つの方を使用します、
それが、SQL Server認証です、逆にI言語ではWindows認証は使用しないので、
こちらをI言語のインストールで拒否する指定もできます。
拒否した場合、当然Windows認証で動かしているソフトはSQL  Server認証にしないと
動かなくなりますので注意下さい。

提供者：原沢信道

以上。
