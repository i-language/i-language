# WSLでLINUX用dotnetコンパイル
# $1=I_VER
cd ../$1_WORK
dotnet build -c Release --no-self-contained IMENUUG.csproj >> TMP_GTK_COMPILE_G.TXT
cd ../i-language