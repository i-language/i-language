@ECHO OFF
CALL _BEGIN.BAT
REM SET I_PACKAGE_DIR=%USERPROFILE%\.nuget\packages
rem REM SET I_DLL_I=/d:I /r:%I_PACKAGE_DIR%\ibm.data.db2.core-lnx\1.3.0.100\lib\netstandard2.0\IBM.Data.DB2.Core.dll
rem SET I_DLL_I=/d:I /r:%I_PACKAGE_DIR%\ibm.data.db2\10.0.5.5\lib\net451\IBM.Data.DB2.dll
rem SET I_DLL_O=/d:O /r:%I_PACKAGE_DIR%\oracle.manageddataaccess.core\2.19.70\lib\netstandard2.0\Oracle.ManagedDataAccess.dll
rem SET I_DLL_O=/d:O /r:%I_PACKAGE_DIR%\\odp.oracle.dataaccess.x64\4.121.2\lib\net40\Oracle.DataAccess.dll
rem SET I_DLL_L=/d:L /r:%I_PACKAGE_DIR%\mysqlconnector\0.69.3\lib\netstandard2.0\MySqlConnector.dll
rem SET I_DLL_L=/d:L /r:%I_PACKAGE_DIR%\\mysql.data\8.0.20\lib\net48\MySql.Data.dll
rem SET I_DLL_L=/d:L /r:%I_PACKAGE_DIR%\mysqlconnector\0.69.3\lib\net471\MySqlConnector.dll
rem SET I_DLL_P=/d:P /r:%I_PACKAGE_DIR%\npgsql\4.1.3.1\lib\netstandard2.0\Npgsql.dll
rem SET I_DLL_P=/d:P /r:%I_PACKAGE_DIR%\npgsql\4.1.3.1\lib\net461\Npgsql.dll
rem SET I_PACKAGE_MONO=%I_DLL_I% %I_DLL_L%  %I_DLL_O%  %I_DLL_P%
SET I_PACKAGE_DIR=..\i-download
SET I_DLL_I=-d:I        -r:%I_PACKAGE_DIR%\IBM.Data.DB2.dll
SET I_DLL_O=-d:O -d:ODP -r:%I_PACKAGE_DIR%\Oracle.DataAccess.dll
SET I_DLL_L=-d:L        -r:%I_PACKAGE_DIR%\MySql.Data.dll
SET I_DLL_P=-d:P        -r:%I_PACKAGE_DIR%\Npgsql.dll
SET I_PACKAGE_MONO=%I_DLL_I% %I_DLL_L%  %I_DLL_O%  %I_DLL_P%
