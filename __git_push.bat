@echo off
ECHO GIT PUSH を実行します。
PAUSE
IF EXIST __FIND.TMP      ERASE __FIND.TMP
IF EXIST __00_BACKUP.TMP ERASE __00_BACKUP.TMP
git add .
git commit -m "%DATE%"
rem git push -u origin main
git push --all origin
pause