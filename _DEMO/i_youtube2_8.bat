@ECHO On
ECHO %time%
powershell -ExecutionPolicy Bypass .\i_youtube2.ps1 8 
ECHO %time%
::IF ERRORLEVEL 0 EXIT 0
PAUSE 
 