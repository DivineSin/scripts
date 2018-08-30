#! /bin/bash

source ~/.bashrc
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

echo " source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

source devel/setup.bash
