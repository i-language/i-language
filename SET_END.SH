#REM SET_END.SH HARASWA $1=I_VER $2=SYSTEM $3=OS $4=LANG $5=PARAM $6=CFG_FILE $7=password_admin,/( $8=PATH) $8($9)=FRAMEWORK $9($10)=JDBC 
umask 000
if test "$3" = "";then exit 9;fi
#dd=$8 
I_VER=$1
I_HOME=/home/I
I_SYSTEM_DIR=$I_HOME/I.$2
file=$I_HOME/TMP/SETUP_$2_END.TXT
for i in $I_HOME $I_HOME/SHARE $I_HOME/SHARE/MESSAGE $I_SYSTEM_DIR  $I_SYSTEM_DIR/BAT
   do
   if test ! -d $i;then
      mkdir         $i 2>>$file
      chmod 775     $i
      chgrp i_group $i
   fi
   done
for i in DATA TMP
    do
    for j in REAL TEST
       do
      if test ! -d     $I_SYSTEM_DIR/${i}_$j;then
         mkdir         $I_SYSTEM_DIR/${i}_$j 2>>$file
         chmod 770     $I_SYSTEM_DIR/${i}_$j
         chgrp i_group $I_SYSTEM_DIR/${i}_$j
      fi
      done
    done
for i in 1 2 3 4 5 6 7 8 9
   do
   if test ! -d     $I_SYSTEM_DIR/DATA_OLD${i}_REAL;then
      mkdir         $I_SYSTEM_DIR/DATA_OLD${i}_REAL 2>>$file
      chmod 770     $I_SYSTEM_DIR/DATA_OLD${i}_REAL
      chgrp i_group $I_SYSTEM_DIR/DATA_OLD${i}_REAL
    fi
   done
