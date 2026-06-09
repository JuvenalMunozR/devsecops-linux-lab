# Module 07 Completion Report

## Module

Linux Hardening

## Status

Completed

---

## Objectives Achieved

* Audited privileged users.
* Audited open ports.
* Reviewed active services.
* Verified automatic updates.
* Evaluated AppArmor status.
* Created reusable security audit scripts.
* Generated operational audit reports.

---

## Scripts Developed

### Security Scripts

* check-sudo-users.sh
* audit-open-ports.sh
* host-hardening.sh

### Operations Scripts

* system-audit.sh
* monitor.sh

---

## Security Findings

### Privileged Users

Administrative access is limited to the primary laboratory user.

### Open Ports

Only local DNS-related services and internal WSL services were identified.

### Automatic Updates

Automatic updates are enabled through unattended-upgrades.

### AppArmor

Inactive in the WSL environment.

---

## Lessons Learned

* Security auditing can be automated using Bash scripts.
* Attack surface should be reviewed regularly.
* Patch management is a critical security control.
* Evidence collection improves traceability.
* Security as Code increases consistency and repeatability.

---

## DevSecOps Mapping

| Linux Hardening Activity | DevSecOps Domain             |
| ------------------------ | ---------------------------- |
| User Audit               | Identity & Access Management |
| Open Port Audit          | Attack Surface Management    |
| Service Review           | System Hardening             |
| Patch Verification       | Vulnerability Management     |
| Security Scripts         | Security as Code             |

---

## Completion Date

2026-06-09
