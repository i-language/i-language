#!/bin/sh
i_ver=${0%ADD_MONO.SH}
i_ver=${i_ver#./}
i_ver_lower=`echo $i_ver | tr 'I' 'i'`
### BEGIN INIT INFO                                                          
# Provides:       isrvcx_mono                                                       
# Required-Start: $network $remote_fs $syslog                                
# Should-Start:   cupsd winbind nmb                                          
# Required-Stop:  $network $remote_fs $syslog                                
# Should-Stop:    cupsd winbind nmb                                          
# Default-Start:  3 5                                                        
# Default-Stop:   0 1 2 6                                                    
# Description:    I Language                       
### END INIT INFO                  
case "$1" in
  start)
      echo "${i_ver_lower}srvcx_mono Start"
      umask 000
      iptables=/usr/sbin/iptables
      if test ! -f $iptables ;then iptables=/sbin/iptables;fi
      $iptables -L | grep 'tcp dpt:65432' > /dev/null
      if test $? != 0 ;then $iptables -I INPUT -p tcp -m tcp --dport 65432 -j ACCEPT ;fi
      $iptables -L | grep 'udp dpt:65499' > /dev/null
      if test $? != 0 ;then $iptables -I INPUT -p udp -m udp --dport 65499 -j ACCEPT ;fi
      mono /home/I/BIN$i_ver/ISRVCUD.EXE &
     #java -cp /home/I/BIN$i_ver/purejavacomm.jar:/home/I/BIN$i_ver/jna.jar:/home/I/BIN$i_ver/IJAVA.jar isrvc_l &
      ;;
  stop)
      PID=`ps ax | grep "mono /home/I/BIN$i_ver/ISRVCUD.EXE" | grep -v grep | awk '{print$1}'`
      if test ! "$PID" = "";then
         echo "${i_ver_lower}srvcx_mono Stop PID=" $PID
         kill -9 $PID
      fi
      ;;
  status)
      PID=`ps ax | grep "mono /home/I/BIN$i_ver/ISRVCUD.EXE" | grep -v grep | awk '{print$1}'`
      if test ! "$PID" = "";then echo "${i_ver_lower}srvcx_mono Run PID=" $PID
      else echo "${i_ver_lower}srvcx_mono not start"
      fi
      ;;
  restart)
      $0 stop
      $0 start
      ;;
  *)
      echo $"Usage: $0 {start|stop|restart|status}"
      exit 1
      ;;
esac
exit 0
