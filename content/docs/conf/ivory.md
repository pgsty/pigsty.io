---
title: ivory
weight: 810
description: IvorySQL kernel, provides Oracle syntax and PL/SQL compatibility
icon: fa-solid fa-gem
categories: [Reference]
---

The `ivory` configuration template uses Highgo's IvorySQL database kernel instead of native PostgreSQL, providing Oracle syntax and PL/SQL compatibility.

For the complete tutorial, see: **[IvorySQL (Oracle Compatible) Kernel Guide](/docs/pgsql/kernel/ivorysql/)**


--------

## Overview

- Config Name: `ivory`
- Node Count: Single node
- Description: Uses IvorySQL Oracle-compatible kernel
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c ivory [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/ivory.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ivory.yml)

{{< readfile file="yaml/ivory.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ivory` template uses Highgo's open-source IvorySQL kernel, providing Oracle database compatibility.

**Key Features**:
- Supports Oracle PL/SQL syntax
- Compatible with Oracle data types (NUMBER, VARCHAR2, etc.)
- Supports Oracle-style packages
- Retains all standard PostgreSQL functionality

**Use Cases**:
- Migrating from Oracle to PostgreSQL
- Applications needing both Oracle and PostgreSQL syntax support
- Leveraging PostgreSQL ecosystem while maintaining PL/SQL compatibility
- Test environments for evaluating IvorySQL features

**Notes**:
- IvorySQL 4 is based on PostgreSQL 18
- Using `liboracle_parser` requires loading into `shared_preload_libraries`
- `pgbackrest` may have checksum issues in Oracle-compatible mode, PITR capability is limited
- Only supports EL8/EL9 systems, Debian/Ubuntu not supported

