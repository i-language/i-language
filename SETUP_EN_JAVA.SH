#!/bin/sh
if test ! -d i-language ;then
  echo i-language DIR NOT FOUND
  read R 
  exit
fi
cd i-language  
sh SETUP.SH EN JAVA
