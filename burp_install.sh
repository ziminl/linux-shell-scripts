#!/bin/bash

INSTALL_DIR="/opt/burp"

BURP_VERSION=$(curl -s https://portswigger.net/burp/communitydownload | grep -oP 'href="\K[^"]+' | grep -m1 "burp" | grep -oP '[0-9]+\.[0-9]+\.[0-9]+')
BURP_DOWNLOAD_URL="https://portswigger.net/burp/releases/download?product=community&version=$BURP_VERSION&type=jar"
BURP_JAR_FILE="burp.jar"

sudo mkdir -p $INSTALL_DIR
sudo chown $USER:$USER $INSTALL_DIR

echo "Downloading Burp Suite Community Edition..."
wget -O $INSTALL_DIR/$BURP_JAR_FILE $BURP_DOWNLOAD_URL

DESKTOP_SHORTCUT="[Desktop Entry]
Version=1.0
Type=Application
Name=Burp Suite
GenericName=Web Application Security Testing Tool
Comment=Burp Suite Community Edition
Exec=java -jar $INSTALL_DIR/$BURP_JAR_FILE
Icon=$INSTALL_DIR/burp.png
Terminal=false
Categories=Utility;Security;"

echo "$DESKTOP_SHORTCUT" > ~/.local/share/applications/burp.desktop

ICON_URL="https://portswigger.net/burp/assets/images/logo.svg"
ICON_FILE="$INSTALL_DIR/burp.png"
wget -O $ICON_FILE $ICON_URL

chmod +x $INSTALL_DIR/$BURP_JAR_FILE

echo "complete"


