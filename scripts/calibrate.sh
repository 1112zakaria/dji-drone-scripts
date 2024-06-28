#!/usr/bin/env bash

# $1: port
# $2: drone version

# Run the following commands to calibrate gimbal
# FIXME: call to comm_og_service_tool.py returns error value on shell and outputs:
#   Error: Unrecognized response to calibration command JointCoarse request.
# The script appears to perform calibration regardless...

# set -e    # commented because calls to comm_og_service_tool.py return error code
cd ../dji-firmware-tools
echo "Start of calibration shell script"
echo "Calibrating gimbal - JointCoarse..."
python comm_og_service_tool.py --port $1 $2 GimbalCalib JointCoarse
sleep 25
echo "Calibrating gimbal - LinearHall..."
python comm_og_service_tool.py --port $1 $2 GimbalCalib LinearHall
sleep 40
echo "Calibration is complete!"