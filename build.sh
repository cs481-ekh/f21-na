#!/bin/bash

#This script builds the project in the repo but checking all packages are installed

sudo apt-get update
#sudo


#clones pybind11
echo "Cloning pybind11"
clnpyb ()
{
    cd utils/lib_cpp
    git clone https://github.com/pybind/pybind11.git
}
clnpyb
echo "pybind 11 cloned.."


#Compile C++ module in utils/lib_cpp
echo "Compiling C++ module"
cmake ()
{
    mkdir build && cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make
}
cmake
echo "Compiling C++ cmake"


#copy the lib_cpp.so to root directory
echo "copying lib_cpp.so to root"
cp lib_cpp.so ../../../

#download and unzip pre_trained model and unzip to root dir
echo "downloading and unzipping pre_trained model"
pre_trained () 
{
    wget https://terra-1-g.djicdn.com/65c028cd298f4669a7f0e40e50ba1131/github/Livox_detection1.1_model.zip
    unzip Livox_detection1.1_model.zip -d ../../../
}
pre_trained

#Run
echo "downloading provided rosbags"

rosbag () 
{
    wget https://terra-1-g.djicdn.com/65c028cd298f4669a7f0e40e50ba1131/github/livox_detection_v1.1_data.zip
    #unzip livox_detection_v1.1_data.zip
}

#roscore venv
roscore_ ()
{
    roscore
    rviz -d ./config/show.rviz
    python livox_rosdetection.py
    rosbag play *.bag -r 0.1
}

roscore_





exit 127
