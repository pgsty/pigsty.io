---
title: Percona
weight: 2108
description: Percona Postgres distribution with TDE transparent encryption support
icon: fa-solid fa-lock
module: [PGSQL]
categories: [Concept]
---

[Percona Postgres](https://www.percona.com/postgresql/software/postgresql-distribution) is a patched Postgres kernel with [`pg_tde`](https://docs.percona.com/pg-tde/index.html) (Transparent Data Encryption) extension.

From v4.4.0, Pigsty installs Percona PostgreSQL under the private prefix `/usr/pgtde-$v`.
Version v4.5.0 keeps this layout, with `/usr/pgtde-18` for PostgreSQL 18.
The `pgtde` package alias installs both the kernel package and its contrib package.
These packages include `pg_tde`, PostGIS, pgvector, wal2json, pg_repack, pgaudit, and pg_stat_monitor.

- [Performance Test for Percona Transparent Data Encryption (TDE)](https://andreas.scherbaum.la/post/2025-06-30_performance-test-for-percona-transparent-data-encryption-tde/)


------

## Quick Start

Use Pigsty's [**standard installation process**](/docs/setup/install) with the [`pgtde`](/docs/conf/pgtde/) configuration template.

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/pgtde.yml). Development sources moved it to `conf/fork/pgtde.yml`; use `-c fork/pgtde` with those sources.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c pgtde     # Use percona postgres kernel
./deploy.yml             # Deploy the Pigsty core chain with Percona PostgreSQL
```



------

## Configuration

To deploy a Percona cluster, adjust these parameters:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_mode: pgtde
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
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # Full backup at 1 AM daily

    # Percona PostgreSQL TDE kernel settings
    pg_packages: [ pgtde, pgsql-common ]
    pg_libs: 'pg_tde, pgaudit, pg_stat_statements, pg_stat_monitor, auto_explain'
```

Pigsty's `pgsql` repository module supplies the `pgtde` packages.
The legacy `percona` module is not required by this template.


------

## Available Extensions

The table lists selected non-Contrib extensions for reference. [Query the target instance](/docs/pgsql/kernel/#versions) to confirm actual availability and versions.

| Extension | Version | Description |
|:----------|:--------|:------------|
| [address_standardizer](/ext/e/address_standardizer) | `3.5.7` | Parses an address into its elements. Usually supports address normalization for geocoding. |
| [address_standardizer_data_us](/ext/e/address_standardizer_data_us) | `3.5.7` | Address Standardizer US dataset example |
| [pg_repack](/ext/e/pg_repack) | `1.5.3` | Reorganize tables in PostgreSQL databases with minimal locks |
| [pg_stat_monitor](/ext/e/pg_stat_monitor) | `2.3.2` | Monitors PostgreSQL query performance. Based on the PostgreSQL contrib module pg_stat_statements. Provides aggregated statistics, client information, execution plans and plan details, and histogram information. |
| [pg_tde](/ext/e/pg_tde) | `2.2.1` | pg_tde access method |
| [pgaudit](/ext/e/pgaudit) | `18.0` | provides auditing functionality |
| [postgis](/ext/e/postgis) | `3.5.7` | PostGIS geometry and geography spatial types and functions |
| [postgis_raster](/ext/e/postgis_raster) | `3.5.7` | PostGIS raster types and functions |
| [postgis_sfcgal](/ext/e/postgis_sfcgal) | `3.5.7` | PostGIS SFCGAL functions |
| [postgis_tiger_geocoder](/ext/e/postgis_tiger_geocoder) | `3.5.7` | PostGIS tiger geocoder and reverse geocoder |
| [postgis_topology](/ext/e/postgis_topology) | `3.5.7` | PostGIS topology spatial types and functions |
| [set_user](/ext/e/set_user) | `4.2.0` | similar to SET ROLE but with added logging |
| [vector](/ext/e/vector) | `0.8.3` | vector data type and ivfflat and hnsw access methods |
{.full-width}

------

## Key Features

- **Transparent Data Encryption**: Provides data-at-rest encryption using the pg_tde extension
- **PostgreSQL 18 Compatible**: Based on the Percona PostgreSQL 18 package set
- **Enterprise Extensions**: Includes enterprise-grade features like pgaudit, pg_stat_monitor
- **Complete Ecosystem**: Supports popular extensions like pgvector, PostGIS

> **Note**: Currently in stable stage - thoroughly evaluate before production use.
