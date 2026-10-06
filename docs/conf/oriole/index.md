# oriole

> OrioleDB kernel, provides bloat-free OLTP enhanced storage engine

---

LLMS index: [llms.txt](/llms.txt)

---

The `oriole` configuration template uses OrioleDB storage engine instead of PostgreSQL's default Heap storage, providing bloat-free, high-performance OLTP capability.


--------

## Overview

- Config Name: `oriole`
- Node Count: Single node
- Description: OrioleDB bloat-free storage engine configuration
- PostgreSQL Major: `16`, `17`, or `18`
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c oriole [-i <primary_ip>]

# Select a PostgreSQL major version explicitly
./configure -c oriole -v 16
./configure -c oriole -v 17
./configure -c oriole -v 18
```


--------

## Content

Source: [`pigsty/conf/oriole.yml`](https://github.com/pgsty/pigsty/blob/main/conf/oriole.yml)

```yaml
---
#==============================================================#
# File      :   oriole.yml
# Desc      :   1-node OrioleDB (OLTP Enhancement) template
# Ctime     :   2025-04-05
# Mtime     :   2026-07-08
# Docs      :   https://pigsty.io/docs/conf/oriole
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for OrioleDB Kernel,
# Which is a Patched PostgreSQL 16/17/18 fork
# tutorial: https://pigsty.io/docs/pgsql/kernel/orioledb
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c oriole [-v 16/17/18]
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # OrioleDB Database Cluster
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - {name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
          - {name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
        pg_databases:
          - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty], extensions: [orioledb]}
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # OrioleDB Ad Hoc Settings
        pg_mode: oriole                                         # OrioleDB compatible mode
        pg_packages: [ orioledb, pgsql-common ]                 # install OrioleDB kernel
        pg_libs: 'orioledb, pg_stat_statements, auto_explain'   # Load OrioleDB Extension

  vars:                               # global variables
    #----------------------------------------------#
    # INFRA : https://pigsty.io/docs/infra/param
    #----------------------------------------------#
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default,china,europe
    infra_portal:                     # infra services exposed via portal
      home : { domain: i.pigsty }     # default domain name

    #----------------------------------------------#
    # NODE : https://pigsty.io/docs/node/param
    #----------------------------------------------#
    nodename_overwrite: false           # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql # add these repos directly to the singleton node
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 18                      # OrioleDB Kernel is based on PG 16/17/18
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml

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

## Explanation

The `oriole` template uses OrioleDB storage engine, fundamentally solving PostgreSQL table bloat problems.

**Key Features**:
- **Bloat-free Design**: Uses UNDO logs instead of Multi-Version Concurrency Control (MVCC)
- **No VACUUM Required**: Eliminates performance jitter from autovacuum
- **Row-level WAL**: More efficient logging and replication
- **Compressed Storage**: Built-in data compression, reduces storage space

**Use Cases**:
- High-frequency update OLTP workloads
- Applications sensitive to write latency
- Need for stable response times (eliminates VACUUM impact)
- Large tables with frequent updates causing bloat

**Usage**:

```sql
-- Create table using OrioleDB storage
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
) USING orioledb;

-- Existing tables cannot be directly converted, need to be rebuilt
```

**Notes**:
- OrioleDB supports PostgreSQL 16, 17, and 18; the template defaults to PG18, and you can select a major version with `-v 16`, `-v 17`, or `-v 18`
- Need to add `orioledb` to `shared_preload_libraries`
- Some PostgreSQL features may not be fully supported
- Use the matching OrioleDB packages for the selected PostgreSQL major and OS architecture
