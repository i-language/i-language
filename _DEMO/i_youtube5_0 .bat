@ECHO On
ECHO %time%
powershell -ExecutionPolicy Bypass .\i_youtube5.ps1 0 
ECHO %time%
::IF ERRORLEVEL 0 EXIT 0
PAUSE 
 