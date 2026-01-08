---
title: Configuration
weight: 1200
description: Choose the appropriate instance and cluster types based on your requirements
  to configure PostgreSQL database clusters that meet your needs.
icon: fa-solid fa-code
module: [PGSQL]
categories: [Reference]
tags: []
---

Pigsty is a "configuration-driven" PostgreSQL platform: all behaviors come from the combination of inventory files in `~/pigsty/conf/*.yml` and [`PGSQL` parameters](/docs/pgsql/param).
Once you've written the configuration, you can replicate a customized cluster with instances, users, databases, access control, extensions, and tuning policies in just a few minutes.


---------------------

## Configuration Entry

1. **Prepare Inventory**: Copy a `pigsty/conf/*.yml` template or write an Ansible Inventory from scratch, placing cluster groups (`all.children.<cls>.hosts`) and global variables (`all.vars`) in the same file.
2. **Define Parameters**: Override the required [`PGSQL` parameters](/docs/pgsql/param) in the `vars` block. The override order from global → cluster → host determines the final value.
3. **Apply Configuration**: Run `./configure -c <conf>` or `bin/pgsql-add <cls>` and other playbooks to apply the configuration. Pigsty will generate the configuration files needed for Patroni/pgbouncer/pgbackrest based on the parameters.

Pigsty's default demo inventory `conf/pgsql.yml` is a minimal example: one `pg-meta` cluster, global `pg_version: 18`, and a few business user and database definitions. You can expand with more clusters from this base.


---------------------

## Focus Areas & Documentation Index

Pigsty's PostgreSQL configuration can be organized from the following dimensions. Subsequent documentation will explain "how to configure" each:

- **[Cluster & Instances](/docs/pgsql/config/cluster)**: Define instance topology (standalone, primary-replica, standby cluster, delayed cluster, Citus, etc.) through `pg_cluster / pg_role / pg_seq / pg_upstream`.
- **[Kernel Version](/docs/pgsql/config/kernel)**: Select the core version, flavor, and tuning templates using `pg_version`, `pg_mode`, `pg_packages`, `pg_extensions`, `pg_conf`, and other parameters.
- **[Users/Roles](/docs/pgsql/config/user)**: Declare system roles, business accounts, password policies, and connection pool attributes in `pg_default_roles` and `pg_users`.
- **[Database Objects](/docs/pgsql/config/db)**: Create databases as needed using `pg_databases`, `baseline`, `schemas`, `extensions`, `pool_*` fields and automatically integrate with pgbouncer/Grafana.
- **[Access Control (HBA)](/docs/pgsql/config/hba)**: Maintain host-based authentication policies using `pg_default_hba_rules` and `pg_hba_rules` to ensure access boundaries for different roles/networks.
- **[Privilege Model (ACL)](/docs/pgsql/config/acl)**: Converge object privileges through `pg_default_privileges`, `pg_default_roles`, `pg_revoke_public` parameters, providing an out-of-the-box layered role system.

After understanding these parameters, you can write declarative inventory manifests as "configuration as infrastructure" for any business requirement. Pigsty will handle execution and ensure idempotency.


---------------------

## A Typical Example

The following snippet shows how to control instance topology, kernel version, extensions, users, and databases in the same configuration file:

```yaml
all:
  children:
    pg-analytics:
      hosts:
        10.10.10.11: { pg_seq: 1, pg_role: primary }
        10.10.10.12: { pg_seq: 2, pg_role: replica, pg_offline_query: true }
      vars:
        pg_cluster: pg-analytics
        pg_conf: olap.yml
        pg_extensions: [ postgis, timescaledb, pgvector ]
        pg_databases:
          - { name: bi, owner: dbuser_bi, schemas: [mart], extensions: [timescaledb], pool_mode: session }
        pg_users:
          - { name: dbuser_bi, password: DBUser.BI, roles: [dbrole_admin], pgbouncer: true }
  vars:
    pg_version: 17
    pg_packages: [ pgsql-main pgsql-common ]
    pg_hba_rules:
      - { user: dbuser_bi, db: bi, addr: intra, auth: ssl, title: 'BI only allows intranet SSL access' }
```

- The `pg-analytics` cluster contains one primary and one offline replica.
- Global settings specify `pg_version: 17` with a set of extension examples and load `olap.yml` tuning.
- Declare business objects in `pg_databases` and `pg_users`, automatically generating schema/extension and connection pool entries.
- Additional `pg_hba_rules` restrict access sources and authentication methods.

Modify and apply this inventory to get a customized PostgreSQL cluster without manual configuration.
