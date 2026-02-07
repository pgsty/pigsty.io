---
title: High Availability
linkTitle: High Availability
weight: 200
description: Pigsty uses Patroni to implement PostgreSQL high availability, ensuring
  automatic failover when the primary becomes unavailable.
icon: fa-solid fa-infinity
module: [PIGSTY, PGSQL]
categories: [Concept]
tags: []
---

-----------

## Overview

Pigsty's PostgreSQL clusters come with out-of-the-box high availability, powered by [**Patroni**](https://patroni.readthedocs.io/en/latest/), [**Etcd**](https://etcd.io/), and [**HAProxy**](http://www.haproxy.org/).

When your PostgreSQL cluster has two or more instances, you automatically have self-healing database high availability without any additional configuration — as long as any instance in the cluster survives, the cluster can provide complete service. Clients only need to connect to any node in the cluster to get full service without worrying about primary-replica topology changes.

With default configuration, the primary failure Recovery Time Objective (RTO) ≈ 45s, and Recovery Point Objective (RPO) < 1MB; for replica failures, RPO = 0 and RTO ≈ 0 (brief interruption). In consistency-first mode, failover can guarantee zero data loss: RPO = 0. All these metrics can be [**configured as needed**](/docs/concept/ha/rto) based on your actual hardware conditions and reliability requirements.

Pigsty includes built-in HAProxy load balancers for automatic traffic switching, providing DNS/VIP/LVS and other access methods for clients. Failover and switchover are almost transparent to the business side except for brief interruptions - applications don't need to modify connection strings or restart.
The minimal maintenance window requirements bring great flexibility and convenience: you can perform rolling maintenance and upgrades on the entire cluster without application coordination. The feature that hardware failures can wait until the next day to handle lets developers, operations, and DBAs sleep well during incidents.

~~![pigsty-ha](/img/pigsty/ha.png)~~

Many large organizations and core institutions have been using Pigsty in production for extended periods. The largest deployment has 25K CPU cores and 220+ PostgreSQL ultra-large instances (64c / 512g / 3TB NVMe SSD). In this deployment case, dozens of hardware failures and various incidents occurred over five years, yet overall availability of over **99.999%** was maintained.

-----------------

**What problems does High Availability solve?**

* Elevates data security C/IA availability to a new level: RPO ≈ 0, RTO < 45s.
* Gains seamless rolling maintenance capability, minimizing maintenance window requirements and bringing great convenience.
* Hardware failures can self-heal immediately without human intervention, allowing operations and DBAs to sleep well.
* Replicas can handle read-only requests, offloading primary load and fully utilizing resources.

**What are the costs of High Availability?**

* Infrastructure dependency: HA requires DCS (etcd/zk/consul) for consensus.
* Higher starting threshold: A meaningful HA deployment requires at least **three nodes**.
* Extra resource consumption: Each new replica consumes additional resources, though this is usually not a major concern.
* Significantly increased complexity: Backup costs increase significantly, requiring tools to manage complexity.

**Limitations of High Availability**

Since replication happens in real-time, all changes are immediately applied to replicas. Therefore, streaming replication-based HA solutions cannot handle data deletion or modification caused by human errors and software defects. (e.g., `DROP TABLE` or `DELETE` data)
Such failures require using [**delayed clusters**](/docs/pgsql/config#delayed-cluster) or performing [**point-in-time recovery**](/docs/concept/pitr) using previous base backups and WAL archives.

| Configuration Strategy | RTO | RPO |
|:-----|-----------------|:-----|
| Standalone + <i class="fa-solid fa-music text-danger"></i> Nothing | <i class="fas fa-circle-xmark text-danger"></i> **Data permanently lost, unrecoverable** | <i class="fas fa-circle-xmark text-danger"></i> **All data lost** |
| Standalone + <i class="fa-solid fa-copy text-secondary"></i> Base Backup | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Depends on backup size and bandwidth (hours) | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Lose data since last backup (hours to days) |
| Standalone + <i class="fa-solid fa-copy text-primary"></i> Base Backup + <i class="fa-solid fa-clock-rotate-left text-primary"></i> WAL Archive | <i class="fa-solid fa-triangle-exclamation text-primary"></i> Depends on backup size and bandwidth (hours) | <i class="fa-solid fa-triangle-exclamation text-primary"></i> Lose unarchived data (tens of MB) |
| Primary-Replica + <i class="fa-solid fa-wrench text-secondary"></i> Manual Failover | <i class="fa-solid fa-triangle-exclamation text-primary"></i> ~10 minutes | <i class="fa-solid fa-circle-check text-primary"></i> Lose data in replication lag (~100KB) |
| Primary-Replica + <i class="fa-solid fa-infinity text-primary"></i> Auto Failover | <i class="fa-solid fa-circle-check text-primary"></i> Within 1 minute | <i class="fa-solid fa-circle-check text-primary"></i> Lose data in replication lag (~100KB) |
| Primary-Replica + <i class="fa-solid fa-infinity text-primary"></i> Auto Failover + <i class="fa-solid fa-rotate text-success"></i> Sync Commit | <i class="fa-solid fa-circle-check text-success"></i> Within 1 minute | <i class="fa-solid fa-circle-check text-success"></i> No data loss |





-----------

## How It Works

In Pigsty, the high availability architecture works as follows:

- PostgreSQL uses standard streaming replication to build physical replicas; replicas take over when the primary fails.
- Patroni manages PostgreSQL server processes and handles high availability matters.
- Etcd provides distributed configuration storage (DCS) capability and is used for leader election after failures.
- Patroni relies on Etcd to reach cluster leader consensus and provides health check interfaces externally.
- HAProxy exposes cluster services externally and uses Patroni health check interfaces to automatically distribute traffic to healthy nodes.
- vip-manager provides an optional Layer 2 VIP, retrieves leader information from Etcd, and binds the VIP to the node where the cluster primary resides.

When the primary fails, a new round of leader election is triggered. The healthiest replica in the cluster (highest LSN position, minimum data loss) wins and is promoted to the new primary. After the winning replica is promoted, read-write traffic is immediately routed to the new primary.
The impact of primary failure is **brief write service unavailability**: write requests will be blocked or fail directly from primary failure until new primary promotion, with unavailability typically lasting 15 to 30 seconds, usually not exceeding 1 minute.

When a replica fails, read-only traffic is routed to other replicas. Only when all replicas fail will read-only traffic ultimately be handled by the primary.
The impact of replica failure is **partial read-only query interruption**: queries currently running on that replica will abort due to connection reset and be immediately taken over by other available replicas.

Failure detection is performed jointly by Patroni and Etcd. The cluster leader holds a lease; if the cluster leader fails to renew the lease in time (10s) due to failure, the lease is released, triggering a **Failover** and new cluster election.

Even without any failures, you can proactively change the cluster primary through [**Switchover**](/docs/pgsql/admin#switchover).
In this case, write queries on the primary will experience a brief interruption and be immediately routed to the new primary. This operation is typically used for rolling maintenance/upgrades of database servers.
