@ECHO OFF
ECHO INSTALL先は　C:\Qtx.x.x 及び　/home/ubuntu/Qtx.x.x　
ECHO WINDOWSは　mingw を ubuntu は　Desktopのみをインストール　
START "" \software\_install\qt-unified-windows-x86-online.exe
START "" wsl /mnt/d/software/_linux/qt-unified-linux-x64-online.run
PAUSE