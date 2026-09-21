# slim

> Minimal installation template without monitoring infrastructure, installs PostgreSQL directly from internet

---

LLMS index: [llms.txt](/llms.txt)

---

The `slim` configuration template provides **minimal installation** capability, installing a PostgreSQL high-availability cluster directly from the internet without deploying Infra monitoring infrastructure.

When you only need an available database instance without the monitoring system, consider using the **[Slim Installation](/docs/setup/slim/)** mode.


--------

## Overview

- Config Name: `slim`
- Node Count: Single node
- Description: Minimal installation template without monitoring infrastructure, installs PostgreSQL directly
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c slim [-i <primary_ip>]
./slim.yml   # Execute slim installation
```


--------

## Content

Source: [`pigsty/conf/slim.yml`](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml)

```yaml
---
#==============================================================#
# File      :   slim.yml
# Desc      :   Pigsty slim installation config template
# Ctime     :   2020-05-22
# Mtime     :   2025-12-28
# Docs      :   https://pigsty.io/docs/conf/slim
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for slim / minimal installation
# No monitoring & infra will be installed, just raw postgresql
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c slim
#   ./slim.yml

all:
  children:

    etcd: # dcs service for postgres/patroni ha consensus
      hosts: # 1 node for testing, 3 or 5 for production
        10.10.10.10: { etcd_seq: 1 }  # etcd_seq required
        #10.10.10.11: { etcd_seq: 2 }  # assign from 1 ~ n
        #10.10.10.12: { etcd_seq: 3 }  # three-member cluster keeps an odd voter count
      vars: # cluster level parameter override roles/etcd
        etcd_cluster: etcd  # mark etcd cluster name etcd

    #----------------------------------------------#
    # PostgreSQL Cluster
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        #10.10.10.11: { pg_seq: 2, pg_role: replica } # you can add more!
        #10.10.10.12: { pg_seq: 3, pg_role: replica, pg_offline_query: true }
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ vector ]}
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

  vars:
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default,china,europe
    nodename_overwrite: false           # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql # add these repos directly to the singleton node
    node_tune: oltp                     # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    pg_version: 18                      # Default PostgreSQL Major Version is 18
    pg_packages: [ pgsql-main, pgsql-common ]   # pg kernel and common utils
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]

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

The `slim` template is Pigsty's **minimal installation configuration**, designed for quick deployment of bare PostgreSQL clusters.

**Use Cases**:
- Only need PostgreSQL database, no monitoring system required
- Resource-limited small servers or edge devices
- Quick deployment of temporary test databases
- Already have monitoring system, only need PostgreSQL HA cluster

**Key Features**:
- Uses `slim.yml` playbook instead of `deploy.yml` for installation
- Installs software directly from internet, no local software repository
- Retains core PostgreSQL HA capability (Patroni + etcd + HAProxy)
- Minimized package downloads, faster installation
- Default uses PostgreSQL 18

**Differences from meta**:
- `slim` uses dedicated `slim.yml` playbook, skips Infra module installation
- Faster installation, less resource usage
- Suitable for "just need a database" scenarios

**Notes**:
- After slim installation, cannot view database status through Grafana
- If monitoring is needed, use [`meta`](/docs/conf/meta/) or [`rich`](/docs/conf/rich/) template
- Can add replicas as needed for high availability
