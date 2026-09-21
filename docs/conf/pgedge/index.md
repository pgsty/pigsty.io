# pgedge

> pgEdge kernel template for distributed multi-master PostgreSQL in edge scenarios

---

LLMS index: [llms.txt](/llms.txt)

---

The `pgedge` configuration template replaces native PostgreSQL with the pgEdge kernel and provides distributed, multi-master capabilities for edge deployments.

For the full guide, see: **[pgEdge kernel guide](/docs/pgsql/kernel/pgedge/)**. For kernel differences and version references, see the [PGSQL kernel overview](/docs/pgsql/kernel/).


--------

## Overview

- Config name: `pgedge`
- Node count: Single node
- Description: pgEdge (PG18) distributed kernel template
- Supported OS: `d12`, `d13`, `u22`, `u24`, `u26` for PG18 packages. For EL/RPM platforms, check current PGSQL repository availability for `pgedge_18`.
- Supported arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Enable with:

```bash
./configure -c pgedge [-i <primary_ip>]
```


--------

## Template Content

Source: [`pigsty/conf/pgedge.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgedge.yml)

```yaml
---
#==============================================================#
# File      :   pgedge.yml
# Desc      :   1-node pgEdge (Distributed PG) template
# Ctime     :   2026-02-26
# Mtime     :   2026-07-08
# Docs      :   https://pigsty.io/docs/conf/pgedge
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for pgEdge Kernel,
# Which is a PostgreSQL 15/16/17/18 compatible fork, default to 18.
# tutorial: https://pigsty.io/docs/pgsql/kernel/pgedge
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c pgedge [-v 15/16/17/18]
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # pgEdge Database Cluster
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
          - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [spock, snowflake, lolor]}
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # pgEdge Ad Hoc Settings
        pg_mode: pgedge                               # pgEdge compatible mode
        pg_packages: [ pgedge, pgsql-common ]         # install pgEdge kernel package + common utils
        pg_libs: 'spock, lolor, pg_stat_statements, auto_explain' # preload required libs for pgEdge logical replication

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
    pg_version: 18                      # pgEdge kernel is compatible with postgres 18
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

## Notes

The `pgedge` template enables `pg_mode: pgedge` in `pg-meta` and pre-installs pgEdge core extensions for logical replication and edge distribution.

**Key features**:

- Uses the `pgedge` kernel package (PG15/16/17/18 compatible, default PG18)
- Bundles `spock`, `snowflake`, and `lolor` in the `pgedge-$v` kernel package and creates them in the `meta` database by default
- Preloads [`spock`](/ext/e/spock/) and [`lolor`](/ext/e/lolor/) for multi-master setup readiness
- Keeps Pigsty standard backup, monitoring, and operations workflow

**Typical use cases**:

- Multi-region edge deployment with nearby writes
- Multi-master logical replication with conflict handling
- Single-node validation before distributed rollout

**Caveats**:

- Current template is for single-node kernel validation; production multi-master needs explicit topology and replication strategy planning
- Default is `pg_version: 18`; keep consistent with target cluster versions
- Evaluate latency and conflict policy before cross-region replication
