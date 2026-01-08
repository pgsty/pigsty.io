---
title: meta
weight: 760
description: Default single-node installation template with extensive configuration parameter descriptions
icon: fa-solid fa-cube
categories: [Reference]
---

The `meta` configuration template is Pigsty's default template, designed to fulfill Pigsty's core functionality—deploying PostgreSQL—on a single node.

To maximize compatibility, `meta` installs only the **minimum required** software set to ensure it runs across all operating system distributions and architectures.


--------

## Overview

- Config Name: `meta`
- Node Count: Single node
- Description: Default single-node installation template with extensive configuration parameter descriptions and minimum required feature set.
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/), [`slim`](/docs/conf/slim/), [`fat`](/docs/conf/fat/)

Usage: This is the default config template, so there's no need to specify `-c meta` explicitly during [**configure**](/docs/setup/install#configure):

```bash
./configure [-i <primary_ip>]
```

For example, if you want to install PostgreSQL 17 rather than the default 18, you can use the `-v` arg in `configure`:

```bash
./configure -v 17   # or 16,15,14,13....
```


--------

## Content

Source: [`pigsty/conf/meta.yml`](https://github.com/pgsty/pigsty/blob/main/conf/meta.yml)

{{< readfile file="yaml/meta.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `meta` template is Pigsty's **default getting-started configuration**, designed for quick onboarding.

**Use Cases**:
- First-time Pigsty users
- Quick deployment in development and testing environments
- Small production environments running on a single machine
- As a base template for more complex deployments

**Key Features**:
- Online installation mode without building local software repository (`repo_enabled: false`)
- Default installs PostgreSQL 18 with `postgis` and `pgvector` extensions
- Includes complete monitoring infrastructure (Grafana, Prometheus, Loki, etc.)
- Preconfigured Docker and pgAdmin application examples
- MinIO backup storage disabled by default, can be enabled as needed

**Notes**:
- Default passwords are sample passwords; **must be changed** for production environments
- Single-node etcd has no high availability guarantee, suitable for development and testing
- If you need to build a local software repository, use the [`rich`](/docs/conf/rich/) template

