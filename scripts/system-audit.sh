#!/bin/bash

REPORT="reports/system-audit-$(date +%Y%m%d-%H%M%S).txt"

exec > >(tee "$REPORT")
exec 2>&1

echo "=================================="
echo "DEVSECOPS SYSTEM AUDIT"
echo "=================================="

echo
echo "[1] HOSTNAME"
hostname

echo
echo "[2] CURRENT USER"
whoami

echo
echo "[3] UPTIME"
uptime

echo
echo "[4] MEMORY"
free -h

echo
echo "[5] DISK"
df -h /

echo
echo "[6] OPEN PORTS"
ss -tuln

echo
echo "[7] SUDO USERS"
getent group sudo

echo
echo "[8] UPGRADABLE PACKAGES"
apt list --upgradable 2>/dev/null
