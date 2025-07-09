@ECHO On
ECHO %time%
powershell -ExecutionPolicy Bypass .\i_youtube.ps1 5 
ECHO %time%
::IF ERRORLEVEL 0 EXIT 0
PAUSE 
 