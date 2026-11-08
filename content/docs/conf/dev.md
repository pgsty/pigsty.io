---
title: build/dev
weight: 1060
description: Pigsty seven-node local build and development configuration
icon: fa-solid fa-hammer
categories: [Reference]
---

The `build/dev` template defines a local environment with seven nodes for Pigsty development.
It tests repository builds and package downloads on EL9/10, Debian 12/13, and Ubuntu 22/24/26.

Use this template only for development and contribution work.


--------

## Overview

- Config Name: `build/dev`
- Node Count: Seven nodes (`el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`)
- Description: Local build and development environment, default PostgreSQL 18, builds the `infra,node,pgsql` modules
- OS Distro: `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
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

Use `build/dev` to validate the Pigsty software repository build process.
It is not intended for ordinary production installation.

**Key Features**:
- Default `pg_version: 18`
- Local cache directory is `dist/${version}`
- Builds `infra,node,pgsql` modules by default
- Preloads PostgreSQL 18 full-category extension package groups
- Covers both RPM and DEB build paths through seven distro nodes

**Use Cases**:
- Pigsty new version build validation
- Software repository and mirror source debugging
- Extension package download and cache testing
