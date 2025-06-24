## Three-Server Web Infrastructure (`www.foobar.com`)

### 🔧 Why Each Component Was Added

- **HAProxy (Load Balancer):** Distributes traffic to backend servers.
- **Nginx (Web Server):** Serves static files & forwards dynamic requests.
- **App Server (PHP):** Processes Dynamic requests and Runs business logic.
- **2 Backend Servers:** Redundancy & better performance under load.
- **MySQL Master-Slave:** Master for writes, Slave for reads or backup.
- **Code Base:** Actual application logic used by app server.

---

### 🔁 Load Balancer: Round Robin

- Sends requests to servers in a sequential and circular order: A → B → A → ...
- Ensures even traffic distribution.

---

### 🟢 Active-Active vs 🔵 Active-Passive

- **Active-Active (Used):** Both servers handle traffic simultaneously.
- **Active-Passive:** Only one server is active; other takes over on failure.

---

### 🗄️ Primary-Replica (MySQL)

- **Primary (Master):** Handles writes (INSERT, UPDATE, DELETE).
- **Replica (Slave):** Handles reads (SELECT), syncs from primary.

---

### 🔄 Primary vs Replica (App-side)

| Node    | Used For      |
| ------- | ------------- |
| Primary | All writes    |
| Replica | Read-only ops |

---

### ⚠️ Infrastructure Issues

- **SPOF:** HAProxy is a single point of failure.
- **Security:** No firewall, no HTTPS (traffic is unencrypted).
- **Monitoring:** No visibility into uptime, traffic, or replication lag.
