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
f_speak "�v���O���~���O����̉������g���Ď蔲���ō���Ă��܂��A���������邵���_�͂��e�͉������B"`
,"�v���O���~���O�̕׋��ł����܂��HELLO�@WORLD��\������v���O������I����ō���Ă݂܂��B�h`
,"I����͌��ꑤ�ɐF�X�ȋ@�\��p�ӂ��Ă���̂ŁA�o���鎖�͌��܂��Ă��܂����A�F�X�Ȏ������@���L��̂łƂ肠�����T��ނ̗�����܂��B�h`
,"�ŏ��́AI����̓f�[�^�̒�`�Ƒ���̓����[�V���i���f�[�^�x�[�X(RDB)���g���ĊȒP�ɂ��Ă���̂ŁA�h`
,"RDB��SQL�����g����HELLO�@WORLD��\������v���O���������܂��B"
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393923","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak "���ꂪSQL���Ńn���[���[���h��\������v���O�����ł��B"
f_speak "100��PROGRAM�C�R�[��OUTPUT�Ō�������v���O�����̎w������Ă��܂��B"
f_speak "200��DATA�C�R�[��D{11}�Ō������ʂ�11�������\�����鍀�ڂ��w�肵�Ă��܂��B"
f_speak "300��SQL�C�R�[��SELECT�Ō�����SQL���������������܂��B"
f_speak "�N�G�X�`�����}�[�N_FROM_DUAL�N�G�X�`�����}�[�N�̓e�[�u�����g��Ȃ��Ƃ��Ɏg���܂��A"`
,"RDBMS���Ƃɏ����������قȂ�̂Ő擪���A���_�[�o�[�̃V�X�e���ϐ��Œ񋟂��Ă��܂��A���݂ɁASQL Server�̏ꍇ�͋󔒂ɐ���܂��B"
}
if($I -eq "1"){
f_speak "���ꂪSQL����HELLO�@WORLD��\������v���O�����̉�ʂł��B"`
,"[Enter]�L�[�Ō������\�����܂��B"
f_keys "{Enter}"
f_speak "����͂P���\���ł����A�ʏ�̌����͂P�������ł͖����̂ŁADATA��ɑ΂���ʂɕ\���o���鐔�̕\���ꏊ���m�ۂ���Ă��܂��B"
f_speak "���̂悤�ɉ�ʂ̕\���Ή���I���ꑤ�������Ȃ��Ă���̂ŁA�ׂ��ȕύX���K�v�ȏꍇ�͌ʂɑΉ�����K�v���L��܂��B"
f_speak "�c���͉�ʂɕ\���o���镝�ɍL�����Ă��܂��A������P���傤�\���ɕύX���Ă݂܂��B"
f_speak "�����͏����̃v���O������MS-DOS��CUI��ʂō���Ă����̂ŁA80��������{�ɂȂ��Ă���A5��\�����Ă��܂����A�����1��\���ɕύX���Ă݂܂��B"
}
if($I -eq "2"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393924","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "���ꂪ�P���傤�A�P��\���̃v���O�����ł��B"
f_speak  "110��LINE�C�R�[���P��1���傤�\���ɂ��Ă��܂��B"
f_speak  "200��DATA�Ō�ɋ󔒂�68����镔����ǉ����P��\���ɂ��Ă��܂��B"
}
if($I -eq "3"){
f_keys "{Enter}"
f_speak "���ꂪ�P���傤�A1���\���̃v���O�����̉�ʂł��B"
f_speak "PROGRAM�C�R�[��OUTPUT�͌����̃v���O�����ł����A����ȊO��INPUT�̍X�V�ƁA�����ł��X�V�ł�����NOT���L��܂��B"
f_speak "����NOT���g���č���Č��܂��A���̏ꍇSQL�C�R�[���̌�����SQL���͎g���܂���B"
}
if($I -eq "4"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393925","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "���ꂪPROGRAM�C�R�[��NOT�ō�����v���O�����ł��B"
f_speak  "200�̐擪���C�R�[���̍s�͑��얽�߂������܂��ASET�͉E�ӂ����ӂɓ]�����鑀�얽�߂ł��B"
f_speak  "���얽�߂̓v�������������ꏊ�ŏ����̃^�C�~���O���قȂ�܂��A�����PROGRAM�̂������ɏ����Ă���̂�BEGIN���������̂Ɠ����ŁA�v���O�����̋N�����_�Ŏ��s����܂��B"
f_speak  "���얽�߂�DATA�̉��ɏ������ꍇ�́A����DATA�̓��͒���Ɏ��s����܂��B"
}
if($I -eq "5"){
f_speak "���ꂪPROGRAM�C�R�[��NOT�ō�����v���O�����̉�ʂł��B"
f_speak "DATA�͌����v���O�����ł͖����̂ŁA�ꂩ���݂̂̕\���Ɛ����Ă��܂��B"
f_speak "�����v���O�����ł͖����̂�DATA�̈ʒu�œ��͏�Ԃɐ����Ă��܂��B"
f_speak "FORM�C�R�[�����߂ŉ�ʂ��t�H�[�}�b�g���邱�Ƃ��o����̂Ŏ��͉�ʂ��t�H�[�}�b�g���Ă݂܂��B"
}
if($I -eq "6"){
f_keys "21","ZZZZZZZY","1ZZZZZZZZZZZZZZZ","ZZZZ393926","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak  "���ꂪFORM���g�����v���O�����ł��B"
f_speak  "230��FORM2�͏��FORM�̕�����������Ȃ��Ƃ��Ɏg�p���܂��B"
f_speak  "240�̉E�[�ɂ���A�b�g�}�[�N�̘A���̂�DATA�̕\���ʒu�Ɛ���܂��A���A������������Ȃ�����I���ꂪ�␳���܂��B����͂R�����������w�肵�Ă��Ȃ��̂łP�P�����ɕ␳���Ă��܂��B"
f_speak  "210��REPEAT�C�R�[���T�J���}�P�͎���250��REPEAT�܂łP����T�܂łP�Â��Z���T��J��Ԃ��܂��B���A��ʓI�ȃv���O�����̃[������̎w��͏o���܂���A�J�n�ԍ����ȗ�����ƂP����Ɛ���܂��B"
f_speak  "REPEAT���ł̓v���O�����̓ǂݏo�����ɃV���[�v���Q�A�����Ă���ƌJ��Ԃ��ԍ��Œu�������܂��A"`
,"�V���[�v�}�C�i�X�͈�������l�ŃV���[�v�v���X�͂P�������l�Œu�������Ă���v���O���������s����܂�"`
,"�A����͌J��Ԃ��ł̏d�v�ȋ@�\�ł��̂ł����Ő������Ă��܂��B"
f_speak  "���AREPEAT�̊O���ŌJ��Ԃ��ꍇ��REPEAT�[�����A�������ŌJ��Ԃ��ꍇ��REPEAT2���g���A������̓V���[�v�̑���Ƀh���L�����g���܂��B"
f_speak  "220�̐擪�̂R�}�C�i�X�͌J��Ԃ��̂R��ڂ͂��̍s���̗p���܂���A���A�����ĕ���������AND�����Ɛ���܂��B"
f_speak  "240�̐擪�̂R�v���X�͌J��Ԃ��̂R��ڂ݂̂��̍s���̗p���܂��A���A�c�_��؂�ŕ��������Ƃ���R�����Ɛ���܂�,"`
,"������AND�����݂����ꍇ�͕��ʂ̔��菇�ԂƈقȂ肨�����ŏ��ɔ��肳���̂Œ��ӂ��ĉ������B"
}
if($I -eq "7"){
f_speak "���ꂪFORM���g�����v���O�����̉�ʂł��B"
f_speak "�擪�s�̓^�C�g���\�����傤�ŁA�Q�s�ڂ̓��b�Z�[�W�\�����傤�ŁA�R�s�ڂ͏������̃f�[�^���\�����傤�ƌ��܂��Ă���̂ŁAFORM�͂S���傤�ڂ���\������܂��B"
f_speak "i����̓C���X�g�[�����o����悤�Ƀt�@�C���ɏ������v���O�������������܂��ASQL�͎g���܂��񂪑��̕��@�Ŏ����ł��܂��B"
}
if($I -eq "8"){
f_speak "���ꂪ�t�@�C���ɍ�����v���O�����ł��B"
f_speak "������SQL���̑����OUTPUT���얽�߂Ŏ������Ă��܂��B�Ȃ̂ŁA�f�[�^�x�[�X���������ł��g����悤�ɐ����Ă��܂��B"
f_speak "���ASET��_TITLE�Ƀv���O�����̃^�C�g����]�����Ă��܂��A�ʏ�̓��j���[�Ƀ^�C�g�����L��܂����t�@�C������N������ꍇ�̓��j���[�͎g��Ȃ��̂ł��̂悤�ɂ��Ă��܂��B"
}
if($I -eq "9"){
f_speak "���ꂪ�t�@�C���ɍ�����v���O�����̉�ʂł��B[enter]�ŕ\�����܂��B"
f_keys "{Enter}"
f_speak "�ŏ��̃v���O�����Ɠ����ɐ����Ă��܂��B"
f_speak "�����HELLO�@WORLD�\���̃v���O������͏I���ł��B"
}
# read-host "pause"