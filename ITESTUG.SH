# WSLでITESTUG実行
export i_name=ITESTUG
cp -r  /mnt/d/HARASAWA/I38_WORK/bin/Release/net10.0/linux-x64/* /home/I/BINI38 
cp     /mnt/c/I/BINI38/*.* /home/I/BINI38 
cp     /mnt/d/System.Private.CoreLib.dll /home/I/BINI38
dotnet /home/I/BINI38/${i_name}.dll 