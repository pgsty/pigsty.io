---
title: PostgreSQL
weight: 2101
description: Vanilla PostgreSQL with access to Pigsty’s catalog of 600 packaged extensions
icon: fa-solid fa-database
module: [PGSQL]
categories: [Concept]
---

[PostgreSQL](https://www.postgresql.org/) is a widely used open-source database.

Pigsty installs PostgreSQL 18 by default.
It supports PostgreSQL 14 ~ 18 and provides {{< param pgext_count >}} PG extensions.


------

## Quick Start

[**Install**](/docs/setup/install) Pigsty using the [`pgsql`](/docs/conf/pgsql/) configuration template.

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/pgsql.yml). Development sources moved it to `conf/fork/pgsql.yml`; use `-c fork/pgsql` with those sources.

```bash
./configure -c pgsql     # Use postgres kernel
./deploy.yml             # Deploy the Pigsty core chain with native PostgreSQL
```

Most [configuration templates](/docs/conf/) use the PostgreSQL kernel by default.
Examples include:

- [`meta`](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml) : **Default**, postgres with core extensions (vector, postgis, timescale)
- [`rich`](https://github.com/pgsty/pigsty/blob/main/conf/rich.yml) : postgres with all extensions installed
- [`slim`](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml) : postgres only, no monitoring infrastructure
- [`ha/full`](https://github.com/pgsty/pigsty/blob/main/conf/ha/full.yml) : 4-node sandbox for HA demonstration
- [`pgsql`](/docs/conf/pgsql/) : minimal postgres kernel configuration example


------

## Configuration

The native PostgreSQL kernel requires no special configuration changes:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
      - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
    pg_databases:
      - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ vector ]}
    pg_hba_rules:
      - { user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes' }
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # Full backup at 1 AM daily
    pg_packages: [ pgsql-main, pgsql-common ]   # pg kernel and common utilities
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
```


------

## Version Selection

To select a different PostgreSQL major version, use `-v`:

```bash
./configure -c pgsql            # Default is postgresql 18, no need to specify explicitly
./configure -c pgsql -v 18      # Explicitly use postgresql 18
./configure -c pgsql -v 17      # Use postgresql 17
./configure -c pgsql -v 16      # Use postgresql 16
./configure -c pgsql -v 15      # Use postgresql 15
./configure -c pgsql -v 14      # Use postgresql 14
```

`-v` generates configuration for a new deployment; it does not upgrade an existing data directory. To change the major version of an existing cluster, plan compatibility checks, backups, and migration using the [PostgreSQL major upgrade procedure](/docs/pgsql/admin/upgrade/).


------

## Extension Ecosystem

Pigsty provides PostgreSQL extensions.
See the [Extension Catalog](/ext/list/) for details.
