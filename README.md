# University-Project-2025

## Setup Environment

Activate the environment:
```sh
python3 -m venv ~/myenv
source ~/myenv/bin/activate
```

Check which devices are connected:
```sh
dmesg | grep tty
```

Run the file:
```sh
sudo python3 sensor_monitor.py
```

## Compiling

First, set `BL60X_SDK_PATH` to the location of the `pine64/bl_iot_sdk` repository. Next, set `CONFIG_CHIP_NAME` to the make of the chip, in this case, `BL602`. If the repository is already cloned, `pwd` can be used to correctly set the environment variable:
```sh
cd bl_iot_sdk
export BL60X_SDK_PATH=$(pwd)
export CONFIG_CHIP_NAME=BL602
```

To build all example projects, run `make` in the project directory. To build only a single example, go to the directory of the example and run `make`. To build `sdk_app_helloworld`:
```sh
cd customer_app/sdk_app_helloworld
make
```

List the built files:
```sh
cd build_out
ls -la *.bin
```

Make the flash tool executable:
```sh
chmod +x blflash*
```

Flash the firmware:
```sh
#!/bin/bash
./blflash-linux-amd64 flash ../../customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld.bin --port /dev/ttyUSB0
```

Make the flash script executable:
```sh
chmod +x flash.sh
```

Check for open connections on `/dev/ttyUSB0`:
```sh
lsof | grep /dev/ttyUSB0
sudo kill -9 145596
```

Use `picocom` to connect:
```sh
picocom -b 115200 /dev/ttyUSB0
```

Minicom settings:
```sh
sudo minicom -s
```

Screen settings:
```sh
screen /dev/ttyUSB0 2000000
```

// php file run
/web/public$ php -S localhost:8000

make executable
gcc main.c get_data_from_json.c -o executable -lcjson

//exectuable
./executable