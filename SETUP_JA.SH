#!/bin/sh
if test ! -f SETUP.SH ;then
   if test ! -d i-language ;then
      echo i-language DIR NOT FOUND
      read R 
      exit
   fi
   cd i-language  
fi
echo ubuntuの場合は事前に[sudo passwd root]で
echo rootのパスワードを設定しておく必要があります。
sh SETUP.SH JA JAVA
