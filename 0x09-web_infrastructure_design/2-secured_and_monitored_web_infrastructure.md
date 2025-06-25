# Task 3 – Secure and Monitored Web Infrastructure for www.foobar.com

This task improves the previous setup by adding security (firewalls, HTTPS) and monitoring tools. Below are the key explanations for decisions and issues around the infrastructure.

---

## 🔧 Why Each Extra Element Was Added

- **Firewalls (x3):**  
  Each server has a firewall to restrict traffic. Only specific ports like 443 (HTTPS) or 3306 (MySQL) are open. This keeps unwanted or malicious access out.

- **SSL Certificate:**  
  SSL is installed on the load balancer to serve the site over HTTPS. This ensures data between the user and the server is encrypted, which is now a standard requirement for websites.

- **Monitoring Clients:**  
  A monitoring agent is installed on each server (could be something like Sumologic or Prometheus node exporter). This is needed to track performance, errors, traffic, and general system health.

---

## 🔐 Why HTTPS Is Used

Traffic is served over HTTPS to:

- Encrypt sensitive user data like passwords and form submissions
- Prevent eavesdropping or tampering during transit
- Comply with modern security standards (browsers flag non-HTTPS sites as insecure)

---

## 📈 What Monitoring Is Used For

Monitoring gives real-time insight into:

- Server uptime and resource usage (CPU, memory)
- HTTP traffic (e.g., how many requests)
- Database health and replication
- Detecting anomalies before users notice anything wrong

---

## 📤 How the Monitoring Tool Collects Data

Each monitoring agent runs on its respective server and:

- Collects logs, metrics, and events
- Sends that data periodically to a central service (e.g., Sumologic or Grafana/Prometheus stack)
- From there, we can visualize it or set alerts

---

## 📊 How to Monitor QPS (Queries Per Second)

To monitor QPS:

1. Enable access logs in your web server (e.g., Nginx)
2. Use a tool or script to count the number of requests per second from those logs
3. Alternatively, set up metrics collection (e.g., via Prometheus) and build a dashboard or alert rule based on request rate

---

## ⚠️ Infrastructure Limitations

### 1. SSL Termination at the Load Balancer

- SSL ends at the load balancer, meaning internal traffic to backend servers is unencrypted (unless re-encrypted).
- This might not be okay in stricter environments where all internal traffic should also be secure.
- A fix would be to re-encrypt or use end-to-end SSL.

### 2. Only One MySQL Writer

- Writes go to just one MySQL node (the Primary).
- If that server goes down, writes fail.
- There’s no automatic failover unless you implement one.
- A better setup would be a clustered DB solution or an auto-promoting replica system.

### 3. All-in-One Backend Servers

- Each backend server has everything: Nginx, app code, and database (in some cases).
- While simple, this makes scaling harder — you can't scale app or DB layers independently.
- Also increases risk: one bug or overload could crash the entire stack on that server.

---
