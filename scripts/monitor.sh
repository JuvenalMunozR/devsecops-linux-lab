#!/bin/bash

echo "=================================="
echo "DEVSECOPS SYSTEM MONITOR"
echo "=================================="

echo
echo "[1] DATE"
date

echo
echo "[2] UPTIME"
uptime

echo
echo "[3] MEMORY"
free -h

echo
echo "[4] DISK"
df -h /

echo
echo "[5] LOAD"
uptime