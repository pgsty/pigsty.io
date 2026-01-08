---
title: mysql
weight: 815
description: OpenHalo kernel, provides MySQL protocol and syntax compatibility
icon: fa-solid fa-database
categories: [Reference]
---

The `mysql` configuration template uses OpenHalo database kernel instead of native PostgreSQL, providing MySQL wire protocol and SQL syntax compatibility.


--------

## Overview

- Config Name: `mysql`
- Node Count: Single node
- Description: OpenHalo MySQL-compatible kernel configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c mysql [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/mysql.yml`](https://github.com/Vonng/pigsty/blob/main/conf/mysql.yml)

{{< readfile file="yaml/mysql.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `mysql` template uses the OpenHalo kernel, allowing you to connect to PostgreSQL using MySQL client tools.

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
- OpenHalo is based on PostgreSQL 14, does not support higher version features
- Some MySQL syntax may have compatibility differences
- Only supports EL8/EL9 systems
- ARM64 architecture not supported

