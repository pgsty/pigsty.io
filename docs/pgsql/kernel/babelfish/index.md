# Babelfish

> Use Babelfish (PG17/18) in Pigsty to provide SQL Server protocol/T-SQL compatibility.

---

LLMS index: [llms.txt](/llms.txt)

---

> [Babelfish](https://babelfishpg.org/) is a PostgreSQL-based SQL Server compatibility layer, open-sourced by AWS.


--------

## Overview

Pigsty lets you deploy Babelfish in `mssql` mode and provide, on top of PostgreSQL:

- SQL Server wire protocol compatibility (TDS, `1433`)
- T-SQL compatibility
- Unified integration with Pigsty capabilities (HA, backup, monitoring, IaC)

In Pigsty v4, Babelfish supports **PostgreSQL 17/18**. The default template uses `pg_version: 17`, and Babelfish is part of Pigsty's standard delivery path with support for all Linux platforms.


--------

## Current Behavior

Compared with older `Babelfish/PG15` docs, current behavior is:

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

```bash
./configure -c mssql [-v 17/18]
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
pg_version: 17  # optional: 18
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

With Pigsty service abstraction you can also use:

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
- Not all native PostgreSQL extensions are directly usable on Babelfish kernels; validate package availability and compatibility first.
- Tighten HBA and network exposure for production; do not keep demo-level open rules.


--------

## Related Docs

- [`mssql` config template](/docs/conf/mssql/)
- [PGSQL kernel mode config](/docs/pgsql/config/kernel/)
- [Official SQL Server `sqlcmd` docs](https://learn.microsoft.com/en-us/sql/tools/sqlcmd/sqlcmd-utility)


--------

## Available Extensions

The Babelfish kernel has **55** available extensions. After removing bundled PG Contrib extensions, the following extra extensions remain:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [babelfishpg_common](/ext/e/babelfishpg_common) | `5.4.0` | Transact SQL Datatype Support |
| [babelfishpg_money](/ext/e/babelfishpg_money) | `1.1.0` | babelfishpg_money |
| [babelfishpg_tds](/ext/e/babelfishpg_tds) | `1.0.0` | TDS protocol extension |
| [babelfishpg_tsql](/ext/e/babelfishpg_tsql) | `5.4.0` | Transact SQL compatibility |
{.full-width}
