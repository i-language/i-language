@ECHO OFF
SET DRV=F
SET DIR=\HARASAWA-BACKUP
SET ARG=/MIR /DCOPY:DAT /NS /NC /NP /NDL /NFL /NJH /NJS /R:10 /W:10
SET TMP=__00_BACKUP_%DRV%.TMP
:LOOP1
IF NOT EXIST %DRV%:%DIR% ECHO *(ERROR)* %DRV%:%DIR% NOT FOUND&PAUSE&GOTO LOOP1
REM *****( BACKUP )****
@ECHO ON
ERASE /Q /S D:\HARASAWA\I37_WORK\*.* >NUL
ERASE /Q     __*.TMP >NUL
ERASE /Q  ..\__*.TMP >NUL
ECHO %DATE%>   __00_BAKUP_%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%.TMP
ECHO %DATE%>..\__00_BAKUP_%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%.TMP
ROBOCOPY D:\HARASAWA\                            %DRV%:%DIR%                          %ARG%>%TMP%             
ROBOCOPY D:\HARASAWA\i-language                  %DRV%:\i-language_BACKUP_%DATE:~5,2% %ARG%>>%TMP%             
IF EXIST %DRV%:\i-language_BACKUP_B5 RMDIR /S /Q %DRV%:\i-language_BACKUP_B5 
IF EXIST %DRV%:\i-language_BACKUP_B4 MOVE  /Y    %DRV%:\i-language_BACKUP_B4 %DRV%:\i-language_BACKUP_B5 
IF EXIST %DRV%:\i-language_BACKUP_B3 MOVE  /Y    %DRV%:\i-language_BACKUP_B3 %DRV%:\i-language_BACKUP_B4 
IF EXIST %DRV%:\i-language_BACKUP_B2 MOVE  /Y    %DRV%:\i-language_BACKUP_B2 %DRV%:\i-language_BACKUP_B3 
IF EXIST %DRV%:\i-language_BACKUP_B1 MOVE  /Y    %DRV%:\i-language_BACKUP_B1 %DRV%:\i-language_BACKUP_B2 
ROBOCOPY D:\HARASAWA\i-language                  %DRV%:\i-language_BACKUP_B1 %ARG%>>%TMP%
ROBOCOPY %SystemDrive%\inetpub\wwwroot\          %DRV%:\wwwroot-BACKUP       %ARG%>>%TMP%
ROBOCOPY %USERPROFILE%\Documents\‚Í‚ª‚«ì‰Æ\     %DRV%:\‚Í‚ª‚«ì‰Æ-BACKUP    %ARG%>>%TMP%
ROBOCOPY D:\software\_fujitsu\                   %DRV%:\_fujitsu-BACKUP      %ARG%>>%TMP%
ROBOCOPY %USERPROFILE%\Desktop\                  %DRV%:\Desktop-BACKUP       %ARG%>>%TMP%
TYPE %TMP%
PAUSE
