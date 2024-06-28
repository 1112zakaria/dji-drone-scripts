#!/usr/bin/env python3
# Wrapper script for calibrating the DJI device gimbal.

from dotenv import load_dotenv
import os

load_dotenv()

def validate_env(variables: dict) -> bool:
    print(f"Validating environment variables: {variables}")

    if not variables['DJI_PRODUCT_CODE']:
        raise Exception('DJI_PRODUCT_CODE is not set')

    if not variables['DJI_DEVICE_PORT']:
        raise Exception('DJI_DEVICE_PORT is not set')
    return True

def run_calibration(variables: dict) -> None:
    product_code, device_port = variables['DJI_PRODUCT_CODE'], variables['DJI_DEVICE_PORT']
    os.system(f"./calibrate.sh {product_code} {device_port}")

if __name__ == "__main__":
    env_variables = {
        'DJI_PRODUCT_CODE': os.getenv('DJI_PRODUCT_CODE'),
        'DJI_DEVICE_PORT': os.getenv('DJI_DEVICE_PORT'),
    }

    validate_env(env_variables)
    run_calibration(env_variables)
    