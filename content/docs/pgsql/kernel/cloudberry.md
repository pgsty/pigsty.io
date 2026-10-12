---
title: Cloudberry
weight: 2113
description: Use the Cloudberry open-source MPP data warehouse kernel in Pigsty and manage nodes, monitoring, and configuration through `gpsql` mode.
icon: fas fa-leaf
module: [PGSQL]
categories: [Concept]
---

[Cloudberry](https://cloudberry.apache.org/) is an open-source MPP data warehouse kernel derived from the Greenplum ecosystem.
It supports large-scale parallel analytics workloads.


--------

## Overview

In Pigsty, Cloudberry uses `gpsql` mode and shares the same identity model, monitoring logic, and directory conventions as Greenplum / MatrixDB.

- Kernel package: `cloudberry`
- Mode identifier: `pg_mode: gpsql`
- Role flag: `gp_role: master | segment`
- Current repo version: `Cloudberry 2.1.0`
- Current main package version: DEB `2.1.0-2PIGSTY`, RPM `2.1.0-3PIGSTY`
- Default binary directory: `/usr/cloudberry`

Pigsty currently provides package delivery, node management, monitoring integration, access control, and configuration management for Cloudberry.
For MPP cluster initialization, scale-out, rebalance, and other upstream operations, you should use the official Cloudberry tools.

> The current Pigsty repository provides `cloudberry`, `cloudberry-backup`, and `cloudberry-pxf` packages for both DEB and RPM platforms.


--------

## Installation

There is no standalone `cloudberry` deployment template yet.
The usual procedure is:

1. Enroll the target nodes into Pigsty.
2. Install the `cloudberry` kernel package.
3. Describe the coordinator / segment topology with `gpsql` mode.
4. Use Pigsty to unify monitoring, accounts, access control, and backup integration.

If you only need to install the kernel package on a node:

```bash
./node.yml -t node_repo    -e '{"node_repo_modules":"local,node,pgsql"}'
./node.yml -t node_install -e '{"node_packages":["cloudberry"]}'
```

For an existing Cloudberry cluster, usually keep the original initialization procedure.
Add the Pigsty inventory and monitoring configuration incrementally.


--------

## Configuration

Cloudberry uses `gpsql` mode.
There is no dedicated `cloudberry` mode.
In addition to standard PostgreSQL identity parameters, you need `pg_shard` and `gp_role`.
To label shard groups explicitly, you can also add `pg_group`.

This example shows a minimal topology:

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

Apply these role settings:

- Use `gp_role: master` for the coordinator / master node. Applications usually connect to this node.
- `gp_role: segment` nodes usually need `pg_exporter` to connect in `utility` mode for monitoring.


--------

## Client Access

Cloudberry uses the PostgreSQL wire protocol for application and BI access.
Most PostgreSQL-compatible clients, drivers, and BI tools can connect without special configuration.

Use these access guidelines:

- Applications and analytics queries should connect to the master / coordinator, not directly to segment nodes.
- Segment nodes are better treated as data/compute shards and monitoring targets.
- If you want a unified access endpoint, you can still use Pigsty's HAProxy / PgBouncer / DNS service abstractions.


--------

## Extensions and Ecosystem

Cloudberry differs from native PostgreSQL with added extensions.
For extension packages in Pigsty, consider these two categories:

- Pure SQL objects or components with weak ABI coupling are usually easier to adapt.
- Extensions that depend on PGXS or the kernel C ABI often need separate validation. They may also need recompilation with the Cloudberry version and toolchain.

If your workload requires `postgis`, vector extensions, FDWs, auditing, or custom C extensions, first validate them on the target Cloudberry version.
Do not copy a native PostgreSQL extension list without this check.


--------

## Notes

- Cloudberry currently has no dedicated Pigsty template. You should define its configuration manually with `gpsql` mode.
- Pigsty currently provides packages, configuration, and monitoring. Use the official Cloudberry tools for MPP initialization and scale-out.
- Cloudberry is an MPP distributed kernel. Native PostgreSQL operating assumptions may not apply to every Patroni / PgBouncer / PgBackRest node role.
- If you need horizontal PostgreSQL scaling rather than a full MPP warehouse, [Citus](/docs/pgsql/kernel/citus/) is usually the better first choice.


--------

## Related Docs

- [PGSQL kernel overview](/docs/pgsql/kernel/)
- [PGSQL kernel mode configuration](/docs/pgsql/config/kernel/)
- [Greenplum / GPSQL docs](/docs/pgsql/kernel/greenplum/)
