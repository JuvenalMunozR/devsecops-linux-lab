# Module 07 - Linux Hardening

## Objective

Learn and apply basic Linux hardening techniques to reduce attack surface, improve system security, and automate security assessments.

---

## Activities Performed

### 1. Privileged User Audit

Commands used:

```bash
whoami
id
getent group sudo
```

Purpose:

* Identify privileged users.
* Verify administrative access.
* Understand the principle of least privilege.

---

### 2. Open Ports Audit

Command used:

```bash
ss -tulnp
```

Purpose:

* Identify listening services.
* Detect exposed network services.
* Evaluate attack surface.

---

### 3. Service Review

Commands used:

```bash
ps aux | grep -E "sshd|cron|rsyslog"
systemctl list-unit-files --type=service | grep enabled
```

Purpose:

* Review active services.
* Identify unnecessary services.
* Understand service persistence.

---

### 4. Automatic Updates Verification

Command used:

```bash
systemctl is-enabled unattended-upgrades
```

Result:

```text
enabled
```

Purpose:

* Verify patch management configuration.
* Reduce exposure to known vulnerabilities.

---

### 5. AppArmor Verification

Command used:

```bash
systemctl is-active apparmor
```

Result observed in WSL:

```text
inactive
```

Observation:

WSL environments may not implement all Linux security controls exactly as a native Ubuntu installation.

---

### 6. Security Automation Scripts

Created scripts:

```text
security/check-sudo-users.sh
security/audit-open-ports.sh
security/host-hardening.sh
scripts/system-audit.sh
```

Purpose:

* Automate repetitive security checks.
* Standardize audit activities.
* Implement Security as Code concepts.

---

## Key Concepts Learned

* Least Privilege
* Attack Surface Reduction
* Security Auditing
* Patch Management
* AppArmor
* Security as Code
* Evidence Collection

---

## DevSecOps Relevance

Linux hardening is a foundational practice for:

* Cloud Security
* Vulnerability Management
* Infrastructure Security
* Security Engineering
* DevSecOps Operations

---

## Outcome

A basic Linux hardening baseline was established and automated through reusable audit scripts.
