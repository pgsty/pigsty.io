# Slim Installation

> Install PostgreSQL clusters without the monitoring infrastructure.

---

LLMS index: [llms.txt](/llms.txt)

---

Use Slim Installation to deploy PostgreSQL without the monitoring infrastructure.
It installs [ETCD](/docs/etcd/), [PGSQL](/docs/pgsql/), and part of [NODE](/docs/node/).
It does not install [INFRA](/docs/infra/), monitoring services, or a [local software repository](/docs/setup/offline/).

> [!TIP] When to use Slim Installation
> - You only need PostgreSQL.
> - You have limited CPU or memory resources.
> - You already have an external monitoring system.
> - You do not need Grafana dashboards.
>
> On one node, the omitted infrastructure uses approximately `0.2` vCPU and `500 MB` of memory.

> [!WARNING] Installation limits
> The Web UI and local software repository require INFRA.
> Slim Installation does not supply these features.
> [Offline installation](/docs/setup/offline/) supports only one node in this mode.
> For multiple nodes, Slim Installation requires online package access.

## Overview

1. Download Pigsty and enter the source directory.
2. Select the [`slim` configuration template](/docs/conf/slim/) with `./configure -g -c slim`.
3. Run `./slim.yml` instead of `./deploy.yml`.

```bash
curl https://repo.pigsty.io/get | bash
cd ~/pigsty
./configure -g -c slim
./slim.yml
```

[demo\/install\-slim\.cast](/demo/install-slim.cast)

## Description

Slim Installation configures these components:

|     Component     |  Required   | Description                                                                 |
|:-----------------:|:-----------:|:----------------------------------------------------------------------------|
|   **`patroni`**   | ⚠️ Required | Bootstrap HA PostgreSQL cluster                                             |
|    **`etcd`**     | ⚠️ Required | Meta database dependency (DCS) for Patroni                                  |
|  **`pgbouncer`**  | ✔️ Optional | PostgreSQL connection pooler                                                |
| **`vip-manager`** | ✔️ Optional | L2 VIP binding to PostgreSQL cluster primary                                |
|   **`haproxy`**   | ✔️ Optional | Auto-routing [**services**](/docs/pgsql/service/) via Patroni health checks |
|   **`chronyd`**   | ✔️ Optional | Time synchronization with NTP server                                        |
|    **`tuned`**    | ✔️ Optional | Node tuning template and kernel parameter management                        |
{.full-width}

You can disable all optional components through the configuration.
Patroni and etcd remain required.

Without INFRA, Nginx does not serve a local software repository to other nodes.
Thus, offline Slim Installation supports only one node.

## Configuration

The [`conf/slim.yml` template](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml) defines this single-node deployment:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |     **No INFRA module**  |        `etcd-1`         |
{.full-width}

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

## Deployment

Use the [`slim.yml` playbook](https://github.com/pgsty/pigsty/blob/main/slim.yml) for deployment.
Run it from the Pigsty source directory:

```bash
./slim.yml
```

## HA Cluster

To deploy an HA cluster, add nodes to both the `etcd` and `pg-meta` groups.
This example uses three nodes:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |     **No INFRA module**  |        `etcd-1`         |
| 2  |    `10.10.10.11`    |      `pg-meta-2`      |     **No INFRA module**  |        `etcd-2`         |
| 3  |    `10.10.10.12`    |      `pg-meta-3`      |     **No INFRA module**  |        `etcd-3`         |
{.full-width}

```yaml
all:
  children:
    etcd:
      hosts:
        10.10.10.10: { etcd_seq: 1 }
        10.10.10.11: { etcd_seq: 2 }  # <-- New
        10.10.10.12: { etcd_seq: 3 }  # <-- New

    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        10.10.10.11: { pg_seq: 2, pg_role: replica } # <-- New
        10.10.10.12: { pg_seq: 3, pg_role: replica } # <-- New
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ vector ]}
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # full backup daily at 1am
  vars:
    # omitted ……
```
