---
title: halo
aliases: [/docs/conf/halo/]
weight: 470
description: OpenHalo kernel, provides MySQL protocol and syntax compatibility
icon: fa-solid fa-database
categories: [Reference]
---

Current development sources use `conf/fork/halo.yml`, selected with `-c halo` or `-c fork/halo`.
The OpenHalo template is named `halo` to distinguish it from the native MySQL example, selected with `mysql` / `demo/mysql`.
The v4.5.0 release package still uses `conf/mysql.yml` and `-c mysql`.

The `halo` configuration template uses the OpenHalo database kernel instead of native PostgreSQL. OpenHalo provides MySQL wire protocol and SQL syntax compatibility.


--------

## Overview

- Config Name: `halo` (explicit path: `fork/halo`)
- Node Count: Single node
- Description: OpenHalo MySQL-compatible kernel configuration
- OS Distro: EL 8/9/10, Debian 12/13, Ubuntu 22/24/26
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c halo [-i <primary_ip>]
```


--------

## Content

Development source: [`conf/fork/halo.yml`](https://github.com/pgsty/pigsty/blob/d3f3aaeeb34c10be967dd34880b67d68f34b26ff/conf/fork/halo.yml); release source: [`v4.5.0: conf/mysql.yml`](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/mysql.yml).

{{< include file="yaml/fork/halo.yml" code=true lang="yaml" >}}


--------

## Explanation

The `halo` template uses the OpenHalo kernel. You can connect to PostgreSQL with MySQL client tools.

The template name is `halo`; its internal compatibility setting remains `pg_mode: mysql`.

**Key Features**:
- Uses MySQL protocol (port 3306), compatible with MySQL clients
- Supports a subset of MySQL SQL syntax
- Retains PostgreSQL's ACID properties and storage engine
- Supports both PostgreSQL and MySQL protocol connections simultaneously

**Connection Methods**:

```bash
# Using MySQL client
mysql -h 10.10.10.10 -P 3306 -u dbuser_meta -pDBUser.Meta

# Also retains PostgreSQL connection capability
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
```

**Use Cases**:
- Migrating from MySQL to PostgreSQL
- Applications needing to support both MySQL and PostgreSQL clients
- Leveraging PostgreSQL ecosystem while maintaining MySQL compatibility

**Notes**:
- OpenHalo is based on PostgreSQL 14. It does not support features from later versions.
- Some MySQL syntax may have compatibility differences
- The current `openhalo` package alias covers Pigsty's supported Linux platforms on both architectures. Installation still depends on the repository index for the target platform.
