# Scripts-For-the-M100-ROS-DJI-OSDK
Simple bash scripts for using the ROS DJI OSDK. I also included a python script for creating a squarewave waypoint map and flying that.
Simply change the coordinates seen at the bottom of the python script to auto generate the flight path.

# I couldn't find any other examples for actually running the dji osdk from command line, so I made one. I hope this helps other new users.
To run this program:
1) install ros melodic on a ubuntu based system
2) install the dji osdk following these instructions: 
https://developer.dji.com/onboard-sdk/documentation/development-workflow/environment-setup.html
  - note: i had to use an older version of the osdk (3.6) because the current version (3.8) didn't work for unknown reasons
  - note: this requires connecting to a machine running windows to run the dji assistant 2 app. In this app a number of setting must be changed to be correct. when, inevitably, something doesn't work for an unknown reason I reccomend lowering the baud rate both in the app and in this project. 
3) set up the hardware connection between the computer and the drone. I used a simple USB-to-TTL convereter in combination with the following cord from amazon: https://www.amazon.com/Matrice-100-Part-UART-Cable/dp/B0782ZDRGJ  - to make this wireless I plan on using a bluetooth module that can do essentially the same thing. 
  - note: The controller MUST be turned on (in 'f' mode) and connected to a device running the dji ground station pro app and an internet connection
4) navigate to the directory in a terminal and type "bash LaunchROSforM100.bash"
5) open the FlyPath.py file and modify both the start and ending latitude and longitudes to be the desired pair. This is near the bottom of the file
6) naviagate to the directory in a new terminal again and type "python FlyPath.py"
7) watch your drone fly
