---
title: Percona
weight: 2108
description: Percona Postgres distribution with TDE transparent encryption support
icon: fa-solid fa-lock
module: [PGSQL]
categories: [Concept]
---

[Percona Postgres](https://www.percona.com/postgresql/software/postgresql-distribution) is a patched Postgres kernel with [`pg_tde`](https://docs.percona.com/pg-tde/index.html) (Transparent Data Encryption) extension.

It's compatible with PostgreSQL 18.1 and available on all Pigsty-supported platforms.

- [Performance Test for Percona Transparent Data Encryption (TDE)](https://andreas.scherbaum.la/post/2025-06-30_performance-test-for-percona-transparent-data-encryption-tde/)


------

## Quick Start

Use Pigsty's [**standard installation process**](/docs/setup/install) with the [`pgtde`](https://github.com/pgsty/pigsty/blob/main/conf/pgtde.yml) configuration template.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c pgtde     # Use percona postgres kernel
./deploy.yml             # Set up everything with pigsty
```



------

## Configuration

The following parameters need to be adjusted to deploy a Percona cluster:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pgsql admin user }
      - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
    pg_databases:
      - name: meta
        baseline: cmdb.sql
        comment: pigsty tde database
        schemas: [pigsty]
        extensions: [ vector, postgis, pg_tde ,pgaudit, { name: pg_stat_monitor, schema: monitor } ]
    pg_hba_rules:
      - { user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes' }
    node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # Full backup at 1 AM daily

    # Percona PostgreSQL TDE specific settings
    pg_packages: [ percona-main, pgsql-common ]  # Install percona postgres packages
    pg_libs: 'pg_tde, pgaudit, pg_stat_statements, pg_stat_monitor, auto_explain'
```


------

## Extensions

Percona provides 80 available extensions, including `pg_tde`, `pgvector`, `postgis`, `pgaudit`, `set_user`, `pg_stat_monitor`, and other useful third-party extensions.

| Extension       | Version | Description                                                       |
|-----------------|---------|-------------------------------------------------------------------|
| pg_tde          | 2.1     | Percona transparent data encryption access method                 |
| vector          | 0.8.1   | Vector data type and ivfflat and hnsw access methods              |
| postgis         | 3.5.4   | PostGIS geometry and geography types and functions                |
| pgaudit         | 18.0    | Provides auditing functionality                                   |
| pg_stat_monitor | 2.3     | PostgreSQL query performance monitoring tool                      |
| set_user        | 4.2.0   | Similar to SET ROLE but with additional logging                   |
| pg_repack       | 1.5.3   | Reorganize tables in PostgreSQL databases with minimal locks      |
| hstore          | 1.8     | Data type for storing sets of (key, value) pairs                  |
| ltree           | 1.3     | Data type for hierarchical tree-like structures                   |
| pg_trgm         | 1.6     | Text similarity measurement and index searching based on trigrams |

For the complete list of 80 extensions, please refer to the [Percona Postgres official documentation](https://docs.percona.com/postgresql/18/extensions.html).


------

## Key Features

- **Transparent Data Encryption**: Provides data-at-rest encryption using the pg_tde extension
- **PostgreSQL 18 Compatible**: Based on the latest PostgreSQL 18 version
- **Enterprise Extensions**: Includes enterprise-grade features like pgaudit, pg_stat_monitor
- **Complete Ecosystem**: Supports popular extensions like pgvector, PostGIS

> **Note**: Currently in stable stage - thoroughly evaluate before production use.

