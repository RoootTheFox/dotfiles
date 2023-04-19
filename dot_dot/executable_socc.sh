#!/bin/sh

function handle {
  if [[ ${1:0:12} == "activewindow" ]]; then
    echo "${1:14}"
    echo "amogus"
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/$(echo $HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock | while read line;
  do handle $line
done
