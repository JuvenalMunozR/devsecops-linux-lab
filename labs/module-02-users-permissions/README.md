# Module 02 - Users and Permissions

## Objective

Understand Linux user management, file ownership, permissions, and privilege control mechanisms used to secure systems and applications.

---

## Topics Covered

* User identification
* UID and GID concepts
* Linux permissions model
* File ownership
* Permission management
* Privilege escalation with sudo
* Basic Bash script execution

---

## Commands Practiced

```bash
whoami
id
cat /etc/passwd
ls -l
chmod
stat
sudo
```

---

## Permission Model

Linux permissions are divided into:

* Owner
* Group
* Others

Example:

```text
-rwx------
```

Equivalent numeric representation:

```text
700
```

Meaning:

* Owner: Read, Write, Execute
* Group: No permissions
* Others: No permissions

---

## Files Created

### secure-script.sh

Simple Bash script used to practice execution permissions.

### test-permissions.txt

File used to validate permission changes and ownership behavior.

---

## DevSecOps Relevance

User and permission management is fundamental for:

* Least Privilege
* Identity and Access Management (IAM)
* Linux Hardening
* Container Security
* CI/CD Security
* Secure Operations

Understanding permissions helps prevent unauthorized access and reduce attack surfaces.

---

## Laboratory Outcome

Successfully explored Linux user identities, permission models, ownership concepts, and secure access control practices.
