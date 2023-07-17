#!/bin/bash

sudo systemctl start bluetooth

cleanup() {
  sudo systemctl stop bluetooth
}
trap cleanup EXIT
blueman-manager &

sleep 2

DEVICE_NAME="Your_Device_Name"

bluetoothctl -- search $DEVICE_NAME

sleep 2

bluetoothctl -- connect $DEVICE_NAME

while true; do
  sleep 1
done


