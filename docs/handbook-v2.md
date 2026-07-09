# MANUAL OPERATIVO LINUX PARA DEVSECOPS

---

# Prólogo

Este manual consolida el conocimiento adquirido durante el desarrollo del proyecto **DevSecOps Linux Lab**.

Su propósito es servir como guía personal de consulta para operaciones Linux, Docker, DevOps, DevSecOps, Cloud Computing y Ciberseguridad.

El contenido se construye progresivamente a medida que se completan los módulos del laboratorio.

---

# Objetivo

Centralizar procedimientos, conceptos, comandos, buenas prácticas, troubleshooting y experiencias obtenidas durante el laboratorio para disponer de una base de conocimiento reutilizable en entornos profesionales.

---

# Cómo utilizar este manual

El manual está organizado en cuatro partes:

- **Parte I:** Diario de Aprendizaje.
- **Parte II:** Referencia Operativa.
- **Parte III:** Checklists de Ingeniería.
- **Parte IV:** Playbooks de Resolución de Problemas.

Cada módulo del laboratorio aportará contenido a una o varias de estas secciones.

---

# Estándares de documentación

- Idioma: Español.
- Comandos en inglés.
- Código en inglés.
- Basado en experiencias reales del laboratorio.
- Orientado a consulta rápida.
- Actualización continua.

---

# ============================================================================
# PARTE I - DIARIO DE APRENDIZAJE
# ============================================================================

> ## Lección Aprendida #001

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

## Lección Aprendida #018

Las variables permiten almacenar información
reutilizable dentro de un script Bash.

Ejemplo:

HOST_NAME=$(hostname)

USER_NAME=$(whoami)

CURRENT_DATE=$(date)

Beneficios:

- Reutilización
- Automatización
- Mantenibilidad
- Legibilidad

Las variables pueden almacenar:

- Texto
- Números
- Rutas
- Resultados de comandos

Relación DevSecOps:

Infrastructure Automation y Script Reusability.

## Lección Aprendida #019

Los argumentos permiten enviar información a un script durante su ejecución.

Ejemplo:

./script.sh valor1 valor2

Dentro del script:

$1 → primer argumento
$2 → segundo argumento

Beneficios:

- Reutilización
- Flexibilidad
- Automatización

Relación DevSecOps:

Deployment Automation.

## Lección Aprendida #020

Los condicionales permiten que un script tome decisiones
en función de una condición evaluada.

Ejemplo:

if [ "$ENVIRONMENT" = "prod" ]

Casos de uso:

- Deployments
- Validaciones
- Hardening
- Auditorías
- Automatización

Relación DevSecOps:

Decision Automation.

## Lección Aprendida #021

Las funciones permiten encapsular y reutilizar bloques
de código dentro de un script.

Ejemplo:

show_system_info() {
    echo "Hostname: $(hostname)"
}

Beneficios:

- Modularidad
- Reutilización
- Mantenimiento
- Legibilidad

Relación DevSecOps:

Automation Engineering.

## Lección Aprendida #022

El carácter * actúa como wildcard (comodín)
en Bash y Linux.

Ejemplos:

chmod 755 *.sh

rm *.tmp

cat *.log

Permite ejecutar operaciones sobre múltiples archivos
simultáneamente.

Relación DevSecOps:

Automatización y administración masiva de recursos.

## Lección Aprendida #023

Los scripts deben validar los argumentos recibidos
antes de ejecutar acciones.

Conceptos:

$#
→ Número de argumentos recibidos.

exit 1
→ Finalización con error.

Beneficios:

- Evitar errores operacionales
- Mejor experiencia de uso
- Scripts más robustos

Relación DevSecOps:

Input Validation y Automation Reliability.

## Lección Aprendida #024


Los scripts deben verificar la existencia de archivos y recursos antes de utilizarlos.

Operadores comunes:

* `-f` → archivo existente
* `-d` → directorio existente

Ejemplo:
 
```
if [ ! -f "$FILE" ]; then
    echo "Error: file does not exist"
    exit 1
fi
```

Beneficios:

* Evitar errores de ejecución
* Mayor confiabilidad
* Automatización más segura
* Validación preventiva

Relación DevSecOps:

Defensive Scripting y Automation Reliability.

---

## Lección Aprendida #025

Los logs permiten registrar eventos y actividades de un script para auditoría y troubleshooting.

Operadores:

* `>` → sobrescribir archivo
* `>>` → agregar al archivo

Beneficios:

* Auditoría
* Trazabilidad
* Diagnóstico
* Evidencia operacional

Relación DevSecOps:

Observability y Operational Logging.

---

## Lección Aprendida #026

La terminal Bash interpreta cualquier línea ingresada como un comando a ejecutar.

Si se pega texto descriptivo o salidas de comandos, Bash intentará ejecutarlos y generará errores como:

* command not found
* Permission denied
* Is a directory

Buenas prácticas:

* Ejecutar únicamente comandos válidos.
* No copiar el prompt junto al comando.
* No pegar salidas de comandos en la terminal.

Relación DevSecOps:

Command Line Fundamentals.

---

## Lección Aprendida #027

Los scripts pueden validar directorios mediante el operador:

`-d`

Ejemplo:

```
if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist"
    exit 1
fi
```

Casos de uso:

* Backups
* Logs
* Artefactos CI/CD
* Directorios de despliegue

Relación DevSecOps:

Infrastructure Validation.

## Lección Aprendida #028

Docker Desktop y WSL2 requieren integración explícita
para que la distribución Linux pueda utilizar el motor
Docker instalado en Windows.

Síntoma:

