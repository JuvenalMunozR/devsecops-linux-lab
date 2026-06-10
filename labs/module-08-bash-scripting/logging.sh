#!/bin/bash

LOG_FILE="reports/bash-training.log"

echo "[$(date)] Script started" >> "$LOG_FILE"

echo "Current user: $(whoami)" >> "$LOG_FILE"

echo "Hostname: $(hostname)" >> "$LOG_FILE"

echo "[$(date)] Script finished" >> "$LOG_FILE"

echo "Log written to $LOG_FILE"

