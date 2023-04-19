#!/bin/bash

c2cb="xclip -selection clipboard -t image/png"

save=1

if [ "$1" == "area" ]; then
  grim -g "$(slurp)" - | $c2cb
else
  grim - | $c2cb
fi
