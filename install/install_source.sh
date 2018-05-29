#!/usr/bin/env bash

sudo apt-get update

#CMake Install
sudo apt-get install -y cmake

#Java Intsall
sudo apt-get install -y software-properties-common
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

#G-Test Install
sudo apt-get install -y libgtest-dev
cd /usr/src/gtest
sudo cmake .
sudo make
sudo cp libg* /usr/lib/

#Libboost Install
sudo apt-get install -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev

#Unzip Install
sudo apt-get install -y unzip

#Gradle Install
cd ~/
wget https://services.gradle.org/distributions/gradle-3.4-bin.zip
sudo unzip -d /opt/gradle gradle-3.4-bin.zip
export PATH=$PATH:/opt/gradle/gradle-3.4/bin
rm gradle-3.4-bin.zip

#FastRTPS Install
git clone https://github.com/eProsima/Fast-RTPS
cd Fast-RTPS

#Set ENV variables for fastrtpsgen and FASTRTPSHOME
echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc

mkdir build -p && cd build
cmake -DTHIRDPARTY=ON -DBUILD_JAVA=ON ..
make
make install

echo "Installation Done!"
