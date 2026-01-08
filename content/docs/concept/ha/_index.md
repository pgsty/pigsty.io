---
title: High Availability
linkTitle: HA
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

With default configuration, the primary failure Recovery Time Objective (RTO) ≈ 30s, and Recovery Point Objective (RPO) < 1MB; for replica failures, RPO = 0 and RTO ≈ 0 (brief interruption). In consistency-first mode, failover can guarantee zero data loss: RPO = 0. All these metrics can be [**configured as needed**](#tradeoffs) based on your actual hardware conditions and reliability requirements.

Pigsty includes built-in HAProxy load balancers for automatic traffic switching, providing DNS/VIP/LVS and other access methods for clients. Failover and switchover are almost transparent to the business side except for brief interruptions - applications don't need to modify connection strings or restart.
The minimal maintenance window requirements bring great flexibility and convenience: you can perform rolling maintenance and upgrades on the entire cluster without application coordination. The feature that hardware failures can wait until the next day to handle lets developers, operations, and DBAs sleep well during incidents.

~~![pigsty-ha](/img/pigsty/ha.png)~~

Many large organizations and core institutions have been using Pigsty in production for extended periods. The largest deployment has 25K CPU cores and 220+ PostgreSQL ultra-large instances (64c / 512g / 3TB NVMe SSD). In this deployment case, dozens of hardware failures and various incidents occurred over five years, yet overall availability of over **99.999%** was maintained.

-----------------

**What problems does High Availability solve?**

* Elevates data security C/IA availability to a new level: RPO ≈ 0, RTO < 30s.
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



-----------

## Tradeoffs

**Recovery Time Objective (RTO)** and **Recovery Point Objective (RPO)** are two parameters that require careful tradeoffs when designing high availability clusters.

The default **RTO** and **RPO** values used by Pigsty meet reliability requirements for most scenarios. You can adjust them based on your hardware level, network quality, and business requirements.

{{% alert title="RTO and RPO are NOT always better when smaller!" color="danger" %}}
Too small an RTO increases false positive rates; too small an RPO reduces the probability of successful automatic failover.
{{% /alert %}}

The upper limit of unavailability during failover is controlled by the [**`pg_rto`**](/docs/pgsql/param#pg_rto) parameter. **RTO** defaults to `30s`. Increasing it will result in longer primary failure write unavailability, while decreasing it will increase the rate of false positive failovers (e.g., repeated switching due to brief network jitter).

The upper limit of potential data loss is controlled by the [**`pg_rpo`**](/docs/pgsql/param#pg_rpo) parameter, defaulting to `1MB`. Reducing this value can lower the data loss ceiling during failover but also increases the probability of refusing automatic failover when replicas are not healthy enough (lagging too far behind).


Pigsty uses **availability-first** mode by default, meaning it will failover as quickly as possible when the primary fails, and data not yet replicated to replicas may be lost (under typical 10GbE networks, replication lag is usually a few KB to 100KB).

If you need to ensure zero data loss during failover, you can use the [**`crit.yml`**](/docs/pgsql/param#pg_conf) template to ensure no data loss during failover, but this sacrifices some performance as a tradeoff.


-----------

## Related Parameters


### [**`pg_rto`**](/docs/pgsql/param#pg_rto)

Parameter name: `pg_rto`, Type: `int`, Level: `C`

Recovery Time Objective (RTO) in seconds. This is used to calculate Patroni's TTL value, defaulting to `30` seconds.

If the primary instance is missing for this long, a new leader election will be triggered. This value is not always better when lower; it involves tradeoffs:
Reducing this value can decrease unavailability during cluster failover (inability to write), but makes the cluster more sensitive to short-term network jitter, increasing the probability of false positive failover triggers.
You need to configure this value based on network conditions and business constraints, making a **tradeoff** between **failure probability** and **failure impact**.


### [**`pg_rpo`**](/docs/pgsql/param#pg_rpo)

Parameter name: `pg_rpo`, Type: `int`, Level: `C`

Recovery Point Objective (RPO) in bytes, default: `1048576`.

Defaults to 1MiB, meaning up to 1MiB of data loss can be tolerated during failover.

When the primary goes down and all replicas are lagging, you must make a difficult choice:
Either promote a replica to become the new primary immediately, accepting acceptable data loss (e.g., less than 1MB), and restore service as quickly as possible.
Or wait for the primary to come back online (which may never happen) to avoid any data loss, or abandon automatic failover and wait for human intervention to make the final decision.
You need to configure this value based on business preference, making a **tradeoff** between **availability** and **consistency**.

Additionally, you can always ensure RPO = 0 by enabling synchronous commit (e.g., using the `crit.yml` template), sacrificing some cluster latency/throughput performance to guarantee data consistency.
