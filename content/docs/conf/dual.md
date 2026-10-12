---
title: ha/dual
weight: 650
description: Two-node configuration, limited HA deployment tolerating specific server failure
icon: fa-solid fa-dice-two
categories: [Reference]
---

The `ha/dual` template deploys one primary and one standby on two nodes.
This Semi-HA configuration provides limited failover when only two servers are available.


--------

## Overview

- Config Name: `ha/dual`
- Node Count: Two nodes
- Description: Two-node limited HA deployment, tolerates specific server failure
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/trio`](/docs/conf/trio/), [`slim`](/docs/conf/slim/)

Usage:

```bash
./configure -c ha/dual [-i <primary_ip>]
```

After configuration, replace `10.10.10.11` with the standby node's actual IP address.


--------

## Content

Source: [`pigsty/conf/ha/dual.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/dual.yml)

{{< include file="yaml/ha/dual.yml" code=true lang="yaml" >}}


--------

## Explanation

The `ha/dual` template supplies **limited high availability with two nodes**.

**Architecture**:
- **Node A** (10.10.10.10): Admin node, runs Infra + etcd + PostgreSQL replica
- **Node B** (10.10.10.11): Data node, runs PostgreSQL primary only

**Failure Scenario Analysis**:

| Failed Node | Impact | Auto Recovery |
|:--|:--|:--:|
| Node B down | Primary switches to Node A | Auto |
| Node A etcd down | Primary continues running (no DCS) | Manual |
| Node A pgsql down | Primary continues running | Manual |
| Node A complete failure | Primary degrades to standalone | Manual |

**Use Cases**:
- Budget-limited environments with only two servers
- Acceptable that some failure scenarios need manual intervention
- Transitional solution before upgrading to three-node HA

**Notes**:
- Full HA requires at least three nodes because the DCS requires a majority.
- Expand to three nodes as soon as your resources permit it.
- L2 VIP requires network environment support (same broadcast domain)
