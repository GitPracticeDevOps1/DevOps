#!/bin/bash

LOG_DIR="/var/log/myapp"
LOG_FILE="$LOG_DIR/app.log"

# Create folder if not exists
mkdir -p "$LOG_DIR"

# Create new log with timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
NEW_LOG="$LOG_DIR/app-$TIMESTAMP.log"

cp "$LOG_FILE" "$NEW_LOG"

# remove old logs - keep only latest 5
ls -1tr $LOG_DIR/app-*.log | head -n -5 | xargs -r rm -f

