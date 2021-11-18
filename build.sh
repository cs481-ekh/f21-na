#!/bin/bash
#set -e
#This script builds installs all the required dependencies

sudo apt-get update

sudo apt install cmake

sudo make install

sudo apt-get install build-essential

sudo apt install catkin

sudo apt-get install cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev

sudo apt install rviz

sudo apt install curl

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main"> /etc/apt/sources.list.d/ros-latest.list'

curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt-get install ros-melodic-desktop-full

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

source ~/.bashrc

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt install python-rosdep

sudo rosdep init

rosdep update

#sudo apt -fix-broken





