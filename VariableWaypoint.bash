#!/bin/bash
# Automatically launch ROS for the DJI M100 on The Desktop Scott Stewart uses in the lab room 450 for the USDA project
#Import the bash files necessary to run ROS
source /opt/ros/melodic/setup.bash
source /home/scottstewart/catkin_ws/devel/setup.bash
#CreateMission
roscd dji_sdk
#Take Control Of the Drone
rosservice call /dji_sdk/sdk_control_authority "1"
#Upload the mission
rosservice call /dji_sdk/mission_waypoint_upload "waypoint_task:
  velocity_range: 10.0
  idle_velocity: 0.5
  action_on_finish: 0
  mission_exec_times: 1
  yaw_mode: 0
  trace_mode: 0
  action_on_rc_lost: 1
  gimbal_pitch_mode: 1
  mission_waypoint:
  - latitude: 10
    longitude: 10.0
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0000454545
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.0000454545
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.000090909
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.000090909
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0001363635
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.0001363635
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.000181818
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.000181818
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0002272725
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.0002272725
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.000272727
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.000272727
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0003181815
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.0003181815
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.000363636
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.000363636
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.0004090905
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.0004090905
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10
    longitude: 10.000454545
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  - latitude: 10.0005
    longitude: 10.000454545
    altitude: 10.0
    damping_distance: 1.0
    target_yaw: 0
    target_gimbal_pitch: -90
    turn_mode: 0
    has_action: 0
    action_time_limit:  100
    waypoint_action:
      action_repeat: 0
      command_list: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
      command_parameter: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]"
#Takeoff
rosservice call /dji_sdk/drone_task_control "task: 4"
#Fly Mission
rosservice call /dji_sdk/mission_waypoint_action "action: 0"