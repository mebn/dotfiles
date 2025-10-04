#!/bin/bash

# Set your AirPods MAC address
AIRPODS_MAC="48:E1:5C:CB:A8:33"

# Convert MAC address to PipeWire device name format
DEVICE_NAME=$(echo "$AIRPODS_MAC" | tr ':' '_')

# Connect to AirPods using bluetoothctl
echo -e "connect $AIRPODS_MAC\nexit" | bluetoothctl

