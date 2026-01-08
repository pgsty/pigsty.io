---
title: infra
weight: 780
description: Only installs observability infrastructure, dedicated template without PostgreSQL and etcd
icon: fa-solid fa-tower-observation
categories: [Reference]
---

The `infra` configuration template only deploys Pigsty's observability infrastructure components (VictoriaMetrics/Grafana/Loki/Nginx, etc.), without PostgreSQL and etcd.

Suitable for scenarios requiring a standalone monitoring stack, such as monitoring external PostgreSQL/RDS instances or other data sources.


--------

## Overview

- Config Name: `infra`
- Node Count: Single or multiple nodes
- Description: Only installs observability infrastructure, without PostgreSQL and etcd
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c infra [-i <primary_ip>]
./infra.yml    # Only execute infra playbook
```


--------

## Content

Source: [`pigsty/conf/infra.yml`](https://github.com/Vonng/pigsty/blob/main/conf/infra.yml)

{{< readfile file="yaml/infra.yml" code="true" lang="yaml" >}}


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
- MinIO object storage

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

