# pgEdge

> Use the pgEdge (PG15-18) kernel in Pigsty to build distributed PostgreSQL for edge scenarios on top of Spock multi-master logical replication.

---

LLMS index: [llms.txt](/llms.txt)

---

[**pgEdge**](https://www.pgedge.com/) is a distributed PostgreSQL distribution for edge scenarios, built on [**Spock**](https://docs.pgedge.com/spock-v5) multi-master logical replication.


--------

## Overview

Pigsty integrates pgEdge through `pg_mode: pgedge` and delivers it through the standard PostgreSQL cluster workflow:

- `pgedge`: a PG15, PG16, PG17, and PG18 compatible kernel; the template defaults to PG18
- [`spock`](/ext/e/spock/): Active-active multi-master logical replication
- [`snowflake`](/ext/e/snowflake/): Distributed unique sequences
- [`lolor`](/ext/e/lolor/): Large object logical replication compatibility layer

The current Pigsty repository ships versioned pgEdge kernel packages for `pgedge-15`, `pgedge-16`, `pgedge-17`, and `pgedge-18`; the template defaults to `pg_version: 18`. The `spock`, `snowflake`, and `lolor` control files, SQL files, and shared libraries are bundled in the `pgedge-$v` kernel package, so they are no longer listed as separate `pg_extensions` packages to install.
From the client side, pgEdge is still PostgreSQL wire compatible, so `psql`, JDBC/ODBC, DBeaver, and similar tools work as usual.

The delivery model in Pigsty is: validate the kernel on a single node first, then expand to a multi-node replication topology.
The template handles the kernel, extensions, monitoring, backup, and access control out of the box, but the actual multi-master topology still needs to be designed around your workload consistency and conflict strategy.


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c pgedge
./deploy.yml
```

The template pre-installs `spock`, `snowflake`, and `lolor` in the `meta` database. After deployment, verify the kernel and extensions:

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

If you plan to grow into a multi-node multi-master topology, it is better to configure logical replication capacity and `snowflake.node` explicitly:

```yaml
pg_parameters:
  wal_level: logical
  max_replication_slots: 16
  max_wal_senders: 16
  'snowflake.node': 1
```

`snowflake.node` must be unique on every writable node, otherwise distributed IDs will collide.


--------

## Usage

The common workflow in Pigsty is still: validate the kernel on a single node first, then expand into a multi-node Spock replication topology.

If you need these capabilities in a business database as well, create the extensions first:

```sql
CREATE EXTENSION IF NOT EXISTS spock;
CREATE EXTENSION IF NOT EXISTS snowflake;
CREATE EXTENSION IF NOT EXISTS lolor;
```

Then use the Spock SQL API or the pgEdge CLI to create nodes, replication sets, and subscriptions.
If your schema already uses `serial` or `identity`, plan the `snowflake` sequence migration before enabling multi-master writes, otherwise cross-node primary key collisions are likely.


--------

## Notes

- Replication in pgEdge is organized per database, not as an instance-wide "turn everything into multi-master" switch.
- Replicated tables should have a `PRIMARY KEY` or an appropriate `REPLICA IDENTITY`.
- `UNLOGGED` and `TEMPORARY` tables do not participate in Spock logical replication.
- Spock configuration and operations typically require superuser privileges, so production deployments should define privilege boundaries clearly.
- If your workload depends on large object replication, use `lolor` explicitly rather than assuming native large objects will replicate correctly.
- Cross-region multi-master is not a checkbox feature. Network latency, conflict handling, and the write model all need to be evaluated first.


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

The pgEdge kernel has **63** available extensions. After removing bundled PG Contrib extensions, the following extra extensions remain:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [lolor](/ext/e/lolor) | `1.2.2` | Large Objects support for logical replication |
| [snowflake](/ext/e/snowflake) | `2.5.0` | Snowflake style IDs for PostgreSQL |
| [spock](/ext/e/spock) | `5.0.10` | PostgreSQL Logical Replication |
{.full-width}
