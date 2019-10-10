#!/bin/bash
# EXIT CODES
ok=0
noRoot=1

# check for root
if [[ "$EUID" -ne 0 ]]; then
    echo "This script must be run as root"
    exit $noRoot
else
    echo "Script is running as root, continuing..."
fi

# install .bash_aliases
read -rp "Do you wish to install the bash aliases?" yn
case "$yn" in
[Yy]*)
    cp ./general/bash_aliases /home/pi/.bash_aliases
    ;;
[Nn]*) ;;
*) echo "Please answer yes or no." ;;
esac

# install disable_wifi_pwr_mgmt
echo "disable_wifi_pwr_mgmt is a service and script combination that"
echo "disables WiFi power management on boot up."
read -rp "Do you wish to install disable_wifi_pwr_mgmt?" yn
case "$yn" in
[Yy]*)
    sudo ./disable_wifi_pwr_mgmt/INSTALL.sh
    ;;
[Nn]*) ;;
*) echo "Please answer yes or no." ;;
esac

# if we made it here, everything ran successfully
exit $ok
