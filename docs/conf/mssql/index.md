# mssql

> Babelfish template pinned to a PostgreSQL 17-compatible kernel with SQL Server protocol and T-SQL support

---

LLMS index: [llms.txt](/llms.txt)

---

The `mssql` configuration template uses a **PostgreSQL 17-compatible Babelfish** kernel instead of native PostgreSQL, providing Microsoft SQL Server wire protocol (TDS) and T-SQL syntax compatibility. The current template is pinned to `pg_version: 17`; `configure` does not apply `-v` overrides to this fixed-kernel template.

Since Pigsty v4.2, Babelfish is built directly by Pigsty, no longer using the WiltonDB repository, and is available on all [supported Linux platforms](/docs/ref/linux).

For the complete tutorial, see: **[Babelfish (MSSQL) Kernel Guide](/docs/pgsql/kernel/babelfish/)**


--------

## Overview

- Config Name: `mssql`
- Node Count: Single node
- Description: Babelfish (PG17) configuration template with SQL Server protocol compatibility
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c mssql [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/mssql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mssql.yml)

```yaml
---
#==============================================================#
# File      :   mssql.yml
# Desc      :   Babelfish (MSSQL Wire-Compatible) template
# Ctime     :   2020-08-01
# Mtime     :   2026-07-08
# Docs      :   https://pigsty.io/docs/conf/mssql
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for Babelfish Kernel made by Pigsty
# Which is a PostgreSQL 17/18 fork with SQL Server Compatibility
# tutorial: https://pigsty.io/docs/pgsql/kernel/babelfish
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c mssql [-v 17/18]
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # Babelfish Database Cluster
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - {name: dbuser_mssql ,password: DBUser.MSSQL ,superuser: true, pgbouncer: true ,roles: [dbrole_admin], comment: superuser & owner for babelfish  }
        pg_databases:
          - name: mssql
            baseline: mssql.sql
            extensions: [uuid-ossp, babelfishpg_common, babelfishpg_tsql, babelfishpg_tds, babelfishpg_money ]
            owner: dbuser_mssql
            parameters: { 'babelfishpg_tsql.migration_mode' : 'multi-db' }
            comment: babelfish cluster, a MSSQL compatible pg cluster
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # Babelfish Ad Hoc Settings
        pg_mode: mssql                     # Microsoft SQL Server Compatible Mode
        pg_version: 17
        pg_packages: [ babelfish, pgsql-common, sqlcmd ]
        pg_libs: 'babelfishpg_tds, pg_stat_statements, auto_explain' # preload Babelfish TDS listener
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: dbuser_mssql ,db: mssql ,addr: intra ,auth: md5 ,title: 'allow mssql dbsu intranet access'      ,order: 525 } # <--- use md5 auth method for mssql user
          - { user: all          ,db: all   ,addr: intra ,auth: md5 ,title: 'everyone intranet access with md5 pwd' ,order: 800 }
        pg_default_services: # route primary & replica service to mssql port 1433
          - { name: primary ,port: 5433 ,dest: 1433  ,check: /primary   ,selector: "[]" }
          - { name: replica ,port: 5434 ,dest: 1433  ,check: /read-only ,selector: "[]" , backup: "[? pg_role == `primary` || pg_role == `offline` ]" }
          - { name: default ,port: 5436 ,dest: postgres ,check: /primary   ,selector: "[]" }
          - { name: offline ,port: 5438 ,dest: postgres ,check: /replica   ,selector: "[? pg_role == `offline` || pg_offline_query ]" , backup: "[? pg_role == `replica` && !pg_offline_query]" }

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
    nodename_overwrite: false                 # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql       # babelfish kernel is in the pgsql repo
    node_tune: oltp                           # node tuning specs: oltp,olap,tiny,crit

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 17                            # Babelfish kernel is compatible with postgres 17
    pg_conf: oltp.yml                         # pgsql tuning specs: {oltp,olap,tiny,crit}.yml

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

The `mssql` template allows you to use SQL Server Management Studio (SSMS) or other SQL Server client tools to connect to PostgreSQL (through Babelfish protocol compatibility).

**Key Features**:
- Uses TDS protocol (port 1433), compatible with SQL Server clients
- Supports T-SQL syntax, low migration cost
- Retains PostgreSQL's ACID properties and extension ecosystem (the current template uses PG17)
- Supports `multi-db` and `single-db` migration modes
- Default package set: `babelfish + pgsql-common + sqlcmd`
- Creates `uuid-ossp`, `babelfishpg_common`, `babelfishpg_tsql`, `babelfishpg_tds`, and `babelfishpg_money` by default
- v4.2.0 adds full mainstream platform coverage (EL 8/9/10, Debian 12/13, Ubuntu 22/24/26; `x86_64` / `aarch64`)

**Connection Methods**:

```bash
# Using sqlcmd command line tool
sqlcmd -S 10.10.10.10,1433 -U dbuser_mssql -P DBUser.MSSQL -d mssql

# Using SSMS or Azure Data Studio
# Server: 10.10.10.10,1433
# Authentication: SQL Server Authentication
# Login: dbuser_mssql
# Password: DBUser.MSSQL
```

**Use Cases**:
- Migrating from SQL Server to PostgreSQL
- Applications needing to support both SQL Server and PostgreSQL clients
- Leveraging PostgreSQL ecosystem while maintaining T-SQL compatibility

**Notes**:
- The current `mssql` template is pinned to a PostgreSQL 17-compatible kernel; do not rely on `-v` to switch its major version
- Default migration mode is `multi-db` (`babelfishpg_tsql.migration_mode`), configurable to `single-db` when needed
- Some T-SQL syntax may have compatibility differences, refer to Babelfish compatibility documentation
- Must use `md5` authentication method (not `scram-sha-256`)
