---
title: pgsql
weight: 790
description: Native PostgreSQL kernel, supports deployment of PostgreSQL versions 13 to 18
icon: fa-brands fa-linux
categories: [Reference]
---

The `pgsql` configuration template uses the native PostgreSQL kernel, which is Pigsty's default database kernel, supporting PostgreSQL versions 13 to 18.


--------

## Overview

- Config Name: `pgsql`
- Node Count: Single node
- Description: Native PostgreSQL kernel configuration template
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c pgsql [-i <primary_ip>]
```

To specify a particular PostgreSQL version (e.g., 17):

```bash
./configure -c pgsql -v 17
```


--------

## Content

Source: [`pigsty/conf/pgsql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgsql.yml)

{{< readfile file="yaml/pgsql.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `pgsql` template is Pigsty's **standard kernel configuration**, using community-native PostgreSQL.

**Version Support**:
- PostgreSQL 18 (default)
- PostgreSQL 17, 16, 15, 14, 13

**Use Cases**:
- Need to use the latest PostgreSQL features
- Need the widest extension support
- Standard production environment deployment
- Same functionality as `meta` template, explicitly declaring native kernel usage

**Differences from meta**:
- `pgsql` template explicitly declares using native PostgreSQL kernel
- Suitable for scenarios needing clear distinction between different kernel types

