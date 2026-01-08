---
title: oriole
weight: 825
description: OrioleDB kernel, provides bloat-free OLTP enhanced storage engine
icon: fa-solid fa-feather
categories: [Reference]
---

The `oriole` configuration template uses OrioleDB storage engine instead of PostgreSQL's default Heap storage, providing bloat-free, high-performance OLTP capability.


--------

## Overview

- Config Name: `oriole`
- Node Count: Single node
- Description: OrioleDB bloat-free storage engine configuration
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c oriole [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/oriole.yml`](https://github.com/Vonng/pigsty/blob/main/conf/oriole.yml)

{{< readfile file="yaml/oriole.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `oriole` template uses OrioleDB storage engine, fundamentally solving PostgreSQL table bloat problems.

**Key Features**:
- **Bloat-free Design**: Uses UNDO logs instead of Multi-Version Concurrency Control (MVCC)
- **No VACUUM Required**: Eliminates performance jitter from autovacuum
- **Row-level WAL**: More efficient logging and replication
- **Compressed Storage**: Built-in data compression, reduces storage space

**Use Cases**:
- High-frequency update OLTP workloads
- Applications sensitive to write latency
- Need for stable response times (eliminates VACUUM impact)
- Large tables with frequent updates causing bloat

**Usage**:

```sql
-- Create table using OrioleDB storage
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
) USING orioledb;

-- Existing tables cannot be directly converted, need to be rebuilt
```

**Notes**:
- OrioleDB is based on PostgreSQL 17
- Need to add `orioledb` to `shared_preload_libraries`
- Some PostgreSQL features may not be fully supported
- ARM64 architecture not supported

