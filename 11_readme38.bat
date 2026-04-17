@echo off
call notepad readme38.txt
XCOPY /I /K /V /Y readme38.tx* c:\Inetpub\wwwroot
