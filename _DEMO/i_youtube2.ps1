add-type -AssemblyName System.Windows.Forms
$sp=new-object -com SAPI.spVoice
function f_sleep([int]$s){Start-Sleep -s $s}
function f_speak([string[]]$s){$sss="";foreach($ss in $s){$sss=$sss+$ss}$dummy=$sp.Speak($sss)}
function f_keys([string[]]$s){foreach($ss in $s){[System.Windows.Forms.SendKeys]::SendWait("$ss");}}
if($ENV:COMPUTERNAME -eq "KAZUAKI-PC"){$SYS="I"}else{$SYS="I37ORG"}
$i=$args[0];$REALTEST="REAL";$JOB="";
if($I -eq "0"){$JOB="010200"}
if($I -eq "1"){$JOB="393923";$REALTEST="TEST";}
if($I -eq "2"){$JOB="010200"}
if($I -eq "3"){$JOB="393924";$REALTEST="TEST";}
if($I -eq "4"){$JOB="010200"}
if($I -eq "5"){$JOB="393925";$REALTEST="TEST";}
if($I -eq "6"){$JOB="010200"}
if($I -eq "7"){$JOB="393926";$REALTEST="TEST";}
if($I -eq "8"){
Start-Process -FilePath 'notepad' -ArgumentList 'i.txt'
}
elseif($I -eq "9"){
start-process -filepath C:\I\BINI37\IMENUWD.EXE -ArgumentList i.txt
}
else{
Start-Process -FilePath C:\I\BINI37\IMENUWD.EXE  -ArgumentList  JA,30/600,I_${ENV:COMPUTERNAME}_$SYS.I,ZZZZ$JOB,$REALTEST
}
f_sleep 3
if($I -eq "0"){
f_speak "プログラミング言語の音声を使って手抜きで作っています、お聞きぐるしい点はご容赦下さい。"`
,"プログラミングの勉強でお決まりのHELLO　WORLDを表示するプログラムをI言語で作ってみます。”`
,"I言語は言語側に色々な機能を用意しているので、出来る事は決まっていますが、色々な実現方法が有るのでとりあえず５種類の例を作ります。”`
,"最初は、I言語はデータの定義と操作はリレーショナルデータベース(RDB)を使って簡単にしているので、”`
,"RDBのSQL文を使ってHELLO　WORLDを表示するプログラムを作ります。"
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393923","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak "これがSQL文でハローワールドを表示するプログラムです。"
f_speak "100のPROGRAMイコールOUTPUTで検索するプログラムの指定をしています。"
f_speak "200のDATAイコールD{11}で検索結果を11文字分表示する項目を指定しています。"
f_speak "300のSQLイコールSELECTで検索のSQL文をじっこうします。"
f_speak "クエスチョンマーク_FROM_DUALクエスチョンマークはテーブルを使わないときに使います、"`
,"RDBMSごとに書きかたが異なるので先頭がアンダーバーのシステム変数で提供しています、因みに、SQL Serverの場合は空白に成ります。"
}
if($I -eq "1"){
f_speak "これがSQL文でHELLO　WORLDを表示するプログラムの画面です。"`
,"[Enter]キーで検索し表示します。"
f_keys "{Enter}"
f_speak "今回は１件表示ですが、通常の検索は１件だけでは無いので、DATA一個に対し画面に表示出来る数の表示場所が確保されています。"
f_speak "このように画面の表示対応はI言語側がおこなっているので、細かな変更が必要な場合は個別に対応する必要が有ります。"
f_speak "縦幅は画面に表示出来る幅に広がっています、これを１ぎょう表示に変更してみます。"
f_speak "横幅は初期のプログラムがMS-DOSのCUI画面で作っていたので、80文字が基本になっており、5列表示していますが、これも1列表示に変更してみます。"
}
if($I -eq "2"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393924","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "これが１ぎょう、１列表示のプログラムです。"
f_speak  "110のLINEイコール１で1ぎょう表示にしています。"
f_speak  "200のDATAで後に空白を68個入れる部分を追加し１列表示にしています。"
}
if($I -eq "3"){
f_keys "{Enter}"
f_speak "これが１ぎょう、1列を表示のプログラムの画面です。"
f_speak "PROGRAMイコールOUTPUTは検索のプログラムですが、それ以外にINPUTの更新と、検索でも更新でも無いNOTが有ります。"
f_speak "次はNOTを使って作って見ます、この場合SQLイコールの検索のSQL文は使えません。"
}
if($I -eq "4"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393925","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "これがPROGRAMイコールNOTで作ったプログラムです。"
f_speak  "200の先頭がイコールの行は操作命令を書きます、SETは右辺を左辺に転送する操作命令です。"
f_speak  "操作命令はプロラムを書く場所で処理のタイミングが異なります、今回はPROGRAMのすぐ下に書いているのでBEGINを書いたのと同じで、プログラムの起動時点で実行されます。"
f_speak  "操作命令をDATAの下に書いた場合は、そのDATAの入力直後に実行されます。"
}
if($I -eq "5"){
f_speak "これがPROGRAMイコールNOTで作ったプログラムの画面です。"
f_speak "DATAは検索プログラムでは無いので、一か所のみの表示と成っています。"
f_speak "検索プログラムでは無いのでDATAの位置で入力状態に成っています。"
f_speak "FORMイコール命令で画面をフォーマットすることも出来るので次は画面をフォーマットしてみます。"
}
if($I -eq "6"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393926","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "これがFORMを使ったプログラムです。"
f_speak  "230のFORM2は上のFORMの文字数が足りないときに使用します。"
f_speak  "240の右端にあるアットマークの連続のがDATAの表示位置と成ります、尚、文字数が足りない時はI言語が補正します。今回は３文字分しか指定していないので１１文字に補正しています。"
f_speak  "210のREPEATイコール５カンマ１は次の250のREPEATまで１から５まで１づつ加算し５回繰り返します。尚、一般的なプログラムのゼロからの指定は出来ません、開始番号を省略すると１からと成ります。"
f_speak  "REPEAT内ではプログラムの読み出し時にシャープが２個連続していると繰り返し番号で置き換えます、"`
,"シャープマイナスは一つ引いた値でシャーププラスは１つ足した値で置き換えてからプログラムが実行されます"`
,"、これは繰り返しでの重要な機能ですのでここで説明しています。"
f_speak  "尚、REPEATの外側で繰り返す場合はREPEATゼロを、うち側で繰り返す場合はREPEAT2を使い、こちらはシャープの代わりにドル記号を使います。"
f_speak  "220の先頭の３マイナスは繰り返しの３回目はこの行を採用しません、尚、続けて複数個書くとAND条件と成ります。"
f_speak  "240の先頭の３プラスは繰り返しの３回目のみこの行を採用します、尚、縦棒区切りで複数書くとおあR条件と成ります,"`
,"おあとANDが混在した場合は普通の判定順番と異なりおあが最初に判定されるので注意して下さい。"
}
if($I -eq "7"){
f_speak "これがFORMを使ったプログラムの画面です。"
f_speak "先頭行はタイトル表示ぎょうで、２行目はメッセージ表示ぎょうで、３行目は処理中のデータ情報表示ぎょうと決まっているので、FORMは４ぎょう目から表示されます。"
f_speak "i言語はインストールも出来るようにファイルに書いたプログラムも動かせます、SQLは使えませんが他の方法で実現できます。"
}
if($I -eq "8"){
f_speak "これがファイルに作ったプログラムです。"
f_speak "検索のSQL文の代わりにOUTPUT操作命令で実現しています。なので、データベースが無い環境でも使えるように成っています。"
f_speak "尚、SETで_TITLEにプログラムのタイトルを転送しています、通常はメニューにタイトルが有りますがファイルから起動する場合はメニューは使わないのでこのようにしています。"
}
if($I -eq "9"){
f_speak "これがファイルに作ったプログラムの画面です。[enter]で表示します。"
f_keys "{Enter}"
f_speak "最初のプログラムと同じに成っています。"
f_speak "これでHELLO　WORLD表示のプログラム例は終わりです。"
}
# read-host "pause"