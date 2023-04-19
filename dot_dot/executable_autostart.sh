#!/bin/bash

scrdir=$(dirname $0)

echo "[autostart] Starting discord"
${scrdir}/start_discord.sh 2>/dev/null & disown

sleep 3

echo "[autostart] okay done (hopefully idk I didn't implement any checks)"
