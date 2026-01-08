---
title: ha/dual
weight: 860
description: Two-node configuration, limited HA deployment tolerating specific server failure
icon: fa-solid fa-dice-two
categories: [Reference]
---

The `ha/dual` template uses two-node deployment, implementing a "semi-HA" architecture with one primary and one standby. If you only have two servers, this is a pragmatic choice.


--------

## Overview

- Config Name: `ha/dual`
- Node Count: Two nodes
- Description: Two-node limited HA deployment, tolerates specific server failure
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/trio`](/docs/conf/trio/), [`slim`](/docs/conf/slim/)

Usage:

```bash
./configure -c ha/dual [-i <primary_ip>]
```

After configuration, modify placeholder IP `10.10.10.11` to actual standby node IP address.


--------

## Content

Source: [`pigsty/conf/ha/dual.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/dual.yml)

{{< readfile file="yaml/ha/dual.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ha/dual` template is Pigsty's **two-node limited HA configuration**, designed for scenarios with only two servers.

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
- True HA requires at least three nodes (DCS needs majority)
- Recommend upgrading to three-node architecture as soon as possible
- L2 VIP requires network environment support (same broadcast domain)

