#!/bin/bash

USERNAME=$USER

# create directory if needed
mkdir -p /home/$USERNAME/bin

# copy scripts
cp disable_wifi_pwr_mgmt.sh /home/$USERNAME/bin/
cp disable_wifi_pwr_mgmt.service /lib/systemd/system/

# set permissions
sudo chmod 755 /home/$USERNAME/bin/disable_wifi_pwr_mgmt.sh
sudo chmod 644 /lib/systemd/system/disable_wifi_pwr_mgmt.service

# reload systemctl daemon
sudo systemctl daemon-reload

# enable the script
sudo systemctl enable disable_wifi_pwr_mgmt.service

echo "Please reboot for the service to start"

# ask permission to reboot now or delay
read -p "Do you wish to reboot now (y/n)?" yn
case $yn in
[Yy]*)
    sudo /sbin/shutdown -r 5
    echo "Scheduled reboot for 5 minutes from now. Please clean up your work."
    break
    ;;
[Nn]*) exit ;;
*) echo "Please answer yes or no." ;;
esac

echo "WiFi power management disabler installed!"