# Security Policy

## Purpose

This repository is part of a practical DevSecOps learning journey focused on Linux administration, operational security, automation, and secure engineering practices.

The objective is to apply security principles throughout the learning process and build a strong foundation for secure software and infrastructure operations.

---

## Reporting a Vulnerability

If you identify a security issue within this repository, please open an issue describing:

* The affected file or component
* Potential impact
* Reproduction steps
* Recommended mitigation

Sensitive information should never be published in public issues.

---

## Security Best Practices

The following rules apply to all content within this repository.

### Secrets Management

* Never commit credentials, tokens, passwords, or private keys
* Use environment variables whenever possible
* Use placeholder values in examples and documentation

### Infrastructure Security

* Apply the principle of least privilege
* Avoid unnecessary sudo usage
* Validate file permissions and ownership
* Audit exposed services and open ports

### Source Code Security

* Follow secure coding practices
* Review scripts before execution
* Avoid hardcoded secrets
* Validate user input whenever applicable

### Repository Hygiene

* Keep dependencies updated
* Remove temporary files before committing
* Verify Git history before publishing
* Use meaningful commit messages

---

## Scope

This policy applies to:

* Documentation
* Bash scripts
* Security utilities
* Laboratory exercises
* Future Docker configurations
* Future CI/CD pipelines

---

## Learning Focus

This repository promotes practical experience in:

* Linux Security
* DevSecOps
* Secure Automation
* Host Hardening
* Operational Security
* Security by Design
