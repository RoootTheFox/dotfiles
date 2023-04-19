#!/bin/bash

device_0="CA0110 \[Sound Blaster X-Fi Xtreme Audio\] (SB1040 PCI Express) Digital Stereo (IEC958)"
device_1="G435 Wireless Gaming Headset Pro"

dev_0_id=$(wpctl status | grep "$device_0" | sed -e 's/\([0-9][0-9]\).*/\1/' | sed -r 's/^[^0-9]*([0-9]+).*$/\1/' | head -1)
dev_1_id=$(wpctl status | grep "$device_1" | sed -e 's/\([0-9][0-9]\).*/\1/' | sed -r 's/^[^0-9]*([0-9]+).*$/\1/' | head -1)

echo "device 0 id: $dev_0_id"
echo "device 1 id: $dev_1_id"

if [ "$1" == "" ]; then
	echo "specify device id to switch default sink to"
	exit
fi

case $1 in
  0)
    echo "switching to output $1"
    wpctl set-default $dev_0_id
    ;;
  1)
    echo "switching to output $1"
    wpctl set-default $dev_1_id
    ;;
  *)
    echo "unknown device id"
    exit 1
    ;;
esac

exit 0
