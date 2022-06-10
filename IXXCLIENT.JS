// CLIENT SETUP BATCH FILE
// CILENTJS.JS  0=I_VER 1=LANG 2=TIMEOUT_CONNECT/TIMEOUT_SQL 3=ENV_FILE 4=MENU 5=TITLE 6=FRAMEWORK 7=JDBC 8=DESKTOP,ALLUSERSDESKTOP
//*****( SHORTCUT )*****
function SHORTCUT(WS,I_SF,I_PATH,I_PROGRAM,I_ARG,I_NAME)
{DIR=WS.SpecialFolders(I_SF);
var CS=WS.CreateShortcut(DIR+"\\"+I_NAME+".LNK");
CS.Description=I_NAME;CS.TargetPath=I_PROGRAM;
CS.Arguments=I_ARG;CS.WorkingDirectory=I_PATH+"TMP";
CS.Save();
}
var A=WScript.Arguments;
if(1<A.Length)
{
//var F="4";
//if(6<A.Length)F=A(6);
//*****( SHORTCUT )*****
var WS=WScript.CreateObject("WScript.Shell");
if(A(8)=="DESKTOP")SF=Array("Desktop");
else               SF=Array("AllUsersDesktop","AllUsersStartMenu");
for(S in SF)
  {var PATH1="%SYSTEMDRIVE%\\I\\";
   var PATH2=PATH1+"BIN"+A(0)+"\\";
   var PROGRAM=PATH2+"IMENUW"+A(6)+".exe";
   var ARG=A(1)+" "+A(2)+" "+A(3)+" "+A(4);
  if(A(6)=="J")
    {PROGRAM="javaw.exe";
     ARG="-cp "+PATH2+"purejavacomm.jar;"+PATH2+"jna.jar;"+PATH2+A(7)+";"+PATH2+"IJAVA.jar imenu_l "+ARG;
    }
   SHORTCUT(WS,SF[S],PATH1,PROGRAM,ARG,A(5));
  }
//*****( REGISTRY )*****
//WRITE="HKLM\\SYSTEM\\CurrentControlSet\\control\\Session Manager\\Environment\\Path";
//READ="HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\App Paths\\";
//EXE_A=Array("EXCEL.EXE","IEXPLORE.EXE");var SW=0;
//var T=WS.RegRead(WRITE);
//for(X in EXE_A)
// {try{P=WS.RegRead(READ+EXE_A[X]+"\\Path");}catch(E){continue;}
//  if(-1==T.indexOf(P)){T+=";"+P;SW=1;}
// }
//if(1==SW)WS.RegWrite(WRITE,T,"REG_EXPAND_SZ");
}
