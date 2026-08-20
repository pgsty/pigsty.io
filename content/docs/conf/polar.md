---
title: polar
weight: 430
description: PolarDB for PostgreSQL kernel, provides Aurora-style storage-compute separation capability
icon: fa-solid fa-snowflake
categories: [Reference]
---

The `polar` configuration template uses Alibaba Cloud's PolarDB for PostgreSQL database kernel instead of native PostgreSQL, providing "cloud-native" Aurora-style storage-compute separation capability.

For the complete tutorial, see: **[PolarDB for PostgreSQL (POLAR) Kernel Guide](/docs/pgsql/kernel/polardb/)**. For kernel differences and version references, see the [PGSQL kernel overview](/docs/pgsql/kernel/).


--------

## Overview

- Config Name: `polar`
- Node Count: Single node
- Description: Uses PolarDB for PostgreSQL kernel
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c polar [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/polar.yml`](https://github.com/pgsty/pigsty/blob/main/conf/polar.yml)

{{< include file="yaml/polar.yml" code=true lang="yaml" >}}


--------

## Explanation

The `polar` template uses Alibaba Cloud's open-source PolarDB for PostgreSQL kernel, providing cloud-native database capabilities.

**Key Features**:
- Storage-compute separation architecture, compute and storage nodes can scale independently
- Supports one-write-multiple-read, read replicas scale in seconds
- Compatible with PostgreSQL ecosystem, maintains SQL compatibility
- Supports shared storage scenarios, suitable for cloud environment deployment
- Default PolarDB kernel path is `/usr/polar-17`
- Available extensions follow the PolarDB 17 kernel catalog. Common extensions include [`pgaudit`](/ext/e/pgaudit/), [`pg_partman`](/ext/e/pg_partman/), [`pg_profile`](/ext/e/pg_profile/), [`pg_repack`](/ext/e/pg_repack/), [`pg_stat_kcache`](/ext/e/pg_stat_kcache/), [`pg_cron`](/ext/e/pg_cron/), and [`pg_hint_plan`](/ext/e/pg_hint_plan/)

**Use Cases**:
- Cloud-native scenarios requiring storage-compute separation architecture
- Read-heavy write-light workloads
- Scenarios requiring quick scaling of read replicas
- Test environments for evaluating PolarDB features

**Notes**:
- PolarDB is now based on PostgreSQL 17
- Replication user requires superuser privileges (different from native PostgreSQL)
- Some PostgreSQL extensions may have compatibility issues
- The current template provides packages for both `x86_64` and `aarch64`
