---
title: FAQ
weight: 3070
description: Frequently asked questions about the Pigsty INFRA infrastructure module
icon: fa-solid fa-circle-question
module: [PIGSTY]
categories: [Reference]
tags: []
---



----------------

## What components are included in the INFRA module?

- **Ansible**: Used for automation configuration, deployment, and daily operations.
- **Nginx**: Exposes WebUIs like Grafana, VictoriaMetrics (VMUI), Alertmanager, and hosts local YUM/APT repositories.
- **Self-signed CA**: Issues SSL/TLS certificates for components like Nginx, Patroni, pgBackRest.
- **VictoriaMetrics Suite**: Replaces Prometheus/Loki, including VictoriaMetrics (TSDB), VMAlert (alert evaluation), VictoriaLogs (centralized logs), VictoriaTraces (tracing).
- **Vector**: Node-side log collector, pushes system/database logs to VictoriaLogs.
- **AlertManager**: Aggregates and dispatches alert notifications.
- **Grafana**: Monitoring/visualization platform with numerous preconfigured dashboards and datasources.
- **Chronyd**: Provides NTP time synchronization.
- **DNSMasq**: Provides DNS registration and resolution.
- **ETCD**: Acts as PostgreSQL HA DCS (can also be deployed on dedicated cluster).
- **PostgreSQL**: Acts as CMDB on the admin node (optional).
- **Docker**: Runs stateless tools or applications on nodes (optional).



----------------

## How to re-register monitoring targets to VictoriaMetrics?

VictoriaMetrics uses static service discovery through the `/infra/targets/<job>/*.yml` directory. If target files are accidentally deleted, use the following commands to re-register:

```bash
./infra.yml  -t infra_register   # Re-render infra self-monitoring targets
./node.yml   -t node_register    # Re-render node / HAProxy / Vector targets
./etcd.yml   -t etcd_register    # Re-render etcd targets
./minio.yml  -t minio_register   # Re-render MinIO targets
./pgsql.yml  -t pg_register      # Re-render PGSQL/Patroni targets
./redis.yml  -t redis_register   # Re-render Redis targets
```

Other modules (like `pg_monitor.yml`, `mongo.yml`, `mysql.yml`) also provide corresponding `*_register` tags that can be executed as needed.






----------------

## How to re-register PostgreSQL datasources to Grafana?

PGSQL databases defined in [`pg_databases`](/docs/pgsql/param#pg_databases) are registered as Grafana datasources by default (for use by PGCAT applications).

If you accidentally delete postgres datasources registered in Grafana, you can register them again using the following command:


```bash
# Register all pgsql databases (defined in pg_databases) as grafana datasources
./pgsql.yml -t register_grafana
```






----------------

## How to re-register node HAProxy admin pages to Nginx?

If you accidentally delete the registered haproxy proxy settings in `/etc/nginx/conf.d/haproxy`, you can restore them using the following command:

```bash
./node.yml -t register_nginx     # Register all haproxy admin page proxy settings to nginx on infra nodes
```






----------------

## How to restore DNS registration records in DNSMASQ?

PGSQL cluster/instance domains are registered by default to `/etc/hosts.d/<name>` on infra nodes. You can restore them using the following command:

```bash
./pgsql.yml -t pg_dns    # Register pg DNS names to dnsmasq on infra nodes
```




----------------

## How to expose new upstream services via Nginx?

Although you can access services directly via IP:Port, we still recommend consolidating access entry points by using domain names and accessing various WebUI services through Nginx proxy.
This helps consolidate access, reduce exposed ports, and facilitate access control and auditing.

If you want to expose new WebUI services through the Nginx portal, you can add service definitions to the [`infra_portal`](/docs/infra/param#infra_portal) parameter.
For example, here's the Infra portal configuration used by Pigsty's official demo, exposing several additional services:

```yaml
infra_portal:
  home         : { domain: home.pigsty.cc }
  grafana      : { domain: demo.pigsty.io ,endpoint: "${admin_ip}:3000" ,websocket: true }
  prometheus   : { domain: p.pigsty.cc ,endpoint: "${admin_ip}:8428" }
  alertmanager : { domain: a.pigsty.cc ,endpoint: "${admin_ip}:9059" }
  blackbox     : { endpoint: "${admin_ip}:9115" }
  vmalert      : { endpoint: "${admin_ip}:8880" }
  # Additional web portals
  minio        : { domain: sss.pigsty  ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
  postgrest    : { domain: api.pigsty.cc  ,endpoint: "127.0.0.1:8884"   }
  pgadmin      : { domain: adm.pigsty.cc  ,endpoint: "127.0.0.1:8885"   }
  pgweb        : { domain: cli.pigsty.cc  ,endpoint: "127.0.0.1:8886"   }
  bytebase     : { domain: ddl.pigsty.cc  ,endpoint: "127.0.0.1:8887"   }
  gitea        : { domain: git.pigsty.cc  ,endpoint: "127.0.0.1:8889"   }
  wiki         : { domain: wiki.pigsty.cc ,endpoint: "127.0.0.1:9002"   }
  noco         : { domain: noco.pigsty.cc ,endpoint: "127.0.0.1:9003"   }
  supa         : { domain: supa.pigsty.cc ,endpoint: "127.0.0.1:8000", websocket: true }
```

After completing the Nginx upstream service definition, use the following configuration and commands to register new services to Nginx.

```bash
./infra.yml -t nginx_config           # Regenerate Nginx configuration files
./infra.yml -t nginx_launch           # Update and apply Nginx configuration

# You can also manually reload Nginx config with Ansible
ansible infra -b -a 'nginx -s reload'  # Reload Nginx config
```

If you want HTTPS access, you must delete `files/pki/csr/pigsty.csr` and `files/pki/nginx/pigsty.{key,crt}` to force regeneration of Nginx SSL/TLS certificates to include new upstream domains.
If you want to use certificates issued by an authoritative CA instead of Pigsty self-signed CA certificates, you can place them in the `/etc/nginx/conf.d/cert/` directory and modify the corresponding configuration: `/etc/nginx/conf.d/<name>.conf`.



----------------

## How to manually add upstream repo files to nodes?

Pigsty has a built-in wrapper script `bin/repo-add` that calls the ansible playbook `node.yml` to add repo files to corresponding nodes.

```bash
bin/repo-add <selector> [modules]
bin/repo-add 10.10.10.10           # Add node repo for node 10.10.10.10
bin/repo-add infra   node,infra    # Add node and infra repos for infra group
bin/repo-add infra   node,local    # Add node repo and local pigsty repo for infra group
bin/repo-add pg-test node,pgsql    # Add node and pgsql repos for pg-test group
```

