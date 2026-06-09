# Linux Hardening

## Introducción

Linux Hardening es el proceso de reducir la superficie de ataque de un sistema operativo mediante la aplicación de controles de seguridad, restricciones de acceso y buenas prácticas operacionales.

El objetivo es minimizar el riesgo de explotación y mejorar la postura de seguridad del sistema.

---

## Objetivos del Hardening

* Reducir la superficie de ataque.
* Limitar privilegios innecesarios.
* Detectar configuraciones inseguras.
* Mejorar la capacidad de auditoría.
* Aumentar la resiliencia frente a ataques.

---

## Principios Fundamentales

### Principio de Mínimo Privilegio

Los usuarios y procesos deben tener únicamente los permisos estrictamente necesarios para realizar sus funciones.

### Defensa en Profundidad

La seguridad debe implementarse en múltiples capas:

* Usuarios
* Sistema operativo
* Red
* Aplicaciones
* Monitoreo

### Reducción de Superficie de Ataque

Eliminar o deshabilitar servicios, puertos y funcionalidades que no sean necesarias.

---

## Controles Básicos de Hardening

### Auditoría de Usuarios Privilegiados

Comandos:

```bash
getent group sudo
id
whoami
```

Objetivo:

Identificar usuarios con privilegios administrativos.

---

### Auditoría de Puertos

Comando:

```bash
ss -tulnp
```

Objetivo:

Detectar servicios expuestos.

---

### Auditoría de Servicios

Comando:

```bash
systemctl list-unit-files --type=service
```

Objetivo:

Identificar servicios habilitados.

---

### Actualizaciones de Seguridad

Comandos:

```bash
apt list --upgradable
systemctl is-enabled unattended-upgrades
```

Objetivo:

Verificar estado de parches y actualizaciones automáticas.

---

### Control de Aplicaciones

AppArmor permite restringir las acciones que pueden realizar los procesos.

Comando:

```bash
systemctl status apparmor
```

---

## Relación con DevSecOps

Linux Hardening es una práctica fundamental para:

* Cloud Security
* Vulnerability Management
* Compliance
* Infrastructure as Code
* Security as Code

---

## Herramientas Utilizadas en el Laboratorio

* ss
* getent
* systemctl
* apt
* AppArmor

---

## Resultado Esperado

Un sistema Linux con:

* Menos servicios expuestos.
* Menos privilegios innecesarios.
* Mejor capacidad de auditoría.
* Menor riesgo operativo.
