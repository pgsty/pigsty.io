---
title: "HA multi datacenter"
weight: 170
icon: fa-solid fa-globe
description: "Multi-datacenter high-availability patterns with Patroni replication."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/ha_multi_dc.html

<a id="ha_multi_dc"></a>
A PostgreSQL cluster across multiple data centers uses replication for high availability. Replication can be synchronous or asynchronous. See [replication modes](/docs/patroni/replication_modes#replication_modes).

Both modes require these considerations:

- Postgres can run as primary or standby leader only if it owns and can update the leader key.
- Use an odd number of etcd, ZooKeeper, or Consul nodes: 3 or 5.

--------

## Synchronous Replication

A multi-datacenter cluster needs at least 3 zones to tolerate a zone failure automatically.

The architecture diagram would be the following:

![image](/img/docs/patroni/multi-dc-synchronous-replication.png)

Deploy at least 3 etcd, ZooKeeper, or Consul nodes across the data centers, with one node in each zone.

Deploy at least 2 Postgres nodes in different data centers. Set `synchronous_mode: true` in the global [dynamic configuration](/docs/patroni/config/dynamic#dynamic).

This enables synchronous replication. The primary selects one node as its synchronous standby.

--------

## Asynchronous Replication

With two data centers, use two independent etcd clusters and a Patroni [standby cluster](/docs/patroni/standby_cluster#standby_cluster) in the second data center. This is the preferred arrangement. If the first site fails, you can manually promote the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster).

The architecture diagram would be the following:

![image](/img/docs/patroni/multi-dc-asynchronous-replication.png)

Automatic promotion is not possible because DC2 cannot determine the state of DC1.

Do not use `pg_ctl promote` in this scenario. To promote the healthy cluster manually, remove [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) from the [dynamic configuration](/docs/patroni/config/dynamic#dynamic).

> [!WARNING]
> If the source cluster is still up and running and you promote the standby cluster you create a split-brain.

There are two ways to restore the initial state:

- Add the standby_cluster section again to trigger `pg_rewind`. For correct operation, `pg_rewind` requires `data page checksums` and/or `wal_log_hints` set to `on`. Enable checksums with the `--data-checksums` option for `initdb`. Other factors can still cause `pg_rewind` to fail.
- Rebuild the standby cluster.

Before you promote the standby cluster, manually ensure that the source cluster is down (STONITH). When DC1 recovers, convert its cluster to a standby cluster.

Before conversion, you may inspect the database manually. Extract changes made between the network failure between DC1 and DC2 and the manual shutdown of the DC1 cluster.

You may then apply these changes manually to the DC2 cluster.
