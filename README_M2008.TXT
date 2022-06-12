*****************************************************************************
** SQL Server2008R2 Express Edition インストール説明書 (2010年5月16日改定) **
*****************************************************************************
(1)マイクロソフトのホームページのダウンロード(リソース)、
ダウンロードセンターのキーワードに"SQL Server 2008 R2 Express"と入れて検索後
"SQL Server 2008 R2 - Express"(Microsoft SQL Server 2008 R2 RTM - Express - 日本語)より
"SQLEXPR32_x86_JPN.exe"をダウンロードして下さい。

(2)ダウンロードしたプログラム"SQLEXPR32_x86_JPN.exe"を実行します。
①「サーバーの構成」でSQL Server Brawserのスタートアップの種類を無効を自動に変更して下さい。
（ネットワークからつなげる場合に必要となります）
（設定し忘れた場合を想定し、I言語インストールでも設定します）
②「データベースエンジンの構成」で認証モードを「混合モード」に変更しパスワードを２箇所入れて下さい。
（設定し忘れた場合は、I言語インストールで設定されますが、Windows認証で設定するのでSQLServerの管理者権限が必要です）

(3)インストール後リモート接続を有効にするため以下の作業をします。
[スタート][すべてのプログラム][Microsoft SQL Server 2008 R2][構成ツール]
[SQL Server構成マネージャー]の[SQL Server ネットワークの構成］
[（該当のインスタンス名）のプロトコル]で[TCP/IP」を有効に変更。
（SQLServerの再起動で有効になります）
（既定のインスタンス名はMSSQLServerです）
（設定し忘れた場合を想定し、I言語インストールでも設定します）

(4)別のマシンから接続する場合を想定し、ファイヤーウオールに"I_(インスタンス名)_sqlserver.exe"と
  "I_sqlbrowser.exe"が設定されます。
ネットワークからの接続が不要な場合はNETSHコマンドで消して下さい。
Vista=netsh advfirewall firewall delete rule name="I_(インスタンス名)_sqlserver.exe"
Vista=netsh advfirewall firewall delete rule name="I_sqlbrowser.exe"
 XP例=netsh firewall delete allowedprogram program="c:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\Binn\sqlservr.exe"
 XP例=netsh firewall delete allowedprogram program="C:\Program Files\Microsoft SQL Server\90\Shared\sqlbrowser.exe++"

  
混合モードとは：
認証方法は２種類あります１つ目がWindows認証でOSの認証と同じ物を使用します、
デフォルト(無指定)ではこれを使いますがI言語ではもう一つの方を使用します、
それが、SQL Server認証です、逆にI言語ではWindows認証は使用しないので、
こちらをI言語のインストールで拒否する指定もできます。
拒否した場合、当然Windows認証で動かしているソフトは動かなくなりますので注意が必要です。

提供者：原沢信道

以上。
