#!/bin/bash
echo -e "Shutting down pihole..."
docker compose down

# macOS Only
echo -e "Resetting Wifi DNS..."
sudo networksetup -setdnsservers Wi-Fi empty
sudo killall -HUP mDNSResponder
