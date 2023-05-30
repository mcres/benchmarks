#!/bin/bash

# Source the workspace as an overlay
source install/setup.bash

# Open a new terminal window and run rqt_graph
gnome-terminal -- rqt_graph

# Open a new terminal window and run rviz2
gnome-terminal -- rviz2 -d src/benchmarks/benchmarks/perception/a4_depth_image_proc/config/depth_camera_bot.rviz