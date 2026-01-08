---
title: PostgreSQL
weight: 2101
description: Vanilla PostgreSQL kernel with 440 extensions
icon: fa-solid fa-database
module: [PGSQL]
categories: [Concept]
---

[PostgreSQL](https://www.postgresql.org/) is the world's most advanced and popular open-source database.

Pigsty supports PostgreSQL 13 ~ 18 and provides 440 PG extensions.


------

## Quick Start

[**Install**](/docs/setup/install) Pigsty using the [`pgsql`](https://github.com/pgsty/pigsty/blob/main/conf/pgsql.yml) configuration template.

```bash
./configure -c pgsql     # Use postgres kernel
./deploy.yml             # Set up everything with pigsty
```

Most [configuration templates](/docs/conf/) use PostgreSQL kernel by default, for example:

- [`meta`](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml) : **Default**, postgres with core extensions (vector, postgis, timescale)
- [`rich`](https://github.com/pgsty/pigsty/blob/main/conf/rich.yml) : postgres with all extensions installed
- [`slim`](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml) : postgres only, no monitoring infrastructure
- [`full`](https://github.com/pgsty/pigsty/blob/main/conf/full.yml) : 4-node sandbox for HA demonstration
- [`pgsql`](https://github.com/pgsty/pigsty/blob/main/conf/pgsql.yml) : minimal postgres kernel configuration example


------

## Configuration

Vanilla PostgreSQL kernel requires no special adjustments:

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
    node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # Full backup at 1 AM daily
    pg_packages: [ pgsql-main, pgsql-common ]   # pg kernel and common utilities
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
```


------

## Version Selection

To use a different PostgreSQL major version, you can configure it using the `-v` parameter:

```bash
./configure -c pgsql            # Default is postgresql 18, no need to specify explicitly
./configure -c pgsql -v 17      # Use postgresql 17
./configure -c pgsql -v 16      # Use postgresql 16
./configure -c pgsql -v 15      # Use postgresql 15
./configure -c pgsql -v 14      # Use postgresql 14
./configure -c pgsql -v 13      # Use postgresql 13
```

If a PostgreSQL cluster is already installed, you need to uninstall it before installing a new version:

```bash
./pgsql-rm.yml # -l pg-meta
```


------

## Extension Ecosystem

Pigsty provides a rich extension ecosystem for PostgreSQL, including:

- **Time-series**: timescaledb, pg_cron, periods
- **Geospatial**: postgis, h3, pgrouting
- **Vector**: pgvector, pgml, vchord
- **Search**: pg_trgm, zhparser, pgroonga
- **Analytics**: citus, pg_duckdb, pg_analytics
- **Features**: age, pg_graphql, rum
- **Languages**: plpython3u, pljava, plv8
- **Types**: hstore, ltree, citext
- **Utilities**: http, pg_net, pgjwt
- **Functions**: pgcrypto, uuid-ossp, pg_uuidv7
- **Administration**: pg_repack, pgagent, pg_squeeze
- **Statistics**: pg_stat_statements, pg_qualstats, auto_explain
- **Security**: pgaudit, pgcrypto, pgsodium
- **Foreign**: postgres_fdw, mysql_fdw, oracle_fdw
- **Compatibility**: orafce, babelfishpg_tds
- **Data**: pglogical, wal2json, decoderbufs

For details, please refer to [Extension Catalog](https://pgext.cloud/list).

