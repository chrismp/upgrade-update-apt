#!/bin/bash

NOW=$(date +"%Y-%m-%d-%H%M%S")
LOG_DIR="/media/chris/Seagate Expansion Drive1/DebianBackups/upgrade-update-apt-logs"

mkdir -p "$LOG_DIR"

nohup sh -c 'apt-get upgrade -y && apt-get update -y' > "$LOG_DIR/$NOW.log" 2>&1 &
