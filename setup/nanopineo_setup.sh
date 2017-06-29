#!/usr/bin/env bash

apt-get update

apt-get install git
apt-get install dphys-swapfile
cp dphys-swapfile /etc
fs_resize

# install curl dev pacakages
sudo apt-get install -y libcurl4-gnutls-dev

# TODO: Test if these are still necessary
#sudo apt-get install -y libssh2-1-dev
#sudo apt-get install -y libssl-dev
#sudo apt-get install -y groff


echo "Done. Please reboot."
