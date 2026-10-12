---
title: ivory
weight: 440
description: IvorySQL kernel, provides Oracle syntax and PL/SQL compatibility
icon: fa-solid fa-gem
categories: [Reference]
---

The `ivory` template replaces the standard PostgreSQL kernel with Highgo's IvorySQL.
IvorySQL supports Oracle syntax and PL/SQL.

For the complete tutorial, see: **[IvorySQL (Oracle Compatible) Kernel Guide](/docs/pgsql/kernel/ivorysql/)**


--------

## Overview

- Config Name: `ivory`
- Node Count: Single node
- Description: Uses IvorySQL Oracle-compatible kernel
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c ivory [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/ivory.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ivory.yml)

{{< include file="yaml/ivory.yml" code=true lang="yaml" >}}


--------

## Explanation

Highgo's open-source IvorySQL kernel supplies Oracle database compatibility.

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
- IvorySQL 5 is based on PostgreSQL 18
- To use `liboracle_parser`, add it to `shared_preload_libraries`.
- In Oracle-compatible mode, `pgbackrest` can have checksum problems. PITR support is limited.
- The current package matrix covers EL 8/9/10, Debian 12/13, Ubuntu 22/24/26, and both architectures
