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
f_speak "�v���O���~���O����̂̉������g���Ď蔲���ō���Ă��܂��A�������ꂵ���_�͂��e�͉������B"`
,"�v���O���~���O����̘b�ł��B"`
,"�v���O���~���O����͓��]�J���̐��Y�������P�o����f���炵������ł��B����A���{�͏��q���œ����肪�s������󋵂ɗL��܂��B�h`
,"�Ȃ̂ŁA�F�Ńv���O���~���O������K�������g�̎d���̐��Y�����グ��Γ�����s���̉����ɖ𗧂��܂��B�h`
,"�c�O�Ȃ���A���̃v���O���~���O����͓�����āA10�l���K�����悤�Ƃ��Ă�10�l���K���ł���悤�ȊȒP�ȕ��ł͗L��܂���B"`
,"�����ŁA��������̓R���s���[�^�ɔC���A�N�ł��K���o����v���O���~���O������J�����܂����B"`
,"�����Instant��I��t��I����Ɩ������āA�N�ł������Ŏ��R�Ɏg����悤�ɃC���^�[�l�b�g�Ō��J���܂����B"`
,"URL�͌��ݕ\������http://ilanguage.iinaa.net/�ł��B"`
,"I����ł̃v���O���~���O�̕��@�����ꂩ��Љ�܂��B"
}
if($I -eq "1"){
f_speak "���ꂪI����̃��j���[�ł��B"`
,"���j���[��01����40�܂ł�40��ނ̃��j���[��\���o���܂��B"`
,"01���u�V�X�e�� �x�� ���j���[�v�ŊJ���A�Ǘ��A�^�p���̃��j���[���p�ӂ���Ă��܂��B"`
,"40�Ɂu�T���v������ ���j���[�v���L��܂��B����́A������������ɍH��̐��Y�Ǘ��V�X�e�����J�����Ă���A"`
,"�ꐢ��O��IPROGRAM��MRP�ƌĂ΂�镔�i�̏T�����V�X�e����������̂ŁAI����ł������ɍ���Ă���܂��B"`
,"IPROGRAM�͈ꖜ�{�ȏ�̃v���O�������{�ғ����Ă���A���������n�̖w�ǂ̃V�X�e�����\�z�o���鎖�����؂���Ă��܂��B�h`
,"I�����IPROGRAM��DNA�����������ŕ��@��0���猩�����A�N�ł��K���o����悤�ɊȒP�ɂ��܂����B"`
,"�ŏ���01�Łu�V�X�e�� �x�� ���j���[�v�ɍs���܂��B�h 
f_keys "01"
f_speak "08�ɁuI����̕׋� ���j���[�v������ėL��̂ł����I����̃v���O���~���O�̕��@���Љ�܂��B�h  
f_keys "08"
f_speak  "01��RDB�ƃe�[�u����SQL��I����̐����ł��B"
f_keys "01"
f_keys "{Enter}","{Enter}","{Enter}","{ESC}","{ESC}"
}
if($I -eq "2"){
f_speak  "02���ƌv��e�[�u���̐݌v�̐����ł��B"
f_keys "02","{Enter}","{ESC}"
}
if($I -eq "3"){
f_speak  "03���ƌv��e�[�u���̐݌v���ʂ̐����ł��B"
f_keys "03","{Enter}","{ESC}"
}
if($I -eq "4"){
f_speak "I����Ńv���O���~���O���̃V�X�e���̊J������ɂ�02�́u�V�X�e�� �J�� ���j���[�v�ɍs���܂��B�h
f_keys "02"
f_speak "I����ł͍ŏ��Ƀf�[�^���������܂��B������,25�Łu�e�X�g �f�[�^�����@�X�V�v�ɍs���܂��B�h
f_keys "25"
f_speak "���ꂪ�u�e�X�g �f�[�^�����@�X�V�v�̉�ʂł��B�ŏ��ɋ���ZZZY�̎g�p�҂ł���ZZZZZZZY�̎g�p�҂����܂��B�h
f_keys "ZZZZZZZY"
f_speak "���ɃC���X�g�[���ŕύX�����p�X���[�h�����܂��h
f_keys "1ZZZZZZZZZZZZZZZ"
f_speak "���L�[�ōs�̑I���ɍs���܂��B"
f_keys "{LEFT}"
f_speak "������2�ō쐬���J�n���܂��B"
f_keys "2"
f_speak "����ZZZY���L��̂ł��̂܂�[Enter]�Ŏ��ɍs���܂��B�h
f_keys "{ENTER}"
f_speak "�f�[�^���œ��{�������̂őS�p�L�[�������ē��{��ɂ��āA�ƌv��_���e�����[Enter]���܂��B�h
f_keys "�ƌv��_���e","{ENTER}"
f_speak "�����JA���L��̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "���敪�̓[�b�g�[�b�g�Ȃ̂Ń[�b�g�[�b�g�����܂��B�h
f_keys "ZZ"
f_speak "��{�f�[�^���͕s�v�Ȃ̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "�e�X�g��TEST���L��̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "�^�C�g���͓��e�ƗL��̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "�����^�C�v��NCHAR���E��� P g D n �L�[�őI���[Enter]���܂��B�h
f_keys "NCHAR","{ENTER}"
f_speak "�^�P��J�Ȃ̂�J[PgDn]�őI���[Enter]���܂��B�h
f_keys "J"
f_speak "�^2�͋󔒂ŏ����̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "��������1��20�Ɠ����[Enter]���܂��B�h
f_keys "20","{ENTER}"
f_speak "����1�͋󔒂ŗǂ��̂ł��̂܂�[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "����2��1�Ȃ̂�1�����Ă܂��B�h
f_keys "1"
f_speak "����œ��͂͊����ł��̂�,���L�[�ōŌ�̍��ڂɈړ���[Enter]�ō쐬�o���܂��B�h
f_keys "{DOWN}","{ENTER}"
f_speak "��s������ׁ��L�[�������܂��B"
f_keys "{DOWN}"
f_speak "2�ŉƌv��_�H��̃f�[�^���쐬���܂��B"
f_keys "2","{ENTER}"
f_speak "�f�[�^���ŉƌv��_�H������܂��B�h
f_keys "�ƌv��_�H��","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "�����^�C�v��DCIMAL�ł��B�h
f_keys "DECIMAL","{ENTER}"
f_speak "�^�P��+�ł��B�h
f_keys "{+}"
f_speak "�^2��[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "��������1��1�ł��B�h
f_keys "1","{ENTER}"
f_speak "��������2��0�ł��B�h
f_keys "0","{ENTER}","{ENTER}","{ENTER}"
f_speak "�`�F�b�N��CHECK2��I�т܂��B�h
f_keys "CHECK2","{ENTER}"
f_speak "�`�F�b�N61��0�J���}�H��ȊO�J���}1�J���}�H������܂��B�h
f_keys "0,�H��ȊO,1,�H��"
f_speak "����œ��͂͊����ł��̂�,���L�[�ōŌ�̍��ڂɈړ���[Enter]�ō쐬���܂��B�h
f_keys "{DOWN}","{ENTER}"
f_speak "��s������ׁ��L�[�������܂��B"
f_keys "{DOWN}"
f_speak "2�ŉƌv��_�N�������쐬���܂��B"
f_keys "2","{ENTER}"
f_speak "�f�[�^���ŉƌv��_�N���������܂��B�h
f_keys "�ƌv��_�N����","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "�����^�C�v��CHAR�ł��B�h
f_keys "CHAR","{ENTER}"
f_speak "�^�P��D�ł��B�h
f_keys "D"
f_speak "����2�ɍs���̂�1�����܂��B�h
f_keys "1"
f_speak "����œ��͂͊����ł��̂�,���L�[�ōŌ�̍��ڂɈړ���[Enter]�ō쐬���܂��B�h
f_keys "{DOWN}","{ENTER}"
f_speak "��s������ׁ��L�[�������܂��B"
f_keys "{DOWN}"
f_speak "2�ŉƌv��_���z���쐬���܂��B"
f_keys "2","{ENTER}"
f_speak "�f�[�^���ŉƌv��_���z�����܂��B�h
f_keys "�ƌv��_���z","{ENTER}","{ENTER}","ZZ","{ENTER}","{ENTER}","{ENTER}"
f_speak "�����^�C�v��DECIMAL�ł��B�h
f_keys "DECIMAL","{ENTER}"
f_speak "�^1��+�ł��B�h
f_keys "{+}"
f_speak "�^2��[Enter]���܂��B�h
f_keys "{ENTER}"
f_speak "��������1��9�ł��B�h
f_keys "9","{ENTER}"
f_speak "��������2��0�ł��B�h
f_keys "0","{ENTER}","{ENTER}","{ENTER}"
f_speak "�`�F�b�N��CHECK��I�т܂��B�h
f_keys "CHECK","{ENTER}"
f_speak "�`�F�b�N61�͍��J�b�R1�J���}�E�J�b�R�ōŏ��l���P�Ƃ��ĂO��������Ȃ��悤�ɂ��܂��B�h
f_keys "{(}1,{)}"
f_speak "����œ��͂͊����ł��̂�,���L�[�ōŌ�̍��ڂɈړ���[Enter]�ō쐬���܂��B�h
f_keys "{DOWN}","{ENTER}","{ESC}"
f_speak "����Ńe�[�u������邽�߂̃f�[�^�������o�����̂�26�Ńe�[�u�������܂��B�h
f_keys "26"
f_speak "���ꂪ�e�X�g�e�[�u���X�V��ʂŖ{���͍ŏ��Ɏg�p�҂����܂����A���ɔF�؂���Ă���̂ŗv�������܂���B�h
f_speak "���̉�ʂ̑���͒��ӂ���K�v���L��܂��A���敪��AA�ɐ����Ă��܂��C���敪�ɂ̓^�u�L�[�ňړ����A�������[�b�g�[�b�g�ɂ���K�v���L��܂����A�h
f_speak "���̕����͒P�Ƀ[�b�g�[�b�g����͂��Ă����ł͕ύX����Ȃ��d�l�ɐ����Ă���̂ŁA�K���uEnter�n�Ō������m�肷��K�v���L�肢�܂��B�h
f_keys "{TAB}","ZZ"
f_speak "�X�Ƀf�[�^���Ƀ^�u�L�[�ňړ����ƌv�������[Enter]�Ŋm�肵�܂��B"
f_keys "{TAB}","{TAB}","�ƌv��","{ENTER}"
f_speak "���L�[�ōs�I���ɍs��2�ō쐬���܂��B"
f_keys "{LEFT}","2"
f_speak "���O��ZZZYZZ_�ƌv����e���q���E�Ƃ��܂��B"
f_keys "ZZZYZZ_�ƌv����e���\","{ENTER}"
f_speak "��L�[�̍��ڐ��͂P�ł��̂�1�Ƃ���œ��͏I���ł��̂Ł��L�[�ōŌ�ɍs��[ENTER]���܂��B"
f_keys "1","{DOWN}","{ENTER}"
f_speak "��ʂ��ς���ăf�[�^�����o�^�o����ʂƂȂ����̂Ł��L�[�ōs�I���ɍs���Q�ō쐬���܂��B"
f_keys "{LEFT}","2"
f_speak "�f�[�^���ŉƌv��_���e��I��Ł��L�[�ōŌ�ɍs��[ENTER]�쐬���܂��B"
f_keys "�ƌv��_���e","{DOWN}","{ENTER}"
f_speak "�K�����L�[�ň�s�����ĂQ�ō��x�͉ƌv��_�H���I��Ł��L�[[ENTER]�Ŋ����ł��B"
f_keys "{DOWN}","2","�ƌv��_�H��","{DOWN}","{ENTER}"
f_speak "[ESC]�L�[�Ō��̉�ʂɖ߂�܂��B"
f_keys "{ESC}"
f_speak "���L�[�ň�s�����ĂQ��ZZZYZZ_�ƌv����q���E�����܂��B"
f_keys "{DOWN}","2"
f_keys "ZZZYZZ_�ƌv����\","{ENTER}"
f_speak "��L�[�̍��ڐ��͂Q�ł��B���L�[�ōŌ�ɍs��[ENTER]���܂��B"
f_keys "2","{DOWN}","{ENTER}"
f_speak "���L�[�ōs�I���ɍs���Q�ō쐬���܂��B"
f_keys "{LEFT}","2"
f_speak "�f�[�^���ŉƌv��_�N������I�т܂��B"
f_keys "�ƌv��_�N����","{DOWN}","{ENTER}"
f_speak "�K�����L�[�ň�s�����ĉƌv��_���e��I�т܂��B"
f_keys "{DOWN}","2","�ƌv��_���e","{DOWN}","{ENTER}"
f_speak "�K�����L�[�ň�s�����ĉƌv��_���z��I��[ENTER]�Ŋ����ł��B"
f_keys "{DOWN}","2","�ƌv��_���z","{DOWN}","{ENTER}"
f_speak "[ESC}�L�[�Q��Ń��j���[��ʂɖ߂�܂��B"
f_keys "{ESC}","{ESC}"
f_speak "����Ńe�[�u�����o���܂����B�ƌv��e�[�u���̐݌v���ʂ�3.2.2.1��ZZZYZZ_�ƌv����e���q���E�ɑ��݂��镨�̂ݓ��͏o���鎖�Ƃ��܂��h`
,"�Ƃ���܂����B���̕������f�[�^�����őΉ��o����̂ł��̍�Ƃ��s���܂��B�h
f_speak "25�Łu�e�X�g �f�[�^�����@�X�V�v�ɍs���܂��B�h
f_keys "25"
f_speak "�f�[�^���ɉƌv��_���e������[ENter]�Ō������܂��B"�@�@
f_keys "�ƌv��_���e","{ENTER}"
f_speak "���L�[�ōs�I���ɍs��3�̏C����TAB�L�[10�Ń`�F�b�N�Ɉړ����܂��B"�@�@
f_keys "{LEFT}","3","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}","{TAB}"
f_speak "�`�F�b�N��SELECT21��I�т܂�"
f_keys "SELECT21","{ENTER}"
f_speak "����ZZZY�Ɛ����Ă���̂ł��̂܂�[ENTER�v���܂��B"
f_keys "{ENTER}"
f_speak "�`�F�N61��?_MM?_�ƌv����e���q���E��I�т܂�"
f_keys "?_MM?_�ƌv����e���\","{ENTER}"
f_speak "�`�F�N62���ƌv��_���e�ƂȂ��Ă���̂ł��̂܂�[Enter]���܂��B"
f_keys "{ENTER}"
f_speak "�`�F�N63���ƌv��_�H��ƂȂ��Ă���̂ł��̂܂�[Enter]���܂��B"
f_keys "{ENTER}"
f_speak "�����[�V���i���f�[�^�x�[�X�ł͊O���L�[�̐錾�ł��̂悤�Ȏ��������o����֗��ȋ@�\���L��܂����A�h`
,"I����ł͍폜�f�[�^���e�[�u����Ɏ��_���폜�ׁ̈A�O���L�[���g���Ȃ��̂ŁA�f�[�^�����őΉ��o����悤�ɂ��Ă��܂��B�h
f_speak "����œ��͂͊����ł��̂�,���L�[�ōŌ�̍��ڂɈړ���[Enter]�ō쐬���܂��B�h
f_keys "{DOWN}","{ENTER}"
f_speak "����Ńf�[�^�����͊����ł�[ESC]��m�j���[�ɖ߂�܂��B�h
f_keys "{ESC}"
f_speak "�e�[�u�����o�����̂ō��x�̓��j���[�ƃv���O���������̂�21�����܂��B"
f_keys "21"
f_speak "���ꂪ���j���[�X�V�̉�ʂł��B���L�[�ōs�I���ɍs���܂��B"
f_keys "{LEFT}"
f_speak "���j���[�̔ԍ���01����40�܂łł��̂ō����2�̍쐬�Ń[�b�g�[�b�g�[�b�g�[�b�g,39,39,22�Ɠ���܂��B"
f_keys "2","ZZZZ","39","39","22"
f_speak "����͉I�񂵃e�X�g��TEST�Ɛ����Ă���̂ł��̂܂�[Enter]���܂��B"
f_keys "{ENTER}"
f_speak "����ZZZY�ƂȂ��Ă���̂�[Enter]���܂��B"
f_keys "{ENTER}"
f_speak "���敪�̓[�b�g�[�b�g�����܂��B"
f_keys "ZZ"
f_speak "������ނ͍X�V�Ȃ̂�INPUT�ł��B"
f_keys "INPUT","{ENTER}"
f_speak "�F�؂͍���͔F�ؖ�����X�Ƃ��܂����X�V�����Ɏg�p�҂�����Ȃ��̂ōX�V�n��X�ӊO�Ƃ��鎖�𐄏����܂��B"
f_keys "X"
f_speak "��̓��j���[�̓��͂ł��̂Ł��L�[�Ń��j���[�ɍs���ƌv����e�X�V[Enter]�Ń��j���[�̍쐬�͊����ł��B"
f_keys "{DOWN}","�ƌv����e�X�V","{ENTER}"
f_speak "���j���[�����������̂�0�Ńv���O�������X�V�ɍs���܂��B"
f_keys "0"
f_speak "�X�V�v���O�����̓e�[�u���������̂�TABLE 1[ENTER]�ň�̃e�[�u������v���O���������܂��B"
f_keys "TABLE 1","{ENTER}"
f_speak "�e�[�u���������������̂�[ENTER]���܂��B"
f_keys "{ENTER}"
f_speak "���L�[�Ɓ��L�[2��0�ł�ZZZYZZ_�ƌv����e���q���E��I�����܂��B"
f_keys "{LEFT}","{DOWN}","0"
f_speak "�v���O�����X�V��ʂɖ߂��ăv���O����������Ă��܂��BT[Enter]�Ńe�X�g��ʂ������オ��܂��B"
f_keys "T","{ENTER}"
}
if($I -eq "5"){
f_speak "�ƌv����e�̍X�V�v���O������09�Ő������܂��B"
f_keys "09","{ENTER}","{ESC}"
}
if($I -eq "6"){
f_speak "���ꂪ�ƌv����e�̍X�V�v���O�����ł��B"
f_speak "���L�[�ōs�I���ɍs���܂��B"
f_keys "{LEFT}"
f_speak "2�̍쐬�����܂�"
f_keys "2"
f_speak "���e�ɖ{������܂��B"
f_keys "�{��","{ENTER}"
f_speak "�H���0�����[Enter]�ō쐬���܂��B"
f_keys "0","{ENTER}"
f_speak "���e�ɊO�H��A�H���1�̃f�[�^���쐬���܂��B"
f_keys "{DOWN}","2","�O�H��","{ENTER}","1","{ENTER}"
}
if($I -eq "7"){
f_keys "ZZZZZZZY","1ZZZZZZZZZZZZZZZ"
f_sleep 10
f_speak "���̃v���O�����̉ƌv��X�V�̃v���O�������[�b�g�[�b�g�[�b�g�[�b�g,39,39,21�ō��܂��B"
f_keys "{LEFT}","2","ZZZZ","39","39","21","{ENTER}","{ENTER}","ZZ","INPUT","{ENTER}","X","{DOWN}","�ƌv��X�V","{ENTER}"
f_speak "���j���[�����������̂�0�Ńv���O�������X�V�ɍs�e�[�Ԃ邩��v���O���������܂��B"
f_keys "0","TABLE 1","{ENTER}","{ENTER}","{LEFT}","0"
f_speak "�v���O�����X�V��ʂɖ߂��ăv���O����������Ă��܂��BT[Enter]�Ńe�X�g��ʂ������オ��܂��B"
f_keys "T","{ENTER}"
}
if($I -eq "8"){
f_speak "���ꂪ�ƌv��̍X�V�v���O�����ł��B"
f_speak "���L�[�ōs�I���ɍs���܂��B"
f_keys "{LEFT}"
f_speak "2�̍쐬�����܂�"
f_keys "2"
f_speak "�N�����ŉ�������Ȃ���[Enter]�ō����̔N���������܂��B"
f_keys "{ENTER}"
f_speak "���e�ɖ{������܂��B"
f_keys "�{��","{ENTER}"
f_speak "���z��2000�ł����[Enter]�ō쐬���܂��B"
f_keys "2000","{ENTER}"
f_speak "�N�����ŉ�������Ȃ���[Enter]�ŁA���e�ɊO�H��A���z��1000�ō쐬���܂��B"
f_keys "{DOWN}","2","{ENTER}","�O�H��","{ENTER}","1000","{ENTER}"
}
if($I -eq "9"){
f_speak "�G���Q���W�������̃v���O�����̍�����15�ɗL��̂Ŏ��s���܂��B"
f_keys "15","{ENTER}","{ENTER}","{ENTER}"
}
if($I -eq "10"){
f_speak "���P�ʂ̃G���Q���W�������߂�v���O�����ł��B[ENTER]�Ō������܂��B"
f_keys "{ENTER}"
f_speak "33�Ɛ������\������Ă��܂��B����ŁA���P�ʂ̃G���Q���W�������߂�ƌv��V�X�e���̏����̊����ł��B"`
,"���ۂ̃V�X�e�����ł��X�V�ƌ����̃v���O�����͖�V���L��,�w�ǂ������ŊȒP�ɍ��܂����A"`
,"�蓮�ō��ꍇ�ł��L�x�ȃV�X�e���ϐ��ƃe�[�u���ϐ��A�X�ɂ́A�֗��Ȗ��߂�p�ӂ����̂�,�N�ł��ȒP�ɑ����v���O���~���O���o���܂��B"`
,"I����̕׋� ���j���[�ɂ́A�����ĉƌv��V�X�e���̃o�b�`�����ɂ����P�̃��j���[���L��̂Ő���`�������W���Ă݂ĉ������B"
}
# read-host "pause"