# WSLでIMTESTUD.exe実行
export name=IMTEST
cp -r  /mnt/d/HARASAWA/I38_WORK/bin/Release/net10.0/linux-x64/* /home/I/BINI38 
cp     /mnt/c/I/BINI38/I_*.* /home/I/BINI38 
dotnet /home/I/BINI38/${name}UA.dll JA 30/600 I_NOBUMICHI-PC_I38ORG.I ZZZZ