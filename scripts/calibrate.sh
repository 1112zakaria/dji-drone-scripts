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
echo "Sleeping for 20 seconds to let the JointCoarse calibration finish..."
sleep 20
echo "Calibrating gimbal - LinearHall..."
python comm_og_service_tool.py --port $1 $2 GimbalCalib LinearHall
echo "Sleeping for 35 seconds to let the LinearHall calibration finish..."
sleep 35
echo "Calibration is complete!"