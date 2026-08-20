---
title: build/dev
weight: 1060
description: Pigsty three-node local build and development configuration
icon: fa-solid fa-hammer
categories: [Reference]
---

The `build/dev` configuration template is Pigsty's three-node local build and development environment. It is used to validate repository build and package download workflows across EL9, Debian 12, and Ubuntu 24 nodes.

This template is intended only for developers and contributors.


--------

## Overview

- Config Name: `build/dev`
- Node Count: Three nodes (`el9`, `d12`, `u24`)
- Description: Local build and development environment, default PostgreSQL 18, builds the `infra,node,pgsql` modules
- OS Distro: `el9`, `d12`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`build/oss`](/docs/conf/oss/)

Usage:

```bash
cp conf/build/dev.yml pigsty.yml
```

> Note: This is a fixed-IP development build template. Adjust host addresses for your local environment before use.


--------

## Content

Source: [`pigsty/conf/build/dev.yml`](https://github.com/pgsty/pigsty/blob/main/conf/build/dev.yml)

{{< include file="yaml/build/dev.yml" code=true lang="yaml" >}}


--------

## Explanation

`build/dev` is mainly used to validate the Pigsty software repository build pipeline, not for ordinary production installation.

**Key Features**:
- Default `pg_version: 18`
- Local cache directory is `dist/${version}`
- Builds `infra,node,pgsql` modules by default
- Preloads PostgreSQL 18 full-category extension package groups
- Covers both RPM and DEB build paths through three distro nodes

**Use Cases**:
- Pigsty new version build validation
- Software repository and mirror source debugging
- Extension package download and cache testing
