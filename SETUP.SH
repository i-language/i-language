#!/bin/sh
# $1=JA,EN $2=CS,JAVA $3=whoami 
I_VER=I37
I_HOME=/home/I
I_BIN=${I_HOME}/BIN$I_VER
I_TMP=${I_HOME}/TMP
umask 0000
if test "$2" = "JAVA";then
#      do
      if test ! -f ../i-download/purejavacomm.jar;then echo ../i-download/purejavacomm.jar FILE NOT FOUND;read w;exit 9;fi
      if test ! -f ../i-download/jna.jar         ;then echo ../i-download/jna.jar FILE NOT FOUND;read w;exit 9;fi
#      done
fi
if test "$1" = "";then echo "$1" is NULL ERROR;read w;exit 9;fi
whoami=`whoami`
if test "$whoami" != "root";then
   echo su -c \"sh $0\" root;su -c "sh $0 $* $whoami" root;exit 0;fi 
groupadd i_group
if test "$3" != "";then usermod -a -G i_group $3;fi  
for i in $I_HOME $I_BIN $I_TMP
   do 
   if test ! -r $i;then
      mkdir $i
      if test ! $? = 0;then echo mkdir $i ERROR;read w;exit 9;fi 
      chmod 777 $i
      chgrp i_group $i
   fi
   done
chmod 775 $I_HOME
chmod 777 *.SH
#cp ..\${I_VER}_BIN_SERVER_UD\*.* $I_BIN
cp I_*.ICO       $I_BIN
cp I_LANG??U.TXT $I_BIN
if test "$2" = "JAVA";then
#      do
      cp ../${I_VER}_BIN/JAVA/*.*       $I_BIN
      cp ../i-download/*.jar            $I_BIN
#      cp ../i-download/purejavacomm.jar $I_BIN
#      cp ../i-download/jna.jar          $I_BIN
#      done
else
#      do
      cp ../${I_VER}_BIN/CLIENT_UD/*.* $I_BIN
#      done
fi
if test "$2" = "JAVA";then
  java -cp $I_BIN/purejavacomm.jar:$I_BIN/jna.jar:$I_BIN/IJAVA.jar imenu_l $1 30/600 SET_I.TXT SET_JAVA.TXT
# java -cp $I_BIN/purejavacomm.jar:$I_BIN/jna.jar:$I_BIN/IJAVA.jar imenu_l $1 30/600 SET_I.TXT SET_BEGIN.TXT SET_DB_P.TXT SET_DB_M.TXT SET_DB_I.TXT SET_DB_O.TXT SET_DB_L.TXT SET_END.TXT
else 
  mono $I_BIN/IMENUU4.EXE $1 30/600 SET_I.TXT SET_BEGIN.TXT SET_DB_P.TXT SET_DB_M.TXT SET_DB_I.TXT SET_DB_O.TXT SET_DB_L.TXT SET_END.TXT
fi
read w
