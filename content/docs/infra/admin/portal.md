---
title: Nginx Management
weight: 3103
description: Nginx management, web portal configuration, web server, upstream services
icon: fa-solid fa-door-open
categories: [Task]
---


Pigsty installs Nginx on INFRA nodes as the entry point for all web services, listening on standard ports 80/443.

In Pigsty, you can configure Nginx to provide various services through inventory:

- Expose web interfaces for monitoring components like Grafana, VictoriaMetrics (VMUI), Alertmanager, and VictoriaLogs
- Serve static files (software repos, documentation sites, websites, etc.)
- Proxy custom application services (internal apps, database management UIs, Docker application interfaces, etc.)
- Automatically issue self-signed HTTPS certificates, or use Certbot to obtain free Let's Encrypt certificates
- Expose services through a single port using different subdomains for unified access



## Basic Configuration

Customize Nginx behavior via [`infra_portal`](/docs/infra/param#infra_portal) parameter:

```yaml
infra_portal:
  home: { domain: i.pigsty }
  grafana      : { domain: g.pigsty ,endpoint: "${admin_ip}:3000" , websocket: true }
  prometheus   : { domain: p.pigsty ,endpoint: "${admin_ip}:8428" }
  alertmanager : { domain: a.pigsty ,endpoint: "${admin_ip}:9059" }
  blackbox     : { endpoint: "${admin_ip}:9115" }
  vmalert      : { endpoint: "${admin_ip}:8880" }
```



## Server Parameters

| Parameter | Description                                  |
|-----------|-----------------------------------|

---

