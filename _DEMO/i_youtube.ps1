add-type -AssemblyName System.Windows.Forms
$sp=new-object -com SAPI.spVoice
function f_sleep([int]$s){Start-Sleep -s $s}
function f_speak([string[]]$s){$sss="";foreach($ss in $s){$sss=$sss+$ss}$dummy=$sp.Speak($sss)}
function f_keys([string[]]$s){foreach($ss in $s){[System.Windows.Forms.SendKeys]::SendWait("$ss");}}
if($ENV:COMPUTERNAME -eq "KAZUAKI-PC"){$SYS="I"}else{$SYS="I37ORG"}
$i=$args[0];$REALTEST="REAL";$JOB="";
if($I -eq "2"){$JOB="010800"}
if($I -eq "3"){$JOB="010800"}
if($I -eq "4"){$JOB="010000"}
if($I -eq "5"){$JOB="010800"}
if($I -eq "6"){$REALTEST="TEST";$JOB="393922"}
if($I -eq "7"){$JOB="010221"}
if($I -eq "8"){$REALTEST="TEST";$JOB="393921"}
if($I -eq "9"){$JOB="010800"}
if($I -eq "10"){$REALTEST="TEST";$JOB="393901"}
if($I -eq "0"){
Start-Process -FilePath 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe' -ArgumentList 'http://ilanguage.iinaa.net/'
}
else{
start-process -filepath ${ENV:SYSTEMDRIVE}\I\BINI37\IMENUWD.exe -ArgumentList JA,30/600,I_${ENV:COMPUTERNAME}_$SYS.I,ZZZZ$JOB,$REALTEST
}
f_sleep 10
if($I -eq "0"){
f_speak "プログラミング言語のの音声を使って手抜きで作っています、お聞き苦しい点はご容赦下さい。"`
,"プログラミング言語の話です。"`
,"プログラミング言語は頭脳労働の生産性を改善出来る素晴らしい道具です。今後、日本は少子化で働き手が不足する状況に有ります。”`
,"なので、皆でプログラミング言語を習得し自身の仕事の生産性を上げれば働き手不足の解消に役立ちます。”`
,"残念ながら、今のプログラミング言語は難しすぎて、10人が習得しようとしても10人が習得できるような簡単な物では有りません。"`
,"そこで、難しい部分はコンピュータに任せ、誰でも習得出来るプログラミング言語を開発しました。"`
,"それをInstantのIを付けI言語と命名して、誰でも無償で自由に使えるようにインターネットで公開しました。"`
,"URLは現在表示中のhttp://ilanguage.iinaa.net/です。"`
,"I言語でのプログラミングの方法をこれから紹介します。"
}
if($I -eq "1"){
f_speak "これがI言語のメニューです。"`
,"メニューは01から40までの40種類のメニューを表示出来ます。"`
,"01が「システム 支援 メニュー」で開発、管理、運用等のメニューが用意されています。"`
,"40に「サンプル発注 メニュー」が有ります。これは、私が現役時代に工場の生産管理システムを開発しており、"`
,"一世代前のIPROGRAMでMRPと呼ばれる部品の週発注システムを作ったので、I言語でもここに作ってあります。"`
,"IPROGRAMは一万本以上のプログラムが本稼働しており、事務処理系の殆どのシステムが構築出来る事が実証されています。”`
,"I言語はIPROGRAMのDNAを引き次いで文法を0から見直し、誰でも習得出来るように簡単にしました。"`
,"最初に01で「システム 支援 メニュー」に行きます。” 
f_keys "01"
f_speak "08に「I言語の勉強 メニュー」が作って有るのでこれでI言語のプログラミングの方法を紹介します。”  
f_keys "08"
f_speak  "01がRDBとテーブルとSQLとI言語の説明です。"
f_keys "01"
f_keys "{Enter}","{Enter}","{Enter}","{ESC}","{ESC}"
}
if($I -eq "2"){
f_speak  "02が家計簿テーブルの設計の説明です。"
f_keys "02","{Enter}","{ESC}"
}
if($I -eq "3"){
f_speak  "03が家計簿テーブルの設計結果の説明です。"
f_keys "03","{Enter}","{ESC}"
}
if($I -eq "4"){
f_speak "I言語でプログラミング等のシステムの開発するには02の「システム 開発 メニュー」に行きます。”
f_keys "02"
f_speak "I言語では最初にデータ辞書を作ります。そこで,25で「テスト データ辞書　更新」に行きます。”
f_keys "25"
f_speak "これが「テスト データ辞書　更新」の画面です。最初に許可ZZZYの使用者であるZZZZZZZYの使用者を入れます。”
f_keys "ZZZZZZZY"
f_speak "次にインストールで変更したパスワードを入れます”
f_keys "1ZZZZZZZZZZZZZZZ"
f_speak "←キーで行の選択に行きます。"
f_keys "{LEFT}"
f_speak "ここで2で作成を開始します。"
f_keys "2"
f_speak "許可にZZZYが有るのでそのまま[Enter]で次に行きます。”
f_keys "{ENTER}"
f_speak "データ名で日本語を入れるので全角キーを押して日本語にして、家計簿_内容を入れ[Enter]します。”
f_keys "家計簿_内容","{ENTER}"
f_speak "言語はJAが有るのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "許可区分はゼットゼットなのでゼットゼットを入れます。”
f_keys "ZZ"
f_speak "基本データ名は不要なのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "テストはTESTが有るのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "タイトルは内容と有るのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "初期タイプはNCHARを右上の P g D n キーで選んで[Enter]します。”
f_keys "NCHAR","{ENTER}"
f_speak "型１はJなのでJ[PgDn]で選んで[Enter]します。”
f_keys "J"
f_speak "型2は空白で所いのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "初期長さ1に20と入れて[Enter]します。”
f_keys "20","{ENTER}"
f_speak "長さ1は空白で良いのでそのまま[Enter]します。”
f_keys "{ENTER}"
f_speak "長さ2は1なので1を入れてます。”
f_keys "1"
f_speak "これで入力は完了ですので,↓キーで最後の項目に移動し[Enter]で作成出来ます。”
f_keys "{DOWN}","{ENTER}"
f_speak "一行下げる為↓キーを押します。"
f_keys "{DOWN}"
f_speak "2で家計簿_食費のデータを作成します。"
f_keys "2","{ENTER}"
f_speak "データ名で家計簿_食費を入れます。”
f_keys "家計簿_食費","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "初期タイプはDCIMALです。”
f_keys "DECIMAL","{ENTER}"
f_speak "型１は+です。”
f_keys "{+}"
f_speak "型2は[Enter]します。”
f_keys "{ENTER}"
f_speak "初期長さ1は1です。”
f_keys "1","{ENTER}"
f_speak "初期長さ2は0です。”
f_keys "0","{ENTER}","{ENTER}","{ENTER}"
f_speak "チェックはCHECK2を選びます。”
f_keys "CHECK2","{ENTER}"
f_speak "チェック61は0カンマ食費以外カンマ1カンマ食費を入れます。”
f_keys "0,食費以外,1,食費"
f_speak "これで入力は完了ですので,↓キーで最後の項目に移動し[Enter]で作成します。”
f_keys "{DOWN}","{ENTER}"
f_speak "一行下げる為↓キーを押します。"
f_keys "{DOWN}"
f_speak "2で家計簿_年月日を作成します。"
f_keys "2","{ENTER}"
f_speak "データ名で家計簿_年月日を入れます。”
f_keys "家計簿_年月日","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "初期タイプはCHARです。”
f_keys "CHAR","{ENTER}"
f_speak "型１はDです。”
f_keys "D"
f_speak "長さ2に行くので1を入れます。”
f_keys "1"
f_speak "これで入力は完了ですので,↓キーで最後の項目に移動し[Enter]で作成します。”
f_keys "{DOWN}","{ENTER}"
f_speak "一行下げる為↓キーを押します。"
f_keys "{DOWN}"
f_speak "2で家計簿_金額を作成します。"
f_keys "2","{ENTER}"
f_speak "データ名で家計簿_金額を入れます。”
f_keys "家計簿_金額","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "初期タイプはDECIMALです。”
f_keys "DECIMAL","{ENTER}"
f_speak "型1は+です。”
f_keys "{+}"
f_speak "型2は[Enter]します。”
f_keys "{ENTER}"
f_speak "初期長さ1は9です。”
f_keys "9","{ENTER}"
f_speak "初期長さ2は0です。”
f_keys "0","{ENTER}","{ENTER}","{ENTER}"
f_speak "チェックはCHECKを選びます。”
f_keys "CHECK","{ENTER}"
f_speak "チェック61は左カッコ1カンマ右カッコで最小値を１として０が入れられないようにします。”
f_keys "{(}1,{)}"
f_speak "これで入力は完了ですので,↓キーで最後の項目に移動し[Enter]で作成します。”
f_keys "{DOWN}","{ENTER}","{ESC}"
f_speak "これでテーブルを作るためのデータ辞書が出来たので26でテーブルを作ります。”
f_keys "26"
f_speak "これがテストテーブル更新画面で本来は最初に使用者を入れますが、既に認証されているので要求が来ません。”
f_speak "この画面の操作は注意する必要が有ります、許可区分がAAに成っています，許可区分にはタブキーで移動し、ここをゼットゼットにする必要が有りますが、”
f_speak "この部分は単にゼットゼットを入力してだけでは変更されない仕様に成っているので、必ず「Enter］で検索し確定する必要が有りいます。”
f_keys "{TAB}","ZZ"
f_speak "更にデータ名にタブキーで移動し家計簿を入れて[Enter]で確定します。"
f_keys "{TAB}","{TAB}","家計簿","{ENTER}"
f_speak "←キーで行選択に行き2で作成します。"
f_keys "{LEFT}","2"
f_speak "名前をZZZYZZ_家計簿内容実ヒョウとします。"
f_keys "ZZZYZZ_家計簿内容実表","{ENTER}"
f_speak "主キーの項目数は１個ですので1とけれで入力終了ですので↓キーで最後に行き[ENTER]します。"
f_keys "1","{DOWN}","{ENTER}"
f_speak "画面が変わってデータ名が登録出来画面となったので←キーで行選択に行き２で作成します。"
f_keys "{LEFT}","2"
f_speak "データ名で家計簿_内容を選んで↓キーで最後に行き[ENTER]作成します。"
f_keys "家計簿_内容","{DOWN}","{ENTER}"
f_speak "必ず↓キーで一行下げて２で今度は家計簿_食費を選んで↓キー[ENTER]で完成です。"
f_keys "{DOWN}","2","家計簿_食費","{DOWN}","{ENTER}"
f_speak "[ESC]キーで元の画面に戻ります。"
f_keys "{ESC}"
f_speak "↓キーで一行下げて２でZZZYZZ_家計簿実ヒョウを作ります。"
f_keys "{DOWN}","2"
f_keys "ZZZYZZ_家計簿実表","{ENTER}"
f_speak "主キーの項目数は２です。↓キーで最後に行き[ENTER]します。"
f_keys "2","{DOWN}","{ENTER}"
f_speak "←キーで行選択に行き２で作成します。"
f_keys "{LEFT}","2"
f_speak "データ名で家計簿_年月日を選びます。"
f_keys "家計簿_年月日","{DOWN}","{ENTER}"
f_speak "必ず↓キーで一行下げて家計簿_内容を選びます。"
f_keys "{DOWN}","2","家計簿_内容","{DOWN}","{ENTER}"
f_speak "必ず↓キーで一行下げて家計簿_金額を選び[ENTER]で完成です。"
f_keys "{DOWN}","2","家計簿_金額","{DOWN}","{ENTER}"
f_speak "[ESC}キー２回でメニュー画面に戻ります。"
f_keys "{ESC}","{ESC}"
f_speak "これでテーブルが出来ました。家計簿テーブルの設計結果の3.2.2.1にZZZYZZ_家計簿内容実ヒョウに存在する物のみ入力出来る事とします”`
,"とありました。この部分もデータ辞書で対応出来るのでその作業を行います。”
f_speak "25で「テスト データ辞書　更新」に行きます。”
f_keys "25"
f_speak "データ名に家計簿_内容を入れて[ENter]で検索します。"　　
f_keys "家計簿_内容","{ENTER}"
f_speak "←キーで行選択に行き3の修正でTABキー10個でチェックに移動します。"　　
f_keys "{LEFT}","3","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}"
f_speak "チェックでSELECT21を選びます"
f_keys "SELECT21","{ENTER}"
f_speak "許可がZZZYと成っているのでそのまま[ENTER」します。"
f_keys "{ENTER}"
f_speak "チェク61で?_MM?_家計簿内容実ヒョウを選びます"
f_keys "?_MM?_家計簿内容実表","{ENTER}"
f_speak "チェク62が家計簿_内容となっているのでそのまま[Enter]します。"
f_keys "{ENTER}"
f_speak "チェク63が家計簿_食費となっているのでそのまま[Enter]します。"
f_keys "{ENTER}"
f_speak "リレーショナルデータベースでは外部キーの宣言でこのような事が実現出来る便利な機能が有りますが、”`
,"I言語では削除データもテーブル上に持つ論理削除の為、外部キーが使えないので、データ辞書で対応出来るようにしています。”
f_speak "これで入力は完了ですので,↓キーで最後の項目に移動し[Enter]で作成します。”
f_keys "{DOWN}","{ENTER}"
f_speak "これでデータ辞書は完成です[ESC]でmニューに戻ります。”
f_keys "{ESC}"
f_speak "テーブルが出来たので今度はメニューとプログラムを作るので21を入れます。"
f_keys "21"
f_speak "これがメニュー更新の画面です。←キーで行選択に行きます。"
f_keys "{LEFT}"
f_speak "メニューの番号は01から40までですので今回は2の作成でゼットゼットゼットゼット,39,39,22と入れます。"
f_keys "2","ZZZZ","39","39","22"
f_speak "言語は迂回しテストはTESTと成っているのでそのまま[Enter]します。"
f_keys "{ENTER}"
f_speak "許可はZZZYとなっているので[Enter]します。"
f_keys "{ENTER}"
f_speak "許可区分はゼットゼットを入れます。"
f_keys "ZZ"
f_speak "処理種類は更新なのでINPUTです。"
f_keys "INPUT","{ENTER}"
f_speak "認証は今回は認証無しのXとしますが更新履歴に使用者が入らないので更新系はX意外とする事を推奨します。"
f_keys "X"
f_speak "後はメニューの入力ですので↓キーでメニューに行き家計簿内容更新[Enter]でメニューの作成は完了です。"
f_keys "{DOWN}","家計簿内容更新","{ENTER}"
f_speak "メニューが完成したので0でプログラムを更新に行きます。"
f_keys "0"
f_speak "更新プログラムはテーブルから作れるのでTABLE 1[ENTER]で一個のテーブルからプログラムを作ります。"
f_keys "TABLE 1","{ENTER}"
f_speak "テーブルを検索したいので[ENTER]します。"
f_keys "{ENTER}"
f_speak "←キーと↓キー2個後0ででZZZYZZ_家計簿内容実ヒョウを選択します。"
f_keys "{LEFT}","{DOWN}","0"
f_speak "プログラム更新画面に戻ってプログラムが作られています。T[Enter]でテスト画面が立ち上がります。"
f_keys "T","{ENTER}"
}
if($I -eq "5"){
f_speak "家計簿内容の更新プログラムを09で説明します。"
f_keys "09","{ENTER}","{ESC}"
}
if($I -eq "6"){
f_speak "これが家計簿内容の更新プログラムです。"
f_speak "←キーで行選択に行きます。"
f_keys "{LEFT}"
f_speak "2の作成を入れます"
f_keys "2"
f_speak "内容に本代を入れます。"
f_keys "本代","{ENTER}"
f_speak "食費に0を入れ[Enter]で作成します。"
f_keys "0","{ENTER}"
f_speak "内容に外食代、食費に1のデータを作成します。"
f_keys "{DOWN}","2","外食代","{ENTER}","1","{ENTER}"
}
if($I -eq "7"){
f_keys "ZZZZZZZY","1ZZZZZZZZZZZZZZZ"
f_sleep 10
f_speak "次のプログラムの家計簿更新のプログラムをゼットゼットゼットゼット,39,39,21で作ります。"
f_keys "{LEFT}","2","ZZZZ","39","39","21","{ENTER}","{ENTER}","ZZ","INPUT","{ENTER}","X","{DOWN}","家計簿更新","{ENTER}"
f_speak "メニューが完成したので0でプログラムを更新に行テーぶるからプログラムを作ります。"
f_keys "0","TABLE 1","{ENTER}","{ENTER}","{LEFT}","0"
f_speak "プログラム更新画面に戻ってプログラムが作られています。T[Enter]でテスト画面が立ち上がります。"
f_keys "T","{ENTER}"
}
if($I -eq "8"){
f_speak "これが家計簿の更新プログラムです。"
f_speak "←キーで行選択に行きます。"
f_keys "{LEFT}"
f_speak "2の作成を入れます"
f_keys "2"
f_speak "年月日で何も入れないで[Enter]で今日の年月日が入ます。"
f_keys "{ENTER}"
f_speak "内容に本代を入れます。"
f_keys "本代","{ENTER}"
f_speak "金額に2000でを入れ[Enter]で作成します。"
f_keys "2000","{ENTER}"
f_speak "年月日で何も入れないで[Enter]で、内容に外食代、金額に1000で作成します。"
f_keys "{DOWN}","2","{ENTER}","外食代","{ENTER}","1000","{ENTER}"
}
if($I -eq "9"){
f_speak "エンゲル係数検索のプログラムの作り方が15に有るので実行します。"
f_keys "15","{ENTER}","{ENTER}","{ENTER}"
}
if($I -eq "10"){
f_speak "月単位のエンゲル係数を求めるプログラムです。[ENTER]で検索します。"
f_keys "{ENTER}"
f_speak "33と正しく表示されています。これで、月単位のエンゲル係数を求める家計簿システムの初期の完成です。"`
,"実際のシステム作りでも更新と検索のプログラムは約７割有り,殆どを自動で簡単に作れますし、"`
,"手動で作る場合でも豊富なシステム変数とテーブル変数、更には、便利な命令を用意したので,誰でも簡単に早くプログラミングが出来ます。"`
,"I言語の勉強 メニューには、続けて家計簿システムのバッチ処理による改善のメニューが有るので是非チャレンジしてみて下さい。"
}
# read-host "pause"