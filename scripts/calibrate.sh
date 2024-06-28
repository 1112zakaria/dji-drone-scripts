#!/usr/bin/env bash

# $1: port
# $2: baudrate

# Run the following commands to calibrate gimbal
set -e
cd ../dji-firmware-tools
python comm_og_service_tool.py --port $1 $2 GimbalCalib JointCoarse
python comm_og_service_tool.py --port $1 $2 GimbalCalib LinearHall
