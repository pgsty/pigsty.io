---
title: build/pro
weight: 930
description: Pigsty professional edition offline package build environment configuration (multi-version)
icon: fa-solid fa-crown
categories: [Reference]
---

The `build/pro` configuration template is the build environment configuration for Pigsty professional edition offline packages, including PostgreSQL 13-18 all versions and additional commercial components.

This configuration is intended for developers and contributors only.


--------

## Overview

- Config Name: `build/pro`
- Node Count: Six nodes (el9, el10, d12, d13, u22, u24)
- Description: Pigsty professional edition offline package build environment (multi-version)
- OS Distro: `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`

Usage:

```bash
cp conf/build/pro.yml pigsty.yml
```

> Note: This is a build template with fixed IP addresses, intended for internal use only.


--------

## Content

Source: [`pigsty/conf/build/pro.yml`](https://github.com/pgsty/pigsty/blob/main/conf/build/pro.yml)

{{< readfile file="yaml/build/pro.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `build/pro` template is the build configuration for Pigsty professional edition offline packages, containing more content than the open-source edition.

**Differences from OSS Edition**:
- Includes all six major PostgreSQL versions 13-18
- Includes additional commercial/enterprise components: Kafka, PolarDB, IvorySQL, etc.
- Includes Java runtime and Sealos tools
- Output directory is `dist/${version}/pro/`

**Build Contents**:
- PostgreSQL 13, 14, 15, 16, 17, 18 all versions
- All categorized extension packages for each version
- Kafka message queue
- PolarDB and IvorySQL kernels
- TigerBeetle distributed database
- Sealos container platform

**Use Cases**:
- Enterprise customers requiring multi-version support
- Need for Oracle/MySQL compatible kernels
- Need for Kafka message queue integration
- Long-term support versions (LTS) requirements

**Build Process**:

```bash
# 1. Prepare build environment
cp conf/build/pro.yml pigsty.yml

# 2. Download packages on each node
./infra.yml -t repo_build

# 3. Package offline installation files
make cache-pro
```

