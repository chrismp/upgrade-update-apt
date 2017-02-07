#!/bin/bash

NOW=$(date +"%Y-%m-%d-%H%M%S")
LOG_DIR="/media/chris/Seagate Expansion Drive1/DebianBackups/upgrade-update-apt-logs"
LOG_FILE="$LOG_DIR/$NOW.log"

mkdir -p "$LOG_DIR"

nohup apt-get upgrade -y && apt-get update -y > "$LOG_FILE" 2>&1 &
