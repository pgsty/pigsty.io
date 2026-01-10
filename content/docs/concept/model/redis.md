---
title: Redis Cluster Model
weight: 1104
description: Entity-Relationship model for Redis clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
icon: fa-solid fa-layer-group
module: [REDIS]
categories: [Concept]
---


The Redis module organizes Redis in production as **clusters**—**logical entities** composed of a group of Redis **instances** deployed on one or more **nodes**.

Each cluster is an **autonomous** high-performance cache/storage unit consisting of at least one **Redis instance**, exposing service capabilities through ports.

There are three core entities in Pigsty's Redis module:

- **Cluster**: An autonomous Redis service unit serving as the top-level namespace for other entities.
- **Instance**: A single Redis server process running on a specific port on a node.
- **Node**: A hardware resource abstraction running Linux + Systemd environment, can host multiple Redis instances, implicitly declared.

Unlike PostgreSQL, Redis uses a **single-node multi-instance** deployment model: one physical/virtual machine node typically deploys **multiple** Redis instances
to fully utilize multi-core CPUs. Therefore, nodes and instances have a **1:N** relationship. Additionally, production typically advises against Redis instances with memory > 12GB.


----------------

## Operating Modes

Redis has three different operating modes, specified by the [**`redis_mode`**](/docs/redis/param#redis_mode) parameter:

|              Mode              |     Code     | Description                              | HA Mechanism          |
|:------------------------------:|:------------:|:-----------------------------------------|:----------------------|
| [**Standalone**](#standalone-cluster) | `standalone` | Classic master-replica, **default mode** | Requires Sentinel     |
| [**Sentinel**](#sentinel-cluster)     | `sentinel`   | HA monitoring and auto-failover for standalone | Multi-node quorum |
| [**Native Cluster**](#native-cluster) | `cluster`    | Redis native distributed cluster, no sentinel needed | Built-in auto-failover |
{.full-width}

- **Standalone**: Default mode, replication via `replica_of` parameter. Requires additional Sentinel cluster for HA.
- **Sentinel**: Stores no business data, dedicated to monitoring standalone Redis clusters for auto-failover; multi-node itself provides HA.
- **Native Cluster**: Data auto-sharded across multiple primaries, each can have multiple replicas, built-in HA, no sentinel needed.


----------------

## Examples

Let's look at concrete examples for each mode:

### Standalone Cluster

Classic master-replica on a single node:

```yaml
redis-ms:
  hosts:
    10.10.10.10:
      redis_node: 1
      redis_instances:
        6379: { }
        6380: { replica_of: '10.10.10.10 6379' }
  vars:
    redis_cluster: redis-ms
    redis_password: 'redis.ms'
    redis_max_memory: 64MB
```

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                 **`redis-ms`**                  | Redis standalone cluster                            |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|                **`redis-ms-1`**                 | `10.10.10.10` Node #1, hosts 2 instances            |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|             **`redis-ms-1-6379`**               | Primary instance, listening on port 6379            |
|             **`redis-ms-1-6380`**               | Replica instance, port 6380, replicates from 6379   |
{.full-width}


### Sentinel Cluster

Three sentinel instances on a single node for monitoring standalone clusters. Sentinel clusters specify monitored standalone clusters via [**`redis_sentinel_monitor`**](/docs/redis/param#redis_sentinel_monitor):

```yaml
redis-sentinel:
  hosts:
    10.10.10.11:
      redis_node: 1
      redis_instances: { 26379: {}, 26380: {}, 26381: {} }
  vars:
    redis_cluster: redis-sentinel
    redis_password: 'redis.sentinel'
    redis_mode: sentinel
    redis_max_memory: 16MB
    redis_sentinel_monitor:
      - { name: redis-ms, host: 10.10.10.10, port: 6379, password: redis.ms, quorum: 2 }
```


### Native Cluster

A Redis native distributed cluster with two nodes and six instances (minimum spec: 3 primaries, 3 replicas):

```yaml
redis-test:
  hosts:
    10.10.10.12: { redis_node: 1, redis_instances: { 6379: {}, 6380: {}, 6381: {} } }
    10.10.10.13: { redis_node: 2, redis_instances: { 6379: {}, 6380: {}, 6381: {} } }
  vars:
    redis_cluster: redis-test
    redis_password: 'redis.test'
    redis_mode: cluster
    redis_max_memory: 32MB
```

This creates a **3 primary 3 replica** native Redis cluster.

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                **`redis-test`**                 | Redis native cluster (3P3R)                         |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|            **`redis-test-1-6379`**              | Instance on node 1, port 6379                       |
|            **`redis-test-1-6380`**              | Instance on node 1, port 6380                       |
|            **`redis-test-1-6381`**              | Instance on node 1, port 6381                       |
|            **`redis-test-2-6379`**              | Instance on node 2, port 6379                       |
|            **`redis-test-2-6380`**              | Instance on node 2, port 6380                       |
|            **`redis-test-2-6381`**              | Instance on node 2, port 6381                       |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|               **`redis-test-1`**                | `10.10.10.12` Node #1, hosts 3 instances            |
|               **`redis-test-2`**                | `10.10.10.13` Node #2, hosts 3 instances            |
{.full-width}


----------------

## Identity Parameters

Pigsty uses the [**`REDIS`**](/docs/redis/param#redis) parameter group to assign deterministic identities to each Redis module entity. Three parameters are required:

| Parameter                                                      |   Type   |  Level   | Description                    | Format                                       |
|:---------------------------------------------------------------|:--------:|:--------:|:-------------------------------|:---------------------------------------------|
| [**`redis_cluster`**](/docs/redis/param#redis_cluster)         | `string` | Cluster  | Redis cluster name, required   | Valid DNS name, regex `[a-z][a-z0-9-]*`      |
| [**`redis_node`**](/docs/redis/param#redis_node)               |  `int`   | Node     | Redis node number, required    | Natural number, starting from 1, unique within cluster |
| [**`redis_instances`**](/docs/redis/param#redis_instances)     |  `dict`  | Node     | Redis instance definition, required | JSON object, key is port, value is instance config |
{.full-width}

With cluster name defined at cluster level and node number/instance definition assigned at node level, Pigsty automatically generates unique identifiers for each entity:

| Entity       | Generation Rule                                   | Example                             |
|--------------|:--------------------------------------------------|:------------------------------------|
| **Instance** | `{{ redis_cluster }}-{{ redis_node }}-{{ port }}` | `redis-ms-1-6379`, `redis-ms-1-6380` |
{.full-width}

The Redis module does not assign additional identity to host nodes; nodes are identified by their existing hostname or IP address.
[**`redis_node`**](/docs/redis/param#redis_node) is used for instance naming, not host node identity.


----------------

## Instance Definition

[**`redis_instances`**](/docs/redis/param#redis_instances) is a JSON object with **port number** as key and **instance config** as value:

```yaml
redis_instances:
  6379: { }                                      # Primary instance, no extra config
  6380: { replica_of: '10.10.10.10 6379' }       # Replica, specify upstream primary
  6381: { replica_of: '10.10.10.10 6379' }       # Replica, specify upstream primary
```

Each Redis instance listens on a unique port within the node. You can choose any port number,
but avoid system reserved ports (< 1024) or conflicts with [**Pigsty used ports**](/docs/ref/port/).
The `replica_of` parameter sets replication relationship in standalone mode, format `'<ip> <port>'`, specifying upstream primary address and port.

Additionally, each Redis node runs a Redis Exporter collecting metrics from **all local instances**:

| Port | Parameter                                                          | Purpose             |
|:-----|:-------------------------------------------------------------------|:--------------------|
| 9121 | [**`redis_exporter_port`**](/docs/redis/param#redis_exporter_port) | Redis Exporter port |
{.full-width}

Redis's single-node multi-instance deployment model has some limitations:

- **Node Exclusive**: A node can only belong to one Redis cluster, not assigned to different clusters simultaneously.
- **Port Unique**: Redis instances on the same node must use different ports to avoid conflicts.
- **Password Shared**: Multiple instances on the same node cannot have different passwords (redis_exporter limitation).
- **Manual HA**: Standalone Redis clusters require additional Sentinel configuration for auto-failover.


----------------

## Monitoring Label System

Pigsty provides an out-of-box monitoring system that uses the above [**identity parameters**](#identity-parameters) to identify various Redis entities.

```text
redis_up{cls="redis-ms", ins="redis-ms-1-6379", ip="10.10.10.10", job="redis"}
redis_up{cls="redis-ms", ins="redis-ms-1-6380", ip="10.10.10.10", job="redis"}
```

For example, the `cls`, `ins`, `ip` labels correspond to cluster name, instance name, and node IP—the identifiers for these three core entities.
They appear along with the `job` label in **all** Redis monitoring metrics collected by [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics).
The `job` name for collecting Redis metrics is fixed as `redis`.


