---
title: fat
weight: 775
description: Feature-All-Test template, single-node installation of all extensions, builds local repo with PG 13-18 all versions
icon: fa-solid fa-database
categories: [Reference]
---

The `fat` configuration template is Pigsty's **Feature-All-Test** template, installing all extension plugins on a single node and building a local software repository containing all extensions for PostgreSQL 13-18 (six major versions).

This is a full-featured configuration for testing and development, suitable for scenarios requiring complete software package cache or testing all extensions.


--------

## Overview

- Config Name: `fat`
- Node Count: Single node
- Description: Feature-All-Test template, installs all extensions, builds local repo with PG 13-18 all versions
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/), [`fat`](/docs/conf/fat/)

Usage:

```bash
./configure -c fat [-i <primary_ip>]
```

To specify a particular PostgreSQL version:

```bash
./configure -c fat -v 17   # Use PostgreSQL 17
```


--------

## Content

Source: [`pigsty/conf/fat.yml`](https://github.com/Vonng/pigsty/blob/main/conf/fat.yml)

{{< readfile file="yaml/fat.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `fat` template is Pigsty's **full-featured test configuration**, designed for completeness testing and offline package building.

**Key Features**:
- **All Extensions**: Installs all categorized extension packages for PostgreSQL 18
- **Multi-version Repository**: Local repo contains all six major versions of PostgreSQL 13-18
- **Complete Component Stack**: Includes MinIO backup, Docker applications, VIP, etc.
- **Enterprise Components**: Includes Kafka, PolarDB, IvorySQL, TigerBeetle, etc.

**Repository Contents**:

| Category | Description |
|:--|:--|
| PostgreSQL 13-18 | Six major versions' kernels and all extensions |
| Extension Categories | `time`, `gis`, `rag`, `fts`, `olap`, `feat`, `lang`, `type`, `util`, `func`, `admin`, `stat`, `sec`, `fdw`, `sim`, `etl` |
| Enterprise Components | Kafka, Java Runtime, Sealos, TigerBeetle |
| Database Kernels | PolarDB, IvorySQL |

**Differences from rich**:
- `fat` contains all six versions of PostgreSQL 13-18, `rich` only contains current default version
- `fat` contains additional enterprise components (Kafka, PolarDB, IvorySQL, etc.)
- `fat` requires larger disk space and longer build time

**Use Cases**:
- Pigsty development testing and feature validation
- Building complete multi-version offline software packages
- Testing all extension compatibility scenarios
- Enterprise environments pre-caching all software packages

**Notes**:
- Requires large disk space (100GB+ recommended) for storing all packages
- Building local software repository requires longer time
- Some extensions unavailable on ARM64 architecture
- Default passwords are sample passwords, must be changed for production

