# infra

> Only installs observability infrastructure, dedicated template without PostgreSQL and etcd

---

LLMS index: [llms.txt](/llms.txt)

---

The `infra` configuration template only deploys Pigsty's observability infrastructure components (VictoriaMetrics/Grafana/VictoriaLogs/Nginx, etc.), without PostgreSQL and etcd.

Suitable for scenarios requiring a standalone monitoring stack, such as monitoring external PostgreSQL/RDS instances or other data sources.


--------

## Overview

- Config Name: `infra`
- Node Count: Single or multiple nodes
- Description: Only installs observability infrastructure, without PostgreSQL and etcd
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c infra [-i <primary_ip>]
./infra.yml    # Only execute infra playbook
```


--------

## Content

Source: [`pigsty/conf/infra.yml`](https://github.com/pgsty/pigsty/blob/main/conf/infra.yml)

```yaml
---
#==============================================================#
# File      :   infra.yml
# Desc      :   Infra Only Config
# Ctime     :   2025-12-16
# Mtime     :   2025-12-30
# Docs      :   https://pigsty.io/docs/conf/infra
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for deploy victoria stack alone
# tutorial: https://pigsty.io/docs/infra
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c infra
#   ./infra.yml

all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
        #10.10.10.11: { infra_seq: 2 } # you can add more nodes if you want
        #10.10.10.12: { infra_seq: 3 } # don't forget to assign unique infra_seq for each node
      vars:
        docker_enabled: true            # enabled docker with ./docker.yml
        docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]
        pg_exporters:     # bin/pgmon-add pg-rds
          20001: { pg_cluster: pg-rds ,pg_seq: 1 ,pg_host: 10.10.10.10 ,pg_exporter_url: 'postgres://postgres:postgres@10.10.10.10:5432/postgres' }

  vars:                                 # global variables
    version: v4.5.0                     # pigsty version string
    admin_ip: 10.10.10.10               # admin node ip address
    region: default                     # upstream mirror region: default,china,europe
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit
    infra_portal:                       # infra services exposed via portal
      home : { domain: i.pigsty }       # default domain name
    repo_enabled: false                 # online installation without repo
    node_repo_modules: node,infra,pgsql # add these repos directly
    #haproxy_enabled: false              # enable haproxy on infra node?
    #vector_enabled: false               # enable vector on infra node?

    # DON't FORGET TO CHANGE DEFAULT PASSWORDS!
    grafana_admin_password: pigsty
    haproxy_admin_password: pigsty
...
```


--------

## Explanation

The `infra` template is Pigsty's **pure monitoring stack configuration**, designed for standalone deployment of observability infrastructure.

**Use Cases**:
- Monitoring external PostgreSQL instances (RDS, self-hosted, etc.)
- Need standalone monitoring/alerting platform
- Already have PostgreSQL clusters, only need to add monitoring
- As a central console for multi-cluster monitoring

**Included Components**:
- **VictoriaMetrics**: Time series database for storing metrics
- **VictoriaLogs**: Log aggregation system
- **VictoriaTraces**: Distributed tracing system
- **Grafana**: Visualization dashboards
- **Alertmanager**: Alert management
- **Nginx**: Reverse proxy and web entry

**Not Included**:
- PostgreSQL database cluster
- etcd distributed coordination service
- Silo object storage

**Monitoring External Instances**:
After configuration, add monitoring for external PostgreSQL instances via the `pgsql-monitor.yml` playbook:

```yaml
pg_exporters:
  20001: { pg_cluster: pg-foo, pg_seq: 1, pg_host: 10.10.10.100 }
  20002: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.101 }
```

**Notes**:
- This template will not install any databases
- For full functionality, use [`meta`](/docs/conf/meta/) or [`rich`](/docs/conf/rich/) template
- Can add multiple infra nodes for high availability as needed
