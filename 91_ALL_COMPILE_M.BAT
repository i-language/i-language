@ECHO OFF
REM ALL MONO COMPILE 
IF "%I_VER%"=="" CALL C_BEGIN.BAT 
CALL C_SOURCE.BAT CONT 
CALL C_COMPILE_MONO.BAT IROOT  CLIENT
CALL C_COMPILE_MONO.BAT IMENU  CLIENT
CALL C_COMPILE_MONO.BAT IPRINT CLIENT
CALL C_COMPILE_MONO.BAT ITIME  SERVER
CALL C_COMPILE_MONO.BAT ISETUP SERVER
CALL C_COMPILE_MONO.BAT ISRVC  SERVER
paue