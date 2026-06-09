# Manual Operativo Linux para DevSecOps

## Propósito

Este manual consolida el conocimiento operativo, procedimientos, comandos, troubleshooting y prácticas DevSecOps aprendidas durante el laboratorio Linux.

Su objetivo es servir como guía de consulta rápida para administración Linux, DevOps, DevSecOps, Cloud Computing y Ciberseguridad.

---

# Capítulo 1 - Sistema de Archivos Linux

## Conceptos Clave

* Directorio raíz (/)
* Directorio personal (/home)
* Configuración del sistema (/etc)
* Archivos temporales (/tmp)
* Logs del sistema (/var/log)

## Comandos Esenciales

```bash
pwd
ls
ls -la
cd
mkdir
touch
tree
```

## Relación con DevSecOps

Comprender dónde se almacenan aplicaciones, configuraciones, logs y artefactos de seguridad.

---

# Capítulo 2 - Usuarios y Permisos

## Conceptos Clave

* UID
* GID
* Propietario
* Principio de mínimo privilegio
* Modelo de permisos Linux

## Comandos Esenciales

```bash
id
whoami
chmod
chown
stat
sudo
```

## Relación con DevSecOps

Base para Identity and Access Management (IAM) y control de acceso seguro.

---

# Capítulo 3 - Gestión de Procesos

## Conceptos Clave

* PID
* Procesos en primer plano
* Procesos en segundo plano
* Servicios
* systemd

## Comandos Esenciales

```bash
ps aux
jobs
kill
systemctl
top
```

## Relación con DevSecOps

Troubleshooting, monitoreo e investigación de incidentes.

---

# Capítulo 4 - Fundamentos de Networking

## Conceptos Clave

* Direccionamiento IP
* DNS
* Routing
* Puertos
* Servicios

## Comandos Esenciales

```bash
ip addr
ip route
ping
ss -tuln
curl ifconfig.me
```

## Relación con DevSecOps

Comunicación entre sistemas, seguridad de red y conectividad de infraestructura.

---

# Capítulo 5 - Monitoreo del Sistema

## Conceptos Clave

* Uso de CPU
* Uso de memoria
* Uso de disco
* Monitoreo de procesos
* Estado general del sistema

## Comandos Esenciales

```bash
uptime
free -h
df -h
du -sh
top
ps aux
```

## Relación con DevSecOps

Observabilidad, monitoreo operativo y resolución de problemas.

---

# Capítulo 6 - Gestión de Paquetes

## Objetivo

Comprender cómo Linux administra software mediante repositorios, paquetes, dependencias y actualizaciones.

## Conceptos Clave

* Paquete
* Repositorio
* Dependencia
* Metadatos de paquetes
* Gestión de parches
* Supply Chain Security

## Comandos Esenciales

```bash
apt update
apt upgrade
apt show <paquete>
apt-cache policy <paquete>
apt-cache show <paquete>
dpkg -l
```

## Referencia de Comandos

### apt update

Actualiza la información de paquetes disponible desde los repositorios configurados.

### apt upgrade

Instala las actualizaciones disponibles.

### apt show

Muestra:

* Mantenedor
* Versión
* Tamaño de descarga
* Tamaño instalado
* Repositorio origen

### apt-cache policy

Permite verificar:

* Versión instalada
* Versión candidata
* Repositorio origen

### dpkg -l

Lista los paquetes instalados.

## Relación con DevSecOps

La gestión de paquetes está relacionada con:

* Gestión de vulnerabilidades
* Gestión de parches
* Hardening Linux
* Compliance
* Seguridad de la cadena de suministro

Antes de instalar o actualizar software se debe verificar:

* Origen
* Mantenedor
* Versión
* Integridad
* Repositorio

---

# Apéndice A - Checklist de Troubleshooting Linux

(Pendiente de completar)

---

# Apéndice B - Comandos Comunes DevSecOps

(Pendiente de completar)

---

# Apéndice C - Equivalencias Linux ↔ AWS

(Pendiente de completar)

---

# Apéndice D - Lecciones Aprendidas

## Lección Aprendida #001

WARNING:
apt does not have a stable CLI interface.

Contexto:
Apareció al ejecutar:

apt list --installed | wc -l

Interpretación:
APT está diseñado para uso interactivo.

Para automatización, CI/CD y scripts se recomienda utilizar apt-get.

Regla práctica:

* Uso manual → apt
* Scripts → apt-get
* CI/CD → apt-get
* Dockerfiles → apt-get

Relación DevSecOps:
Automatización confiable y reproducible.

---

## Lección Aprendida #002

Ubuntu 24.04 utiliza el formato deb822.

Contexto:
El archivo sources.list ya no contiene los repositorios principales.

Observación:

/etc/apt/sources.list.d/ubuntu.sources

Interpretación:
Los repositorios ahora se gestionan mediante archivos independientes más estructurados.

Relación DevSecOps:
Configuraciones más mantenibles y auditables.

