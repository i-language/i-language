@ECHO OFF
CALL C_BEGIN.BAT
if not exist ..\%I_VER%_EXE\ISOURCEW4.EXE echo ..\%I_VER%_EXE\ISOURCEW4.EXE not found (ISOURCE.BAT)&pause 
..\%I_VER%_EXE\ISOURCEW4.EXE %I_VER%
IF NOT EXIST ..\%I_VER%_EXE_MONO MKDIR ..\%I_VER%_EXE_MONO
SET monocs=%SystemDrive%\Program Files (x86)\%I_MONO%\bin\mcs
if not exist  "..\%I_VER%_dll\D-NET-%I_FIREBIRD%\FirebirdSql.Data.FirebirdClient.dll" goto skip_d
SET d=/d:D /r:"..\%I_VER%_dll\D-NET-%I_FIREBIRD%\FirebirdSql.Data.FirebirdClient.dll" 
:skip_d
if not exist  "..\%I_VER%_dll\Fujitsu.Symfoware.dll" goto skip_f
REM (ëgÇ›çûÇ›íÜé~)SET f=/d:F /r:"..\%I_VER%_dll\Fujitsu.Symfoware.dll"
:skip_f
if not exist  "%SystemDrive%\Program Files\HiRDB_TR\RT\utl\pddndp20.dll" goto skip_h 
SET h=/d:H /r:"%SystemDrive%\Program Files\HiRDB_TR\RT\utl\pddndp20.dll" /r:"%SystemDrive%\Program Files\HiRDB_TR\RT\utl\pddndpcore20.dll"
:skip_h
SET i=/r:"%I_DB2_DRV%\Program Files\IBM\SQLLIB\BIN\netf20\IBM.Data.DB2.dll"
SET l=/r:"%SystemDrive%\Program Files\MySQL\MySQL Connector Net %I_MYSQL%\Assemblies\v2.0\MySql.Data.dll"
SET o=/r:System.Data.OracleClient.dll
SET p=/r:"%I_POSTGRESQL_DRV%\Program Files\PostgreSQL\Npgsql\ms.net3.5sp1\Npgsql.dll"
SET parax=-d:MONO -r:System.Web -r:System.Management -r:System.Data -r:System.Drawing -r:System.Windows.Forms  
SET para=%parax% %d% %f% %h% %i% %l% %o% %p%  
rem CALL "%monocs%" -sdk:2 -d:MENU -out:..\%I_VER%_EXE_MONO\IMENUW2M.EXE  -t:winexe  %para% -res:imenu_l.resources -win32icon:I_MENU.ICO IMENU.CS II_*.CS
rem COPY ..\%I_VER%_EXE_MONO\%I_VER%MENUWM.* %SystemDrive%\I\BIN%I_VER%
rem CALL "%monocs%" -sdk:2 -d:PRINT  -out:..\%I_VER%_EXE_MONO\IPRINTW2M.EXE  -t:winexe %para% IPRINT.CS II_Z.CS II_READ.CS II_VERSION.CS
rem CALL "%monocs%" -sdk:2 -d:ROOT   -out:..\%I_VER%_EXE_MONO\IROOTW2M.EXE  -t:winexe %para% IROOT.CS 
rem CALL "%monocs%" -sdk:2 -d:SRVC   -out:..\%I_VER%_EXE_MONO\%I_VER%SRVCW2M.EXE  -t:exe    %para% -r:System.Configuration.Install -r:System.ServiceProcess IXSRVC.CS II_*.CS 
 
