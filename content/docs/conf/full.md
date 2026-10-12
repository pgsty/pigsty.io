---
title: ha/full
weight: 620
description: Four-node complete feature demonstration environment with two PostgreSQL clusters, Silo, Redis, etc.
icon: fa-solid fa-dice-four
categories: [Reference]
---

The `ha/full` template defines the recommended Pigsty sandbox.
It deploys two PostgreSQL clusters on four nodes for tests and feature demonstrations.

Most Pigsty tutorials and examples are based on this template's sandbox environment.


--------

## Overview

- Config Name: `ha/full`
- Node Count: Four nodes
- Description: Four-node complete feature demonstration environment with two PostgreSQL clusters, Silo, Redis, etc.
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/trio`](/docs/conf/trio/), [`ha/safe`](/docs/conf/safe/), [`demo/demo`](/docs/conf/demo/)

Usage:

```bash
./configure -c ha/full [-i <primary_ip>]
```

After configuration, modify the IP addresses of the other three nodes.


--------

## Content

Source: [`pigsty/conf/ha/full.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/full.yml)

{{< include file="yaml/ha/full.yml" code=true lang="yaml" >}}


--------

## Explanation

The `ha/full` template shows how the Pigsty components work together.

**Components Overview**:

| Component | Node Distribution | Description |
|:--|:--|:--|
| INFRA | Node 1 | Monitoring/Alerting/Nginx/DNS |
| ETCD | Node 1 | DCS Service |
| Silo | Node 1 | S3-compatible Storage |
| pg-meta | Node 1 | Single-node PostgreSQL |
| pg-test | Nodes 2-4 | Three-node HA PostgreSQL |
| redis-ms | Node 1 | Redis Primary-Replica Mode |
| redis-meta | Node 2 | Redis Sentinel Mode |
| redis-test | Nodes 3-4 | Redis Native Cluster Mode |

**Use Cases**:
- Pigsty feature demonstration and learning
- Development testing environments
- Evaluating HA architecture
- Comparing different Redis modes

**Differences from ha/trio**:
- Added second PostgreSQL cluster (pg-test)
- Added three Redis cluster mode examples
- Infrastructure uses single node (instead of three nodes)

**Notes**:
- Use this template for demonstrations and testing. For production, see [`ha/trio`](/docs/conf/trio/) or [`ha/safe`](/docs/conf/safe/).
- Object-storage backups through MINIO are enabled by default, with Silo as the backend.
  If you do not need them, comment out the related configuration.
