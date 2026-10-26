---
title: mssql
weight: 420
description: Babelfish template defaulting to a PostgreSQL 17-compatible kernel with SQL Server protocol and T-SQL support
icon: fa-brands fa-windows
categories: [Reference]
---

Development sources use `conf/fork/mssql.yml`; v4.5.0 uses `conf/mssql.yml`, selected with `-c mssql`.

The `mssql` configuration template uses Babelfish instead of native PostgreSQL, providing Microsoft SQL Server wire protocol (TDS) and T-SQL syntax compatibility. The repository provides PG17- and PG18-compatible packages; the template defaults to `pg_version: 17`. See the [package lists](/docs/repo/pgsql/) for availability on each platform.

`./configure -c mssql` ignores `-v`. To use PG18, explicitly change `pg_version` in the generated `pigsty.yml` and verify that the kernel packages and extensions are available for your platform. The development path `fork/mssql` does not match the old-name check, so `-v` overrides its version.

Since v4.2, Pigsty builds Babelfish directly and does not use the WiltonDB repository. Babelfish is available on all [supported Linux platforms](/docs/ref/linux).

For the complete tutorial, see: **[Babelfish (MSSQL) Kernel Guide](/docs/pgsql/kernel/babelfish/)**


--------

## Overview

- Config Name: `mssql`
- Node Count: Single node
- Description: Babelfish (PG17) configuration template with SQL Server protocol compatibility
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c mssql [-i <primary_ip>]
```


--------

## Content

Development source: `conf/fork/mssql.yml`; release source: [`v4.5.0: conf/mssql.yml`](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/mssql.yml).

{{< include file="yaml/mssql.yml" code=true lang="yaml" >}}


--------

## Explanation

With the `mssql` template, SQL Server Management Studio (SSMS) and other SQL Server clients can connect to PostgreSQL. Babelfish provides the protocol compatibility.

**Key Features**:
- Uses TDS protocol (port 1433), compatible with SQL Server clients
- Supports T-SQL syntax, low migration cost
- Retains PostgreSQL's ACID properties and extension ecosystem (the current template uses PG17)
- Supports `multi-db` and `single-db` migration modes
- Default package set: `babelfish + pgsql-common + sqlcmd`
- Creates `uuid-ossp`, `babelfishpg_common`, `babelfishpg_tsql`, `babelfishpg_tds`, and `babelfishpg_money` by default
- v4.2.0 adds full mainstream platform coverage (EL 8/9/10, Debian 12/13, Ubuntu 22/24/26; `x86_64` / `aarch64`)

**Connection Methods**:

```bash
# Using sqlcmd command line tool
sqlcmd -S 10.10.10.10,1433 -U dbuser_mssql -P DBUser.MSSQL -d mssql

# Using SSMS or Azure Data Studio
# Server: 10.10.10.10,1433
# Authentication: SQL Server Authentication
# Login: dbuser_mssql
# Password: DBUser.MSSQL
```

**Use Cases**:
- Migrating from SQL Server to PostgreSQL
- Applications needing to support both SQL Server and PostgreSQL clients
- Leveraging PostgreSQL ecosystem while maintaining T-SQL compatibility

**Notes**:
- The template defaults to a PostgreSQL 17-compatible kernel. After changing versions, check `pg_version` in the generated inventory and the package support matrix before deploying.
- Default migration mode is `multi-db` (`babelfishpg_tsql.migration_mode`), configurable to `single-db` when needed
- Some T-SQL syntax can have compatibility differences. See the Babelfish compatibility documentation.
- Must use `md5` authentication method (not `scram-sha-256`)
