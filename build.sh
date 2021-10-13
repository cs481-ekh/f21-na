#!/bin/bash
set -e

#This script builds the project in the repo but checking all packages are installed

sudo apt update
sudo apt-get install libboost-all-dev -y
sudo apt-get install cmake
sudo apt-get install g++
sudo apt-get install python3.8
sudo apt-get install build-essential
sudo apt-get install -y libpython-all-dev
#sudo apt-get install rosbin
sudo apt-get install rviz
sudo apt install python3-pip
pip install --upgrade pip
pip install tensorflow
sudo apt install python3-numpy
sudo apt install 
#sudo


#clones pybind11
echo "Cloning pybind11"
clnpyb ()
{
    cd livox_detection-master/utils/lib_cpp
    git clone https://github.com/pybind/pybind11.git
}
clnpyb

if [ $? -eq 0 ]; then
    echo "pybind 11 cloned.."
else
    echo FAIL
fi



#Compile C++ module in utils/lib_cpp
echo "Compiling C++ module"
cmake_ ()
{
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make
}
cmake_
if [ $? -eq 0 ]; then
    echo "Compiling C++ cmake"
else
    echo FAIL
fi



#copy the lib_cpp.so to root directory
if [ $? -eq 0 ]; then
    echo OK
else
    echo FAIL
fi


cp lib_cpp.so ../../../

if [ $? -eq 0 ]; then
    echo "copying lib_cpp.so to root"
else
    echo FAIL
fi

#download and unzip pre_trained model and unzip to root dir

pre_trained () 
{
    wget https://terra-1-g.djicdn.com/65c028cd298f4669a7f0e40e50ba1131/github/Livox_detection1.1_model.zip
    unzip Livox_detection1.1_model.zip -d ../../../
}
pre_trained

if [ $? -eq 0 ]; then
    echo "downloading and unzipping pre_trained model"
else
    echo FAIL
fi

#Run
echo "downloading provided rosbags"

rosbag () 
{
    wget https://terra-1-g.djicdn.com/65c028cd298f4669a7f0e40e50ba1131/github/livox_detection_v1.1_data.zip
    #unzip livox_detection_v1.1_data.zip
}

#roscore venv
# this should be done manually
# roscore_ ()
# {
#     roscore
#     rviz -d ./config/show.rviz
#     python livox_rosdetection.py
#     rosbag play *.bag -r 0.1
# }

# roscore_
# if [ $? -eq 0 ]; then
#     echo OK
# else
#     echo FAIL
# fi


exit 0
