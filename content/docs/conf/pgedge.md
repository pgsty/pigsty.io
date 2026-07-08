---
title: pgedge
weight: 460
description: pgEdge kernel template for distributed multi-master PostgreSQL in edge scenarios
icon: fa-solid fa-network-wired
categories: [Reference]
---

The `pgedge` configuration template replaces native PostgreSQL with the pgEdge kernel and provides distributed, multi-master capabilities for edge deployments.

For the full guide, see: **[pgEdge kernel guide](/docs/pgsql/kernel/pgedge/)**. For kernel differences and version references, see the [PGSQL kernel overview](/docs/pgsql/kernel/).


--------

## Overview

- Config name: `pgedge`
- Node count: Single node
- Description: pgEdge (PG18) distributed kernel template
- Supported OS: `d12`, `d13`, `u22`, `u24`, `u26` for PG18 packages. For EL/RPM platforms, check current PGSQL repository availability for `pgedge_18`.
- Supported arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Enable with:

```bash
./configure -c pgedge [-i <primary_ip>]
```


--------

## Template Content

Source: [`pigsty/conf/pgedge.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pgedge.yml)

{{< readfile file="yaml/pgedge.yml" code="true" lang="yaml" >}}


--------

## Notes

The `pgedge` template enables `pg_mode: pgedge` in `pg-meta` and pre-installs pgEdge core extensions for logical replication and edge distribution.

**Key features**:

- Uses the `pgedge` kernel package (PG15/16/17/18 compatible, default PG18)
- Bundles `spock`, `snowflake`, and `lolor` in the `pgedge-$v` kernel package and creates them in the `meta` database by default
- Preloads [`spock`](/ext/e/spock/) and [`lolor`](/ext/e/lolor/) for multi-master setup readiness
- Keeps Pigsty standard backup, monitoring, and operations workflow

**Typical use cases**:

- Multi-region edge deployment with nearby writes
- Multi-master logical replication with conflict handling
- Single-node validation before distributed rollout

**Caveats**:

- Current template is for single-node kernel validation; production multi-master needs explicit topology and replication strategy planning
- Default is `pg_version: 18`; keep consistent with target cluster versions
- Evaluate latency and conflict policy before cross-region replication