docker: command not found

Causa:

La integración WSL no está habilitada o Docker Desktop
no está ejecutándose.

Relación DevSecOps:

Container Platform Management.


## Lección Aprendida #029

Docker asigna nombres únicos a cada contenedor.

Si un nombre ya existe, Docker impedirá la creación
de un nuevo contenedor con el mismo identificador.

Comandos útiles:

docker run
docker start
docker exec

Relación DevSecOps:

Container Lifecycle Management.

## Lección Aprendida #030

Un contenedor Docker es un entorno aislado del host.

Las herramientas disponibles dentro del contenedor
dependen exclusivamente de la imagen utilizada.

El hecho de que Docker esté instalado en el host
no implica que Docker esté disponible dentro
del contenedor.

Relación DevSecOps:

Container Isolation.

## Lección Aprendida #031

Los Docker Volumes permiten persistir datos fuera
del ciclo de vida de un contenedor.

Un contenedor puede ser eliminado sin perder
la información almacenada en el volumen asociado.

Beneficios:

- Persistencia
- Backups
- Recuperación
- Aplicaciones Stateful

Relación DevSecOps:

Data Persistence y Container Storage.

## Lección Aprendida #032

Un Dockerfile permite definir una imagen mediante código.

Cada instrucción genera una capa reutilizable durante
el proceso de construcción de la imagen.

Conceptos clave:

- FROM
- RUN
- CMD
- Layers

Beneficios:

- Reproducibilidad
- Automatización
- Versionado
- Integración CI/CD

Relación DevSecOps:

Infrastructure as Code e Immutable Infrastructure.

## Lección Aprendida #033

Docker permite crear redes personalizadas mediante
el driver bridge.

Cada red posee su propio segmento IP, gateway
y espacio de comunicación entre contenedores.

Comandos utilizados:

docker network create
docker network ls
docker network inspect

Relación DevSecOps:

Container Networking y Service Communication.

## Lección Aprendida #034

Docker proporciona resolución DNS interna para
contenedores conectados a una misma red.

Los contenedores pueden comunicarse utilizando
sus nombres sin necesidad de conocer direcciones IP.

Ejemplo:

app1 → app2

Beneficios:

- Menor dependencia de IPs
- Mayor portabilidad
- Simplificación de arquitecturas

Relación DevSecOps:

Service Discovery y Container Communication.

## Lección Aprendida #035

Docker permite exponer servicios internos mediante
Port Mapping.

Sintaxis:

docker run -p HOST_PORT:CONTAINER_PORT

Ejemplo:

docker run -d -p 8080:80 nginx

Esto permite acceder a una aplicación contenida
desde el sistema host.

Beneficios:

- Publicación de servicios
- Acceso desde navegadores
- Integración entre aplicaciones
- Exposición controlada de servicios

Relación DevSecOps:

Container Networking y Service Exposure.

## Lección Aprendida #036

Un contenedor Docker puede pertenecer a múltiples
redes simultáneamente.

Esto permite separar servicios según sus funciones
y controlar los flujos de comunicación.

Comandos utilizados:

docker network connect

docker inspect

Beneficios:

- Segmentación de red
- Mayor aislamiento
- Arquitecturas escalables
- Mejor control de tráfico

Relación DevSecOps:

Network Segmentation y Microservices Architecture.

## Lección Aprendida #037

Docker permite conectar y desconectar contenedores
de redes existentes sin necesidad de recrearlos.

Comandos utilizados:

docker network connect

docker network disconnect

Beneficios:

- Flexibilidad operativa
- Segmentación dinámica
- Aislamiento de servicios
- Administración simplificada

Relación DevSecOps:

Network Isolation y Container Lifecycle Management.

---

# ============================================================================
# PARTE II - REFERENCIA OPERATIVA
# ============================================================================

Esta sección reúne procedimientos, comandos y buenas prácticas utilizadas durante el laboratorio.

Su objetivo es servir como guía de consulta rápida para tareas operativas.

---

## Linux

_Pendiente de documentar._

---

## Git

_Pendiente de documentar._

---

## Docker

_Pendiente de documentar._

---

## Docker Compose

_Pendiente de documentar._

---

## Redes

_Pendiente de documentar._

---

## Bash

_Pendiente de documentar._

---

## Seguridad

_Pendiente de documentar._

---

## AWS

_Pendiente de documentar._

---

## Kubernetes

_Pendiente de documentar._

---

# ============================================================================
# PARTE III - CHECKLISTS DE INGENIERÍA
# ============================================================================

Checklists utilizados para validar que un laboratorio está correctamente finalizado.

---

## Checklist Linux

_Pendiente de documentar._

---

## Checklist Docker

_Pendiente de documentar._

---

## Checklist Networking

_Pendiente de documentar._

---

## Checklist Git

_Pendiente de documentar._

---

## Checklist Documentación

_Pendiente de documentar._

---

# ============================================================================
# PARTE IV - PLAYBOOKS DE RESOLUCIÓN DE PROBLEMAS
# ============================================================================

Procedimientos utilizados para diagnosticar y resolver problemas encontrados durante los laboratorios.

---

## Docker

_Pendiente de documentar._

---

## Docker Compose

_Pendiente de documentar._

---

## Linux

_Pendiente de documentar._

---

## Redes

_Pendiente de documentar._

---

## Git

_Pendiente de documentar._

---

# ============================================================================
# ANEXOS
# ============================================================================

## Glosario

_Pendiente de documentar._

---

## Comandos Frecuentes

_Pendiente de documentar._

---

## Referencias

_Pendiente de documentar._
