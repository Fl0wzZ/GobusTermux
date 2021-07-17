#!/data/data/com.termux/files/usr/bin/bash
clear

echo "
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
    |G|o|b|u|s|t|e|r| |i|n| |T|e|r|m|u|x|
    +-+-+-+-+-+-+-+-+-+-+ +-+-+ +-+-+-+-+-+-+
            +-+-+ +-+-+-+-+-+-+-+
            |b|y| |F|l|0|w|z|Z|
            +-+-+ +-+-+-+-+-+-+-+
"
cd $HOME
pkg install golang

git clone https://github.com/OJ/gobuster
cd gobuster
chmod +x *
go run main.go
cd $HOME
cd go/bin
mv gobuster /data/data/com.termux/files/usr/bin
echo "Gobuster has been sucessfully installed!"
echo "Type: gobuster to run the tool"