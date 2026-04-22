@ECHO OFF
REM CREATE ZIP FILE
SET I_SET_ZIP_SW=YES
SET I_FRAMEWORK=D
CALL _BEGIN.BAT
ECHO ●1/5**( 4か所が[ %I_VER:~1% ]で有る事 )**( I_VER,_BEGIN.BAT )**
FIND "ZZZZZZ_VERSION1" SET_ETC.TXT
FIND "public readonly int VERSION1=" II_VERSION.ORG
ECHO ●2/5**( SDKの最新が[ %I_VER2SDK% ]で有る事 )**( I_VER2SDK,_BEGIN_VER2.BAT )**
DOTNET --version
ECHO ●3/5**(Desktop.Appの最新が[ %I_VER2RUN% ]で有る事 )**( I_VER2RUN,_BEGIN_VER2.BAT )**
DOTNET --list-runtimes | find "Desktop"
ECHO ●4/5**( 1か所が[ %I_VER2RUN:~0,4% ]で有る事 )**( I_VER2RUN,_BEGIN_VER2.BAT )**
ECHO                   %I_VER2NET%              ( I_VER2NET,_BEGIN_VER2.BAT ) 
ECHO ●5/5**( 4か所が[ 000%I_VER2RUN:~0,1%0%I_VER2RUN:~2,1%0%I_VER2RUN:~-2% ](.は0と見なす）で有る事 )**
FIND "ZZZZZZ_VERSION2" SET_ETC.TXT
FIND "public readonly String VERSION2_S=" II_VERSION.ORG
ECHO                                    %I_VER2%     ( I_VER2,_BEGIN_VER2.BAT )
ECHO ===============================================================================
ECHO ★これからI言語インストールファイル(%I_VER%_%I_VER2RUN%_SETUP.zip)を作ります。★
ECHO （★注意★難読化以前の初期の状態として作られます★注意★）
PAUSE
CALL C_BEGIN.BAT
IF NOT EXIST %I_HOME% MKDIR %I_HOME%
IF NOT EXIST %I_BIN%  MKDIR %I_BIN%
IF NOT EXIST %I_TMP%  MKDIR %I_TMP%
ICACLS %I_HOME% /grant:r SYSTEM:(OI)(CI)(F) /grant:r ADMINISTRATORS:(OI)(CI)(F) /grant:r %USERNAME%:(OI)(CI)(F) /grant:r EVERYONE:(OI)(CI)(R)
ICACLS %I_BIN%  /grant:r everyone:(OI)(CI)(F)
ICACLS %I_TMP%  /grant:r everyone:(OI)(CI)(F)
REM *****( BIN DELETE )*****
FOR %%J IN (SERVER_UD SERVER_WD CLIENT_UD CLIENT_WD JAVA CLIENT_UC CLIENT_WC) DO (
    IF EXIST    ..\\%I_VER%_BIN\%%J\* ERASE /Q /S ..\\%I_VER%_BIN\%%J\*>NUL
    RMDIR /Q /S ..\\%I_VER%_BIN\%%J
    MKDIR       ..\\%I_VER%_BIN\%%J
)
FOR %%J IN (WORK) DO (
  IF EXIST ..\\%I_VER%_%%J\* ERASE /Q /S ..\\%I_VER%_%%J\*>NUL
  RMDIR /Q /S ..\\%I_VER%_%%J
  MKDIR       ..\\%I_VER%_%%J
)
REM ********( 関連ファイル確認 )**************************
REM *****( II_VERSIO.ORGをII_VERSION.SRCにコピー )*****
:B0
IF NOT EXIST II_VERSION.ORG ECHO II_VERSION.ORG NOT FOUND&PAUSE&GOTO B0
COPY II_VERSION.ORG II_VERSION.SRC 
:B1
IF "%I_VER_J%"=="" ECHO I_VER_J is NULL ???? &PAUSE&GOTO B1
REM IF NOT EXIST %I_JAVAC% ECHO I_JAVAC% NOT FOUND&PAUSE&GOTO B1 
IF "%I_VER_C%"=="" GOTO SKIP-C
rem [C++当面中止]
IF "%I_VER_C%"=="" ECHO I_VER_C is NULL ???? &PAUSE&GOTO B1
IF NOT EXIST %I_QMAKE_W% ECHO %I_QMAKE_W% NOT FOUND&PAUSE&GOTO B1
WSL if test -f %I_QMAKE_U% ;then echo OK;fi > %I_TMP%\I_EXE.TMP
FIND "OK" %I_TMP%\I_EXE.TMP >NUL
IF ERRORLEVEL 1 ECHO %I_QMAKE_U% FILE NOT FOUND&PAUSE&GOTO B1 
:SKIP-C
REM ********( ISOURCE コンパイル )**************************
CALL ISOURCE.BAT SET_ZIP
REM ********( コンパイル )**************************
ECHO I_SET_ZIP_SW=%I_SET_ZIP_SW%
CALL 90_ALL_COMPILE.BAT CONT
REM ********( 不要ファイルを削除 )*************************
IF EXIST *~     ERASE *~>NUL 
IF EXIST *.TMP  ERASE *.TMP >NUL
REM ********( インストール環境作成 )**************************
REM IF NOT EXIST  ..\%I_VER%_ZIP MKDIR ..\%I_VER%_ZIP
SET I_ZIP=%I_VER%_%I_VER2RUN%_SETUP
SET I_TMP_ZIP=%I_TMP%\%I_ZIP%
IF EXIST %I_TMP_ZIP% RMDIR /S /Q %I_TMP_ZIP%
MKDIR    %I_TMP_ZIP%
%I_XCOPYF%  ..\i-download\*.jar                %I_TMP_ZIP%\i-download
%I_XCOPYD%  ..\i-download\obfuscar             %I_TMP_ZIP%\i-download\obfuscar
%I_XCOPYF%  ..\i-language\*.*                  %I_TMP_ZIP%\%i-language 
%I_XCOPYD%  ..\%I_VER%_BIN                     %I_TMP_ZIP%\%I_VER%_BIN 
%I_XCOPYF%  ..\i-language\SETUP_JA.*           %I_TMP_ZIP% 
%I_XCOPYF%  ..\i-language\VERSIONUP_JA.*       %I_TMP_ZIP% 
%I_XCOPYF%  ..\i-language\ALTER_PASSWORD_JA.*  %I_TMP_ZIP% 
%I_XCOPYF%  ..\i-language\利用者向け説明書.*   %I_TMP_ZIP% 
REM ********( 難読化ファイル削除 )**************************
IF EXIST %I_TMP_ZIP%\i-language\II_OBFUSCATE.OBFUSCATE ERASE /Q %I_TMP_ZIP%\i-language\II_OBFUSCATE.OBFUSCATE
REM ********( buildファイル削除 )**************************
IF EXIST %I_TMP_ZIP%\i-language\--SELF-CONTAINED.TXT ERASE /Q %I_TMP_ZIP%\i-language\--SELF-CONTAINED.TXT
REM ********( %I_TMP_ZIP%.zipのzip圧縮ファイル作成  )**************************
IF EXIST %I_TMP_ZIP%.zip ERASE %I_TMP_ZIP%.zip >NUL
REM *********(　I言語で圧縮するので該当ファイルコピー )***
%I_XCOPYD%  ..\%I_VER%_BIN\CLIENT_WD\*.* %I_BIN%
%I_XCOPYF%  I_*.ICO                      %I_BIN%
%I_XCOPYF%  I_LANG_??_W.TXT              %I_BIN%
rem :OK
REM *********(　ZPIファイル作成 )***
%I_BIN%\IMENUW%I_FRAMEWORK%.EXE SET_ZIP.TXT dir=%I_ZIP%
REM COPY %I_TMP_ZIP%.zip ..\%I_VER%_ZIP\ 
COPY %I_TMP_ZIP%.zip ..\ 
REM ********( I言語ホームページへコピー）
REM FOR %%J IN (..\sitemix) DO (
FOR %%J IN (..\XREA) DO (
    IF EXIST %%J COPY %I_TMP_ZIP%.zip %%J
)
RMDIR /S /Q %I_TMP_ZIP%
PAUSE
