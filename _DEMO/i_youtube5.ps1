add-type -AssemblyName System.Windows.Forms
$sp=new-object -com SAPI.spVoice
function f_sleep([int]$s){Start-Sleep -s $s}
function f_speak([string[]]$s){$sss="";foreach($ss in $s){$sss=$sss+$ss}$dummy=$sp.Speak($sss)}
function f_keys([string[]]$s){foreach($ss in $s){[System.Windows.Forms.SendKeys]::SendWait("$ss");}}
if($ENV:COMPUTERNAME -eq "KAZUAKI-PC"){$SYS="I"}else{$SYS="I37ORG"}
$i=$args[0];$REALTEST="REAL";$JOB="";
if($I -eq "0"){$JOB="010400"}
Start-Process -FilePath C:\I\BINI37\IMENUWD.EXE  -ArgumentList  JA,30/600,I_${ENV:COMPUTERNAME}_$SYS.I,ZZZZ$JOB,$REALTEST
f_sleep 3
if($I -eq "0"){
f_speak "�v���O���~���O����̉������g���Ď蔲���ō���Ă��܂��A���������邵���_�͂��e�͉������B"`
,"���ꂩ��C���X�g�[���ō���Ă���v���O�������g���ăv���O���~���O�̃m�E�n�E��������܂��B�h`
,"�w���v�����̃v���O�����Ő������܂��B�h`
,"�w���v�����̓��j���[���傤��88�ł�F1�ł����̎��ɕ\������Ă��郁�j���[��ʂ̃w���v��\�����܂����A�h`
,"���ʂɃ��j���[���痧���グ�鎖���o���A���̎��͕\�����郁�j���[��I������K�v���L��̂ŕ\���͂��܂���B���AI����ł̓��j���[�ƃv���O�������W���u�Ƃ������܂��B"`
,"�X�ɁA�Ăяo���ɂ���W���u���O�őI�����āA���̉�ʂŕʂ̃W���u��HELP��\��������A����ŕ����������ł��铙�A���\���G�ȃv���O�����Ɛ����Ă��܂��B"
f_keys "21","ZZZZZZZZ","1ZZZZZZZZZZZZZZZ","ZZZZ010101","{ENTER}","{LEFT}","0"
f_sleep 3
f_speak "�w���v�����̃v���O�����ł��B"
f_speak "100��REPAT0�C�R�[��10��PROGRAM�ȍ~��10��J��Ԃ����܂��A�܂�A����ŁA0�ɂ��Ăяo���ŕʂ�HELP�̉�ʂ�10��\���o���܂��B"
f_speak "100��REPAT0�ōŌ��0���t���Ă���̂́ACOPY=@ZZZZZZ_SQL����REPEAT���g���Ă���ׂł��B"
f_speak "200��PROGRAM�C�R�[���Ńw���v�e�[�u������������悤�ɂ��Ă��܂��B"
f_speak "200��PROGRAM�̂Q�Ԗڂ�&X1�͂��̉E�̃e�[�u���̕ʃ��C��&X1�Ƃ��鎖�𐄏����Ă��܂��B"
f_speak "200�̂����������}�[�N�ň͂܂�Ă��镨�̓f�[�^���C�Ńv���O�����̓ǂݏo�����ɓ��e�Œu���������܂��B"
f_speak "200�̃A���_�[�o�[�G���G���̂悤�Ƀf�[�^���C�̐擪���A���_�[�o�[�̂��̂̓V�X�e�����񋟂��Ă��镨��,"`
,"�A���_�[�o�[�G���G���̓}�X�^�[�e�[�u���̐擪�ɏ���RDBMS�̈Ⴂ��e�X�g���イ�⃁�j���[�Ɏw��̋��⋖�敪�̈Ⴂ�𓯂������ŕ\���ł��ω��ɋ����悤�ɐ����Ă��܂��B"
f_speak "300��LEFT�C�R�[���Ń��j���[�e�[�u�����������Ă��胁�j���[����̏��������܂��B"
f_speak "300�̉E�[�̃A�X�^���X�N�̓C���f�N�X�ԍ��ł̌���������ݒ肵�Ȃ��Ӗ��ɏ����A����������JOIN_�I���ŗz�ɐݒ肵�܂��B"
f_speak "400����600�܂ł�JOIN_�I���Ō����̏������w�肵�Ă��܂��B"
f_speak "400�̂����������}�[�N�A���_�[�o�[T�����������}�[�N��PROGRAM�C�R�[���̉E�Ŏw�肵���A�ʃ��C��X1�ł��B"
f_speak "500����600�܂ł�_CL��_C��_CR�͗����������ꍇ�Ɏg�p���AMaria�ł��с[���֐����g���֌W�ł��̂悤�ɂ��Ă��܂��B"
f_speak "600��X2.�����������}�[�N�A���_�[�o�[NE�A���h�h�b�gSYSTEM_�����O�����������}�[�N�̂悤�ɃA���_�[�ƃA���h��"`
,"�͂܂ꂽ����N��NAME�̖��O�̈Ӗ��ŁAE���C�R�[���̈Ӗ��ŁA���O���m�̈�v��r��X2�h�b�gSYSTEM_�����O�C�R�[��X1�h�b�gSYSTEM_�����O�Ɛ���܂��B"
f_speak "700��CONTROL=HIGH�́A�ʏ�͏c������ʂɕ\���ł��镝�������₵�܂����A�w���v��ʂ��ז������Ȃ��悤�ɏc25�s�̌Œ�̏c���ƂȂ�܂��B"`
,"�����̃v���O������MS-DOS��CUI��ʂō���Ă����̂ŏc���̊�{��25�������Ɛ����Ă��܂��B�h
f_speak "800�̐擪�̃_���[1�v���X�͌J��Ԃ��̒��ł��̂�REPEAT0�̂P��ڂ̌J��Ԃ��݂̂��̍s���̗p�����Ӗ��ł��B"
f_speak "800�̃V���[�vZZZZZZ_ARG_BEGIN�̓v���O�����̋N�����p�����[�^�Ŏw�肵�����̂��v���O�������󂯎��܂��B"
f_speak "900�̐擪�̃_���[1�}�C�i�X�͌J��Ԃ��̂P��ڂ͍̗p���Ȃ��Ӗ��Ɛ���܂��A�Q��ڈȍ~�͑������\������悤��CONTROL�C�R�[��BEGIN_ENTER���w�肵�܂��B"
f_speak "1000�̐擪�̃_���[10�}�C�i�X�͌J��Ԃ��̂P0��ڈȊO�̗p�ŁA0�̑I���@�\��CONTROL�C�R�[��0�ŕt������܂��B"
f_speak "1100��COLOR�͈ȍ~�̑��얽�߂�w�i�̐F�\���̕K�v�Ȏ��Ɏ��s����܂��B"
f_speak "1200��IF�͔��菈����find��0���傫��������JUMP���߂�COLOR_B�ɃW�����v���܂��B"
f_speak "1300��SET�͉E�ӂ����ӂɓ]�����܂��BSYSTEM_SEQ@COLOR��W��]�����鎖��SYSTEM_SEQ�̔w�i���傭��WHITE�̔��ɂ��Ă��܂��B"
f_speak "1300�̉E�ӂ̂悤�ɕ������w�肵�����ꍇ���V���O���R�[�e�[�V�����ň݂͂܂��B���V���O���R�[�e�[�V�����𕶎��Ƃ��Ďg���������͂Q�A���ŏ����܂��B"
f_speak "1300��EXIT{};��COLOR�̃Z�N�V�������I�����܂��B"
f_speak "1400��COLOR_B:�̍Ō�ɃR�����̗L�镶����JUMP��BACK�Ɣ�ѐ�Ɛ���܂��B"
f_speak "1400��SET��SYSTEM_SEQ@COLOR��B��]�����鎖��SYSTEM_SEQ�̔w�i���傭��BLUE�̐ɂɂ��Ă��܂��B"
f_speak "1500��BIGIN�͈ȍ~�̑��얽�߂��v���O�����̋N�����Ɏ��s����܂��B"
f_speak "1600��WN.XWHERE�̂悤��W�Ŏn�܂�f�[�^�߂���DATA���Ő錾���Ȃ��Ă��g���閼�O�Ɏg�p���܂��B���A2�Ԗڂ�N�͑S�p�������܂ޑS�Ă̕����p�ŁA�����̏ꍇ�͐��l�݂̂ŏ����_�ȉ��̌����̈Ӗ��Ɛ���܂��B"
f_speak "1600�̂悤�ɉE�ӂ��ȗ�����Ƌ󔒂��]������܂��B"
f_speak "1810�̂悤��SET�ł̓J���}�ŋ�؂�ŕ��������������o���܂��B"
f_speak "1900�̃_���[SYSTEM_CAL�̂悤�ɐ擪�Ƀ_���[�L����t����ƑO��PROGRAM�C�R�[������̃f�[�^�Ɛ���܂��B"
f_keys "{DOWN}","{LEFT}","{UP}","{UP}","{UP}","{UP}"
f_speak "2700�̉E�ӂ�?WN.XKEY?�̓v���O�����̓ǂݏo�����ɓ��e�Œu�������̂ŁA2200��SYSTEM_JOB�̐擪���h�b�g�̃f�[�^���̓��e�����ӂɓ]������܂��B"
f_speak "2900�̃A���h�h�b�g�Ŏn�܂�f�[�^����PROGRAM�C�R�[���Ő錾�����e�[�u�����ł��B"
f_speak "3000��SET���̃v���X�L���͕������������܂��B"
f_speak "3300��SET�C�R�[���ŕ��������͏o���܂��B"
f_speak "3400��TITLE�C�R�[����S_CMD�̃^�C�g�����𑀍�ɂ��܂��B"
f_speak "3500��MESAGE�C�R�[���ő�����͎��ɉ�ʂ̂Q���傤�ڂ��̃��b�Z�[�W��\�����܂��B"
f_speak "3600�ȍ~�͑���̓��͌�Ɏ��s����܂��B"
f_speak "3600��_DATA@COUNT��_DATA�͌��ݏ�������.S_CMD�̈Ӗ��Ł�COUNT�͂��̕��������Ӗ����܂��B"
f_speak "3800��SPLIT_CHAR���߂�.S_CMD�̓��e���󔒒P�ʋ�؂��WN�h�b�g�̌�ɂP����̘A�Ԃ��t�������O�ɓ]������܂��B"
f_speak "4000��IF�̂悤�ɃJ���}�ŋ�؂ĕ����̏��������������Ŕ���o���܂��B"
f_speak "4000��IF�̃J���}��؂̏����ł͍��ӂ��ȗ�����ƈ�̍��ӂƓ����ɐ���܂��B"
f_speak "�v���O�����͂܂��悪����܂����A���܂Ő��������悤�Ɉ��͏��S�҂ł����ƂȂ��킩��Ǝv���܂��A������Ȃ��_�͕��@���Ŋm�F����Ή��Ƃ�������͂��ł��̂ŁA��ǂ��Ă݂Ă��������B"
f_speak "�C���X�g�[������Ă���v���O�����͌��\�F�X�ȏ������s���Ă���̂ŁA�V�X�e�����̎Q�l�ɂȂ�܂��B"
}
# read-host "pause"