---

## Lección Aprendida #003

Actualizaciones pendientes.

Contexto:

apt list --upgradable

Interpretación:
La existencia de actualizaciones pendientes no implica necesariamente una vulnerabilidad, pero sí la necesidad de evaluar y aplicar parches.

Relación DevSecOps:
Patch Management.

---

## Lección Aprendida #004

Uso de apt-cache policy.

Contexto:
Se revisaron los paquetes:

* trivy
* systemd

Permite verificar:

* Versión instalada
* Versión candidata
* Repositorio origen

Relación DevSecOps:

* Auditoría de software
* Gestión de vulnerabilidades
* Supply Chain Security

---

## Lección Aprendida #005

Uso de apt show.

Permite inspeccionar un paquete antes de instalarlo o actualizarlo.

Información relevante:

* Mantenedor
* Homepage
* Repositorio
* Tamaño de descarga
* Tamaño instalado

Uso recomendado:

Verificar origen y características antes de incorporar software a un sistema.

---

## Lección Aprendida #006

Los paquetes APT incluyen hashes criptográficos como SHA256 para validar integridad.

Esto forma parte de la cadena de confianza (Supply Chain Security).

Objetivo:

Garantizar que el paquete descargado no haya sido alterado durante la distribución.

## Lección Aprendida #007

El grupo sudo otorga privilegios administrativos.

Pertenecer al grupo sudo no garantiza acceso inmediato.

Es necesario conocer la contraseña del usuario Linux para utilizar sudo.

Comando de verificación:

id

Permite identificar los grupos asociados al usuario actual.

Relación DevSecOps:

Principio de mínimo privilegio y control de acceso administrativo.

## Lección Aprendida #008

El archivo /etc/passwd contiene todas las cuentas registradas en el sistema.

No todas corresponden a usuarios humanos.

Muchas cuentas pertenecen a servicios internos del sistema operativo.

Comando:

cat /etc/passwd

Relación DevSecOps:

Auditoría de cuentas y reducción de superficie de ataque.

## Lección Aprendida #009

El grupo sudo define qué usuarios pueden ejecutar tareas administrativas.

Comando:

getent group sudo

Objetivo:

Identificar usuarios con privilegios elevados.

Relación DevSecOps:

Control de acceso privilegiado (PAM) y principio de mínimo privilegio.

## Lección Aprendida #010

El comando:

ss -tulnp

permite identificar:

- Puertos abiertos
- Protocolos TCP/UDP
- Procesos asociados

Objetivo:

Detectar servicios expuestos y reducir la superficie de ataque.

Relación DevSecOps:

Attack Surface Reduction.

## Lección Aprendida #011

Un sistema con menos servicios expuestos presenta menor superficie de ataque.

Antes de desplegar un servidor se recomienda identificar:

- Puertos abiertos
- Servicios activos
- Servicios innecesarios

Relación DevSecOps:

Hardening y Zero Trust.

## Lección Aprendida #012

AppArmor es un mecanismo de seguridad que restringe las acciones permitidas a procesos y aplicaciones.

Comando de auditoría:

systemctl status apparmor

Relación DevSecOps:

Defensa en profundidad.

## Lección Aprendida #013

La automatización de auditorías permite verificar
controles de seguridad de forma repetible y consistente.

En lugar de ejecutar comandos manualmente,
se encapsulan verificaciones dentro de scripts.

Relación DevSecOps:

Security as Code.

## Lección Aprendida #014

El comando:

systemctl is-enabled unattended-upgrades

permite verificar si las actualizaciones automáticas están habilitadas.

Resultado observado:

enabled

Interpretación:

El sistema puede aplicar actualizaciones de seguridad automáticamente.

Relación DevSecOps:

Patch Management y reducción de exposición a vulnerabilidades conocidas.

## Lección Aprendida #015

En entornos WSL algunos servicios de seguridad pueden aparecer como inactive.

Ejemplo:

AppArmor

Esto no implica necesariamente una configuración insegura, ya que WSL no replica completamente el comportamiento de una instalación Linux nativa.

Relación DevSecOps:

Comprender las diferencias entre entornos de laboratorio y producción.

## Lección Aprendida #016

Un script de auditoría permite consolidar múltiples verificaciones operativas y de seguridad en una única ejecución.

Ejemplo:

./scripts/system-audit.sh

Beneficios:

- Estandarización
- Repetibilidad
- Automatización
- Recolección de evidencia

Relación DevSecOps:

Infrastructure Assessment y Security as Code.

## Lección Aprendida #017

No todos los scripts tienen el mismo propósito.

Monitorización:

Objetivo:
Conocer el estado actual del sistema.

Auditoría:

Objetivo:
Evaluar seguridad, configuración y cumplimiento.

Ejemplos:

monitor.sh
→ Salud operativa

system-audit.sh
→ Estado operativo y seguridad

Relación DevSecOps:

Observabilidad y Security Assessment.

