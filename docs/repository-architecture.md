# Repository Architecture

## Purpose

This document defines the official architecture, responsibilities and conventions of the DevSecOps Linux Lab repository.

This architecture is considered the baseline for future development.

---

# Repository Structure

```text
devsecops-linux-lab/
├── app/
├── assets/
│   └── screenshots/
├── docs/
├── labs/
├── reports/
│   ├── assessments/
│   ├── module-completion/
│   └── raw/
├── scripts/
├── security/
├── study/
├── templates/
├── README.md
├── SECURITY.md
├── CHANGELOG.md
├── CONTRIBUTING.md
└── .gitignore
```

---

# Directory Responsibilities

| Directory | Purpose | Language |
|-----------|----------|----------|
| docs | Technical documentation | English |
| labs | Learning reports and laboratory execution | Spanish |
| reports/assessments | Professional security assessments | English |
| reports/module-completion | Module completion evidence | Spanish |
| reports/raw | Raw command outputs and logs | N/A |
| scripts | Automation scripts | English |
| security | Security validation and hardening scripts | English |
| study | Personal notes and study material | Spanish |
| templates | Reusable templates | English |
| assets | Images and screenshots | N/A |
| app | Test applications | English |

---

# Development Workflow

Technical Documentation

↓

Laboratory Execution

↓

Automation Scripts

↓

Professional Assessment

---

# Branch Strategy

- main → Stable branch
- refactor/repository-v2 → Active development

---

# Language Standard

- Public technical content → English
- Personal learning content → Spanish

---

# Repository Goal

Build a professional Linux foundation for future DevSecOps, Cybersecurity and Cloud Engineering projects.

---
