# 0x09-web_infrastructure_design

This repository contains three progressively advanced web infrastructure designs for hosting the website **www.foobar.com**, each meeting specific requirements in terms of scalability, security, and monitoring.

## 📌 Task Overview

### ✅ Task 1 – Single Server Architecture

Design of a simple one-server web infrastructure using:

- Nginx (web server)
- PHP application server
- MySQL database
- A single domain name (`www.foobar.com`) pointing to `8.8.8.8`

> 📄 See: [0-simple_web_stack.md](./0-simple_web_stack.md)

---

### ✅ Task 2 – Three Server Scalable Architecture

Design of a load-balanced infrastructure using:

- HAProxy (load balancer)
- Two backend servers with Nginx + PHP
- Primary/Replica MySQL database cluster

> 📄 See: [1-distributed_web_infrastructure.md](./1-distributed_web_infrastructure.md)

---

### ✅ Task 3 – Secure and Monitored Infrastructure

Extended version of Task 2 with:

- 3 Firewalls (one per server)
- SSL certificate for HTTPS encryption
- Monitoring agents (e.g., SumoLogic) on all servers

> 📄 See: [2-secured_and_monitored_web_infrastructure.md](./2-secured_and_monitored_web_infrastructure.md)

---

## 📝 Notes

Each task includes:

- A clear whiteboard-ready architecture diagram
- Infrastructure components and their roles
- Security, scalability, and monitoring considerations
- Identified limitations and suggestions for improvement
