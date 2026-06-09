#!/bin/bash

echo "=== HOST HARDENING CHECK ==="
echo

echo "[1] SUDO USERS"
getent group sudo

echo
echo "[2] OPEN PORTS"
ss -tulnp

echo
echo "[3] APPARMOR STATUS"
systemctl is-active apparmor 2>/dev/null

echo
echo "[4] AUTOMATIC UPDATES"
systemctl is-enabled unattended-upgrades 2>/dev/null
