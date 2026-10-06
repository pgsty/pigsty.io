# agens

> AgensGraph kernel template with property graph model and Cypher query support

---

LLMS index: [llms.txt](/llms.txt)

---

The `agens` configuration template replaces native PostgreSQL with the AgensGraph kernel and enables property-graph modeling plus Cypher queries.

For the full guide, see: **[AgensGraph kernel guide](/docs/pgsql/kernel/agensgraph/)**


--------

## Overview

- Config name: `agens`
- Node count: Single node
- Description: AgensGraph (PG17) graph database kernel template
- Supported OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- Supported arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Enable with:

```bash
./configure -c agens [-i <primary_ip>]
```


--------

## Template Content

Source: [`pigsty/conf/agens.yml`](https://github.com/pgsty/pigsty/blob/main/conf/agens.yml)

```yaml
---
#==============================================================#
# File      :   agens.yml
# Desc      :   1-node AgensGraph (Graph DB) template
# Ctime     :   2026-02-26
# Mtime     :   2026-07-06
# Docs      :   https://pigsty.io/docs/conf/agens
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for AgensGraph Kernel,
# Which is a PostgreSQL 17 fork with graph capabilities.
# tutorial: https://pigsty.io/docs/pgsql/kernel/agensgraph
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c agens
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # AgensGraph Database Cluster
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

        # AgensGraph Ad Hoc Settings
        pg_mode: agens                                   # AgensGraph compatible mode
        pg_packages: [ agensgraph, pgsql-common ]        # install AgensGraph kernel package + common utils

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
    pg_version: 17                      # AgensGraph kernel is compatible with postgres 17
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

The `agens` template enables `pg_mode: agens` in the `pg-meta` cluster and installs the `agensgraph` kernel package instead of standard PostgreSQL.

**Key features**:

- Property graph model support (Vertex / Edge)
- Cypher query syntax, can be combined with SQL
- Compatible with PostgreSQL ecosystem and standard operations
- Based on PostgreSQL 17-compatible kernel by default

**Typical use cases**:

- Graph relationship analysis and path queries
- Social graph, risk linkage, knowledge graph scenarios
- Workloads requiring graph queries within PostgreSQL operations

**Caveats**:

- Current AgensGraph template is pinned to `pg_version: 17`
- Default topology is single-node for quick validation; production should extend with HA topology planning
- Graph schema and Cypher semantics should follow official AgensGraph docs
