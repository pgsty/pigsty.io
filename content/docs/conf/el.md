---
title: demo/el
weight: 905
description: Configuration template optimized for Enterprise Linux (RHEL/Rocky/Alma)
icon: fa-brands fa-redhat
categories: [Reference]
---

The `demo/el` configuration template is optimized for Enterprise Linux family distributions (RHEL, Rocky Linux, Alma Linux, Oracle Linux).


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

Source: [`pigsty/conf/demo/el.yml`](https://github.com/Vonng/pigsty/blob/main/conf/demo/el.yml)

{{< readfile file="yaml/demo/el.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `demo/el` template is optimized for Enterprise Linux family distributions.

**Supported Distributions**:
- RHEL 8/9/10
- Rocky Linux 8/9/10
- Alma Linux 8/9/10
- Oracle Linux 8/9

**Key Features**:
- Uses EPEL and PGDG repositories
- Optimized for YUM/DNF package manager
- Supports EL-specific package names

**Use Cases**:
- Enterprise production environments (RHEL/Rocky/Alma recommended)
- Long-term support and stability requirements
- Environments using Red Hat ecosystem

