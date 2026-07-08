---
title: Cloudberry
weight: 2113
description: Use the Cloudberry open-source MPP data warehouse kernel in Pigsty and manage nodes, monitoring, and configuration through `gpsql` mode.
icon: fas fa-leaf
module: [PGSQL]
categories: [Concept]
---

[Cloudberry](https://cloudberry.apache.org/) is an open-source MPP data warehouse kernel derived from the Greenplum ecosystem, suitable for large-scale parallel analytics workloads.


--------

## Overview

In Pigsty, Cloudberry uses `gpsql` mode and shares the same identity model, monitoring logic, and directory conventions as Greenplum / MatrixDB.

- Kernel package: `cloudberry`
- Mode identifier: `pg_mode: gpsql`
- Role flag: `gp_role: master | segment`
- Current repo version: `Cloudberry 2.1.0`
- Current main package version: `2.1.0-2PIGSTY`
- Default binary directory: `/usr/cloudberry`

The important boundary is this: Pigsty currently focuses on package delivery, node management, monitoring onboarding, access control, and configuration orchestration for Cloudberry.
For MPP cluster initialization, scale-out, rebalance, and other upstream-specific operational actions, you should still use the official Cloudberry toolchain.

> The current Pigsty repository provides `cloudberry`, `cloudberry-backup`, and `cloudberry-pxf` packages for both DEB and RPM platforms.


--------

## Installation

There is no standalone `cloudberry` one-click template yet. The more common workflow is:

1. Enroll the target nodes into Pigsty.
2. Install the `cloudberry` kernel package.
3. Describe the coordinator / segment topology with `gpsql` mode.
4. Use Pigsty to unify monitoring, accounts, access control, and backup integration.

If you only need to install the kernel package on a node:

```bash
./node.yml -t node_repo    -e '{"node_repo_modules":"local,node,pgsql"}'
./node.yml -t node_install -e '{"node_packages":["cloudberry"]}'
```

If you are onboarding an existing Cloudberry cluster, it is usually better to keep the original initialization workflow and add Pigsty inventory plus monitoring configuration incrementally.


--------

## Configuration

Cloudberry uses `gpsql` mode rather than a dedicated `cloudberry` mode. Compared with vanilla PostgreSQL, you at least need to care about the extra identity parameters `pg_shard` and `gp_role`; if you want to label shard groups explicitly, you can also add `pg_group`.

Here is a minimal readable topology example:

```yaml
all:
  children:
    cb-mdw:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: cb-mdw
        pg_mode: gpsql
        pg_shard: cb
        gp_role: master
        pg_packages: [ cloudberry, pgsql-common ]

    cb-sdw:
      hosts:
        10.10.10.11:
          nodename: cb-sdw-1
          pg_instances:
            6000: { pg_cluster: cb-seg1, pg_seq: 1, pg_role: primary, pg_exporter_port: 9633 }
        10.10.10.12:
          nodename: cb-sdw-2
          pg_instances:
            6000: { pg_cluster: cb-seg2, pg_seq: 1, pg_role: primary, pg_exporter_port: 9633 }
      vars:
        pg_cluster: cb-sdw
        pg_mode: gpsql
        pg_shard: cb
        gp_role: segment
        pg_preflight_skip: true
        pg_packages: [ cloudberry, pgsql-common ]
        pg_exporter_config: pg_exporter_basic.yml
        pg_exporter_params: 'options=-c%20gp_role%3Dutility&sslmode=disable'
```

Two details are easy to miss:

- `gp_role: master` is for the coordinator / master node, and business access usually lands there.
- `gp_role: segment` nodes usually need `pg_exporter` to connect in `utility` mode for monitoring.


--------

## Client Access

For application and BI access, Cloudberry still exposes the PostgreSQL wire protocol, so most PostgreSQL-compatible clients, drivers, and BI tools can connect without special handling.

But keep the following in mind:

- Applications and analytics queries should connect to the master / coordinator, not directly to segment nodes.
- Segment nodes are better treated as data/compute shards and monitoring targets.
- If you want a unified access endpoint, you can still use Pigsty's HAProxy / PgBouncer / DNS service abstractions.


--------

## Extensions and Ecosystem

Cloudberry comes from the PostgreSQL ecosystem, but it is not simply "vanilla PostgreSQL plus a few extensions".
For the extension packages already available in Pigsty, it is better to think in two categories:

- Pure SQL objects or components with weak ABI coupling are usually easier to adapt.
- Extensions that depend on PGXS or the kernel C ABI often need separate validation or even recompilation against the Cloudberry version and toolchain.

If your workload depends on `postgis`, vector extensions, FDWs, auditing, or custom C extensions, validate them on the target Cloudberry version first rather than copying a vanilla PostgreSQL extension list unchanged.


--------

## Notes

- Cloudberry currently has no dedicated Pigsty template, so you should model it manually with `gpsql` mode.
- The current delivery focus is packages, configuration, and monitoring; it does not replace the official Cloudberry MPP initialization and scale-out toolchain.
- Because this is an MPP distributed kernel, vanilla PostgreSQL operational assumptions do not automatically transfer to every Patroni / PgBouncer / PgBackRest node role.
- If you need horizontal PostgreSQL scaling rather than a full MPP warehouse, [Citus](/docs/pgsql/kernel/citus/) is usually the better first choice.


--------

## Related Docs

- [PGSQL kernel overview](/docs/pgsql/kernel/)
- [PGSQL kernel mode configuration](/docs/pgsql/config/kernel/)
- [Greenplum / GPSQL docs](/docs/pgsql/kernel/greenplum/)
