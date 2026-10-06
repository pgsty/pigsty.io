# mysql

> OpenHalo kernel, provides MySQL protocol and syntax compatibility

---

LLMS index: [llms.txt](/llms.txt)

---

The `mysql` configuration template uses OpenHalo database kernel instead of native PostgreSQL, providing MySQL wire protocol and SQL syntax compatibility.


--------

## Overview

- Config Name: `mysql`
- Node Count: Single node
- Description: OpenHalo MySQL-compatible kernel configuration
- OS Distro: EL 8/9/10, Debian 12/13, Ubuntu 22/24/26
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c mysql [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mysql.yml)

```yaml
---
#==============================================================#
# File      :   mysql.yml
# Desc      :   1-node OpenHaloDB (MySQL Compatible) template
# Ctime     :   2025-04-03
# Mtime     :   2026-07-08
# Docs      :   https://pigsty.io/docs/conf/mysql
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for OpenHalo PG Kernel,
# Which is a PostgreSQL 14 fork with MySQL Wire Compatibility
# tutorial: https://pigsty.io/docs/pgsql/kernel/openhalo
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c mysql
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # OpenHalo Database Cluster
    #----------------------------------------------#
    # connect with mysql client: mysql -h 10.10.10.10 -u dbuser_meta -D mysql (the actual database is 'postgres', and 'mysql' is a schema)
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - {name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
          - {name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
        pg_databases:
          - {name: postgres, extensions: [aux_mysql]} # the mysql compatible database
          - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty]}
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # OpenHalo Ad Hoc Setting
        pg_mode: mysql                    # MySQL Compatible Mode by HaloDB
        pg_version: 14                    # OpenHaloDB is compatible with PG Major Version 14
        pg_packages: [ openhalo, pgsql-common ]  # install openhalodb instead of postgresql kernel

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
    nodename_overwrite: false           # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql # add these repos directly to the singleton node
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 14                      # OpenHalo is compatible with PG 14
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

The `mysql` template uses the OpenHalo kernel, allowing you to connect to PostgreSQL using MySQL client tools.

**Key Features**:
- Uses MySQL protocol (port 3306), compatible with MySQL clients
- Supports a subset of MySQL SQL syntax
- Retains PostgreSQL's ACID properties and storage engine
- Supports both PostgreSQL and MySQL protocol connections simultaneously

**Connection Methods**:

```bash
# Using MySQL client
mysql -h 10.10.10.10 -P 3306 -u dbuser_meta -pDBUser.Meta

# Also retains PostgreSQL connection capability
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
```

**Use Cases**:
- Migrating from MySQL to PostgreSQL
- Applications needing to support both MySQL and PostgreSQL clients
- Leveraging PostgreSQL ecosystem while maintaining MySQL compatibility

**Notes**:
- OpenHalo is based on PostgreSQL 14, does not support higher version features
- Some MySQL syntax may have compatibility differences
- The current `openhalo` package alias covers Pigsty's supported Linux platforms on both architectures; actual installation still depends on the target platform's repository index
