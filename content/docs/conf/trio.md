---
title: ha/trio
weight: 640
description: Three-node standard HA configuration where PostgreSQL, ETCD, and Silo tolerate one node failure
icon: fa-solid fa-dice-three
categories: [Reference]
---

Three nodes is the minimum scale for majority-based high availability. The `ha/trio` template distributes INFRA, ETCD, PGSQL, and Silo across three servers. PostgreSQL, ETCD, and object storage continue serving when one server is unavailable.


--------

## Overview

- Config Name: `ha/trio`
- Node Count: Three nodes
- Description: Three-node standard HA architecture with a three-node, single-drive Silo cluster and one HA S3 endpoint
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
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

{{< include file="yaml/ha/trio.yml" code=true lang="yaml" >}}


--------

## Explanation

The `ha/trio` template is Pigsty's **standard HA configuration**, providing true automatic failover capability.

**Architecture**:
- Three-node INFRA: Distributed deployment of VictoriaMetrics/Grafana/Nginx
- Three-node ETCD: DCS majority election, tolerates single-point failure
- Three-node PostgreSQL: One primary, two replicas, automatic failover
- Three-node Silo: One data path per node, using EC:1 by default (two data shards and one parity shard)
- HA S3 endpoint: Keepalived VIP `10.10.10.9` with HAProxy listening on `9002` on all three nodes

**HA Guarantees**:
- Three-node ETCD tolerates one node failure, maintains majority
- PostgreSQL primary failure triggers automatic Patroni election for new primary
- L2 VIP follows primary, applications don't need to modify connection config
- Silo retains read and write quorum while one node or one data drive is unavailable
- `sss.pigsty` resolves to the object-storage VIP; pgBackRest and `mcli` use `https://sss.pigsty:9002`

**Object Storage**:

- `minio_data: /data/minio` is a filesystem directory, not a raw device such as `/dev/sdb`.
- Distributed Silo rejects data paths on the root filesystem. `/data/minio` must reside on a separately mounted `/data` filesystem or be a mount point itself.
- The backing storage may be a local disk, cloud volume, separate partition, or LVM logical volume. For production, prefer dedicated persistent drives of similar capacity on all three nodes.
- Use `findmnt -T /data/minio` to inspect the actual mount. A result that still points to `/` means the path is only a directory on the root drive.
- The three-node, single-drive topology provides about two-thirds raw capacity efficiency. It is compact HA; use a multi-node, multi-drive topology for greater capacity, throughput, and drive redundancy.
- A single-node object-storage pool cannot be converted in place by adding two members. Create a new three-node cluster and migrate the objects instead.

The template's S3 API endpoint is highly available. The Portal administration UI still connects to port `9001` on the first node and is outside this API HA path.

**Use Cases**:
- Minimum HA deployment for production environments
- Critical business requiring automatic failover
- Foundation architecture for larger scale deployments

**Extension Suggestions**:
- For stronger data security, refer to [`ha/safe`](/docs/conf/safe/) template
- For more demo features, refer to [`ha/full`](/docs/conf/full/) template
- Use a multi-drive Silo cluster when object-storage capacity or performance requirements are higher
