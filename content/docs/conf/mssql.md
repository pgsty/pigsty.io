---
title: mssql
weight: 420
description: Babelfish template pinned to a PostgreSQL 17-compatible kernel with SQL Server protocol and T-SQL support
icon: fa-brands fa-windows
categories: [Reference]
---

The `mssql` configuration template uses a **PostgreSQL 17-compatible Babelfish** kernel instead of native PostgreSQL, providing Microsoft SQL Server wire protocol (TDS) and T-SQL syntax compatibility. The current template is pinned to `pg_version: 17`; `configure` does not apply `-v` overrides to this fixed-kernel template.

Since Pigsty v4.2, Babelfish is built directly by Pigsty, no longer using the WiltonDB repository, and is available on all [supported Linux platforms](/docs/ref/linux).

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

Source: [`pigsty/conf/mssql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/mssql.yml)

{{< include file="yaml/mssql.yml" code=true lang="yaml" >}}


--------

## Explanation

The `mssql` template allows you to use SQL Server Management Studio (SSMS) or other SQL Server client tools to connect to PostgreSQL (through Babelfish protocol compatibility).

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
- The current `mssql` template is pinned to a PostgreSQL 17-compatible kernel; do not rely on `-v` to switch its major version
- Default migration mode is `multi-db` (`babelfishpg_tsql.migration_mode`), configurable to `single-db` when needed
- Some T-SQL syntax may have compatibility differences, refer to Babelfish compatibility documentation
- Must use `md5` authentication method (not `scram-sha-256`)
