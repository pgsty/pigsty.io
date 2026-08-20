---
title: demo/kernel
weight: 1035
description: Ten-node PostgreSQL kernel matrix demo configuration
icon: fa-solid fa-microchip
categories: [Reference]
---

The `demo/kernel` configuration template demonstrates the major PostgreSQL kernels and compatible branches supported by Pigsty in a single configuration. It is intended for feature validation and kernel difference testing, not production use.


--------

## Overview

- Config Name: `demo/kernel`
- Node Count: 10 nodes, with one node also hosting INFRA/ETCD and `pg-citus`
- Description: PostgreSQL kernel matrix demo covering Citus, IvorySQL, Babelfish, PolarDB, Percona TDE, OrioleDB, OpenHalo, DocumentDB, AgensGraph, and pgEdge
- OS Distro: depends on actual package support for each kernel
- OS Arch: depends on actual package support for each kernel
- Related: [`pgsql`](/docs/conf/pgsql/), [`mssql`](/docs/conf/mssql/), [`mongo`](/docs/conf/mongo/)

Usage:

```bash
./configure -c demo/kernel
```

> Note: This is a fixed-IP demo template. Adjust node addresses for your actual environment after generation.


--------

## Content

Source: [`pigsty/conf/demo/kernel.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/kernel.yml)

{{< include file="yaml/demo/kernel.yml" code=true lang="yaml" >}}


--------

## Explanation

This template uses single-node clusters to show the minimum viable configuration for different kernels:

- `pg-citus`: PostgreSQL 18 + Citus
- `pg-ivory`: IvorySQL, compatible with PostgreSQL 18
- `pg-mssql`: Babelfish, compatible with PostgreSQL 17
- `pg-polar`: PolarDB for PostgreSQL, compatible with PostgreSQL 17
- `pg-tde`: Percona PostgreSQL 18 + `pg_tde`
- `pg-oriole`: OrioleDB, supports PostgreSQL 16, 17, and 18; the current demo config defaults to PG18
- `pg-mysql`: OpenHalo, compatible with PostgreSQL 14
- `pg-mongo`: DocumentDB backend for PostgreSQL Mongo mode, default PostgreSQL 18
- `pg-agens`: AgensGraph, compatible with PostgreSQL 17
- `pg-edge`: pgEdge, compatible with PostgreSQL 18

**Notes**:
- Package support varies by kernel, OS, and architecture. Confirm the target repository is available before deployment.
- This template includes permissive access rules for demo use. For production, use a dedicated kernel template and tighten HBA and password policies.
