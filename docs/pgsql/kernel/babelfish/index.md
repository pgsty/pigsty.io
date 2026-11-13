# Babelfish

> Use Babelfish (PG17/18) in Pigsty to provide SQL Server protocol/T-SQL compatibility.

---

LLMS index: [llms.txt](/llms.txt)

---

> [Babelfish](https://babelfishpg.org/) is a PostgreSQL-based SQL Server compatibility layer, open-sourced by AWS.


--------

## Overview

Deploy Babelfish in `mssql` mode to add these features to PostgreSQL:

- SQL Server wire protocol compatibility (TDS, `1433`)
- T-SQL compatibility
- Unified integration with Pigsty capabilities (HA, backup, monitoring, IaC)

Pigsty provides Babelfish packages compatible with **PostgreSQL 17/18**. The current PG18 baseline is Babelfish `6.2.0` on PostgreSQL `18.6`; the default `conf/fork/mssql.yml` template selects `pg_version: 17`. See the [**package list**](/docs/repo/pgsql/) for platform availability.

`./configure` explicitly excludes `fork/mssql` and shorthand `-c mssql` from `-v` major-version overrides. To use PG18, generate `pigsty.yml`, manually set `pg_version: 18`, and verify target-platform packages. See the [**MSSQL template**](/docs/conf/mssql/).

--------

## Quick Start

Use Pigsty's [`fork/mssql`](/docs/conf/mssql/) template ([`conf/fork/mssql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/fork/mssql.yml)); `-c mssql` and `-c fork/mssql` are equivalent:

```bash
./configure -c fork/mssql
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
