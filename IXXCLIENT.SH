#REM I-CILENT.SH 1=I_VERSION 2=DB 3=LANG 4=TIMEOUT_CONNECT/SQL 5=file 6=menu 7=TITLE 8=FREAMWORK 9=JDBC
#OLD REM I-CILENT.SH 1=I_VERSION 2=PATH 3=DB 4=LANG 5=TIMEOUT_CONNECT/SQL 6=file 7=menu 8=TITLE 9=JDBC
umask 0000
if test "$8" = "" ;then echo ['$8'=] BAD END;exit 1;fi
if test -f /home/I/BIN$1/$5 -a `whoami` != "root";then
  ls="$HOME/Desktop $HOME/デスクトップ"
else
  if test `whoami` != "root" 
     then echo su -c \"sh $0\" root;su -c "sh $0 $*" root;exit 0;fi 
  ls="/root/Desktop /home/*/Desktop /home/*/デスクトップ /root/デスクトップ"
  if test ! -d /home/I      ;then mkdir /home/I;fi
  if test ! -d /home/I/TMP  ;then mkdir /home/I/TMP;fi
  if test ! -d /home/I/BIN$1;then mkdir /home/I/BIN$1;fi
fi
cp -r BIN$1/*.*   /home/I/BIN$1
cp -r BIN$1$8/*.* /home/I/BIN$1
cp -r CLIENT/$5   /home/I/BIN$1
chmod 777 /home/I/TMP
chmod 777 /home/I/BIN$1
chmod 777 /home/I/BIN$1/*.*

# Oracle Run     
#oracle=""
#grep '^.*	.*	.*	O1.*	.*	.*	.*	.*	.*$' /home/I/BIN$1/$5 >/dev/null
#if test $? = 0;then
#  oracle=/usr/lib/oracle/xe/app/oracle/product/10.2.0/client/lib 
#fi
for i in `ls $ls -d 2>/dev/null` 
do
#  fl=$i/$7
#  echo '#!/bin/sh'>$fl
#  echo 'export MONO_MWF_SCALING=disable'>>$fl
#  echo 'umask 0000'>>$fl
#  if test "$oracle" != "";then
#     echo export LD_LIBRARY_PATH=$oracle>>$fl
#  fi
#  echo "java -cp /home/I/BIN$1/purejavacomm.jar:/home/I/BIN$1/jna.jar:/home/I/BIN$1/IJAVA.jar:/home/I/BIN$1/$9 imenu_l $3 $4 $5 $6">>$fl
#  chmod 777 $fl
  fl=$i/$7.desktop
 echo "[Desktop Entry]">$fl
 echo "Name=$7">>$fl
 if test "$8" = "D" ; then i_exec="mono /home/I/BIN$1/IMENUUD.EXE" ;fi
 if test "$8" = "J" ; then i_exec="java -cp /home/I/BIN$1/purejavacomm.jar:/home/I/BIN$1/jna.jar:/home/I/BIN$1/IJAVA.jar:/home/I/BIN$1/$9 imenu_l" ;fi
 if test "$8" = "C" ; then i_exec="/home/I/BIN$1/IMENUUC" ;fi
 echo "Exec= $i_exec $3 $4 $5 $6">>$fl
 echo "Icon=/home/I/BIN$1/I_MENU.ICO">>$fl
#echo "StartupNotify=true">>$fl
 echo "Terminal=false">>$fl
 echo "Type=Application">>$fl
 chmod 777 $fl
done
