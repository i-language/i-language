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
if($I -eq "1"){
start-process -filepath notepad  -ArgumentList I.I37
}
else{
Start-Process -FilePath C:\I\BINI37\IMENUWD.EXE  -ArgumentList I.I37
}
f_sleep 10
if($I -eq "0"){
f_speak "�v���O���~���O����̉������g���Ď蔲���ō���Ă��܂��A�������ꂵ���_�͂��e�͉������B"`
,"I����ł����܂��HELLO�@WORLD��\������v���O����������Ă݂܂��B�h`
,"I����̓f�[�^�̒�`�Ƒ���̓����[�V���i���f�[�^�x�[�X(RDB)���g���ĊȒP�ɏo����悤�ɂ��Ă��܂����A�h`
,"�P��HELLO�@WORLD��\�������������Ȃ̂ō����RDB���g��Ȃ��Ńe�L�X�g�G�f�B�^�Ńv���O�������t�@�C���ɏ����Ď��s���܂��B"
}
if($I -eq "1"){
f_speak "���ꂪHELLO�@WORLD��\������v���O�����ł��B"`
}
if($I -eq "2"){
f_speak  "���ꂪHELLO�@WORLD��\�����邵�����ʂł��B"
}
# read-host "pause"