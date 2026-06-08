# Reporte de Aprendizaje - Módulo 02

## Users and Permissions

### Objetivo

Comprender cómo Linux administra usuarios, grupos, permisos y privilegios para controlar el acceso a recursos del sistema.

---

## Actividades Realizadas

Durante este módulo se realizaron actividades relacionadas con:

* Identificación de usuarios y grupos.
* Revisión de cuentas del sistema.
* Análisis de permisos de archivos.
* Modificación de permisos mediante chmod.
* Uso de sudo para elevación de privilegios.
* Validación de permisos utilizando stat.
* Ejecución de scripts Bash.

---

## Comandos Practicados

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

## Conceptos Aprendidos

### UID (User Identifier)

Cada usuario Linux posee un identificador único denominado UID.

---

### GID (Group Identifier)

Los usuarios pertenecen a uno o más grupos representados mediante un GID.

---

### Permisos Linux

Los permisos se dividen en:

* Read (r)
* Write (w)
* Execute (x)

Aplicados a:

* Owner
* Group
* Others

---

### Permisos 700

Ejemplo utilizado:

```text
-rwx------
```

Interpretación:

* Owner: lectura, escritura y ejecución.
* Group: sin acceso.
* Others: sin acceso.

---

## Relación con DevSecOps

Los permisos Linux constituyen una de las bases de:

* Principle of Least Privilege
* Identity and Access Management (IAM)
* Linux Hardening
* Container Security
* CI/CD Security

Una configuración incorrecta de permisos puede exponer información sensible o permitir accesos no autorizados.

---

## Dificultades Encontradas

Se requirió reforzar la comprensión de la representación octal de permisos y la diferencia entre propietario, grupo y otros usuarios.

---

## Lecciones Aprendidas

La gestión adecuada de usuarios y permisos es uno de los controles de seguridad más importantes dentro de cualquier sistema Linux.

Este conocimiento será fundamental para comprender posteriormente:

* AWS IAM
* Docker Security
* Kubernetes RBAC
* DevSecOps
* Hardening de sistemas
