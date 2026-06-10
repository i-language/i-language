# WSLでLINUX用CPPコンパイル
# OLD $1=CURRENT_DIR $2=qmake $3=PRO_FIlE $4=LOG_FILE $5=LD_LIBRARY_PATH
# $1=CURRENT_DIR $2=PRO_FIlE $3=LOG_FILE $4=CMAKE_PRIFIX_PATH
#export LD_LIBRARY_PATH=$4 
cd $1
cp $2 CMakeLists.txt
#CMAKE_PREFIX_PATH=$4
#export Qt6_DIR=$4/lib/cmake/Qt6
if test -d BUILD ;then rm -r BUILD ;fi
mkdir BUILD
cd   BUILD
echo $4>>../$3
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=$4 >> ../$3 2>&1
cmake --build  .                                           >> ../$3 2>&1
#make -j6 >>$4 2>&1
cd ../
#rm *.o moc_*.cpp 2>/dev/null
#$2 $3
#make -j6 >TMP_CPP_CMPILE_U.TXT
#make >>$4 2>&1
#rm *.o moc_*.cpp 2>/dev/null
