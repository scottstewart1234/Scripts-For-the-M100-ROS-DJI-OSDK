#!/bin/bash -v
# Automatically launch ROS for the DJI M100 on The Desktop Scott Stewart uses in the lab room 450 for the USDA project

#Import the bash files necessary to run ROS
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash

#Takeoff
roscd dji_sdk

#REQUEST DRONE CONTROL:
rosservice call /dji_sdk/sdk_control_authority "1" 

cont=1

while [ $cont == 1 ];
do
	echo ""
	echo ""
	echo "Type one of the following commands:"
	echo "Takeoff"
	echo "Land"
	echo "HotPoint"
	echo "FlyMission"
	echo "Exit"
	
	echo ""
	read cmd #read user input
	cmd=${cmd,,} #to lower case
	echo ""
	echo ""
	if [ $cmd == "takeoff" ]; 
	then
		rosservice call /dji_sdk/drone_task_control "task: 4"
	elif [ $cmd == "land" ];
	then
		rosservice call /dji_sdk/drone_task_control "task: 6"
	elif [ $cmd == "exit" ];
	then
		cont=0
	elif [ $cmd == "hotpoint" ];
	then
		rosservice call /dji_sdk/mission_hotpoint_upload "hotpoint_task: {latitude: 43.03889600000001, longitude: -87.931554, altitude: 10.0, radius: 10.0, angular_speed: 10.0, is_clockwise: 0, start_point: 0, yaw_mode: 0}" 
		rosservice call /dji_sdk/mission_hotpoint_action "action: 0" 
	elif [ $cmd == "flymission" ];
	then	
		bash /home/scottstewart/Documents/RosStuff/VariableWaypoint.bash
		rosservice call /dji_sdk/mission_waypoint_action "action: 0"
	else
		echo "Unknown input, try again"
	fi
	echo ""
	echo ""
done
#Relinquish Drone control
rosservice call /dji_sdk/sdk_control_authority "0" 

#rosservice call /dji_sdk/drone_task_control "task: 4" #Takeoff
