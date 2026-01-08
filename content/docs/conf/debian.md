---
title: demo/debian
weight: 910
description: Configuration template optimized for Debian/Ubuntu
icon: fa-brands fa-debian
categories: [Reference]
---

The `demo/debian` configuration template is optimized for Debian and Ubuntu distributions.


--------

## Overview

- Config Name: `demo/debian`
- Node Count: Single node
- Description: Debian/Ubuntu optimized configuration template
- OS Distro: `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`demo/el`](/docs/conf/el/)

Usage:

```bash
./configure -c demo/debian [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/debian.yml`](https://github.com/Vonng/pigsty/blob/main/conf/demo/debian.yml)

{{< readfile file="yaml/demo/debian.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `demo/debian` template is optimized for Debian and Ubuntu distributions.

**Supported Distributions**:
- Debian 12 (Bookworm)
- Debian 13 (Trixie)
- Ubuntu 22.04 LTS (Jammy)
- Ubuntu 24.04 LTS (Noble)

**Key Features**:
- Uses PGDG APT repositories
- Optimized for APT package manager
- Supports Debian/Ubuntu-specific package names

**Use Cases**:
- Cloud servers (Ubuntu widely used)
- Container environments (Debian commonly used as base image)
- Development and testing environments

