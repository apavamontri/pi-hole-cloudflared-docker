#!/bin/bash

echo -e "Starting pihole..."
docker compose up -d
echo -e "Setting Wifi DNS to pihole..."

# macOS Only
sudo networksetup -setdnsservers Wi-Fi empty
sudo networksetup -setdnsservers Wi-Fi 127.0.0.1
sudo killall -HUP mDNSResponder
