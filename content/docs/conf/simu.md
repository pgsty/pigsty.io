---
title: ha/simu
weight: 610
description: 20-node production environment simulation for large-scale deployment testing
icon: fa-solid fa-server
categories: [Reference]
---

The `ha/simu` configuration template simulates a production environment with 20 nodes. It requires a powerful host machine.


--------

## Overview

- Config Name: `ha/simu`
- Node Count: 20 nodes, [`pigsty/vagrant/spec/simu.rb`](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/simu.rb)
- Description: 20-node production environment simulation, requires powerful host machine
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`

Usage:

```bash
./configure -c ha/simu [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/ha/simu.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/simu.yml)

{{< include file="yaml/ha/simu.yml" code=true lang="yaml" >}}


--------

## Explanation

The `ha/simu` template provides a **large-scale production environment simulation**. Use it to test and validate complex scenarios.

**Architecture**:
- 3-node HA INFRA (`10.10.10.10`–`10.10.10.12`, monitoring/alerting/Nginx/DNS)
- 5-node ETCD (`10.10.10.25`–`10.10.10.29`)
- 4-node MINIO (Silo, four directories `/data{1...4}` per node, `10.10.10.21`–`10.10.10.24`)
- 2-node Proxy (HAProxy + Keepalived VIP `10.10.10.20`, the target of `sss.pigsty`)
- Multiple PostgreSQL clusters:
  - pg-meta: 3-node HA, colocated with INFRA
  - pg-src / pg-dst: 3 nodes each (`10.10.10.31`–`33` and `10.10.10.41`–`43`)
  - pg-tmp / pg-etcd / pg-minio: 2-, 5-, and 4-node clusters sharing Proxy, ETCD, and MINIO hosts
- Redis primary-replica clusters (redis-src, redis-dst) and sentinels (redis-meta)

**Use Cases**:
- Large-scale deployment testing and validation
- High availability failover drills
- Performance benchmarking
- New feature preview and evaluation

**Notes**:
- The Vagrant specification allocates 35 vCPUs and 94 GiB RAM across 20 VMs. Reserve additional memory for the host, or reduce VM sizes before starting.
- Uses Vagrant virtual machines for simulation
