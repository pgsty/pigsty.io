---
title: Domain Management
weight: 3105
description: Configure local or public domain names to access Pigsty services.
icon: fa-solid fa-globe
categories: [Task]
---


Use domain names instead of IP addresses to access Pigsty's various web services.


## Quick Start

Add the following static resolution records to `/etc/hosts`:

```bash
10.10.10.10 i.pigsty g.pigsty a.pigsty
```

Replace IP address with your actual Pigsty node's IP.



---

## Why Use Domain Names

- Easier to remember than IP addresses
- Flexible pointing to different IPs
- Unified service management through Nginx
- Support for HTTPS encryption
- Prevent ISP hijacking in some regions
- Allow access to internally bound services via proxy



---

## DNS Mechanism

- **DNS Protocol**: Resolves domain names to IP addresses. Multiple domains can point to same IP.

- **HTTP Protocol**: Uses Host header to route requests to different sites on same port (80/443).



---

## Default Domains

