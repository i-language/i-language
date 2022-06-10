@echo off
call notepad readme37.txt
XCOPY /I /K /V /Y readme37.tx* c:\Inetpub\wwwroot
