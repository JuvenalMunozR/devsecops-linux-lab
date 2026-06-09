# DevSecOps Linux Operations Handbook

## Purpose

This handbook consolidates operational knowledge, commands, troubleshooting procedures, and DevSecOps practices learned throughout the Linux Lab.

---

# Chapter 1 - Linux Filesystem

## Key Concepts

* Root directory
* Home directory
* System configuration
* Temporary files
* Log storage

## Essential Commands

```bash
pwd
ls
ls -la
cd
mkdir
touch
tree
```

## DevSecOps Relevance

Understanding where applications, configurations, logs, and security artifacts are stored.

---

# Chapter 2 - Users and Permissions

## Key Concepts

* UID
* GID
* Ownership
* Least Privilege
* Permission model

## Essential Commands

```bash
id
whoami
chmod
chown
stat
sudo
```

## DevSecOps Relevance

Identity and access management foundations.

---

# Chapter 3 - Process Management

## Key Concepts

* PID
* Foreground processes
* Background processes
* Services
* systemd

## Essential Commands

```bash
ps aux
jobs
kill
systemctl
top
```

## DevSecOps Relevance

Troubleshooting and incident response.

---

# Chapter 4 - Networking Foundations

## Key Concepts

* IP Addressing
* DNS
* Routing
* Ports
* Services

## Essential Commands

```bash
ip addr
ip route
ping
ss -tuln
curl ifconfig.me
```

## DevSecOps Relevance

Infrastructure communication and network security.

---

# Chapter 5 - System Monitoring

## Key Concepts

* CPU Utilization
* Memory Utilization
* Disk Usage
* Process Monitoring
* System Health

## Essential Commands

```bash
uptime
free -h
df -h
du -sh
top
ps aux
```

## DevSecOps Relevance

Operational visibility and troubleshooting.

---

# Appendix A - Linux Troubleshooting Checklist

# Appendix B - Common DevSecOps Commands

# Appendix C - Linux to AWS Mapping
