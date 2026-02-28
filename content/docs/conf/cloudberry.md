---
title: cloudberry
weight: 812
description: "Cloudberry MPP kernel reference config using pg_mode: gpsql and cloudberry package group"
icon: fa-solid fa-leaf
categories: [Reference]
---

This page explains how to enable the Cloudberry kernel in Pigsty for MPP data warehouse scenarios.
Cloudberry is integrated through `pg_mode: gpsql` and the `cloudberry` package group.


--------

## Overview

- Config Name: `cloudberry` (kernel mode guide, not a standalone `conf/*.yml` template)
- Node Count: planned by MPP topology (Master/Segment)
- Description: enable Cloudberry kernel with `pg_mode: gpsql`, while reusing Pigsty deployment, monitoring, and management
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`pgsql`](/docs/conf/pgsql/), [`mssql`](/docs/conf/mssql/), [`Cloudberry Kernel Guide`](/docs/pgsql/kernel/cloudberry/)


--------

## How To Enable

In v4.2.0 there is no dedicated `./configure -c cloudberry` template yet. Start from `meta` (or another base template) and switch kernel mode:

```bash
./configure -c meta
```

Then configure `pigsty.yml` like:

```yaml
all:
  vars:
    pg_mode: gpsql
    pg_version: 17
    pg_packages: [ cloudberry, pgsql-common ]
```


--------

## Topology Parameters

Cloudberry/Greenplum-style clusters usually require:

- `pg_mode: gpsql`: enables parallel warehouse mode
- `gp_role: master | segment`: node role in MPP cluster
- `pg_shard`: marks the same MPP deployment

For a full topology example, see the `gpsql` section in `pigsty/conf/demo/kernels.yml`.


--------

## Recommendations

- Prefer PG17 first (current Cloudberry packages target the PG17 ecosystem).
- Complete infrastructure deployment first, then attach Master/Segment nodes in batches.
- Once included in Pigsty monitoring, Cloudberry can use the standard PGSQL dashboards and alerting stack.
