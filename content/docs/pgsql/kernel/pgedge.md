---
title: pgEdge
weight: 2116
description: Use the pgEdge (PG17) kernel in Pigsty for distributed, multi-master PostgreSQL at the edge.
icon: fa-solid fa-network-wired
module: [PGSQL]
categories: [Concept]
---

> [**pgEdge**](https://www.pgedge.com/) is a distributed PostgreSQL distribution for edge scenarios, built on [**Spock**](https://docs.pgedge.com/spock-v5) multi-master logical replication.


--------

## Overview

In Pigsty, pgEdge is activated via `pg_mode: pgedge`. The default delivery includes these core components:

- `pgedge`: PG17-compatible kernel (a patched PostgreSQL 17.9)
- `spock`: Active-active multi-master logical replication
- `snowflake`: Distributed unique sequences
- `lolor`: Large object logical replication compatibility layer

pgEdge clusters retain all standard Pigsty capabilities: HA, backup & restore, monitoring & alerting, access control, and IaC configuration management.


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c pgedge
./deploy.yml
```

After deployment, verify the kernel and extensions:

```bash
psql -d meta -c "SELECT version();"
psql -d meta -c "SELECT extname, extversion FROM pg_extension WHERE extname IN ('spock','snowflake','lolor') ORDER BY 1;"
```

> For the full template and parameters, see: [`pgedge` config template](/docs/conf/pgedge/).


--------

## Configuration

Key parameters for `pgedge` mode (matching `conf/pgedge.yml`):

```yaml
pg_mode: pgedge
pg_version: 17
pg_packages: [ pgedge, pgsql-common ]
pg_extensions: [ spock, snowflake, lolor ]
pg_libs: 'spock, lolor, pg_stat_statements, auto_explain'
```

For multi-node multi-master setups, explicitly configure `snowflake.node` (unique per node):

```yaml
pg_parameters:
  'snowflake.node': 1
```

The pgEdge docs recommend Spock-specific logical replication parameters (`wal_level=logical`, sufficient `max_wal_senders`/`max_replication_slots`). Pigsty's `oltp/olap/tiny/crit` tuning templates already cover these baseline parameters.


--------

## Usage

The typical workflow in Pigsty is: validate the kernel on a single node first, then expand into a multi-node Spock replication topology.

### 1. Enable Extensions

```sql
CREATE EXTENSION IF NOT EXISTS spock;
CREATE EXTENSION IF NOT EXISTS snowflake;
CREATE EXTENSION IF NOT EXISTS lolor;
```

### 2. Configure Spock Multi-Master Replication

Use the Spock SQL API (`node_create`, `sub_create`, etc.) or the pgEdge CLI for node and subscription management. Official entry points:

- [Installing and Configuring Spock](https://docs.pgedge.com/platform/spock_ext/install_spock)
- [Replication Set Management](https://docs.pgedge.com/spock-v5/development/managing/repsets)
- [Node Management](https://docs.pgedge.com/spock-v5/development/managing/nodes)

### 3. Use Snowflake Sequences (Recommended)

pgEdge strongly recommends Snowflake sequences over traditional sequences for distributed multi-master scenarios. Existing sequences can be converted to Snowflake sequences using Spock/Snowflake tooling.

- [Snowflake Sequences](https://docs.pgedge.com/platform/snowflake)
- [Using Spock with Snowflake Sequences](https://docs.pgedge.com/spock-v5/development/managing/snowflake)
- [LOLOR (Large Objects)](https://docs.pgedge.com/platform/lolor)


--------

## Notes

Per the pgEdge official limitations, evaluate the following before production use:

- Spock configuration and management typically requires superuser privileges.
- `UNLOGGED` and `TEMPORARY` tables are not replicated.
- Replication is configured per-database, not instance-wide.
- Replicated tables should have a `PRIMARY KEY` or a valid `REPLICA IDENTITY`.
- For cross-region multi-master setups, use `snowflake` for sequence management.
- If your workload depends on large object replication, use `lolor`; native large object logical replication has known limitations.

See the official limitations doc: [Spock Limitations](https://docs.pgedge.com/spock-v5/development/limitations/).


--------

## Related Docs

- [PGSQL Kernel Overview](/docs/pgsql/kernel/)
- [`pgedge` config template](/docs/conf/pgedge/)
- [PGSQL kernel mode config](/docs/pgsql/config/kernel/)
- [pgEdge official docs](https://docs.pgedge.com/)
- [pgEdge Platform Release Notes](https://docs.pgedge.com/platform/pgedge_rel_notes)