rem CALL "%monocs%" -sdk:2 -d:TIME   -out:..\%I_VER%_EXE_MONO\ITIMEW2M.EXE  -t:exe    %para% ITIME.CS  II_*.CS
rem CALL "%monocs%" -sdk:2 -d:GETURL -out:..\%I_VER%_EXE_MONO\IGETURLW2M.EXE -t:exe    %para% IGETURL.CS II_*.CS
rem CALL "%monocs%" -sdk:2 -d:TEST -out:..\%I_VER%_EXE_MONO\%I_VER%TESTW2M.EXE -t:exe  %para% IXTEST.CS II_*.CS
rem COPY ..\%I_VER%_EXE_MONO\%I_VER%TESTWM.* %SystemDrive%\temp
rem ----( Framework4 )----
if not  exist  "..\%I_VER%_dll\D-NET-%I_FIREBIRD%\FirebirdSql.Data.FirebirdClient.dll" goto skip_d4
SET d4=/d:D /r:"..\%I_VER%_dll\D-NET-%I_FIREBIRD%\FirebirdSql.Data.FirebirdClient.dll" 
:skip_d4
SET f4=%f%
SET h4=%h%
rem SET i=/r:"%I_DB2_DRV%\Program Files\IBM\SQLLIB\BIN\netf40\IBM.Data.DB2.dll"
SET im4=/r:"..\%I_VER%_dll\I-MONO4\IBM.Data.DB2.dll"
SET l4=/r:"%I_MYSQL_DRV%\Program Files (x86)\MySQL\MySQL Connector Net %I_MYSQL%\Assemblies\v4.5\MySql.Data.dll"
rem SET o4=/r:"%I_ORACLE_DRV%\oraclexe\app\oracle\product\%I_ORACLE%\server\odp.net\BIN\4\Oracle.DataAccess.dll"
SET o4=/r:System.Data.OracleClient.dll
SET p4=/r:"%I_POSTGRESQL_DRV%\Program Files (x86)\PostgreSQL\Npgsql\ms.net4.0\Npgsql.dll"
rem SET monocs4=%SystemDrive%\Program Files (x86)\%I_MONO%\bin\DMCS.BAT
SET monocs4=%SystemDrive%\Program Files (x86)\%I_MONO%\bin\mcs
rem SET para=%parax%  -r:System.IO.Compression.FileSystem.dll -r:System.IO.Compression.dll %d4% %f4% %h4% %im4% %l4% %o4% %p4%  
SET para=%parax%  -r:System.IO.Compression.FileSystem.dll  %d4% %f4% %h4% %im4% %l4% %o4% %p4%  
rem SET para=%parax%   %d4% %f4% %h4% %im4% %l4% %o4% %p4%  
CALL "%monocs4%"  -d:MENU -out:..\%I_VER%_EXE_MONO\IMENUWM4.EXE  -t:winexe  %para% -res:imenu_l.resources -win32icon:I_MENU.ICO ..\%I_VER%_WORK\IMENU.CS ..\%I_VER%_WORK\II_*.CS
COPY ..\%I_VER%_EXE_MONO\%I_VER%MENUWM4.EXE %SystemDrive%\I\BIN%I_VER%
CALL "%monocs4%"  -d:PRINT  -out:..\%I_VER%_EXE_MONO\IPRINTWM4.EXE  -t:winexe %para% ..\%I_VER%_WORK\IPRINT.CS ..\%I_VER%_WORK\II_Z.CS ..\%I_VER%_WORK\II_READ.CS ..\%I_VER%_WORK\II_WRITE.CS ..\%I_VER%_WORK\II_VERSION.CS ..\%I_VER%_WORK\II_ZZ.CS
CALL "%monocs4%"   -r:System.Windows.Forms.DataVisualization.dll -d:CHART -out:..\%I_VER%_EXE_MONO\ICHARTWM4.EXE  -t:winexe %para% ..\%I_VER%_WORK\ICHART.CS ..\%I_VER%_WORK\II_Z.CS ..\%I_VER%_WORK\II_READ.CS ..\%I_VER%_WORK\II_WRITE.CS ..\%I_VER%_WORK\II_VERSION.CS ..\%I_VER%_WORK\II_ZZ.CS ..\%I_VER%_WORK\II_CHART.CS
CALL "%monocs4%"  -d:ROOT   -out:..\%I_VER%_EXE_MONO\IROOTWM4.EXE  -t:winexe %para% ..\%I_VER%_WORK\IROOT.CS 
CALL "%monocs4%"  -d:SRVC   -out:..\%I_VER%_EXE_MONO\%I_VER%SRVCWM4.EXE  -t:exe    %para% -r:System.Configuration.Install -r:System.ServiceProcess ..\%I_VER%_WORK\IXSRVC.CS ..\%I_VER%_WORK\II_*.CS
CALL "%monocs4%"  -d:TIME   -out:..\%I_VER%_EXE_MONO\ITIMEWM4.EXE  -t:exe    %para% ..\%I_VER%_WORK\ITIME.CS  ..\%I_VER%_WORK\II_*.CS
PAUSE
