#!/bin/zsh
vol_mod=$1

current_vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F': ' '{ print $2 }' | head -1)

# i have no idea why but bash complains about invalid operator here
if ! (( (( (( ${current_vol} * 100 )) + ${vol_mod} )) > 100 )) ; then
   # increase volume
   wpctl set-volume @DEFAULT_AUDIO_SINK@ ${vol_mod}%+
else
   # set volume to 100
   wpctl set-volume @DEFAULT_AUDIO_SINK@ 1
fi
