#!/usr/bin/env bash

apt-get update

apt-get install git
apt-get install dphys-swapfile
cp dphys-swapfile /etc
fs_resize

echo "Done. Please reboot."
