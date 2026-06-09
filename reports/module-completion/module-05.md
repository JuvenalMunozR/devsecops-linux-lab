# Reporte de Aprendizaje - Módulo 05

## System Monitoring

### Objetivo

Comprender cómo monitorear el estado operativo de un sistema Linux utilizando herramientas nativas de observabilidad.

---

## Actividades Realizadas

* Revisión del uptime del sistema.
* Análisis de memoria RAM.
* Revisión de uso de swap.
* Inspección de utilización de discos.
* Identificación de procesos activos.
* Análisis de consumo de CPU y memoria.

---

## Comandos Practicados

```bash
uptime
free -h
df -h
du -sh
top
ps aux --sort=-%cpu
ps aux --sort=-%mem
```

---

## Conceptos Aprendidos

### Load Average

Representa la carga promedio del sistema durante distintos intervalos de tiempo.

### Memory Utilization

Permite determinar cuánta memoria está siendo utilizada por procesos y servicios.

### Swap

Memoria secundaria utilizada cuando la RAM disponible disminuye.

### Disk Utilization

Permite identificar posibles problemas de capacidad y almacenamiento.

### Process Monitoring

Ayuda a detectar procesos que consumen recursos de forma excesiva.

---

## Relación con DevSecOps

El monitoreo es una capacidad fundamental para:

* Observabilidad.
* Detección temprana de incidentes.
* Investigación de problemas.
* Capacity Planning.
* Monitoreo de infraestructura.

---

## Lecciones Aprendidas

La observabilidad es un componente crítico de cualquier entorno moderno de DevOps o DevSecOps.

Antes de solucionar un problema es necesario poder medirlo y comprenderlo mediante métricas y monitoreo.
