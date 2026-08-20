# ivory

> IvorySQL kernel, provides Oracle syntax and PL/SQL compatibility

---

LLMS index: [llms.txt](/llms.txt)

---

The `ivory` configuration template uses Highgo's IvorySQL database kernel instead of native PostgreSQL, providing Oracle syntax and PL/SQL compatibility.

For the complete tutorial, see: **[IvorySQL (Oracle Compatible) Kernel Guide](/docs/pgsql/kernel/ivorysql/)**


--------

## Overview

- Config Name: `ivory`
- Node Count: Single node
- Description: Uses IvorySQL Oracle-compatible kernel
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c ivory [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/ivory.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ivory.yml)

```yaml
---
#==============================================================#
# File      :   ivory.yml
# Desc      :   IvorySQL 5 (Oracle Compatible) template
# Ctime     :   2024-08-05
# Mtime     :   2026-07-08
# Docs      :   https://pigsty.io/docs/conf/ivory
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for IvorySQL 5 Kernel,
# Which is a PostgreSQL 18 fork with Oracle Compatibility
# tutorial: https://pigsty.io/docs/pgsql/kernel/ivorysql
# Oracle compatible port (PGSQL Wire) is 1521
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c ivory
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # IvorySQL Database Cluster
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
          - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty]}
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # IvorySQL Ad Hoc Settings
        pg_mode: ivory                                                 # Use IvorySQL Oracle Compatible Mode
        pg_packages: [ ivorysql, pgsql-common ]                        # install IvorySQL instead of postgresql kernel
        pg_libs: 'liboracle_parser, pg_stat_statements, auto_explain'  # pre-load oracle parser

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
    pg_version: 18                      # IvorySQL kernel is compatible with postgres 18
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

The `ivory` template uses Highgo's open-source IvorySQL kernel, providing Oracle database compatibility.

**Key Features**:
- Supports Oracle PL/SQL syntax
- Compatible with Oracle data types (NUMBER, VARCHAR2, etc.)
- Supports Oracle-style packages
- Retains all standard PostgreSQL functionality

**Use Cases**:
- Migrating from Oracle to PostgreSQL
- Applications needing both Oracle and PostgreSQL syntax support
- Leveraging PostgreSQL ecosystem while maintaining PL/SQL compatibility
- Test environments for evaluating IvorySQL features

**Notes**:
- IvorySQL 5 is based on PostgreSQL 18
- Using `liboracle_parser` requires loading into `shared_preload_libraries`
- `pgbackrest` may have checksum issues in Oracle-compatible mode, PITR capability is limited
- The current package matrix covers EL 8/9/10, Debian 12/13, Ubuntu 22/24/26, and both architectures
