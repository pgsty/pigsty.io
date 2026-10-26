---
title: Configuration
weight: 1200
description: Choose the appropriate instance and cluster types based on your requirements
  to configure PostgreSQL database clusters that meet your needs.
icon: fa-solid fa-code
module: [PGSQL]
categories: [Reference]
---

Pigsty uses configuration to control PostgreSQL behavior.
This configuration combines inventory files in `~/pigsty/conf/*.yml` with [`PGSQL` parameters](/docs/pgsql/param).
After you write the configuration, you can reproduce a customized cluster in a few minutes.
The configuration includes instances, users, databases, access control, extensions, and tuning policies.


---------------------

## Configuration Entry

1. **Prepare Inventory**: Copy a `pigsty/conf/*.yml` template or write an Ansible inventory. Put cluster groups (`all.children.<cls>.hosts`) and global variables (`all.vars`) in the same file.
2. **Define Parameters**: Override the required [`PGSQL` parameters](/docs/pgsql/param) in `vars`. The override order is global → cluster → host. The last applicable setting determines the value.
3. **Generate and Apply Inventory**: `./configure -c <conf>` generates `pigsty.yml` from the selected template. Then run `./pgsql.yml -l <cls>` or `bin/pgsql-add <cls>` against uninitialized targets to deploy services. Use the corresponding dedicated playbooks or tags for maintenance of initialized clusters.

The PostgreSQL kernel example inventory, `conf/pgsql.yml`, provides a minimal example.
It defines one `pg-meta` cluster, global `pg_version: 18`, and a few application users and databases.
You can add more clusters to this configuration.


---------------------

## Focus Areas & Documentation Index

Use the following pages to configure each part of a PostgreSQL deployment:

- **[Cluster & Instances](/docs/pgsql/config/cluster)**: Define instance topology (standalone, primary-replica, standby cluster, delayed cluster, Citus, etc.) through `pg_cluster / pg_role / pg_seq / pg_upstream`.
- **[Kernel Version](/docs/pgsql/config/kernel)**: Select the core version, flavor, and tuning templates using `pg_version`, `pg_mode`, `pg_packages`, `pg_extensions`, `pg_conf`, and other parameters.
- **[Users/Roles](/docs/pgsql/config/user)**: Declare system roles, business accounts, password policies, and connection pool attributes in `pg_default_roles` and `pg_users`.
- **[Database Objects](/docs/pgsql/config/db)**: Create databases as needed using `pg_databases`, `baseline`, `schemas`, `extensions`, `pool_*` fields and automatically integrate with pgbouncer/Grafana.
- **[Access Control (HBA)](/docs/pgsql/config/hba)**: Maintain host-based authentication policies using `pg_default_hba_rules` and `pg_hba_rules` to ensure access boundaries for different roles/networks.
- **[Privilege Model (ACL)](/docs/pgsql/config/acl)**: Converge object privileges through `pg_default_privileges`, `pg_default_roles`, `pg_revoke_public` parameters, providing an out-of-the-box layered role system.

Use these parameters to declare infrastructure in the inventory for your application requirements.
Pigsty performs the operations and ensures idempotency.


---------------------

## A Typical Example

This example defines topology, kernel version, extensions, users, and databases in one configuration file:

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
    pg_version: 18
    pg_packages: [ pgsql-main, pgsql-common ]
    pg_hba_rules:
      - { user: dbuser_bi, db: bi, addr: intra, auth: ssl, title: 'BI only allows intranet SSL access' }
```

- The `pg-analytics` cluster contains one primary and one offline replica.
- Global settings specify `pg_version: 18` with a set of extension examples and load `olap.yml` tuning.
- Declare business objects in `pg_databases` and `pg_users`, automatically generating schema/extension and connection pool entries.
- Additional `pg_hba_rules` restrict access sources and authentication methods.

Adjust and apply this inventory to create a customized PostgreSQL cluster without manual configuration.
