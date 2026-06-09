# Module 06 - Package Management

## Objective

Understand how Linux manages software packages, repositories, updates, and package metadata using the APT ecosystem.

---

## Topics Covered

* APT package management
* Installed packages
* Upgradable packages
* Repository configuration
* Package metadata
* Package auditing
* Supply Chain Security

---

## Commands Practiced

```bash
apt --version
apt list --installed
apt list --upgradable
apt show
apt-cache show
apt-cache policy
dpkg -l
```

---

## Concepts Learned

### APT

Advanced Package Tool (APT) is the package management system used by Ubuntu and Debian-based distributions.

### Repositories

Software packages are distributed through trusted repositories.

### Package Metadata

Each package contains information such as:

* Maintainer
* Version
* Repository
* Dependencies
* Download size
* Installed size

### Package Auditing

Administrators can verify:

* Installed version
* Available version
* Source repository

before performing updates.

### Supply Chain Security

Package integrity and trust are critical security controls in modern infrastructure.

---

## Laboratory Findings

### Installed Packages

Approximately 609 packages installed.

### Repositories Detected

* ubuntu.sources
* trivy.list

### Package Analysis

Trivy package inspection revealed:

* Installed Version: 0.70.0
* Candidate Version: 0.71.0
* Maintainer: Aqua Security

---

## DevSecOps Relevance

Package management is essential for:

* Vulnerability Management
* Patch Management
* System Hardening
* Supply Chain Security
* Infrastructure Maintenance

---

## Laboratory Outcome

Successfully inspected package repositories, installed software, update candidates, metadata, and package trust relationships.
