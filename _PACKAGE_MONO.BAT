@ECHO OFF
goto mono
SET I_PACKAGE_DIR=%USERPROFILE%\.nuget\packages
SET I_DLL_I=/d:I /r:%I_PACKAGE_DIR%\ibm.data.db2.core\3.1.0.600\lib\netstandard2.1\IBM.Data.DB2.Core.dll
SET I_DLL_L=/d:L /r:%I_PACKAGE_DIR%\mysqlconnector\2.3.5\lib\netstandard2.1\MySqlConnector.dll
SET I_DLL_O=/d:O /r:%I_PACKAGE_DIR%\oracle.manageddataaccess.core\3.21.130\lib\netstandard2.1\Oracle.ManagedDataAccess.dll
SET I_DLL_P=/d:P /r:%I_PACKAGE_DIR%\npgsql\8.0.2\lib\netstandard2.1\Npgsql.dll

SET I_PACKAGE_MONO=%I_DLL_I% %I_DLL_L%  %I_DLL_O%  %I_DLL_P%
exit /b
:mono
SET I_PACKAGE_DIR=..\i-download
SET I_DLL_I=-d:I -r:%I_PACKAGE_DIR%\IBM.Data.DB2.dll
SET I_DLL_L=-d:L -r:%I_PACKAGE_DIR%\MySql.Data.dll
SET I_DLL_O=-d:O -r:%I_PACKAGE_DIR%\Oracle.DataAccess.dll
SET I_DLL_P=-d:P -r:%I_PACKAGE_DIR%\Npgsql.dll
SET I_PACKAGE_MONO=%I_DLL_I% %I_DLL_L%  %I_DLL_O%  %I_DLL_P%
