# Reporte de Aprendizaje - Módulo 06

## Package Management

### Objetivo

Comprender cómo Linux administra software mediante repositorios, paquetes, actualizaciones y metadatos utilizando APT.

---

## Actividades Realizadas

* Identificación de la versión de APT.
* Revisión de paquetes instalados.
* Revisión de actualizaciones disponibles.
* Inspección de repositorios configurados.
* Auditoría de paquetes instalados.
* Revisión de metadatos de software.
* Análisis de Trivy como caso práctico.

---

## Comandos Practicados

```bash
apt --version
apt list --installed
apt list --upgradable
apt show
apt-cache show
apt-cache policy
dpkg -l
```

---

## Conceptos Aprendidos

### Repositorios

Los paquetes son distribuidos desde fuentes confiables previamente configuradas.

### Metadatos

Cada paquete posee información asociada que permite evaluar su origen y características.

### Auditoría de Software

Es posible identificar:

* Versión instalada
* Versión candidata
* Repositorio origen

antes de realizar cambios.

### Supply Chain Security

La procedencia e integridad del software forman parte de la cadena de confianza de un sistema.

---

## Relación con DevSecOps

Este conocimiento es fundamental para:

* Gestión de vulnerabilidades.
* Gestión de parches.
* Hardening.
* Seguridad de la cadena de suministro.
* Automatización de infraestructura.

---

## Lecciones Aprendidas

Antes de instalar o actualizar software es recomendable validar:

* Origen
* Versión
* Mantenedor
* Dependencias
* Integridad

La confianza en el software comienza por la confianza en su repositorio.
