---
title: Cloudberry
weight: 2113
description: Enable the Cloudberry MPP data warehouse kernel (gpsql mode) in Pigsty and integrate it with unified deployment and monitoring.
icon: fas fa-leaf
module: [PGSQL]
categories: [Concept]
---

[Cloudberry](https://cloudberry.apache.org/) is an open-source MPP data warehouse kernel derived from the Greenplum ecosystem, suitable for large-scale parallel analytics workloads.


--------

## Overview

In Pigsty, Cloudberry is enabled through `pg_mode: gpsql`:

- Kernel package group: `cloudberry`
- Mode identifier: `pg_mode: gpsql`
- Typical role flag: `gp_role: master | segment`

Cloudberry nodes can reuse Pigsty capabilities for node management, monitoring/alerting, access control, and config management.


--------

## What Changed in v4.2.0

Cloudberry is now integrated into Pigsty's standard package mapping:

- Package alias: `cloudberry`
- Default binary directory: `/usr/local/cloudberry`
- Mainstream platform coverage:
  - OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
  - Arch: `x86_64`, `aarch64`


--------

## Enable Cloudberry

Start from `meta` (or another base template), then switch mode in config:

```yaml
all:
  vars:
    pg_mode: gpsql
    pg_version: 17
    pg_packages: [ cloudberry, pgsql-common ]
```

If you only want to pre-install the kernel package on a node:

```bash
./node.yml -t node_install -e '{"node_packages":["cloudberry"]}'
```


--------

## Basic Topology Example

```yaml
all:
  children:
    cb-master:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_mode: gpsql
        gp_role: master
        pg_shard: cb
        pg_cluster: cb-master

    cb-seg:
      hosts:
        10.10.10.11:
          pg_instances:
            6000: { pg_cluster: cb-seg1, pg_seq: 1, pg_role: primary }
        10.10.10.12:
          pg_instances:
            6000: { pg_cluster: cb-seg2, pg_seq: 1, pg_role: primary }
      vars:
        pg_mode: gpsql
        gp_role: segment
        pg_shard: cb
        pg_cluster: cb-seg
```

See `pigsty/conf/demo/kernels.yml` (`gpsql` section) for a full topology sample.


--------

## Usage Notes

- Standardize on the PG17 ecosystem for kernel and extension planning.
- Complete node bootstrap and monitoring integration before MPP cluster initialization and workload migration.
- For distributed initialization and rebalance, prefer Cloudberry's official toolchain.


--------

## Related Docs

- [PGSQL kernel overview](/docs/pgsql/kernel/)
- [PGSQL kernel mode configuration](/docs/pgsql/config/kernel/)
- [Legacy Greenplum/GPSQL docs](/docs/pgsql/kernel/greenplum/)
