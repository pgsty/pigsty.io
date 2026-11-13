---
title: halo
aliases: [/docs/conf/halo/]
weight: 470
description: OpenHalo kernel, provides MySQL protocol and syntax compatibility
icon: fa-solid fa-database
categories: [Reference]
---

The `halo` template (`conf/fork/halo.yml`, selected with `-c halo` or `-c fork/halo`) replaces native PostgreSQL with OpenHalo, which provides MySQL wire protocol and SQL syntax compatibility.

In Pigsty `v4.6.0`, `-c mysql` (or `-c demo/mysql`) selects the native MySQL 8.4 example [`conf/demo/mysql.yml`](/docs/conf/mysql84/). Use `-c halo` for OpenHalo.

--------

## Overview

- Config Name: `halo` (explicit path: `fork/halo`)
- Node Count: Single node
- Description: OpenHalo MySQL-compatible kernel configuration
- OS Distro: EL 8/9/10, Debian 12/13, Ubuntu 22/24/26
- OS Arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`demo/mysql`](/docs/conf/mysql84/)

Usage:

```bash
./configure -c halo [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/fork/halo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/fork/halo.yml)

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
