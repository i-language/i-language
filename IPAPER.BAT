@echo on
if "%1"=="" CALL C_SOURCE.BAT
CALL C_COMPILE_D.BAT IPAPER 
@echo on
SET src=..\%I_VER%_WORK\ipaper_l.java ..\%I_VER%_WORK\ii_z_l.java ..\%I_VER%_WORK\ii_zz_l.java ..\%I_VER%_WORK\ii_write_l.java ..\%I_VER%_WORK\ii_read_l.java  ..\%I_VER%_WORK\ii_version_l.java
%I_JAVAC% -encoding utf-8 -Xlint:unchecked -d %I_TMP% %src% 2>%I_TMP%\IPAPER0.TXT
if errorlevel 1 notepad %I_TMP%\IPAPER0.TXT & pause
%I_BIN%\IPAPERWD.exe %I_TMP%\IPAPER1.TXT  
%I_JAVA%\java.exe %I_TMP%\ipaper_l %I_TMP%\IPAPER1.TXT %I_TMP%\IPAPER.TXT
notepad %I_TMP%\IPAPER.TXT
:FIN
PAUSE
