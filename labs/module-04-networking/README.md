# Module 04 - Networking Foundations

## Objective

Understand Linux networking fundamentals, including host identification, IP addressing, routing, DNS resolution, connectivity testing, and network service inspection.

---

## Topics Covered

* Hostname identification
* Network interfaces
* IP addressing
* Routing tables
* DNS configuration
* Connectivity testing
* Open ports and listening services

---

## Commands Practiced

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

## Concepts Learned

### Hostname

Unique identifier assigned to a Linux host.

### IP Address

Private network address assigned to a network interface.

### Routing

Defines how traffic reaches external networks.

### DNS

Responsible for translating hostnames into IP addresses.

### Listening Services

Applications expose services through TCP or UDP ports.

---

## Laboratory Findings

### Private IP

```text
172.24.19.73
```

### Default Gateway

```text
172.24.16.1
```

### DNS Resolver

```text
10.255.255.254
```

### Public IP

```text
186.148.210.58
```

---

## DevSecOps Relevance

Networking fundamentals are essential for:

* AWS VPC
* Security Groups
* Docker Networking
* Kubernetes Networking
* Network Troubleshooting
* Security Monitoring
* Service Discovery

Understanding network communication is critical for designing secure and resilient systems.

---

## Laboratory Outcome

Successfully inspected network interfaces, routing configuration, DNS settings, connectivity, and listening services in a Linux environment.
