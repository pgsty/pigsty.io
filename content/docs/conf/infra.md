---
title: infra
weight: 250
description: Only installs observability infrastructure, dedicated template without PostgreSQL and etcd
icon: fa-solid fa-tower-observation
categories: [Reference]
---

The `infra` template deploys the Pigsty monitoring infrastructure, including VictoriaMetrics, Grafana, VictoriaLogs, and Nginx.
It does not deploy PostgreSQL or etcd.

Use it as a standalone monitoring system for external PostgreSQL or RDS instances and other data sources.


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

{{< include file="yaml/infra.yml" code=true lang="yaml" >}}


--------

## Explanation

The `infra` template runs the monitoring infrastructure independently of database services.

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
After configuration, run `pgsql-monitor.yml` to add monitoring for external PostgreSQL instances:

```yaml
pg_exporters:
  20001: { pg_cluster: pg-foo, pg_seq: 1, pg_host: 10.10.10.100 }
  20002: { pg_cluster: pg-bar, pg_seq: 1, pg_host: 10.10.10.101 }
```

**Notes**:
- This template will not install any databases
- For full functionality, use [`meta`](/docs/conf/meta/) or [`rich`](/docs/conf/rich/) template
- Can add multiple infra nodes for high availability as needed
