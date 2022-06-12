****************************************************
** Oracle10Gインストール説明書 2010年05月16日改定 **
****************************************************
(1)インストールの時のグローバル・データベース名はORCL(O10)のままとして下さい、
   また、Express EditionはXE（O10EX)のままとして下さい。
(2)インストールに予想以上に時間がかかります。
(3)インストール中にエラーが出る場合がありますが、とりあえず無視してインストールを続行下さい。
(4)クライアントから接続するためファイヤーウオールに"I_[データベース名]_tnslsnr.exe"の名前で設定されます。
ネットワークからの接続が不要な場合はNETSHコマンドで消して下さい。
Vista=netsh advfirewall firewall delete rule name="I_[データベース名]_tnslsnr.exe"
 XP例=netsh firewall delete allowedprogram program="C:\oraclexe\app\oracle\product\10.2.0\server\BIN\tnslsnr.exe"

提供者：原沢信道

以上。
