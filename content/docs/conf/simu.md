---
title: ha/simu
weight: 840
description: 20-node production environment simulation for large-scale deployment testing
icon: fa-solid fa-server
categories: [Reference]
---

The `ha/simu` configuration template is a 20-node production environment simulation, requiring a powerful host machine to run.


--------

## Overview

- Config Name: `ha/simu`
- Node Count: 20 nodes, [`pigsty/vagrant/spec/simu.rb`](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/simu.rb)
- Description: 20-node production environment simulation, requires powerful host machine
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`

Usage:

```bash
./configure -c ha/simu [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/ha/simu.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/simu.yml)

{{< readfile file="yaml/ha/simu.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ha/simu` template is a **large-scale production environment simulation** for testing and validating complex scenarios.

**Architecture**:
- 2-node HA INFRA (monitoring/alerting/Nginx/DNS)
- 5-node HA ETCD and MinIO (multi-disk)
- 2-node Proxy (HAProxy + Keepalived VIP)
- Multiple PostgreSQL clusters:
  - pg-meta: 2-node HA
  - pg-v12~v17: Single-node multi-version testing
  - pg-pitr: Single-node PITR testing
  - pg-test: 4-node HA
  - pg-src/pg-dst: 3+2 node replication testing
  - pg-citus: 10-node distributed cluster
- Multiple Redis modes: primary-replica, sentinel, cluster

**Use Cases**:
- Large-scale deployment testing and validation
- High availability failover drills
- Performance benchmarking
- New feature preview and evaluation

**Notes**:
- Requires powerful host machine (64GB+ RAM recommended)
- Uses Vagrant virtual machines for simulation

