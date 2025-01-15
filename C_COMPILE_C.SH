# WSLでLINUX用CPPコンパイル
# (OLD)$1=CURRENT_DIR $2=qmake $3=PRO_FIlE 4=LD_LIBRARY_PATH
# $1=CURRENT_DIR $2=qmake $3=PRO_FIlE $4=LOG_FILE $5=LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$4 
cd $1
rm *.o moc_*.cpp 2>/dev/null
$2 $3
#make -j6 >TMP_CPP_CMPILE_U.TXT
make >>$4 2>&1
rm *.o moc_*.cpp 2>/dev/null
