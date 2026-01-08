---
title: slim
weight: 770
description: Minimal installation template without monitoring infrastructure, installs PostgreSQL directly from internet
icon: fa-solid fa-feather
categories: [Reference]
---

The `slim` configuration template provides **minimal installation** capability, installing a PostgreSQL high-availability cluster directly from the internet without deploying Infra monitoring infrastructure.

When you only need an available database instance without the monitoring system, consider using the **[Slim Installation](/docs/setup/slim/)** mode.


--------

## Overview

- Config Name: `slim`
- Node Count: Single node
- Description: Minimal installation template without monitoring infrastructure, installs PostgreSQL directly
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c slim [-i <primary_ip>]
./slim.yml   # Execute slim installation
```


--------

## Content

Source: [`pigsty/conf/slim.yml`](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml)

{{< readfile file="yaml/slim.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `slim` template is Pigsty's **minimal installation configuration**, designed for quick deployment of bare PostgreSQL clusters.

**Use Cases**:
- Only need PostgreSQL database, no monitoring system required
- Resource-limited small servers or edge devices
- Quick deployment of temporary test databases
- Already have monitoring system, only need PostgreSQL HA cluster

**Key Features**:
- Uses `slim.yml` playbook instead of `deploy.yml` for installation
- Installs software directly from internet, no local software repository
- Retains core PostgreSQL HA capability (Patroni + etcd + HAProxy)
- Minimized package downloads, faster installation
- Default uses PostgreSQL 18

**Differences from meta**:
- `slim` uses dedicated `slim.yml` playbook, skips Infra module installation
- Faster installation, less resource usage
- Suitable for "just need a database" scenarios

**Notes**:
- After slim installation, cannot view database status through Grafana
- If monitoring is needed, use [`meta`](/docs/conf/meta/) or [`rich`](/docs/conf/rich/) template
- Can add replicas as needed for high availability

