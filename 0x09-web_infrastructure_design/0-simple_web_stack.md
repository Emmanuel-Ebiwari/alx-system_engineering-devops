## What is a Server?

A server is a physical or virtual machine that provides resources, services and data to another computer (the client) over a network.

---

## Role of the Domain Name

A domain is a human-readable name that serves as an alias for an IP address, making it easier for users to identify and access websites without needing to remember numerical IP addresses.

---

## What DNS Record is `www` in `www.foobar.com`?

The `www` is a subdomain of the `foobar.com` domain, which is typically resolved using CNAME or A records, but in this case it uses an A record that points to the `8.8.8.8` IP address.

---

## Role of the Web Server (Nginx)

Nginx Web server handles HTTP/HTTPS requests, serves static files and forwards dynamic requests to the Application server.

---

## Role of the Application Server (PHP)

The PHP Application server handles dynamic requests sent by the Web server, modifies the requests and sends dynamic contents using the codebase.

---

## Role of the Database (MySQL)

The MySQL database stores the necessary data that the application server queries to process and respond to user requests.

---

## How Server Communicates with User

Through the HTTP/HTTPS protocol over TCP/IP, using port 80 or 443.

---

## Issues with this Infrastructure

### SPOF (Single Point of Failure)

If the single server fails, the whole site/application becomes inaccessible.

### Downtime During Maintenance

Updating the codebase or performing maintenance check could cause temporary service outage.

### No Scalability

A single server can only handle a limited number of concurrent requests, else the server gets overwhelmed which leads to slowness or server crash.
