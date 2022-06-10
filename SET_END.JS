// SERVER STARTUP CREATE 
// SET_END.JS  0=I_VER 1=LANG 2=TIMEOUT_CONNECT/TIMEOUT_SQL 3=ENV_FILE 4=MENU 5="TITLE" 6=I_FRAMEWORK
//*****( SHORTCUT )*****
function SHORTCUT(WS,I_SF,I_PATH,I_FILE,I_ARG,I_NAME)
{DIR=WS.SpecialFolders(I_SF);
var CS=WS.CreateShortcut(DIR+"\\"+I_NAME+".LNK");
CS.Description=I_NAME;CS.TargetPath=I_PATH+I_FILE;
CS.Arguments=I_ARG;CS.WorkingDirectory=I_PATH+"TMP";
CS.Save();
}
var A=WScript.Arguments;
if(1<A.Length)
{var F="D";
if(6<A.Length)F=A(6);
//*****( SHORTCUT )*****
var WS=WScript.CreateObject("WScript.Shell");;
SHORTCUT(WS,"AllUsersStartup","%SYSTEMDRIVE%\\I\\","BIN"+A(0)+"\\"+"IMENUW"+F+".EXE"
     ,A(1)+" "+A(2)+" "+A(3)+" "+A(4)+" REAL ZZZZZZ_ARG_SLEEP=30 ZZZZZZ_ARG_RETRY=3",A(5));
//***( I_FRAMEWORK )*****
//WRITE="HKLM\\SYSTEM\\CurrentControlSet\\control\\Session Manager\\Environment\\I_FRAMEWORK";
//WS.RegWrite(WRITE,F,"REG_EXPAND_SZ");
}