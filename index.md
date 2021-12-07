
# Computer Vision-based LIDAR Data Processing for Autonomous Driving

## Team Members
- Andre Murphy
- Andre Maldonaldo
- Nicholas Ravenna

## Abstract
This projects intent was to tie the a Livox Horizon LiDAR to a computer program that woudl give it the capability of detecting cars and other objects on the road. The project was build using a Windows 10 laptop, Ubuntu 18.04(Windows Subsystem for Linux), and ROS Melodic as the robotics OS. The Livox LiDAR outputs data into .lvx format so using the Livox SDK, we converted .lvx files to .bag files. For the purpose of this project, we used sample .bag files to save space and use efficient data. The GUI used to display the object detection, which was a ROS PCL(Point Cloud Library), was RVIZ. The project works by simultaniously running 4 different terminals. <br>

`$ roslaunch livox_lidar_rviz.launch` - Spins up ROS <br>
`$ rosrun multi_object_tracking_lidar kf_tracker` - Runs object detection libary<br>
`$ rosbag play *.bag /livox/lidar:=/filtered_cloud` - Publishes bag to object detection libary rostopic<br>
`$ rosrun tf stat_transform_publisher 0 0 0 0 0 0 1 map livox_frame 10` - Sets frame for RIVZ<br>

The way this works is that each rostopic acts as a node that can subscribe and publish to separate topics, enabling "real time" data manipulation. For example, in our project the bag file runs and publishes to the topic `filtered_cloud` which is what the object detection node is subscribed to. The object detection node then alters the data on the topic and displays it in RVIZ. Computer hardware plays a huge part in performance if this project and without the proper specs, your object detection will not be real time.

## Project Limitations and Problems
Most of the current object detection software used by Livox is build and managed by a large Chinese company called XPeng. We did our best to tie together existing technologies to build a functional object detection software. With proper communication from Livox, more programs could be accessed that would be beneficial to our project such as a Livox specific object detection software rather than the Velodyne packaged we used.

## What We Built
![Image](<img width="836" alt="terminals" src="https://user-images.githubusercontent.com/42878649/144948673-ede9e774-b38f-47ab-bece-f915a1d274f5.PNG">
)
TERMINALS
![Image](<img width="1005" alt="visualizer" src="https://user-images.githubusercontent.com/42878649/144948742-f8b35a46-6213-4aaa-891f-65e8a250ec3b.PNG">
)
![Image](<img width="790" alt="objdet" src="https://user-images.githubusercontent.com/42878649/144948775-1a90253c-c452-4d3e-a147-47273813439d.PNG">
)
```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/cs481-ekh/f21-na/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
