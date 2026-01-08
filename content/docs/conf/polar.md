---
title: polar
weight: 805
description: PolarDB for PostgreSQL kernel, provides Aurora-style storage-compute separation capability
icon: fa-solid fa-snowflake
categories: [Reference]
---

The `polar` configuration template uses Alibaba Cloud's PolarDB for PostgreSQL database kernel instead of native PostgreSQL, providing "cloud-native" Aurora-style storage-compute separation capability.

For the complete tutorial, see: **[PolarDB for PostgreSQL (POLAR) Kernel Guide](/docs/pgsql/kernel/polardb/)**


--------

## Overview

- Config Name: `polar`
- Node Count: Single node
- Description: Uses PolarDB for PostgreSQL kernel
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c polar [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/polar.yml`](https://github.com/Vonng/pigsty/blob/main/conf/polar.yml)

{{< readfile file="yaml/polar.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `polar` template uses Alibaba Cloud's open-source PolarDB for PostgreSQL kernel, providing cloud-native database capabilities.

**Key Features**:
- Storage-compute separation architecture, compute and storage nodes can scale independently
- Supports one-write-multiple-read, read replicas scale in seconds
- Compatible with PostgreSQL ecosystem, maintains SQL compatibility
- Supports shared storage scenarios, suitable for cloud environment deployment

**Use Cases**:
- Cloud-native scenarios requiring storage-compute separation architecture
- Read-heavy write-light workloads
- Scenarios requiring quick scaling of read replicas
- Test environments for evaluating PolarDB features

**Notes**:
- PolarDB is based on PostgreSQL 15, does not support higher version features
- Replication user requires superuser privileges (different from native PostgreSQL)
- Some PostgreSQL extensions may have compatibility issues
- ARM64 architecture not supported

