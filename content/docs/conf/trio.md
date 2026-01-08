---
title: ha/trio
weight: 855
description: Three-node standard HA configuration, tolerates any single server failure
icon: fa-solid fa-dice-three
categories: [Reference]
---

Three nodes is the minimum scale for achieving true high availability. The `ha/trio` template uses a three-node standard HA architecture, with INFRA, ETCD, and PGSQL all deployed across three nodes, tolerating any single server failure.


--------

## Overview

- Config Name: `ha/trio`
- Node Count: Three nodes
- Description: Three-node standard HA architecture, tolerates any single server failure
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/dual`](/docs/conf/dual/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/)

Usage:

```bash
./configure -c ha/trio [-i <primary_ip>]
```

After configuration, modify placeholder IPs `10.10.10.11` and `10.10.10.12` to actual node IP addresses.


--------

## Content

Source: [`pigsty/conf/ha/trio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/trio.yml)

{{< readfile file="yaml/ha/trio.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ha/trio` template is Pigsty's **standard HA configuration**, providing true automatic failover capability.

**Architecture**:
- Three-node INFRA: Distributed deployment of Prometheus/Grafana/Nginx
- Three-node ETCD: DCS majority election, tolerates single-point failure
- Three-node PostgreSQL: One primary, two replicas, automatic failover
- Single-node MinIO: Can be expanded to multi-node as needed

**HA Guarantees**:
- Three-node ETCD tolerates one node failure, maintains majority
- PostgreSQL primary failure triggers automatic Patroni election for new primary
- L2 VIP follows primary, applications don't need to modify connection config

**Use Cases**:
- Minimum HA deployment for production environments
- Critical business requiring automatic failover
- Foundation architecture for larger scale deployments

**Extension Suggestions**:
- For stronger data security, refer to [`ha/safe`](/docs/conf/safe/) template
- For more demo features, refer to [`ha/full`](/docs/conf/full/) template
- Production environments should enable `pgbackrest_method: minio` for remote backup

