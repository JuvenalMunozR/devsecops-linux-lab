# Reporte de Aprendizaje - Módulo 03

## Process Management

### Objetivo

Comprender cómo Linux administra procesos, trabajos en segundo plano y servicios del sistema para realizar monitoreo, troubleshooting y administración segura.

---

## Actividades Realizadas

Durante este módulo se realizaron actividades relacionadas con:

* Creación de procesos en segundo plano.
* Identificación de procesos mediante PID.
* Monitoreo de procesos activos.
* Búsqueda de procesos específicos.
* Terminación controlada de procesos.
* Revisión de servicios Linux mediante systemd.

---

## Comandos Practicados

```bash
sleep
jobs
ps aux
grep
kill
systemctl
```

---

## Conceptos Aprendidos

### Process ID (PID)

Cada proceso en Linux posee un identificador único denominado PID que permite monitorearlo o administrarlo.

---

### Background Jobs

Los procesos pueden ejecutarse en segundo plano utilizando `&`, permitiendo continuar trabajando en la terminal.

Ejemplo:

```bash
sleep 300 &
```

---

### Process Monitoring

Linux permite inspeccionar procesos activos mediante herramientas como:

```bash
ps aux
```

---

### Process Termination

Los procesos pueden finalizarse utilizando:

```bash
kill <PID>
```

---

### Linux Services

Los servicios del sistema son administrados mediante `systemd` y pueden consultarse con:

```bash
systemctl
```

---

## Relación con DevSecOps

La gestión de procesos es fundamental para:

* Troubleshooting operacional.
* Monitoreo de servicios.
* Investigación de incidentes.
* Detección de comportamientos anómalos.
* Administración de contenedores.
* Observabilidad.

Comprender los procesos permite identificar aplicaciones comprometidas, servicios inestables o consumos anormales de recursos.

---

## Dificultades Encontradas

Se reforzó la comprensión de la diferencia entre procesos interactivos, procesos en segundo plano y servicios administrados por systemd.

---

## Lecciones Aprendidas

Todo software que se ejecuta en Linux opera como un proceso.

Este conocimiento será fundamental para comprender posteriormente:

* Docker Containers
* Kubernetes Pods
* Observabilidad
* Monitoreo
* DevOps
* DevSecOps
