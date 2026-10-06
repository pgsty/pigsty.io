# ha/citus

> 13-node Citus distributed PostgreSQL cluster, 1 coordinator + 5 worker groups with HA

---

LLMS index: [llms.txt](/llms.txt)

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

```yaml
---
#==============================================================#
# File      :   citus.yml
# Desc      :   13-node Citus (6-group Distributive) Config Template
# Ctime     :   2020-05-22
# Mtime     :   2025-01-20
# Docs      :   https://pigsty.io/docs/conf/citus
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for Citus Distributive Cluster
# tutorial: https://pigsty.io/docs/pgsql/kernel/citus
# we will use the local repo for cluster bootstrapping
#
# Topology:
#   - pg-citus0: coordinator (10.10.10.10)         VIP: 10.10.10.19
#   - pg-citus1: worker group 1 (10.10.10.21, 22)  VIP: 10.10.10.29
#   - pg-citus2: worker group 2 (10.10.10.31, 32)  VIP: 10.10.10.39
#   - pg-citus3: worker group 3 (10.10.10.41, 42)  VIP: 10.10.10.49
#   - pg-citus4: worker group 4 (10.10.10.51, 52)  VIP: 10.10.10.59
#   - pg-citus5: worker group 5 (10.10.10.61, 62)  VIP: 10.10.10.69
#   - pg-citus6: worker group 6 (10.10.10.71, 72)  VIP: 10.10.10.79
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c citus
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }}}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }}, vars: { etcd_cluster: etcd }}
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
        pg_databases:
          - name: meta
            baseline: cmdb.sql
            comment: "pigsty meta database"
            schemas: [pigsty]
            extensions: [ postgis, vector ]
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # make a full backup every day 1am

    #----------------------------------------------------------#
    # pg-citus: 6 cluster groups, 12 nodes total
    #----------------------------------------------------------#
    pg-citus:
      hosts:

        # coordinator (group 0) on infra node
        10.10.10.21: { pg_group: 0, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.29/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.22: { pg_group: 0, pg_cluster: pg-citus1 ,pg_vip_address: 10.10.10.29/24 ,pg_seq: 2, pg_role: replica }

        # worker group 2
        10.10.10.31: { pg_group: 1, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.39/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.32: { pg_group: 1, pg_cluster: pg-citus2 ,pg_vip_address: 10.10.10.39/24 ,pg_seq: 2, pg_role: replica }

        # worker group 3
        10.10.10.41: { pg_group: 2, pg_cluster: pg-citus3 ,pg_vip_address: 10.10.10.49/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.42: { pg_group: 2, pg_cluster: pg-citus3 ,pg_vip_address: 10.10.10.49/24 ,pg_seq: 2, pg_role: replica }

        # worker group 4
        10.10.10.51: { pg_group: 3, pg_cluster: pg-citus4 ,pg_vip_address: 10.10.10.59/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.52: { pg_group: 3, pg_cluster: pg-citus4 ,pg_vip_address: 10.10.10.59/24 ,pg_seq: 2, pg_role: replica }

        # worker group 5
        10.10.10.61: { pg_group: 4, pg_cluster: pg-citus5 ,pg_vip_address: 10.10.10.69/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.62: { pg_group: 4, pg_cluster: pg-citus5 ,pg_vip_address: 10.10.10.69/24 ,pg_seq: 2, pg_role: replica }

        # worker group 6
        10.10.10.71: { pg_group: 5, pg_cluster: pg-citus6 ,pg_vip_address: 10.10.10.79/24 ,pg_seq: 1, pg_role: primary }
        10.10.10.72: { pg_group: 5, pg_cluster: pg-citus6 ,pg_vip_address: 10.10.10.79/24 ,pg_seq: 2, pg_role: replica }

      vars:
        pg_mode: citus                            # pgsql cluster mode: citus
        pg_shard: pg-citus                        # citus shard name: pg-citus
        pg_primary_db: citus                      # primary database used by citus
        pg_dbsu_password: DBUser.Postgres         # enable dbsu password access for citus
        pg_extensions: [ citus, postgis, pgvector, topn, pg_cron, hll ]
        pg_libs: 'citus, pg_cron, pg_stat_statements'
        pg_users: [{ name: dbuser_citus ,password: DBUser.Citus ,pgbouncer: true ,roles: [ dbrole_admin ] }]
        pg_databases: [{ name: citus ,owner: dbuser_citus ,extensions: [ citus, vector, topn, pg_cron, hll ] }]
        pg_parameters:
          cron.database_name: citus
          citus.node_conninfo: 'sslrootcert=/pg/cert/ca.crt sslmode=verify-full'
        pg_hba_rules:
          - { user: 'all' ,db: all  ,addr: 127.0.0.1/32  ,auth: ssl ,title: 'all user ssl access from localhost' }
          - { user: 'all' ,db: all  ,addr: intra         ,auth: ssl ,title: 'all user ssl access from intranet'  }
        pg_vip_enabled: true
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # make a full backup every day 1am

  vars:
    #----------------------------------------------#
    # INFRA : https://pigsty.io/docs/infra/param
    #----------------------------------------------#
    version: v4.5.0
    admin_ip: 10.10.10.10
    region: default
    infra_portal:
      home : { domain: i.pigsty }

    #----------------------------------------------#
    # NODE : https://pigsty.io/docs/node/param
    #----------------------------------------------#
    nodename_overwrite: true
    node_repo_modules: node,infra,pgsql
    node_tune: oltp

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 18  # PostgreSQL 14-18
    pg_conf: oltp.yml
    pg_packages: [ pgsql-main, pgsql-common ]

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty
    minio_secret_key: S3User.MinIO
    etcd_root_password: Etcd.Root
...
```


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

- **pg-meta**: Infra node running Grafana, VictoriaMetrics, etcd, plus a standalone CMDB
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
- **Network**: `pg_vip_interface` defaults to `auto`; specify an interface explicitly for unusual network environments
- **Architecture**: Citus extension does not support ARM64
