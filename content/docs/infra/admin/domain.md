---
title: Domain Management
weight: 3105
description: Configure local or public domain names to access Pigsty services.
icon: fa-solid fa-globe
categories: [Task]
---


Use domain names instead of IP addresses to access Pigsty's various web services.


----------------

## Quick Start

Add the following static resolution records to `/etc/hosts`:

```
10.10.10.10 i.pigsty g.pigsty p.pigsty a.pigsty
```

Replace IP address with your actual Pigsty node's IP.


----------------

## Why Use Domain Names

- Easier to remember than IP addresses
- Flexible pointing to different IPs
- Unified service management through Nginx
- Support for HTTPS encryption
- Prevent ISP hijacking in some regions
- Allow access to internally bound services via proxy


----------------

## DNS Mechanism

**DNS Protocol**: Resolves domain names to IP addresses. Multiple domains can point to same IP.

**HTTP Protocol**: Uses Host header to route requests to different sites on same port (80/443).


----------------

## Default Domains

Pigsty predefines the following default domains:

| Domain     | Service         | Port    | Purpose                          |
|------------|-----------------|---------|----------------------------------|
| `i.pigsty` | Nginx           | 80/443  | Default homepage, local repo, unified entry |
| `g.pigsty` | Grafana         | 3000    | Monitoring and visualization     |
| `p.pigsty` | VictoriaMetrics | 8428    | VMUI/PromQL entry                |
| `a.pigsty` | AlertManager    | 9059    | Alert routing                    |
| `m.pigsty` | MinIO           | 9001    | Object storage console           |


----------------

## Resolution Methods

### Local Static Resolution

Add entries to `/etc/hosts` on the client machine:

```bash
# Linux/macOS
sudo vim /etc/hosts

# Windows
notepad C:\Windows\System32\drivers\etc\hosts
```

Add content:

```
10.10.10.10 i.pigsty g.pigsty p.pigsty a.pigsty m.pigsty
```

### Internal Dynamic Resolution

Pigsty includes dnsmasq as an internal DNS server. Configure managed nodes to use INFRA node as DNS server:

```yaml
node_dns_servers: ['${admin_ip}']   # Use INFRA node as DNS server
node_dns_method: add                # Add to existing DNS server list
```

Configure domain records resolved by dnsmasq via [`dns_records`](/docs/infra/param#dns_records):

```yaml
dns_records:
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty sss.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```

### Public Domain Names

Purchase a domain and add DNS A record pointing to public IP:

1. Purchase domain from registrar (e.g., `example.com`)
2. Configure A record pointing to server public IP
3. Use real domain in [`infra_portal`](/docs/infra/param#infra_portal)


----------------

## Built-in DNS Service

Pigsty runs dnsmasq on INFRA nodes as a DNS server.

### Related Parameters

| Parameter                                              | Default         | Description         |
|--------------------------------------------------------|-----------------|---------------------|
| [`dns_enabled`](/docs/infra/param#dns_enabled)         | `true`          | Enable DNS service  |
| [`dns_port`](/docs/infra/param#dns_port)               | `53`            | DNS listen port     |
| [`dns_records`](/docs/infra/param#dns_records)         | See below       | Default DNS records |

Default DNS records:

```yaml
dns_records:
  - "${admin_ip} i.pigsty"
  - "${admin_ip} m.pigsty sss.pigsty api.pigsty adm.pigsty cli.pigsty ddl.pigsty"
```

### Dynamic DNS Registration

Pigsty automatically registers DNS records for PostgreSQL clusters and instances:

- **Instance-level DNS**: `<pg_instance>` points to instance IP (e.g., `pg-meta-1`)
- **Cluster-level DNS**: `<pg_cluster>` points to primary IP or VIP (e.g., `pg-meta`)

Cluster-level DNS target controlled by [`pg_dns_target`](/docs/pgsql/param#pg_dns_target):

| Value     | Description                                    |
|-----------|------------------------------------------------|
| `auto`    | Auto-select: use VIP if available, else primary IP |
| `primary` | Always point to primary IP                     |
| `vip`     | Always point to VIP (requires VIP enabled)     |
| `none`    | Don't register cluster DNS                     |
| `<ip>`    | Specify fixed IP address                       |

Add suffix to cluster DNS via [`pg_dns_suffix`](/docs/pgsql/param#pg_dns_suffix).


----------------

## Node DNS Configuration

Pigsty manages DNS configuration on managed nodes.

### Static hosts Records

Configure static `/etc/hosts` records via [`node_etc_hosts`](/docs/node/param#node_etc_hosts):

```yaml
node_etc_hosts:
  - "${admin_ip} i.pigsty sss.pigsty"
  - "10.10.10.20 db.example.com"
```

### DNS Server Configuration

| Parameter                                                  | Default            | Description          |
|------------------------------------------------------------|--------------------|----------------------|
| [`node_dns_method`](/docs/node/param#node_dns_method)      | `add`              | DNS config method    |
| [`node_dns_servers`](/docs/node/param#node_dns_servers)    | `['${admin_ip}']`  | DNS server list      |
| [`node_dns_options`](/docs/node/param#node_dns_options)    | See below          | resolv.conf options  |

`node_dns_method` options:

| Value       | Description                        |
|-------------|------------------------------------|
| `add`       | Prepend to existing DNS server list |
| `overwrite` | Completely overwrite DNS config    |
| `none`      | Don't modify DNS config            |

Default DNS options:

```yaml
node_dns_options:
  - options single-request-reopen timeout:1
```


----------------

## HTTPS Certificates

Pigsty uses self-signed certificates by default. Options include:

- Ignore warnings, use HTTP
- Trust self-signed CA certificate (download at `http://<ip>/ca.crt`)
- Use real CA or get free public domain certs via Certbot

See [CA and Certificates](./cert/) documentation for details.


----------------

## Extended Domains

Pigsty reserves the following domains for various application services:

| Domain        | Purpose              |
|---------------|----------------------|
| `adm.pigsty`  | PgAdmin interface    |
| `ddl.pigsty`  | Bytebase DDL management |
| `cli.pigsty`  | PgWeb CLI interface  |
| `api.pigsty`  | PostgREST API service |
| `lab.pigsty`  | Jupyter environment  |
| `git.pigsty`  | Gitea Git service    |
| `wiki.pigsty` | Wiki.js docs         |
| `noco.pigsty` | NocoDB               |
| `supa.pigsty` | Supabase             |
| `dify.pigsty` | Dify AI              |
| `odoo.pigsty` | Odoo ERP             |
| `mm.pigsty`   | Mattermost           |

Using these domains requires configuring corresponding services in [`infra_portal`](/docs/infra/param#infra_portal).


----------------

## Management Commands

```bash
./infra.yml -t dns            # Full DNS service configuration
./infra.yml -t dns_config     # Regenerate dnsmasq config
./infra.yml -t dns_record     # Update default DNS records
./infra.yml -t dns_launch     # Restart dnsmasq service

./node.yml -t node_hosts      # Configure node /etc/hosts
./node.yml -t node_resolv     # Configure node DNS resolver

./pgsql.yml -t pg_dns         # Register PostgreSQL DNS records
./pgsql.yml -t pg_dns_ins     # Register instance-level DNS only
./pgsql.yml -t pg_dns_cls     # Register cluster-level DNS only
```


