# Slim Installation

> Install only HA PostgreSQL clusters with minimal dependencies

---

LLMS index: [llms.txt](/llms.txt)

---

If you only want HA PostgreSQL database cluster itself without monitoring, infra, etc., consider **Slim Installation**.

Slim installation has no [**`INFRA`**](/docs/infra/) module, no monitoring, no [**local repo**](/docs/setup/offline/)—just [**`ETCD`**](/docs/etcd/) and [**`PGSQL`**](/docs/pgsql/) and partial [**`NODE`**](/docs/node/) functionality.

> [!TIP] Slim installation is suitable for:
> - Only needing PostgreSQL database itself, no observability infra required.
> - Extremely resource-constrained envs unwilling to bear infra overhead (~0.2 vCPU / 500MB on single node).
> - Already having external monitoring system, wanting to use your own unified monitoring framework.
> - Not needing the Grafana visualization dashboard component.

> [!WARNING] Limitations of slim installation:
> - No [**INFRA**](/docs/infra) module, cannot use WebUI and local software repo features.
> - [**Offline Install**](/docs/setup/offline) is limited to single-node mode; multi-node slim install can only be done online.


--------

## Overview

To use slim installation, you need to:

1. Use the [**`slim.yml`**](/docs/conf/slim) slim install config template (`configure -c slim`)
2. Run the `slim.yml` playbook instead of the default `deploy.yml`

```bash
curl https://repo.pigsty.io/get | bash
./configure -g -c slim
./slim.yml
```

<div id="td-asciinema-8bab29587293d637886f5451c363bc59-0" class="td-asciinema td-max-width-on-larger-screens" data-td-asciinema
  data-td-timer-label="Playback time">
  <div class="td-asciinema__chrome">
    <span class="td-asciinema__lights" aria-hidden="true"><i></i><i></i><i></i></span>
    <span class="td-asciinema__title" dir="auto">demo/install-slim.cast</span>
  </div>
  <div data-td-asciinema-player></div>
  <script type="application/json" data-td-asciinema-config>{"options":{"autoPlay":true,"fit":"width","loop":true,"markers":[3,"Install",13,"Configure",22,"Deploy"],"preload":false,"speed":1.3,"startAt":0},"src":"/demo/install-slim.cast","theme":"solarized-light"}</script>
</div>



--------

## Description

Slim installation only installs/configures these components:

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

You can disable all optional components via configuration, keeping only the required `patroni` and `etcd`.

Because there's no INFRA module's Nginx providing local repo service, [**offline installation**](/docs/setup/offline/) only works in single-node mode.


--------

## Configuration

Slim installation config file example: [**`conf/slim.yml`**](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml):

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


--------

## Deployment

Slim installation uses the [`slim.yml`](https://github.com/pgsty/pigsty/blob/main/slim.yml) playbook instead of [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml):

```bash
./slim.yml
```


--------

## HA Cluster

Slim installation can also deploy HA clusters—just add more nodes to the `etcd` and `pg-meta` groups. A three-node deployment example:

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
