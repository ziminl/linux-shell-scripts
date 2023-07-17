#!/bin/bash

if [[ $ID == "debian" || $ID == "ubuntu" || $ID == "linuxmint" ]]; then
    echo "Debian-based"
elif [[ $ID == "fedora" || $ID == "centos" || $ID == "rhel" || $ID == "rocky" ]]; then
    echo "script is for debian ubuntu mint"
else
    echo "other. cant install"
fi

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update -y
sudo apt upgrade -y

sudo apt install brave-browser


