---
title: build/oss
weight: 925
description: Pigsty open-source edition offline package build environment configuration
icon: fa-solid fa-hammer
categories: [Reference]
---

The `build/oss` configuration template is the build environment configuration for Pigsty open-source edition offline packages, used to batch-build offline installation packages across multiple operating systems.

This configuration is intended for developers and contributors only.


--------

## Overview

- Config Name: `build/oss`
- Node Count: Six nodes (el9, el10, d12, d13, u22, u24)
- Description: Pigsty open-source edition offline package build environment
- OS Distro: `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`

Usage:

```bash
cp conf/build/oss.yml pigsty.yml
```

> Note: This is a build template with fixed IP addresses, intended for internal use only.


--------

## Content

Source: [`pigsty/conf/build/oss.yml`](https://github.com/pgsty/pigsty/blob/main/conf/build/oss.yml)

{{< readfile file="yaml/build/oss.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `build/oss` template is the build configuration for Pigsty open-source edition offline packages.

**Build Contents**:
- PostgreSQL 18 and all categorized extension packages
- Infrastructure packages (Prometheus, Grafana, Nginx, etc.)
- Node packages (monitoring agents, tools, etc.)
- Extra modules

**Supported Operating Systems**:
- EL9 (Rocky/Alma/RHEL 9)
- EL10 (Rocky 10 / RHEL 10)
- Debian 12 (Bookworm)
- Debian 13 (Trixie)
- Ubuntu 22.04 (Jammy)
- Ubuntu 24.04 (Noble)

**Build Process**:

```bash
# 1. Prepare build environment
cp conf/build/oss.yml pigsty.yml

# 2. Download packages on each node
./infra.yml -t repo_build

# 3. Package offline installation files
make cache
```

**Use Cases**:
- Pigsty developers building new versions
- Contributors testing new extensions
- Enterprise users customizing offline packages

