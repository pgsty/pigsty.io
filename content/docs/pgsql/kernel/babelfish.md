---
title: Babelfish
weight: 2104
description: Use Babelfish (PG17/18) in Pigsty to provide SQL Server protocol/T-SQL compatibility.
icon: fab fa-microsoft
module: [PGSQL]
categories: [Concept]
---

> [Babelfish](https://babelfishpg.org/) is a PostgreSQL-based SQL Server compatibility layer, open-sourced by AWS.


--------

## Overview

Deploy Babelfish in `mssql` mode to add these features to PostgreSQL:

- SQL Server wire protocol compatibility (TDS, `1433`)
- T-SQL compatibility
- Unified integration with Pigsty capabilities (HA, backup, monitoring, IaC)

Pigsty provides **PostgreSQL 17/18**-compatible Babelfish packages. The template defaults to `pg_version: 17`. See the [package lists](/docs/repo/pgsql/) for version and platform availability.

`./configure -c mssql` ignores `-v`. To select PG18, explicitly adjust the generated configuration and check packages. In development sources, `-v` overrides the version for `fork/mssql`; see the [MSSQL template](/docs/conf/mssql/).


--------

## Current Behavior

The current behavior differs from older `Babelfish/PG15` documentation as follows:

- Supported kernel majors are **PG17/18**; the template defaults to **PG17** (`pg_version: 17`)
- Default package group: `babelfish + pgsql-common + sqlcmd`
- Mainstream platform coverage:
  - OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
  - Arch: `x86_64`, `aarch64`
- `mssql` template no longer requires an extra `mssql` repo module (defaults to `node,infra,pgsql`)

> Older docs may still contain deprecated naming. Pigsty now consistently uses `Babelfish` and `babelfish` aliases.


--------

## Quick Start

Use the built-in Pigsty template:

The commands below use the [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/mssql.yml). Development sources moved it to `conf/fork/mssql.yml`; use `-c fork/mssql` with those sources.

```bash
./configure -c mssql
./deploy.yml
```

After deployment, connect directly with SQL Server clients:

```bash
sqlcmd -S <ip>,1433 -U dbuser_mssql -P DBUser.MSSQL -d mssql
```


--------

## Key Configuration

Core parameters in the `mssql` template:

```yaml
pg_mode: mssql
pg_version: 17
pg_packages: [ babelfish, pgsql-common, sqlcmd ]
pg_libs: 'babelfishpg_tds, pg_stat_statements, auto_explain'

pg_databases:
  - name: mssql
    baseline: mssql.sql
    extensions:
      - { name: uuid-ossp }
      - { name: babelfishpg_common }
      - { name: babelfishpg_tsql }
      - { name: babelfishpg_tds }
      - { name: babelfishpg_money }
      - { name: pg_hint_plan }
      - { name: system_stats }
      - { name: tds_fdw }
    parameters: { 'babelfishpg_tsql.migration_mode': 'multi-db' }

pg_hba_rules:
  - { user: dbuser_mssql, db: mssql, addr: intra, auth: md5, order: 525 }

pg_default_services:
  - { name: primary, port: 5433, dest: 1433 }
  - { name: replica, port: 5434, dest: 1433 }
```


--------

## Connectivity and Ports

Babelfish clusters expose two protocol endpoints:

- PostgreSQL protocol: `5432`
- SQL Server protocol (TDS): `1433`

Through Pigsty services, you can also use these ports:

- `5433`: fixed route to primary `1433`
- `5434`: route to readable node `1433`

```bash
# Primary write access
sqlcmd -S <any-node-ip>,5433 -U dbuser_mssql -P DBUser.MSSQL

# Read replica query
sqlcmd -S <any-node-ip>,5434 -U dbuser_mssql -P DBUser.MSSQL
```


--------

## Notes

- Babelfish auth rules must use `md5` instead of default `scram-sha-256`.
- Default migration mode is `multi-db`; switch with `babelfishpg_tsql.migration_mode` if needed.
- Some native PostgreSQL extensions cannot run directly on Babelfish kernels. Verify package availability and compatibility first.
- For production, restrict HBA rules and network access. Do not keep the open rules from the demonstration configuration.


--------

## Related Docs

- [`mssql` config template](/docs/conf/mssql/)
- [PGSQL kernel mode config](/docs/pgsql/config/kernel/)
- [Official SQL Server `sqlcmd` docs](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility)


--------

## Available Extensions

The table lists selected non-Contrib extensions for reference. [Query the target instance](/docs/pgsql/kernel/#versions) to confirm actual availability and versions.

| Extension | Version | Description |
|:----------|:--------|:------------|
| [babelfishpg_common](/ext/e/babelfishpg_common) | `5.4.0` | Transact SQL Datatype Support |
| [babelfishpg_money](/ext/e/babelfishpg_money) | `1.1.0` | babelfishpg_money |
| [babelfishpg_tds](/ext/e/babelfishpg_tds) | `1.0.0` | TDS protocol extension |
| [babelfishpg_tsql](/ext/e/babelfishpg_tsql) | `5.4.0` | Transact SQL compatibility |
{.full-width}
