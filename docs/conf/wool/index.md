# demo/wool

> Single-node tiny-tuning example for small cloud instances in China

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/wool` targets small cloud instances in China. It defaults to `region: china`, PostgreSQL 18, and the `tiny` tuning profiles.


--------

## Overview

- Config Name: `demo/wool`
- Node Count: Single node
- Suggested Size: Approximately 2 vCPU / 2 GB for testing
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/)

```bash
./configure -c demo/wool [-i <private_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/wool.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/wool.yml)

```yaml
---
#==============================================================#
# File      :   wool.yml
# Pigsty configuration for a budget Aliyun ECS instance
# Ctime     :   2020-11-09
# Mtime     :   2025-12-12
# Docs      :   https://pigsty.io/docs/conf
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

all:
  children:

    # Recommended OS: RockyLinux 9.4
    # Replace 10.10.10.10 with the ECS private IP for Infra/Etcd
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }

    # Define a single-node PostgreSQL instance
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_databases:
          - { name: meta ,baseline: cmdb.sql ,schemas: [ pigsty ] }
        pg_users: # Change both example user passwords
          - { name: dbuser_meta ,password: DBUser.Meta   ,roles: [ dbrole_admin ] }
          - { name: dbuser_view ,password: DBUser.Viewer ,roles: [ dbrole_readonly ] }
        pg_conf: tiny.yml   # Use the tiny database profile for a 2-core/2-GiB host
        node_tune: tiny     # Use tiny node tuning for a 2-core/2-GiB host
        pgbackrest_enabled: false # Disable physical backups on this small disk
        pg_version: 18           # Use PostgreSQL 18

  vars:
    version: v4.6.0                   # pigsty version string
    region: china
    admin_ip: 10.10.10.10  # Use the ECS private IP here
    infra_portal: # Replace the pigsty domain suffix with your own domain if available
      home : { domain: i.pigsty }     # default domain name
      minio: { domain: m.pigsty  ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
      postgrest: { domain: api.pigsty  ,endpoint: "127.0.0.1:8884" }
      pgadmin: { domain: adm.pigsty  ,endpoint: "127.0.0.1:8885" }
      pgweb: { domain: cli.pigsty  ,endpoint: "127.0.0.1:8886" }
      bytebase: { domain: ddl.pigsty  ,endpoint: "127.0.0.1:8887" ,websocket: true }
      jupyter: { domain: lab.pigsty  ,endpoint: "127.0.0.1:8888", websocket: true }
      gitea: { domain: git.pigsty  ,endpoint: "127.0.0.1:8889" }
      wiki: { domain: wiki.pigsty ,endpoint: "127.0.0.1:9002" }
      noco: { domain: noco.pigsty ,endpoint: "127.0.0.1:9003" }
      supa: { domain: supa.pigsty ,endpoint: "10.10.10.10:8000", websocket: true }

    # Change all example passwords before exposing this host
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

- Explicitly sets `pg_conf: tiny.yml` and `node_tune: tiny` on `pg-meta`
- Expects `10.10.10.10` to be replaced by the cloud instance's private IP
- Disables pgBackRest by default to reduce disk usage on a small test host
- Includes several example portal domains

This template reduces resource use by disabling backups. It is suitable only for temporary testing.

For production deployments, you must enable and verify backups. Tighten the network rules, replace default passwords, and remove unused portal entries.
