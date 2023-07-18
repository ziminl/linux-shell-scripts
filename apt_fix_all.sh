sudo rm /etc/apt/trusted.gpg
sudo rm /etc/apt/trusted.gpg.d/*
sudo apt-key update
sudo apt clean

sudo apt update -y
echo "sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys <key_number>"

echo "cat sources.list"
cat /etc/apt/sources.list

dir /etc/apt/sources.list.d/ 

sudo apt upgrade -y


