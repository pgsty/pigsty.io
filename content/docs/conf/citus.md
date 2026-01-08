---
title: citus
weight: 795
description: Citus distributed PostgreSQL cluster, provides horizontal scaling and sharding capabilities
icon: fa-solid fa-cubes
categories: [Reference]
---

The `citus` configuration template deploys a distributed PostgreSQL cluster using the Citus extension, providing transparent horizontal scaling and data sharding capabilities.


--------

## Overview

- Config Name: `citus`
- Node Count: Five nodes (1 coordinator + 4 data nodes)
- Description: Citus distributed PostgreSQL cluster
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c citus [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/citus.yml`](https://github.com/pgsty/pigsty/blob/main/conf/citus.yml)

{{< readfile file="yaml/citus.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `citus` template deploys a Citus distributed PostgreSQL cluster, suitable for large-scale data scenarios requiring horizontal scaling.

**Key Features**:
- Transparent data sharding, automatically distributes data to multiple nodes
- Parallel query execution, aggregates results from multiple nodes
- Supports distributed transactions (2PC)
- Maintains PostgreSQL SQL compatibility

**Architecture**:
- **Coordinator Node** (pg-citus0): Receives queries, routes to data nodes
- **Data Nodes** (pg-citus1~3): Stores sharded data

**Use Cases**:
- Single table data volume exceeds single-node capacity
- Need horizontal scaling for write and query performance
- Multi-tenant SaaS applications
- Real-time analytical workloads

**Notes**:
- Citus supports PostgreSQL 14~17
- Distributed tables require specifying a distribution column
- Some PostgreSQL features may be limited (e.g., cross-shard foreign keys)
- ARM64 architecture not supported

