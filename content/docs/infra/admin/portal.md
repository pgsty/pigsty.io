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


----------------

## Basic Configuration

Customize Nginx behavior via [`infra_portal`](/docs/infra/param#infra_portal) parameter:

```yaml
infra_portal:
  home: { domain: i.pigsty }
```

`infra_portal` is a dictionary where each key defines a service and the value is the service configuration.
Only services with a `domain` defined will generate corresponding Nginx config files.

- **`home`**: Special default server for homepage and built-in monitoring component reverse proxies
- **Proxy services**: Specify upstream service address via `endpoint` for reverse proxy
- **Static services**: Specify local directory via `path` for static file serving


----------------

## Server Parameters

### Basic Parameters

| Parameter  | Description                              |
|------------|------------------------------------------|
| `domain`   | Optional proxy domain                    |
| `endpoint` | Upstream service address (IP:PORT or socket) |
| `path`     | Local directory for static content       |
| `scheme`   | Protocol type (http/https), default http |
| `domains`  | Additional domain list (aliases)         |

### SSL/TLS Options

| Parameter       | Description                              |
|-----------------|------------------------------------------|
| `certbot`       | Enable Let's Encrypt cert management, value is cert name |
| `cert`          | Custom certificate file path             |
| `key`           | Custom private key file path             |
| `enforce_https` | Force HTTPS redirect (301)               |

### Advanced Settings

| Parameter   | Description                         |
|-------------|-------------------------------------|
| `config`    | Custom Nginx config snippet         |
| `index`     | Enable directory listing (for static) |
| `log`       | Custom log file name                |
| `websocket` | Enable WebSocket support            |
| `auth`      | Enable Basic Auth                   |
| `realm`     | Basic Auth prompt message           |


----------------

## Configuration Examples

### Reverse Proxy Services

```yaml
grafana: { domain: g.pigsty, endpoint: "${admin_ip}:3000", websocket: true }
pgadmin: { domain: adm.pigsty, endpoint: "127.0.0.1:8885" }
```

### Static Files and Directory Listing

```yaml
repo: { domain: repo.pigsty.io, path: "/www/repo", index: true }
```

### Custom SSL Certificate

```yaml
secure_app:
  domain: secure.pigsty.io
  endpoint: "${admin_ip}:8443"
  cert: "/etc/ssl/certs/custom.crt"
  key: "/etc/ssl/private/custom.key"
```

### Using Let's Encrypt Certificates

```yaml
grafana:
  domain: demo.pigsty.io
  endpoint: "${admin_ip}:3000"
  websocket: true
  certbot: pigsty.demo    # Cert name, multiple domains can share one cert
```

### Force HTTPS Redirect

```yaml
web.io:
  domain: en.pigsty.io
  path: "/www/web.io"
  certbot: pigsty.doc
  enforce_https: true
```

### Custom Config Snippet

```yaml
web.cc:
  domain: pigsty.io
  path: "/www/web.io"
  domains: [ en.pigsty.io ]
  certbot: pigsty.doc
  config: |
    # rewrite /en/ to /
        location /en/ {
            rewrite ^/en/(.*)$ /$1 permanent;
        }
```


----------------

## Management Commands

```bash
./infra.yml -t nginx           # Full Nginx reconfiguration
./infra.yml -t nginx_config    # Regenerate config files
./infra.yml -t nginx_launch    # Restart Nginx service
./infra.yml -t nginx_cert      # Regenerate SSL certificates
./infra.yml -t nginx_certbot   # Sign certificates with certbot
./infra.yml -t nginx_reload    # Reload Nginx configuration
```


----------------

## Domain Resolution

Three ways to resolve domains to Pigsty servers:

1. **Public domains**: Configure via DNS provider
2. **Internal DNS server**: Configure internal DNS resolution
3. **Local hosts file**: Modify `/etc/hosts`

For local development, add to `/etc/hosts`:

```
<your_public_ip_address> i.pigsty g.pigsty p.pigsty a.pigsty
```

Pigsty includes dnsmasq service, configurable via [`dns_records`](/docs/infra/param#dns_records) parameter for internal DNS resolution.


----------------

## HTTPS Configuration

Configure HTTPS via [`nginx_sslmode`](/docs/infra/param#nginx_sslmode) parameter:

| Mode      | Description                                     |
|-----------|-------------------------------------------------|
| `disable` | Listen HTTP only (`nginx_port`)                 |
| `enable`  | Also listen HTTPS (`nginx_ssl_port`), default self-signed cert |
| `enforce` | Force redirect to HTTPS, all port 80 requests get 301 redirect |

For self-signed certificates, several access options:

- Trust the self-signed CA in browser (download at `http://<ip>/ca.crt`)
- Use browser security bypass (type "thisisunsafe" in Chrome)
- Configure proper CA-signed certs or Let's Encrypt for production


----------------

## Certbot Certificates

Pigsty supports using Certbot to request free Let's Encrypt certificates.

### Enable Certbot

1. Add `certbot` parameter to services in `infra_portal`, specifying cert name
2. Configure [`certbot_email`](/docs/infra/param#certbot_email) with a valid email
3. Set [`certbot_sign`](/docs/infra/param#certbot_sign) to `true` for auto-signing during deployment

```yaml
certbot_sign: true
certbot_email: your@email.com
```

### Manual Certificate Signing

```bash
./infra.yml -t nginx_certbot   # Sign Let's Encrypt certificates
```

Or run the scripts directly on the server:

```bash
/etc/nginx/sign-cert           # Sign certificates
/etc/nginx/link-cert           # Link certificates to Nginx config directory
```

For more info, see [Certbot: Request and Renew HTTPS Certificates](/docs/infra/admin/cert)


----------------

## Default Homepage

Pigsty's default `home` server provides these built-in routes:

| Path                  | Description                       |
|-----------------------|-----------------------------------|
| `/`                   | Homepage navigation               |
| `/ui/`                | Grafana monitoring dashboards     |
| `/vmetrics/`          | VictoriaMetrics VMUI              |
| `/vlogs/`             | VictoriaLogs log query            |
| `/vtraces/`           | VictoriaTraces tracing            |
| `/vmalert/`           | VMAlert alerting rules            |
| `/alertmgr/`          | AlertManager alert management     |
| `/blackbox/`          | Blackbox Exporter                 |
| `/pev`                | PostgreSQL Explain visualization  |
| `/haproxy/<cluster>/` | HAProxy admin interface (if any)  |

These routes allow accessing all monitoring components through a single entry point, no need for multiple domain configurations.


----------------

## Best Practices

- Use domain names instead of IP:PORT for service access
- Properly configure DNS resolution or hosts file
- Enable WebSocket for real-time apps (e.g., Grafana, Jupyter)
- Enable HTTPS for production
- Use meaningful subdomains to organize services
- Monitor Let's Encrypt certificate expiration
- Use `config` parameter for custom Nginx configurations


----------------

## Full Example

Here's the Nginx configuration used by Pigsty's public demo site [demo.pigsty.io](https://demo.pigsty.io):

```yaml
infra_portal:
  home         : { domain: i.pigsty }
  io           : { domain: pigsty.io      ,path: "/www/pigsty.io"   ,cert: /etc/cert/pigsty.io.crt ,key: /etc/cert/pigsty.io.key }
  minio        : { domain: m.pigsty.io    ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
  postgrest    : { domain: api.pigsty.io  ,endpoint: "127.0.0.1:8884" }
  pgadmin      : { domain: adm.pigsty.io  ,endpoint: "127.0.0.1:8885" }
  pgweb        : { domain: cli.pigsty.io  ,endpoint: "127.0.0.1:8886" }
  bytebase     : { domain: ddl.pigsty.io  ,endpoint: "127.0.0.1:8887" }
  jupyter      : { domain: lab.pigsty.io  ,endpoint: "127.0.0.1:8888" ,websocket: true }
  gitea        : { domain: git.pigsty.io  ,endpoint: "127.0.0.1:8889" }
  wiki         : { domain: wiki.pigsty.io ,endpoint: "127.0.0.1:9002" }
  noco         : { domain: noco.pigsty.io ,endpoint: "127.0.0.1:9003" }
  supa         : { domain: supa.pigsty.io ,endpoint: "10.10.10.10:8000" ,websocket: true }
  dify         : { domain: dify.pigsty.io ,endpoint: "10.10.10.10:8001" ,websocket: true }
  odoo         : { domain: odoo.pigsty.io ,endpoint: "127.0.0.1:8069"   ,websocket: true }
  mm           : { domain: mm.pigsty.io   ,endpoint: "10.10.10.10:8065" ,websocket: true }
```


