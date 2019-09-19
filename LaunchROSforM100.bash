#!/bin/bash
# Automatically launch ROS for the DJI M100 on The Desktop Scott Stewart uses in the lab room 450 for the USDA project

#Import the bash files necessary to run ROS
source /opt/ros/melodic/setup.bash
source /home/scottstewart/catkin_ws/devel/setup.bash

#Navigate to and run the correct ROS configuration
roscd dji_sdk #point ros to the desired directory
roslaunch dji_sdk sdk.launch #launch ROS

