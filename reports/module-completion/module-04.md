# Reporte de Aprendizaje - Módulo 04

## Networking Foundations

### Objetivo

Comprender los fundamentos de redes en Linux, incluyendo direccionamiento IP, interfaces de red, rutas, DNS, conectividad y servicios expuestos.

---

## Actividades Realizadas

Durante este módulo se realizaron actividades relacionadas con:

* Identificación del hostname del sistema.
* Análisis de interfaces de red.
* Identificación de direcciones IP privadas.
* Revisión de tablas de enrutamiento.
* Inspección de configuración DNS.
* Pruebas de conectividad hacia Internet.
* Identificación de puertos abiertos y servicios en escucha.
* Comparación entre IP privada e IP pública.

---

## Comandos Practicados

```bash
hostname
hostname -I
ip addr
ip route
cat /etc/resolv.conf
ping
ss -tuln
curl ifconfig.me
```

---

## Conceptos Aprendidos

### Hostname

Nombre asignado al sistema Linux dentro de una red.

---

### Dirección IP Privada

Dirección utilizada para la comunicación dentro de una red local.

Ejemplo observado:

```text
172.24.19.73
```

---

### Gateway

Punto de salida hacia otras redes.

Ejemplo observado:

```text
172.24.16.1
```

---

### DNS

Sistema encargado de traducir nombres de dominio a direcciones IP.

Ejemplo:

```text
google.com → 142.251.x.x
```

---

### Puertos y Servicios

Los servicios utilizan puertos TCP y UDP para recibir conexiones.

Durante el laboratorio se identificaron principalmente servicios DNS en el puerto:

```text
53
```

---

## Relación con DevSecOps

Los fundamentos de redes son esenciales para:

* AWS VPC
* Security Groups
* Network Security
* Docker Networking
* Kubernetes Networking
* Service Discovery
* Troubleshooting
* Observabilidad

Comprender cómo fluye el tráfico permite diseñar infraestructuras más seguras y diagnosticar problemas de conectividad.

---

## Dificultades Encontradas

Se reforzó la comprensión de la diferencia entre:

* IP privada
* IP pública
* DNS
* Gateway
* Servicios en escucha

---

## Lecciones Aprendidas

Toda aplicación distribuida depende de la red para funcionar.

Comprender cómo los sistemas Linux se comunican es un requisito fundamental para trabajar con:

* Cloud Computing
* AWS
* DevOps
* DevSecOps
* Kubernetes
* Seguridad de Infraestructura
