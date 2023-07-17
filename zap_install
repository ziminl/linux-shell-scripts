#!/bin/bash
#for ubuntu

INSTALL_DIR="/opt/zap"

ZAP_VERSION=$(curl -s https://github.com/zaproxy/zaproxy/releases/latest | grep -oP '(?<=tag\/).*')
ZAP_DOWNLOAD_URL="https://github.com/zaproxy/zaproxy/releases/download/$ZAP_VERSION/ZAP_$ZAP_VERSION_unix.sh"
ZAP_INSTALLER="zap.sh"

sudo mkdir -p $INSTALL_DIR
sudo chown $USER:$USER $INSTALL_DIR

wget -O $INSTALL_DIR/$ZAP_INSTALLER $ZAP_DOWNLOAD_URL

chmod +x $INSTALL_DIR/$ZAP_INSTALLER

echo "ZAP $ZAP_VERSION..."
$INSTALL_DIR/$ZAP_INSTALLER -dir $INSTALL_DIR -daemon -unattended



DESKTOP_SHORTCUT="[Desktop Entry]
Version=1.0
Type=Application
Name=OWASP ZAP
GenericName=Web Application Security Testing Tool
Comment=OWASP Zed Attack Proxy
Exec=$INSTALL_DIR/zap.sh
Icon=$INSTALL_DIR/zap.ico
Terminal=false
Categories=Utility;Security;"



echo "$DESKTOP_SHORTCUT" > ~/.local/share/applications/zap.desktop

echo "complete"


