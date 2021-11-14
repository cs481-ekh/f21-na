![Build Testing](https://github.com/cs481-ekh/f21-na/actions/workflows/Build.yml/badge.svg)
![Test Testing](https://github.com/cs481-ekh/f21-na/actions/workflows/Test.yml/badge.svg)
# capstone-template
BSU CS481 Capstone project template


## Setup Procedure

### Prerequisites
1. Make sure [virtualization](https://www.thewindowsclub.com/disable-hardware-virtualization-in-windows-10#:~:text=ON%20the%20System.-,Press%20F2%20key%20at%20startup%20BIOS%20Setup.,changes%20and%20Reboot%20into%20Windows.) is enabled on your computer
2. Download and install [VcXrv Windows Server](https://sourceforge.net/projects/vcxsrv/)
3. Install Ubuntu 18.04 LTS from the Microsoft Store
4. Launch the Ubuntu Shell and create new user credentials
5. Download some [rosbag](https://terra-1-g.djicdn.com/65c028cd298f4669a7f0e40e50ba1131/github/livox_detection_v1.1_data.zip) files to run the object detection on.

### Building the Project
#### List of package installs:
-sudo apt-get update
-sudo apt install cmake
-sudo apt-get install build-essential
-sudo apt install catkin
-sudo apt-get install cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
-sudo apt install rviz
-sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
-sudo apt install curl 
-curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
-sudo apt-get install ros-melodic-desktop-full
-echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
-source ~/.bashrc
-sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
-sudo apt install python-rosdep
-sudo rosdep init
-rosdep update

### Setting up Repositories

git clone https://github.com/Livox-SDK/Livox-SDK.git  
cd Livox-SDK  
cd build  
cmake ..  

make  
sudo make install  
cd  

git clone https://github.com/Livox-SDK/livox_ros_driver.git ws_livox/src  
cd ws_livox  
catkin make  


source ./devel/setup.sh  
LIBGL_ALWAYS_INDIRECT=  

cd src  
git clone https://github.com/praveen-palanisamy/multiple-object-tracking-lidar.git  


cd ..  
catkin make  
source ./devel/setup.sh  
LIBGL_ALWAYS_INDIRECT=  

cd src  
cd livox_ros_driver/  
cd config  

rm display_lidar_points.rviz  

cp /mnt/c/Users/“Username”/Downloads/display_lidar_points.rviz  
cd   
cd ws_livox  

catkin make  
source ./devel/setup.sh  
LIBGL_ALWAYS_INDIRECT=  

cd src  
cd livox_ros_driver  
cd launch  

roslaunch livox_lidar_rviz.launch   

**IN NEW UBUNTU SHELL**

cd ws_livox

rosrun multi_object_tracking_lidar kf_tracker


**IN NEW UBUNTU SHELL**

rosbag play *.bag /livox/lidar:=/filtered_cloud

*rosrun tf stat_transform_publisher 0 0 0 0 0 0 1 map livox_frame 10*