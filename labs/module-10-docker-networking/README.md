# Module 10 - Docker Networking

## Objective

Learn how Docker networks enable communication between containers and external systems.

## Topics Covered

* Docker Networks
* Bridge Networks
* Custom Networks
* Container-to-Container Communication
* Docker DNS Resolution
* Port Mapping
* Service Exposure

## Commands Practiced

```bash
docker network ls
docker network create
docker network inspect
docker exec
ping
docker port
docker ps
```

## Labs Completed

### Lab 10.01 - Custom Network Creation

* Created a custom bridge network.
* Inspected network configuration.
* Reviewed subnet and gateway settings.

### Lab 10.02 - Container Communication

* Connected containers to the same network.
* Verified Docker DNS resolution.
* Tested connectivity using ping.

### Lab 10.03 - Port Mapping

* Deployed an Nginx container.
* Exposed container port 80 to host port 8080.
* Accessed the service from a web browser.

## Evidence

Evidence screenshots are stored in:

labs/module-10-docker-networking/evidence/
