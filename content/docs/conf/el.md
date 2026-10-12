---
title: demo/el
weight: 1010
description: Configuration template optimized for Enterprise Linux (RHEL/Rocky/Alma)
icon: fa-brands fa-redhat
categories: [Reference]
---

The `demo/el` template supplies configuration for Enterprise Linux distributions.
These include RHEL, Rocky Linux, Alma Linux, and Oracle Linux.


--------

## Overview

- Config Name: `demo/el`
- Node Count: Single node
- Description: Enterprise Linux optimized configuration template
- OS Distro: `el8`, `el9`, `el10`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`demo/debian`](/docs/conf/debian/)

Usage:

```bash
./configure -c demo/el [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/demo/el.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/el.yml)

{{< include file="yaml/demo/el.yml" code=true lang="yaml" >}}


--------

## Explanation

Use `demo/el` for the following Enterprise Linux distributions.

**Supported Distributions**:
- RHEL 8/9/10
- Rocky Linux 8/9/10
- Alma Linux 8/9/10
- Oracle Linux 8/9

**Key Features**:
- Uses EPEL and PGDG repositories
- Uses settings for the YUM/DNF package manager
- Supports EL-specific package names

**Use Cases**:
- Enterprise production environments (RHEL/Rocky/Alma recommended)
- Long-term support and stability requirements
- Environments using Red Hat ecosystem
