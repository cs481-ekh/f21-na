# Environment was setup on the PC
# Got bag files running by updating dependecies in .py file

#Livox to Ros on windows
A connection is necessary between the Livox machine and the ROS driver in order for the Livox Virtualization to work in Windows.  
Three repositories are necessary to install this process (pcl, livox sdk, and livox to ros driver).  This step will create a point 
cloud data for the python code, which would perform the machine learning.  A single file necessary (bzip2) from the point cloud file 
(pcl) package is preventing this repository from installing.  It appears the two additional repositories would be functioning after 
this issue is solved.