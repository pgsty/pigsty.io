# ha/dual

> Two-node configuration, limited HA deployment tolerating specific server failure

---

LLMS index: [llms.txt](/llms.txt)

---

The `ha/dual` template uses two-node deployment, implementing a "semi-HA" architecture with one primary and one standby. If you only have two servers, this is a pragmatic choice.


--------

## Overview

- Config Name: `ha/dual`
- Node Count: Two nodes
- Description: Two-node limited HA deployment, tolerates specific server failure
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/trio`](/docs/conf/trio/), [`slim`](/docs/conf/slim/)

Usage:

```bash
./configure -c ha/dual [-i <primary_ip>]
```

After configuration, modify placeholder IP `10.10.10.11` to actual standby node IP address.


--------

## Content

Source: [`pigsty/conf/ha/dual.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/dual.yml)

```yaml
---
#==============================================================#
# File      :   dual.yml
# Desc      :   Pigsty deployment example for two nodes
# Ctime     :   2020-05-22
# Mtime     :   2025-12-12
# Docs      :   https://pigsty.io/docs/conf/dual
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#


# It is recommended to use at least three nodes in production deployment.
# But sometimes, there are only two nodes available, that's dual.yml for
#
# In this setup, we have two nodes, .10 (admin_node) and .11 (pgsql_primary):
#
# If .11 is down, .10 will take over since the dcs:etcd is still alive
# If .10 is down, .11 (pgsql primary) will still be functioning as a primary if:
#   - Only dcs:etcd is down
#   - Only pgsql is down
# if both etcd & pgsql are down (e.g. node down), the primary will still demote itself.


all:
  children:

    # infra cluster for proxy, monitor, alert, etc..
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }

    # etcd cluster for ha postgres
    etcd: { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

    # minio cluster, optional backup repo for pgbackrest
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }

    # postgres cluster 'pg-meta' with single primary instance
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: replica }
        10.10.10.11: { pg_seq: 2, pg_role: primary }  # <----- use this as primary by default
      vars:
        pg_cluster: pg-meta
        pg_databases: [ { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [ pigsty ] ,extensions: [ { name: vector }] } ]
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [ dbrole_admin ]    ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [ dbrole_readonly ] ,comment: read-only viewer for meta database }
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'
        pg_vip_enabled: true
        pg_vip_address: 10.10.10.2/24

  vars:                               # global parameters
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default,china,europe
    node_tune: oltp                   # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                 # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    #docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]
    infra_portal:                     # domain names and upstream servers
      home   : { domain: i.pigsty }
      #minio : { domain: m.pigsty ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }

    #----------------------------------#
    # Repo, Node, Packages
    #----------------------------------#
    repo_remove: true                 # remove existing repo on admin node during repo bootstrap
    node_repo_remove: true            # remove existing node repo for node managed by pigsty
    repo_extra_packages: [ pg18-main ] #,pg18-core ,pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
    pg_version: 18                    # default postgres version
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

The `ha/dual` template is Pigsty's **two-node limited HA configuration**, designed for scenarios with only two servers.

**Architecture**:
- **Node A** (10.10.10.10): Admin node, runs Infra + etcd + PostgreSQL replica
- **Node B** (10.10.10.11): Data node, runs PostgreSQL primary only

**Failure Scenario Analysis**:

| Failed Node | Impact | Auto Recovery |
|:--|:--|:--:|
| Node B down | Primary switches to Node A | Auto |
| Node A etcd down | Primary continues running (no DCS) | Manual |
| Node A pgsql down | Primary continues running | Manual |
| Node A complete failure | Primary degrades to standalone | Manual |

**Use Cases**:
- Budget-limited environments with only two servers
- Acceptable that some failure scenarios need manual intervention
- Transitional solution before upgrading to three-node HA

**Notes**:
- True HA requires at least three nodes (DCS needs majority)
- Recommend upgrading to three-node architecture as soon as possible
- L2 VIP requires network environment support (same broadcast domain)
