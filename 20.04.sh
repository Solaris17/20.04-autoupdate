#!/bin/bash
# This script has been patched for Ubuntu system
# David Smith (solaris17@outlook.com)

# Now begin configuration and installation of auto updates
sudo apt install -q -y unattended-upgrades apt-listchanges  > /dev/null 2>&1
cd /etc/apt/apt.conf.d > /dev/null 2>&1
mv 20auto-upgrades 20auto-upgrades.bk > /dev/null 2>&1
mv 50unattended-upgrades 50unattended-upgrades.bk > /dev/null 2>&1
wget teamdotexe.org/downloads/20auto-upgrades -O /etc/apt/apt.conf.d/20auto-upgrades > /dev/null 2>&1
wget teamdotexe.org/downloads/50unattended-upgrades -O /etc/apt/apt.conf.d/50unattended-upgrades > /dev/null 2>&1
/etc/init.d/unattended-upgrades restart > /dev/null 2>&1

echo
echo Auto Updates Configured
echo
exit
