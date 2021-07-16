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
echo "Checking if git is installed..."
if [ -f /data/data/com.termux/files/usr/bin/git ]
	then
		echo "Git has already installed!"
	else
		echo "Git is not installed!"
		pkg install git
fi
echo "Checking if golang is installed..."
if [ -f /data/data/com.termux/files/usr/bin/git ]
        then
                echo "Golang has already installed!"
        else
		echo "Golang is not installed!"
                pkg install golang
fi

git clone https://github.com/OJ/gobuster
cd gobuster
chmod +x *
go run main.go
cd $HOME/go/bin
mv gobuster /data/data/com.termux/files/home/gobuster
echo "Gobuster is installed in gobuster dir run ./gobuster"
