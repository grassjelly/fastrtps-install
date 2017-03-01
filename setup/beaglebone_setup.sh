#!/usr/bin/env bash

sudo apt-get update

sudo mkdir -p /var/cache/swap/
sudo dd if=/dev/zero of=/var/cache/swap/swapfile bs=1M count=1024
sudo chmod 0600 /var/cache/swap/swapfile
sudo mkswap /var/cache/swap/swapfile
sudo swapon /var/cache/swap/swapfile

sudo echo "/var/cache/swap/swapfile    none    swap    sw    0   0" >>  /etc/fstab

echo "Done. Please reboot."