# ===HOME===
#cp ${I_VER}RESCCUE.*    $I_HOME 
cp IXXUNINSTALL.TXT     $I_HOME/${I_VER}UNINSTALL.TXT 
cp IXXUNINSTALL_JAVA.SH $I_HOME/${I_VER}UNINSTALL_JAVA.SH 
cp IXXUNINSTALL_MONO.SH $I_HOME/${I_VER}UNINSTALL_MONO.SH 
#cp ${I_VER}SRVC*.SH      $I_HOME 
# ===SERVER==== 
cp *ZBACKUP $I_HOME/I.$1/BAT 
cp *ZCPTR   $I_HOME/I.$1/BAT 
cp *ZETC    $I_HOME/I.$1/BAT 
cp *ZTIME   $I_HOME/I.$1/BAT 
# ====SHARE====
cp IXXCLIENT.SH                  $I_HOME/SHARE/LINUX/CLIENT${I_VER}CLIENT.SH 
cp CONVERT.TX?                   $I_HOME/SHARE/LINUX/CLIENT 
cp $I_HOME/TMP/$6*               $I_HOME/SHARE/LINUX/CLIENT 
cp I.IC?                         $I_HOME/SHARE/LINUX/BIN${I_VER} 
cp I_LANG??U.TXT                 $I_HOME/SHARE/LINUX/BIN${I_VER} 
cp ../${I_VER}_BIN/CLIENT_UD/*.* $I_HOME/SHARE/LINUX/BIN${I_VER}D 
cp ../${I_VER}_BIN/JAVA/*.*      $I_HOME/SHARE/LINUX/BIN${I_VER}J 
cp ../i-download/*.ar            $I_HOME/SHARE/LINUX/BIN${I_VER}J 
cp ../${I_VER}_BIN/CLIENT_UC/*.* $I_HOME/SHARE/LINUX/BIN${I_VER}C 

cp IXXCLIENT.BAT                 $I_HOME/SHARE/WINDOWS/CLIENT\${I_VER}CLIENT.BAT 
cp IXXCLIENT.JS                  $I_HOME/SHARE/WINDOWS/CLIENT/${I_VER}CLIENT.JS 
cp CONVERT.TX?                   $I_HOME/SHARE/WINDOWS/CLIENT 
cp $I_HOME/TMP/$6*               $I_HOME/SHARE/WINDOWS/CLIENT 
cp I.IC?                         $I_HOME/SHARE/WINDOWS/BIN${I_VER} 
cp I_LANG??W.TXT                 $I_HOME/SHARE/WINDOWS/BIN${I_VER} 
cp ../${I_VER}_BIN/CLIENT_WD/*.* $I_HOME/SHARE/WINDOWS/BIN${I_VER}D 
cp ../${I_VER}_BIN/JAVA/*.*      $I_HOME/SHARE/WINDOWS/BIN${I_VER}J 
cp ../i-download/*.jar           $I_HOME/SHARE/WINDOWS/BIN${I_VER}J 
cp ../${I_VER}_BIN/CLIENT_WC/*.* $I_HOME/SHARE/WINDOWS/BIN${I_VER}C 

#cp -R $dd/I_SERVER/SHARE/*      $I_HOME/SHARE     2>> $file
chmod -R 775 $I_HOME/SHARE/*
#cp -R $dd/I_SERVER/$3/SERVICE/* $I_HOME/SERVICE   2>> $file
#chmod 775 $I_HOME/SERVICE/*
#cp    $dd/I_SERVER/$3/I*        $I_HOME           2>> $file
for i in BAT
   do 
#  cp -R $dd/I_SERVER/$3/$i/* $I_SYSTEM_DIR/$i 2>> $file
   chmod 775 $I_SYSTEM_DIR/$i/*
   done
chmod 775 $I_HOME/SHARE
chmod 775 $I_HOME/SHARE/MESSAGE  
chmod 777 $I_SYSTEM_DIR/DATA_TEST
# if test "$9" = "J";then 
#  cp $I_HOME/SHARE/LINUX/BINI$1/I$1JAVA.jar $I_HOME/SERVICE/I$1JAVA.jar 2>>$file
#  cp $I_HOME/SHARE/LINUX/BINI$1/I$1JAVA.jar $I_SYSTEM_DIR/BIN/I$1JAVA.jar   2>>$file
fi
for i in LINUX WINDOWS
   do
   cp -r $I_SYSTEM_DIR/BAT/*.I $I_HOME/SHARE/$i/CLIENT 2>>$file
   chmod 775 $I_HOME/SHARE/$i/CLIENT/*.I
   done
if test ! -r /etc/init.d/atd;then
   apt-get -y install at
fi
smb=/etc/samba/smb.conf
if test ! -f $smb;then
   apt-get -y install samba
fi
if test -f $smb;then 
   grep '^[[]I_SHARE[]]$' $smb 2>/dev/null
   if test $? = 1;then
      echo [I_SHARE] >> $smb
      echo path = $I_HOME/SHARE >> $smb
      echo read only = Yes >> $smb
      echo guest ok = Yes >> $smb
    fi 
    #NET SHARE $2.I=$I_SYSTEM_DIR/DATA_TEST /REMARK:"I_$2_TEST" 2>>$file
    grep  '^[[]I.'$2'[]]$' $smb 2>/dev/null
    if test $? = 1;then
       echo [I.$2] >> $smb
       echo path = $I_SYSTEM_DIR/DATA_TEST >> $smb
       echo read only = No >> $smb
       echo inherit acls = Yes >> $smb
       echo guest ok = Yes >> $smb
    fi
    if test -f /sbin/chkconfig;then 
       sbin/chkconfig smb on
    else
       if test -r /etc/init.d/smb   ;then /usr/lib/insserv/insserv smb;fi
       if test -r /etc/init.d/samba ;then /usr/lib/insserv/insserv samba;fi
    fi
    service smb restart
    if test $? != 0 ;then
       if test -r /etc/init.d/smb   ;then /etc/init.d/smb   restart;fi
       if test -r /etc/init.d/samba ;then /etc/init.d/samba restart;fi
    fi
fi
if test -f /sbin/chkconfig;then 
    sbin/chkconfig atd on
else  
    /usr/lib/insserv/insserv atd
fi
service atd restart
if test $? != 0 ;then /etc/init.d/atd restart;fi
if test "$8" = "J";then
  i_service=i$1srvcuj
  cp $I_HOME/I$1SRVCUJ /etc/init.d/$i_service
elif test "$8" = "C";then
  i_service=i$1srvcuc
  cp $I_HOME/I$1SRVCUC /etc/init.d/$i_service
else
  i_service=i$1srvcud
  cp $I_HOME/I$1SRVCUD /etc/init.d/$i_service
fi
chmod 775 /etc/init.d/$i_service
if test -f /sbin/chkconfig;then 
  /sbin/chkconfig $i_service on
else
  /usr/lib/insserv/insserv $i_service
fi
/etc/init.d/$i_service restart
ls -d /home/I/I.* | grep -c '^/home/I/I.' > $I_HOME/TMP/SET_END_$2.TMP
chmod 777                                   $I_HOME/TMP/SET_END_$2.TMP
############( SHIFT/1)####################################
#REM shift(1) $1=SYSTEM $2=OS $3=LANG $4=PARAM $5=CFG_FILE $6=password_admin,/ $7=PATH $8=FRAMEWORK $9=JDBC 
####shift
for i in `ls /root/.config /home/*/.config -d 2>/dev/null` 
   do
   dr=$i/autostart 
   if test ! -d $dr;then mkdir $dr;chmod 777 $dr;fi
   for j in "01" "02"
      do
#    #fl=$I_HOME/I{$I_V}SERVER_$2_$j
#    #echo '#!/bin/sh'>$fl
#    #echo 'export MONO_MWF_SCALING=disable'>>$fl
#    #echo 'umask 0000'>>$fl
#    #echo "java -cp $I_HOME/BINI$I_V/purejavacomm.jar:$I_HOME/BINI$I_V/jna.jar:$I_HOME/BINI$I_V/IJAVA.jar:$i/BIN${I_VER}/$9 imenu_l $4 $5 $6 ZZZZ0105$j REAL ZZZZZZ_ARG_SLEEP=30 ZZZZZZ_ARG_RETRY=3">>$fl
#    #chmod 777 $fl
      fl=$dr/${I_VER}SERVER_$2_$j.desktop
      echo "[Desktop Entry]">$fl
      echo "Name=${I_VER}SERVER_$1_$j">>$fl
      if test "$9" = "J";then i_exec="java -cp $I_HOME/BINI$I_V/purejavacomm.jar:$I_HOME/BINI$I_V/jna.jar:$I_HOME/BIN${I_VER}/IJAVA.jar:$I_HOME/BINI$I_V/$9 imenu_l"
      else                    i_exec="mono $I_HOME/BIN${I_VER}/IMENUU4.EXE";fi
      echo "Exec=$i_exec $4 $5 $6 ZZZZ0105$j REAL ZZZZZZ_ARG_SLEEP=30 ZZZZZZ_ARG_RETRY=3">>$fl
#    #echo "StartupNotify=true">>$fl
      echo "Terminal=false">>$fl
      echo "Type=Application">>$fl
      chmod 777 $fl
      done
   done
if test "$7"  != "/";then 
  echo export PASSWORD=$7 > $I_SYSTEM_DIR/ZZZZZZPASSWORD
  chmod 770 $I_SYSTEM_DIR/ZZZZZZPASSWORD
fi
