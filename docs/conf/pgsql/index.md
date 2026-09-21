# pgsql

> Native PostgreSQL kernel with stable support for PostgreSQL 14 to 18 and a PG19 Beta evaluation option

---

LLMS index: [llms.txt](/llms.txt)

---

The `pgsql` configuration template uses the native PostgreSQL kernel, Pigsty's default database kernel, with stable support for PostgreSQL 14 to 18. The current `configure` also accepts version 19, but PG19 remains Beta; use the dedicated [`pg19`](/docs/conf/pg19/) template for evaluation.


--------

## Overview

- Config Name: `pgsql`
- Node Count: Single node
- Description: Native PostgreSQL kernel configuration template
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c pgsql [-i <primary_ip>]
```

To specify a non-default PostgreSQL version (e.g., 16):

```bash
./configure -c pgsql -v 16
```


--------

## Content

Source: [`pigsty/conf/pgsql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgsql.yml)

```yaml
---
#==============================================================#
# File      :   pgsql.yml
# Desc      :   1-node PostgreSQL Config template
# Ctime     :   2025-02-23
# Mtime     :   2025-12-28
# Docs      :   https://pigsty.io/docs/conf/pgsql
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for basical PostgreSQL Kernel.
# Nothing special, just a basic setup with one node.
# tutorial: https://pigsty.io/docs/pgsql/kernel/postgres
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c pgsql
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # PostgreSQL Cluster
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ postgis, timescaledb, vector ]}
        pg_extensions: [ postgis, timescaledb, pgvector, pg_wait_sampling ]
        pg_libs: 'timescaledb, pg_stat_statements, auto_explain, pg_wait_sampling'
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

  vars:
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
    nodename_overwrite: false             # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql # add these repos directly to the singleton node
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 18                      # Default PostgreSQL Major Version is 18
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    pg_packages: [ pgsql-main, pgsql-common ]   # pg kernel and common utils
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
    #repo_extra_packages: [ pg18-main ,pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]

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

The `pgsql` template is Pigsty's **standard kernel configuration**, using community-native PostgreSQL.

**Version Support**:
- PostgreSQL 18 (default)
- PostgreSQL 17, 16, 15, 14
- PostgreSQL 19 Beta (evaluation; use `./configure -c pg19`)

**Use Cases**:
- Need to use the latest PostgreSQL features
- Need the widest extension support
- Standard production environment deployment
- Same functionality as `meta` template, explicitly declaring native kernel usage

**Differences from meta**:
- `pgsql` template explicitly declares using native PostgreSQL kernel
- Suitable for scenarios needing clear distinction between different kernel types
