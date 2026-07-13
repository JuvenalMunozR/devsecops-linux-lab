# Contributing Guidelines

## Purpose

This document defines the development workflow and contribution standards for the DevSecOps Linux Lab repository.

---

# Branch Strategy

Development is performed on:

```text
refactor/repository-v2
```

The `main` branch only receives reviewed and stable changes.

---

# Session Workflow

## Start a Session

```bash
git fetch --all
git checkout refactor/repository-v2
git pull
git status
```

## End a Session

```bash
git status
git add .
git commit -m "<commit-message>"
git push
```

---

# Commit Convention

Use descriptive commit messages.

Examples:

```text
docs: update networking documentation
feat: add docker networking lab
fix: correct bash scripting examples
refactor: finalize repository architecture
security: improve hardening script
```

---

# Repository Conventions

## Documentation

- Technical documentation is written in English.
- Learning notes may be written in Spanish.

## Repository Structure

- `docs/` → Technical documentation
- `labs/` → Laboratory execution and learning evidence
- `reports/` → Assessment reports and module completion
- `scripts/` → Automation scripts
- `security/` → Security-related scripts
- `study/` → Personal study material
- `templates/` → Reusable templates

---

# Engineering Principles

- Keep the repository organized.
- One objective per repository.
- Prefer simple and maintainable solutions.
- Document important technical decisions.
- Avoid duplicate documentation.
- Complete one feature before starting another.
- Keep the project aligned with its original scope.

---

# Definition of Done

A repository is considered complete when:

- Architecture is stable.
- Documentation is complete.
- Laboratories are finished.
- Scripts are functional.
- Reports are organized.
- No unfinished or placeholder content remains.
- The repository is ready to merge into the `main` branch.

---
