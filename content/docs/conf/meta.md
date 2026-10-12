---
title: meta
weight: 210
description: Default single-node installation template with extensive configuration parameter descriptions
icon: fa-solid fa-cube
categories: [Reference]
---

The `meta` configuration template is the default Pigsty template. It deploys PostgreSQL on one node, which is the core function of Pigsty.

For compatibility across operating system distributions and architectures, `meta` installs only the **minimum required** software.


--------

## Overview

- Config Name: `meta`
- Node Count: Single node
- Description: Default single-node installation template with extensive configuration parameter descriptions and minimum required feature set.
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/), [`fat`](/docs/conf/fat/)

Usage: This is the default template. You do not need to specify `-c meta` during [**configure**](/docs/setup/install#configure):

```bash
./configure [-i <primary_ip>]
```

To install PostgreSQL 16 instead of the default version 18, use the `-v` argument in `configure`:

```bash
./configure -v 16   # or 17, 15, 14; use the pg19 template for PG19 Beta
```


--------

## Content

Source: [`pigsty/conf/meta.yml`](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml)

{{< include file="yaml/meta.yml" code=true lang="yaml" >}}


--------

## Explanation

Use `meta` as the **default getting-started configuration** for a quick initial deployment.

**Use Cases**:
- First-time Pigsty users
- Quick deployment in development and testing environments
- Small production environments running on a single machine
- As a base template for more complex deployments

**Key Features**:
- Online installation mode without building local software repository (`repo_enabled: false`)
- Default installs PostgreSQL 18 with `postgis` and `pgvector` extensions
- Includes complete observability infrastructure (Grafana, VictoriaMetrics, VictoriaLogs, etc.)
- Preconfigured Docker and pgAdmin application examples
- Silo backup storage is disabled by default. Enable it if needed.

**Notes**:
- The default passwords are examples. You **must change** them before production use.
- Single-node etcd does not provide high availability. It is suitable for development and testing.
- If you need to build a local software repository, use the [`rich`](/docs/conf/rich/) template
