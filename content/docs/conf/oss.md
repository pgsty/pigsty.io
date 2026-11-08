---
title: build/oss
weight: 1050
description: Pigsty open-source edition offline package build environment configuration
icon: fa-solid fa-hammer
categories: [Reference]
---

The `build/oss` template configures a build environment for offline packages of the Pigsty open-source edition. Use it to build offline installation packages for multiple operating systems in batches.

This configuration is intended for developers and contributors only.


--------

## Overview

- Config Name: `build/oss`
- Node Count: Seven nodes (el9, el10, d12, d13, u22, u24, u26)
- Description: Pigsty open-source edition offline package build environment
- OS Distro: `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`

Usage:

```bash
cp conf/build/oss.yml pigsty.yml
```

> Note: This build template uses fixed IP addresses. It is for internal use only.


--------

## Content

Source: [`pigsty/conf/build/oss.yml`](https://github.com/pgsty/pigsty/blob/main/conf/build/oss.yml)

{{< include file="yaml/build/oss.yml" code=true lang="yaml" >}}


--------

## Explanation

The `build/oss` template is the build configuration for Pigsty open-source edition offline packages.

**Build Contents**:
- PostgreSQL 18 and all categorized extension packages
- Infrastructure packages (VictoriaMetrics, Grafana, Nginx, etc.)
- Node packages (monitoring agents, tools, etc.)
- Extra modules

The `vm_cpu`, `vm_mem`, and `vm_image` values are descriptive inventory metadata. The Vagrant and Terraform templates do not consume them. Configure actual VM resources in the corresponding provider specification; `vagrant/spec/oss.rb` currently assigns 2 vCPUs and 2048 MiB RAM per node.

**Supported Operating Systems**:
- EL9 (Rocky/Alma/RHEL 9)
- EL10 (Rocky 10 / RHEL 10)
- Debian 12 (Bookworm)
- Debian 13 (Trixie)
- Ubuntu 22.04 (Jammy)
- Ubuntu 24.04 (Noble)
- Ubuntu 26.04 (Resolute)

**Build Process**:

```bash
# 1. Prepare build environment
cp conf/build/oss.yml pigsty.yml

# 2. Download packages on each node
./infra.yml -t repo_build

# 3. Package offline installation files
./cache.yml
```

**Use Cases**:
- Pigsty developers building new versions
- Contributors testing new extensions
- Enterprise users customizing offline packages
