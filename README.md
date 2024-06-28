# DJI Drone Scripts

Read below for instructions. Tested on Windows.

Setup:
1. Clone repository and submodules
2. Setup and activate Python virtualenv
3. Install Python module dependencies

To calibrate your DJI device's gimbal, complete setup steps and follow instructions in [docs/GIMBAL_CALIBRATION.md](docs/GIMBAL_CALIBRATION.md).


## Requirements
- Python 3. Version isn't too important for now. I have 3.10.5 installed.

## Clone repository and submodules

```
$ git clone git@github.com:1112zakaria/dji-drone-scripts.git
$ cd dji-drone-scripts
$ git submodule update --init --recursive
```

## Setup and activate Python virtualenv

```
$ python -m venv .venv
$ source .venv/Scripts/activate
```

## Install Python dependencies
```
$ pip install -r requirements.txt
```

## Find your product code

Refer to [PRODUCT_CODE_MAPPING.md](docs/PRODUCT_CODE_MAPPING.md) for your DJI device's product code

## References
How to Calibrate Gimbal on DJI Mavic Air 2 - ifixit

https://www.ifixit.com/Guide/How+to+Calibrate+Gimbal+on+DJI+Mavic+Air+2/153750


