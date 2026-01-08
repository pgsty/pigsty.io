---
title: mssql
weight: 800
description: WiltonDB / Babelfish kernel, provides Microsoft SQL Server protocol and syntax compatibility
icon: fa-brands fa-windows
categories: [Reference]
---

The `mssql` configuration template uses WiltonDB / Babelfish database kernel instead of native PostgreSQL, providing Microsoft SQL Server wire protocol (TDS) and T-SQL syntax compatibility.

For the complete tutorial, see: **[Babelfish (MSSQL) Kernel Guide](/docs/pgsql/kernel/babelfish/)**


--------

## Overview

- Config Name: `mssql`
- Node Count: Single node
- Description: WiltonDB / Babelfish configuration template, provides SQL Server protocol compatibility
- OS Distro: `el8`, `el9`, `el10`, `u22`, `u24` (Debian not available)
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c mssql [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/mssql.yml`](https://github.com/Vonng/pigsty/blob/main/conf/mssql.yml)

{{< readfile file="yaml/mssql.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `mssql` template allows you to use SQL Server Management Studio (SSMS) or other SQL Server client tools to connect to PostgreSQL.

**Key Features**:
- Uses TDS protocol (port 1433), compatible with SQL Server clients
- Supports T-SQL syntax, low migration cost
- Retains PostgreSQL's ACID properties and extension ecosystem
- Supports `multi-db` and `single-db` migration modes

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
- WiltonDB is based on PostgreSQL 15, does not support higher version features
- Some T-SQL syntax may have compatibility differences, refer to Babelfish compatibility documentation
- Must use `md5` authentication method (not `scram-sha-256`)

