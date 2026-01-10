---
title: ETCD Cluster Model
weight: 1102
description: Entity-Relationship model for ETCD clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
icon: fa-solid fa-gears
module: [ETCD]
categories: [Concept]
---


The ETCD module organizes ETCD in production as **clusters**—**logical entities** composed of a group of ETCD **instances** associated through the **Raft** consensus protocol.

Each cluster is an **autonomous** distributed key-value storage unit consisting of at least one **ETCD instance**, exposing service capabilities through client ports.

There are three core entities in Pigsty's ETCD module:

- **Cluster**: An autonomous ETCD service unit serving as the top-level namespace for other entities.
- **Instance**: A single ETCD server process running on a node, participating in Raft consensus.
- **Node**: A hardware resource abstraction running Linux + Systemd environment, implicitly declared.

Compared to PostgreSQL clusters, the ETCD cluster model is simpler, without Services or complex Role distinctions.
All ETCD instances are functionally equivalent, electing a Leader through the Raft protocol while others become Followers.
During scale-out intermediate states, non-voting Learner instance members are also allowed.


----------------

## Examples

Let's look at a concrete example with a three-node ETCD cluster:

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars:
    etcd_cluster: etcd
```

The above config fragment defines a three-node ETCD cluster with these related entities:

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                   **`etcd`**                    | ETCD 3-node HA cluster                              |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|                  **`etcd-1`**                   | ETCD instance #1                                    |
|                  **`etcd-2`**                   | ETCD instance #2                                    |
|                  **`etcd-3`**                   | ETCD instance #3                                    |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|               **`10.10.10.10`**                 | Node #1, hosts `etcd-1` instance                    |
|               **`10.10.10.11`**                 | Node #2, hosts `etcd-2` instance                    |
|               **`10.10.10.12`**                 | Node #3, hosts `etcd-3` instance                    |
{.full-width}


----------------

## Identity Parameters

Pigsty uses the [**`ETCD`**](/docs/etcd/param#etcd) parameter group to assign deterministic identities to each ETCD module entity. Two parameters are required:

| Parameter                                           |   Type   | Level | Description                    | Format                                      |
|:----------------------------------------------------|:--------:|:-----:|:-------------------------------|:--------------------------------------------|
| [**`etcd_cluster`**](/docs/etcd/param#etcd_cluster) | `string` | Cluster | ETCD cluster name, required   | Valid DNS name, defaults to fixed `etcd`    |
| [**`etcd_seq`**](/docs/etcd/param#etcd_seq)         |  `int`   | Instance | ETCD instance number, required | Natural number, starting from 1, unique within cluster |
{.full-width}

With cluster name defined at cluster level and instance number assigned at instance level, Pigsty automatically generates unique identifiers for each entity based on rules:

| Entity       | Generation Rule                     | Example                    |
|--------------|:------------------------------------|:---------------------------|
| **Instance** | `{{ etcd_cluster }}-{{ etcd_seq }}` | `etcd-1`, `etcd-2`, `etcd-3` |
{.full-width}

The ETCD module does not assign additional identity to host nodes; nodes are identified by their existing hostname or IP address.


----------------

## Ports & Protocols

Each ETCD instance listens on the following two ports:

| Port     | Parameter                                               | Purpose                                              |
|:---------|:--------------------------------------------------------|:-----------------------------------------------------|
| **2379** | [**`etcd_port`**](/docs/etcd/param#etcd_port)           | Client port, accessed by Patroni, vip-manager, etc.  |
| **2380** | [**`etcd_peer_port`**](/docs/etcd/param#etcd_peer_port) | Peer communication port, used for Raft consensus     |
{.full-width}

ETCD clusters enable TLS encrypted communication by default and use RBAC authentication mechanism. Clients need correct certificates and passwords to access ETCD services.


----------------

## Cluster Size

As a distributed coordination service, ETCD cluster size directly affects availability, requiring more than half (quorum) of nodes to be alive to maintain service.

| Cluster Size | Quorum | Fault Tolerance | Use Case           |
|:------------:|:------:|:---------------:|:-------------------|
|   1 node     |   1    |        0        | Dev, test, demo    |
|   3 nodes    |   2    |        1        | Small-medium production |
|   5 nodes    |   3    |        2        | Large-scale production |
{.full-width}

Therefore, even-numbered ETCD clusters are meaningless, and clusters over five nodes are uncommon. Typical sizes are single-node, three-node, and five-node.


----------------

## Monitoring Label System

Pigsty provides an out-of-box monitoring system that uses the above [**identity parameters**](#identity-parameters) to identify various ETCD entities.

```text
etcd_up{cls="etcd", ins="etcd-1", ip="10.10.10.10", job="etcd"}
etcd_up{cls="etcd", ins="etcd-2", ip="10.10.10.11", job="etcd"}
etcd_up{cls="etcd", ins="etcd-3", ip="10.10.10.12", job="etcd"}
```

For example, the `cls`, `ins`, `ip` labels correspond to cluster name, instance name, and node IP—the identifiers for these three core entities.
They appear along with the `job` label in **all** ETCD monitoring metrics collected by [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics).
The `job` name for collecting ETCD metrics is fixed as `etcd`.


