# pgtde

> Percona PostgreSQL kernel, provides Transparent Data Encryption (pg_tde) capability

---

LLMS index: [llms.txt](/llms.txt)

---

The `pgtde` configuration template uses Percona PostgreSQL database kernel, providing Transparent Data Encryption (TDE) capability.


--------

## Overview

- Config Name: `pgtde`
- Node Count: Single node
- Description: Percona PostgreSQL transparent data encryption configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c pgtde [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/pgtde.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgtde.yml)

```yaml
---
#==============================================================#
# File      :   pgtde.yml
# Desc      :   PG TDE with Percona PostgreSQL 1-node template
# Ctime     :   2025-07-04
# Mtime     :   2026-07-23
# Docs      :   https://pigsty.io/docs/conf/pgtde
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the config template for Percona PostgreSQL Distribution
# with pg_tde, currently based on PostgreSQL 18
# tutorial: https://pigsty.io/docs/pgsql/kernel/percona
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c pgtde
#   ./deploy.yml

all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 }} ,vars: { repo_enabled: false }}
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1  }} ,vars: { etcd_cluster: etcd  }}
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}

    #----------------------------------------------#
    # Percona Postgres Database Cluster
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_mode: pgtde
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - name: meta
            baseline: cmdb.sql
            comment: pigsty tde database
            schemas: [pigsty]
            extensions: [ vector, postgis, pg_tde ,pgaudit, { name: pg_stat_monitor, schema: monitor } ]
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'

        # Percona PostgreSQL TDE Kernel Settings
        pg_packages: [ pgtde, pgsql-common ]  # install Pigsty private-prefix Percona packages
        pg_libs: 'pg_tde, pgaudit, pg_stat_statements, pg_stat_monitor, auto_explain'

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
    nodename_overwrite: false             # do not overwrite node hostname on single node mode
    node_repo_modules: node,infra,pgsql
    node_tune: oltp

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 18                      # Default Percona TDE PG Major Version is 18
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

The `pgtde` template selects `pg_mode: pgtde` and installs the `pgtde` package
alias. Pigsty links the private `/usr/pgtde-$v` prefix (currently
`/usr/pgtde-18`) to its stable `/usr/pgsql` entry point.

**Key Features**:
- **Transparent Data Encryption**: Data automatically encrypted on disk, transparent to applications
- **Key Management**: Supports local keys and external Key Management Systems (KMS)
- **Table-level Encryption**: Selectively encrypt sensitive tables
- **Full Compatibility**: Fully compatible with native PostgreSQL

**Use Cases**:
- Meeting data security compliance requirements (e.g., PCI-DSS, HIPAA)
- Storing sensitive data (e.g., personal information, financial data)
- Scenarios requiring data-at-rest encryption
- Enterprise environments with strict data security requirements

**Usage**:

```sql
CREATE EXTENSION pg_tde;

SELECT pg_tde_add_database_key_provider_file(
    'local-file',
    '/secure/path/pg_tde_keys'
);
SELECT pg_tde_set_principal_key('app-principal-key', 'local-file');

-- Create encrypted table
CREATE TABLE sensitive_data (
    id SERIAL PRIMARY KEY,
    ssn VARCHAR(11)
) USING tde_heap;

-- Or enable encryption on existing table
ALTER TABLE existing_table SET ACCESS METHOD tde_heap;
```

**Notes**:
- Percona PostgreSQL is based on PostgreSQL 18
- Encryption brings some performance overhead (typically 5-15%)
- Encryption keys must be properly managed
- Both `x86_64` and `aarch64` packages are available on the listed distributions
