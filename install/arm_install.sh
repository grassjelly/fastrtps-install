#!/usr/bin/env bash

sudo apt-get update

#CMake Install
sudo apt-get install -y cmake

#Java Install
sudo apt-get install -y default-jre

#G-Test Install
sudo apt-get install -y libgtest-dev
cd /usr/src/gtest
sudo cmake .
sudo make
sudo cp libg* /usr/lib/

#Libboost Install
sudo apt-get install -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev

#FastRTPS Install
cd ~/
wget http://www.eprosima.com/index.php/component/ars/repository/eprosima-fast-rtps/eprosima-fast-rtps-1-3-1/eprosima_fastrtps-1-3-1-linux-tar-gz
tar -xvzf eprosima_fastrtps-1-3-1-linux-tar-gz
cd eProsima_FastRTPS-1.3.1-Linux
./configure CXXFLAGS="-g -D__DEBUG" --libdir=/usr/lib -with-boost-libdir=/usr/lib/arm-linux-gnueabihf
sudo make install

echo "Installation Done!"
