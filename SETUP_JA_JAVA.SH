#!/bin/sh
II_VER=I37
if test ! -d ${II_VER}_SRC ;then
  echo ${II_VER}_SRC DIR NOT FOUND
  read R 
  exit
fi
cd ${II_VER}_SRC  
sh SETUP.SH JA JAVA
