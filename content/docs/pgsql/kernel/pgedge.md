---
title: pgEdge
weight: 2116
description: Use the pgEdge (PG15-18) kernel in Pigsty to build distributed PostgreSQL for edge scenarios on top of Spock multi-master logical replication.
icon: fa-solid fa-network-wired
module: [PGSQL]
categories: [Concept]
---

[**pgEdge**](https://www.pgedge.com/) is a distributed PostgreSQL distribution for edge deployments.
It uses [**Spock**](https://docs.pgedge.com/spock-v5) multi-master logical replication.


--------

## Overview

Pigsty integrates pgEdge through `pg_mode: pgedge` and delivers it through the standard PostgreSQL cluster workflow:

- `pgedge`: a PG15, PG16, PG17, and PG18 compatible kernel; the template defaults to PG18
- [`spock`](/ext/e/spock/): Active-active multi-master logical replication
- [`snowflake`](/ext/e/snowflake/): Distributed unique sequences
- [`lolor`](/ext/e/lolor/): Large object logical replication compatibility layer

The current Pigsty repository supplies the versioned kernel packages `pgedge-15`, `pgedge-16`, `pgedge-17`, and `pgedge-18`.
The template defaults to `pg_version: 18`.
The `pgedge-$v` kernel package includes the control files, SQL files, and shared libraries for `spock`, `snowflake`, and `lolor`.
Thus, these extensions are no longer separate packages in `pg_extensions`.
pgEdge supports the PostgreSQL wire protocol, so `psql`, JDBC/ODBC, DBeaver, and similar tools work as usual.

First validate the kernel on one node.
Then expand to a replication topology with multiple nodes.
The template configures the kernel, extensions, monitoring, backup, and access control.
Design the multi-master topology for your workload consistency requirements and conflict strategy.


--------

## Installation

Use the built-in Pigsty template:

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/pgedge.yml). Development sources moved it to `conf/fork/pgedge.yml`; use `-c fork/pgedge` with those sources.

```bash
./configure -c pgedge
./deploy.yml
```

The template installs `spock`, `snowflake`, and `lolor` in the `meta` database.
After deployment, verify the kernel and extensions:

```bash
psql -d meta -c "SELECT version();"
psql -d meta -c "SELECT extname, extversion FROM pg_extension WHERE extname IN ('spock','snowflake','lolor') ORDER BY 1;"
```

> For the full template and parameters, see: [`pgedge` config template](/docs/conf/pgedge/).


--------

## Configuration

Key parameters in the `pgedge` template (matching `conf/pgedge.yml`):

```yaml
pg_mode: pgedge
pg_version: 18
pg_packages: [ pgedge, pgsql-common ]
pg_libs: 'spock, lolor, pg_stat_statements, auto_explain'
pg_databases:
  - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [spock, snowflake, lolor] }
```

For a future multi-node multi-master topology, we recommend explicit settings for logical replication capacity and `snowflake.node`:

```yaml
pg_parameters:
  wal_level: logical
  max_replication_slots: 16
  max_wal_senders: 16
  'snowflake.node': 1
```

`snowflake.node` must be unique on every writable node.
Otherwise, distributed IDs will collide.


--------

## Usage

First validate the kernel on one node.
Then expand to a Spock replication topology with multiple nodes.

If you need these capabilities in a business database as well, create the extensions first:

```sql
CREATE EXTENSION IF NOT EXISTS spock;
CREATE EXTENSION IF NOT EXISTS snowflake;
CREATE EXTENSION IF NOT EXISTS lolor;
```

Then use the Spock SQL API or the pgEdge CLI to create nodes, replication sets, and subscriptions.
If your schema uses `serial` or `identity`, plan the `snowflake` sequence migration before you enable multi-master writes.
Otherwise, primary key collisions between nodes are likely.


--------

## Notes

- Configure pgEdge replication for each database. There is no instance-wide switch to enable multi-master replication for all databases.
- Replicated tables should have a `PRIMARY KEY` or an appropriate `REPLICA IDENTITY`.
- `UNLOGGED` and `TEMPORARY` tables do not participate in Spock logical replication.
- Spock configuration and operations usually require superuser privileges. Production deployments should define privilege boundaries clearly.
- If your workload requires large object replication, use `lolor` explicitly. Do not assume that native large objects will replicate correctly.
- Before you configure multi-master replication across regions, evaluate network latency, conflict handling, and the write model.


--------

## Related Docs

- [PGSQL Kernel Overview](/docs/pgsql/kernel/)
- [`pgedge` config template](/docs/conf/pgedge/)
- [PGSQL kernel mode config](/docs/pgsql/config/kernel/)
- [`spock` extension](/ext/e/spock/)
- [`snowflake` extension](/ext/e/snowflake/)
- [`lolor` extension](/ext/e/lolor/)
- [pgEdge official docs](https://docs.pgedge.com/)
- [Spock Limitations](https://docs.pgedge.com/spock-v5/development/limitations/)
- [Snowflake Sequences](https://docs.pgedge.com/platform/snowflake)


--------

## Available Extensions

The table lists selected non-Contrib extensions for reference. [Query the target instance](/docs/pgsql/kernel/#versions) to confirm actual availability and versions.

| Extension | Version | Description |
|:----------|:--------|:------------|
| [lolor](/ext/e/lolor) | `1.2.2` | Large Objects support for logical replication |
| [snowflake](/ext/e/snowflake) | `2.5.0` | Snowflake style IDs for PostgreSQL |
| [spock](/ext/e/spock) | `5.0.10` | PostgreSQL Logical Replication |
{.full-width}
