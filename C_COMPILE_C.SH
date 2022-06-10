# WSLでLINUX用CPPコンパイル
# $1=CURRENT_DIR $2=qmake $3=PRO_FIlE 4=LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$4 
cd $1
rm *.o moc_*.cpp 2>null
$2 $3
make -j6 >null
rm *.o moc_*.cpp 2>null
