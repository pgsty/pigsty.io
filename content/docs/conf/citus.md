---
title: ha/citus
weight: 520
description: 13-node Citus distributed PostgreSQL cluster, 1 coordinator + 5 worker groups with HA
icon: fa-solid fa-cubes
categories: [Reference]
---

The `ha/citus` template deploys a complete **Citus distributed PostgreSQL cluster** with 1 infra node, 1 coordinator group, and 5 worker groups (12 Citus nodes total), providing transparent horizontal scaling and data sharding.


--------

## Overview

- Config Name: `ha/citus`
- Node Count: 13 nodes (1 infra + 1 coordinator×2 + 5 workers×2)
- Description: Citus distributed PostgreSQL HA cluster
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/), [`ha/trio`](/docs/conf/trio/)

Usage:

```bash
./configure -c ha/citus
```

> Note: 13-node template, modify IP addresses after generation


--------

## Content

Source: [`pigsty/conf/ha/citus.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/citus.yml)

{{< readfile file="yaml/ha/citus.yml" code="true" lang="yaml" >}}


--------

## Topology

| Cluster | Nodes | IP Addresses | VIP | Role |
|---------|-------|--------------|-----|------|
| **pg-meta** | 1 | 10.10.10.10 | - | Infra + CMDB |
| **pg-citus1** | 2 | 10.10.10.21, 22 | 10.10.10.29 | Coordinator (group 0) |
| **pg-citus2** | 2 | 10.10.10.31, 32 | 10.10.10.39 | Worker (group 1) |
| **pg-citus3** | 2 | 10.10.10.41, 42 | 10.10.10.49 | Worker (group 2) |
| **pg-citus4** | 2 | 10.10.10.51, 52 | 10.10.10.59 | Worker (group 3) |
| **pg-citus5** | 2 | 10.10.10.61, 62 | 10.10.10.69 | Worker (group 4) |
| **pg-citus6** | 2 | 10.10.10.71, 72 | 10.10.10.79 | Worker (group 5) |

**Architecture**:

- **pg-meta**: Infra node running Grafana, Prometheus, etcd, plus standalone CMDB
- **pg-citus1**: Coordinator (group 0), receives queries and routes to workers, 1 primary + 1 replica
- **pg-citus2~6**: Workers (group 1~5), store sharded data, each with 1 primary + 1 replica via Patroni
- **VIP**: Each group has L2 VIP managed by `vip-manager` for transparent failover


--------

## Explanation

The `ha/citus` template deploys production-grade Citus cluster for large-scale horizontal scaling scenarios.

**Key Features**:

- **Horizontal Scaling**: 5 worker groups for linear storage/compute scaling
- **High Availability**: Each group with 1 primary + 1 replica, auto-failover
- **L2 VIP**: Virtual IP per group, transparent failover to clients
- **SSL Encryption**: Inter-node communication uses SSL certificates
- **Transparent Sharding**: Data auto-distributed across workers

**Pre-installed Extensions**:

```yaml
pg_extensions: [ citus, postgis, pgvector, topn, pg_cron, hll ]
pg_libs: 'citus, pg_cron, pg_stat_statements'
```

**Security**:

- `pg_dbsu_password` enabled for Citus inter-node communication
- HBA rules require SSL authentication
- Inter-node uses certificate verification: `sslmode=verify-full`


--------

## Deployment

```bash
# 1. Download Pigsty
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty

# 2. Use ha/citus template
./configure -c ha/citus

# 3. Modify IPs and passwords
vi pigsty.yml

# 4. Deploy entire cluster
./deploy.yml
```

Verify after deployment:

```sql
-- Connect to coordinator
psql -h 10.10.10.29 -U dbuser_citus -d citus

-- Check worker nodes
SELECT * FROM citus_get_active_worker_nodes();

-- Check shard distribution
SELECT * FROM citus_shards;
```


--------

## Examples

**Create Distributed Table**:

```sql
-- Create table
CREATE TABLE events (
    tenant_id INT,
    event_id BIGSERIAL,
    event_time TIMESTAMPTZ DEFAULT now(),
    payload JSONB,
    PRIMARY KEY (tenant_id, event_id)
);

-- Distribute by tenant_id
SELECT create_distributed_table('events', 'tenant_id');

-- Insert (auto-routed to correct shard)
INSERT INTO events (tenant_id, payload)
VALUES (1, '{"type": "click"}');

-- Query (parallel execution)
SELECT tenant_id, count(*)
FROM events
GROUP BY tenant_id;
```

**Create Reference Table** (replicated to all nodes):

```sql
CREATE TABLE tenants (
    tenant_id INT PRIMARY KEY,
    name TEXT
);

SELECT create_reference_table('tenants');
```


--------

## Use Cases

- **Multi-tenant SaaS**: Shard by tenant_id for data isolation and parallel queries
- **Real-time Analytics**: Large-scale event data aggregation
- **Timeseries Data**: Combine with TimescaleDB for massive timeseries
- **Horizontal Scaling**: When single-table data exceeds single-node capacity


--------

## Notes

- **PostgreSQL Version**: Citus supports PG 14~18, this template defaults to PG18
- **Distribution Column**: Choose wisely (typically tenant_id or timestamp), critical for performance
- **Cross-shard Limits**: Foreign keys must include distribution column, some DDL restrictions
- **Network**: Configure correct `pg_vip_interface` (default `eth1`)
- **Architecture**: Citus extension does not support ARM64
