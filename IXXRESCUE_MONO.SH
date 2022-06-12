#!/bin/sh
i_ver=${0%RESCUE_MONO.SH}
i_ver=${i_ver#./}
if test `whoami` != "root" ;then 
   echo su -c \"sh $0\" root;su -c "sh $0" root;exit 0
fi 
export MONO_MWF_SCALING=disable
umask 0000
# export LD_LIBRARY_PATH=/usr/lib/oracle/xe/app/oracle/product/10.2.0/client/lib
mono /home/I/BIN${i_ver}/IMENUU4.EXE JA 30/600/TRACE ${i_ver}RESCUE.TXT

