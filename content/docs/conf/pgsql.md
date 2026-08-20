---
title: pgsql
weight: 410
description: Native PostgreSQL kernel with stable support for PostgreSQL 14 to 18 and a PG19 Beta evaluation option
icon: fa-brands fa-linux
categories: [Reference]
---

The `pgsql` configuration template uses the native PostgreSQL kernel, Pigsty's default database kernel, with stable support for PostgreSQL 14 to 18. The current `configure` also accepts version 19, but PG19 remains Beta; use the dedicated [`pg19`](/docs/conf/pg19/) template for evaluation.


--------

## Overview

- Config Name: `pgsql`
- Node Count: Single node
- Description: Native PostgreSQL kernel configuration template
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c pgsql [-i <primary_ip>]
```

To specify a non-default PostgreSQL version (e.g., 16):

```bash
./configure -c pgsql -v 16
```


--------

## Content

Source: [`pigsty/conf/pgsql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgsql.yml)

{{< include file="yaml/pgsql.yml" code=true lang="yaml" >}}


--------

## Explanation

The `pgsql` template is Pigsty's **standard kernel configuration**, using community-native PostgreSQL.

**Version Support**:
- PostgreSQL 18 (default)
- PostgreSQL 17, 16, 15, 14
- PostgreSQL 19 Beta (evaluation; use `./configure -c pg19`)

**Use Cases**:
- Need to use the latest PostgreSQL features
- Need the widest extension support
- Standard production environment deployment
- Same functionality as `meta` template, explicitly declaring native kernel usage

**Differences from meta**:
- `pgsql` template explicitly declares using native PostgreSQL kernel
- Suitable for scenarios needing clear distinction between different kernel types
