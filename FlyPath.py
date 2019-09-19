#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 17 11:09:03 2019

@author: scottstewart
"""
import math
import os 

class flight_path: #lets us make a flight path ealsiy 
    
    def __init__(self): #initialize a set of latitudes and longitudes
        self.lat = list()
        self.lon = list()
    def calculatePath(self, sLat, sLon, eLat, eLon): #calcualte the squarewave of flight paths
        assert (len(self.lon)==0)
        assert (len(self.lat)==0)
        meter_in_gps= 0.0000090909 #to convert things to meters later
        SquareWave_width = 5 #meters
        dif_lat = eLat-sLat;
        dif_lon = eLon-sLon;
        if (dif_lat>dif_lon):
            steps= dif_lon/(SquareWave_width*meter_in_gps)
            for i in range(0, math.floor(steps)): #Appends two at a time to get both sides of the squarewave 
                if (i%2==0): 
                   self.lat.append(sLon+i*meter_in_gps*SquareWave_width)
                   self.lon.append(sLat)
                   self.lat.append(sLon+i*meter_in_gps*SquareWave_width)
                   self.lon.append(eLat)
                else:
                    self.lat.append(sLon+i*meter_in_gps*SquareWave_width)
                    self.lon.append(eLat)
                    self.lat.append(sLon+i*meter_in_gps*SquareWave_width)
                    self.lon.append(sLat)
        else:
            steps= dif_lat/(SquareWave_width*meter_in_gps)
            for i in range(0, math.floor(steps)): #Appends two at a time to get both sides of the squarewave 
                if (i%2==0): 
                   self.lon.append(sLat+i*meter_in_gps*SquareWave_width)
                   self.lat.append(sLon)
                   self.lon.append(sLat+i*meter_in_gps*SquareWave_width)
                   self.lat.append(eLon)
                else:
                    self.lon.append(sLat+i*meter_in_gps*SquareWave_width)
                    self.lat.append(eLon)
                    self.lon.append(sLat+i*meter_in_gps*SquareWave_width)
                    self.lat.append(sLon)
                #done 
            #done
        #done
        assert (len(self.lon)==len(self.lat))
    def runBash(self):
        assert (len(self.lon)==len(self.lat))
        velocity = "10.0"
        idle_velocity ="0.5"
        action_on_finish = "0"
        mission_exec_times = "1"
        yaw_mode = "0"
        trace_mode = "0"
        action_on_rc_lost="1"
        gimbal_pitch_mode = "1"
        
        altitude = "10.0"
        damping_distance= "1.0"
        target_yaw= "0"
        target_gimbal_pitch= "-90"
        turn_mode= "0"
        has_action= "0"
        action_time_limit= "100"
        
        action_repeat = "0"
        command_list = "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"
        command_parameter = "[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"
        
        string = "\"waypoint_task:\n  velocity_range: "+velocity \
        +"\n  idle_velocity: "+idle_velocity+"\n  action_on_finish: "+action_on_finish\
        +"\n  mission_exec_times: "+mission_exec_times+"\n  yaw_mode: "+yaw_mode\
        +"\n  trace_mode: "+trace_mode+"\n  action_on_rc_lost: "+action_on_rc_lost\
        +"\n  gimbal_pitch_mode: "+gimbal_pitch_mode+"\n  mission_waypoint:"
        #print(len(self.lon))
        for i, j in zip(self.lon, self.lat):
            tempString = "\n  - latitude: "+str(j)\
            +"\n    longitude: "+str(i)\
            +"\n    altitude: "+altitude\
            +"\n    damping_distance: "+damping_distance\
            +"\n    target_yaw: "+target_yaw\
            +"\n    target_gimbal_pitch: "+target_gimbal_pitch\
            +"\n    turn_mode: "+turn_mode\
            +"\n    has_action: "+has_action\
            +"\n    action_time_limit:  "+action_time_limit\
            +"\n    waypoint_action:"\
            +"\n      action_repeat: "+action_repeat\
            +"\n      command_list: "+command_list\
            +"\n      command_parameter: "+command_parameter
            
            
            string = string +tempString
        string = string+"\""
        tempString = "#!/bin/bash\n"\
        +"# Automatically launch ROS for the DJI M100 on The Desktop Scott Stewart uses in the lab room 450 for the USDA project\n"\
        +"#Import the bash files necessary to run ROS\n"\
        +"source /opt/ros/melodic/setup.bash\n"\
        +"source /home/scottstewart/catkin_ws/devel/setup.bash\n"\
        +"#CreateMission\n"\
        +"roscd dji_sdk\n"\
        +"#Take Control Of the Drone\n"\
        +"rosservice call /dji_sdk/sdk_control_authority \"1\"\n"\
        +"#Upload the mission\n"\
        +"rosservice call /dji_sdk/mission_waypoint_upload "
        string = tempString+string
        tempString="\n#Takeoff\n"\
        +"rosservice call /dji_sdk/drone_task_control \"task: 4\"\n"\
        +"#Fly Mission\n"\
        +"rosservice call /dji_sdk/mission_waypoint_action \"action: 0\""
        string = string+tempString
        
        
        #print(string)\
        file = open("VariableWaypoint.bash","w") #overwrite existing file if it exists
        file.write(string)
        file.close();
	output = os.popen('bash VariableWaypoint.bash').read()#call and exectute the bash function
	print(output)
       
        
fp = flight_path()
fp.calculatePath(10,10,10.0005,10.0005) #start latitude, start longitude, end latitude, end logitude. Makes a squarewave pattern between these points
fp.runBash();
