#!/bin/sh
i_ver=${0%RESCUE_JAVA.SH}
i_ver=${i_ver#./}
if test `whoami` != "root" ;then
   echo su -c \"sh $0\" root;su -c "sh $0" root;exit 0
fi 
export MONO_MWF_SCALING=disable
umask 0000
java -cp /home/I/BIN${i_ver}/purejavacomm.jar:/home/I/BIN${i_ver}/jna.jar:/home/I/BIN${i_ver}/IJAVA.jar imenu_l JA 30/600/trace ${i_ver}RESCUE.TXT

