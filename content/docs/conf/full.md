---
title: ha/full
weight: 845
description: Four-node complete feature demonstration environment with two PostgreSQL clusters, MinIO, Redis, etc.
icon: fa-solid fa-dice-four
categories: [Reference]
---

The `ha/full` configuration template is Pigsty's recommended sandbox demonstration environment, deploying two PostgreSQL clusters across four nodes for testing and demonstrating various Pigsty capabilities.

Most Pigsty tutorials and examples are based on this template's sandbox environment.


--------

## Overview

- Config Name: `ha/full`
- Node Count: Four nodes
- Description: Four-node complete feature demonstration environment with two PostgreSQL clusters, MinIO, Redis, etc.
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/trio`](/docs/conf/trio/), [`ha/safe`](/docs/conf/safe/), [`demo/demo`](/docs/conf/demo/)

Usage:

```bash
./configure -c ha/full [-i <primary_ip>]
```

After configuration, modify the IP addresses of the other three nodes.


--------

## Content

Source: [`pigsty/conf/ha/full.yml`](https://github.com/Vonng/pigsty/blob/main/conf/ha/full.yml)

{{< readfile file="yaml/ha/full.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ha/full` template is Pigsty's **complete feature demonstration configuration**, showcasing the collaboration of various components.

**Components Overview**:

| Component | Node Distribution | Description |
|:--|:--|:--|
| INFRA | Node 1 | Monitoring/Alerting/Nginx/DNS |
| ETCD | Node 1 | DCS Service |
| MinIO | Node 1 | S3-compatible Storage |
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
- This template is mainly for demonstration and testing; for production, refer to [`ha/trio`](/docs/conf/trio/) or [`ha/safe`](/docs/conf/safe/)
- MinIO backup enabled by default; comment out related config if not needed

