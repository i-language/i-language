#!/bin/sh
if test ! -f SETUP.SH ;then
   if test ! -d i-language ;then
      echo i-language DIR NOT FOUND
      read R 
      exit
   fi
   cd i-language  
fi
sh SETUP.SH JA JAVA
