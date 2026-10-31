# E-R Model of Redis Cluster

> Entity-Relationship model for Redis clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.

---

LLMS index: [llms.txt](/llms.txt)

---

The Redis module organizes production Redis into **clusters**. A cluster is a **logical entity** with Redis **instances** on one or more **nodes**.

Each cluster is an **autonomous**, high-performance cache or storage unit with at least one **Redis instance**. It exposes services through ports.

There are three core entities in Pigsty's Redis module:

- **Cluster**: An autonomous Redis service unit and the top-level namespace for other entities.
- **Instance**: One Redis server process using a specific port on a node.
- **Node**: An implicitly declared hardware resource that runs Linux and Systemd. It can host multiple Redis instances.

Redis usually runs **multiple instances per node**, unlike PostgreSQL. This uses multiple CPU cores on a physical server or VM. Nodes and instances therefore have a **1:N** relationship. For production, Redis instances with more than 12 GB of memory are generally discouraged.


----------------

## Operating Modes

[**`redis_mode`**](/docs/redis/param#redis_mode) selects one of three Redis modes:

|              Mode              |     Code     | Description                              | HA Mechanism          |
|:------------------------------:|:------------:|:-----------------------------------------|:----------------------|
| [**Standalone**](#standalone-cluster) | `standalone` | Classic master-replica, **default mode** | Requires Sentinel     |
| [**Sentinel**](#sentinel-cluster)     | `sentinel`   | HA monitoring and auto-failover for standalone | Multi-node quorum |
| [**Native Cluster**](#native-cluster) | `cluster`    | Redis native distributed cluster, no sentinel needed | Built-in auto-failover |
{.full-width}

- **Standalone**: The default mode. Set replication with `replica_of`. HA requires a separate Sentinel cluster.
- **Sentinel**: Monitor standalone clusters and provide automatic failover. Sentinel stores no business data. Multiple nodes provide HA for Sentinel itself.
- **Native Cluster**: Automatically shard data across multiple primaries. Each primary can have multiple replicas. Built-in HA removes the need for Sentinel.


----------------

## Examples

The following examples show each mode.

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

This example puts three Sentinel instances on one node. [**`redis_sentinel_monitor`**](/docs/redis/param#redis_sentinel_monitor) specifies the standalone clusters they monitor:

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

This native distributed cluster has two nodes and six instances: the minimum specification of three primaries and three replicas.

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

The [**`REDIS`**](/docs/redis/param/#parameter-overview) parameter group assigns deterministic identities to Redis entities. Three parameters are required:

| Parameter                                                      |   Type   |  Level   | Description                    | Format                                       |
|:---------------------------------------------------------------|:--------:|:--------:|:-------------------------------|:---------------------------------------------|
| [**`redis_cluster`**](/docs/redis/param#redis_cluster)         | `string` | Cluster  | Redis cluster name, required   | Valid DNS name, regex `[a-z][a-z0-9-]*`      |
| [**`redis_node`**](/docs/redis/param#redis_node)               |  `int`   | Node     | Redis node number, required    | Natural number, starting from 1, unique within cluster |
| [**`redis_instances`**](/docs/redis/param#redis_instances)     |  `dict`  | Node     | Redis instance definition, required | JSON object, key is port, value is instance config |
{.full-width}

Set the cluster name at cluster level. Set the node number and instance definitions at node level. Pigsty generates these unique identifiers:

| Entity       | Generation Rule                                   | Example                             |
|--------------|:--------------------------------------------------|:------------------------------------|
| **Instance** | `{{ redis_cluster }}-{{ redis_node }}-{{ port }}` | `redis-ms-1-6379`, `redis-ms-1-6380` |
{.full-width}

Redis uses the existing hostname or IP address as the host node identity. It does not assign another identity. [**`redis_node`**](/docs/redis/param#redis_node) names instances, not host nodes.


----------------

## Instance Definition

[**`redis_instances`**](/docs/redis/param#redis_instances) is a JSON object. Each key is a **port number**; its value is the **instance configuration**:

```yaml
redis_instances:
  6379: { }                                      # Primary instance, no extra config
  6380: { replica_of: '10.10.10.10 6379' }       # Replica, specify upstream primary
  6381: { replica_of: '10.10.10.10 6379' }       # Replica, specify upstream primary
```

Each Redis instance must use a unique port on its node. Avoid reserved ports below 1024 and conflicts with [**Pigsty ports**](/docs/ref/port/). In standalone mode, `replica_of` defines replication. Use format `'<ip> <port>'` to specify the upstream primary address and port.

Each Redis node also runs Redis Exporter to collect metrics from **all local instances**:

| Port | Parameter                                                          | Purpose             |
|:-----|:-------------------------------------------------------------------|:--------------------|
| 9121 | [**`redis_exporter_port`**](/docs/redis/param#redis_exporter_port) | Redis Exporter port |
{.full-width}

The Redis deployment model has these limits:

- **Node Exclusive**: A node can belong to only one Redis cluster at a time.
- **Port Unique**: Instances on the same node must use different ports.
- **Password Shared**: Instances on the same node must share a password because of a redis_exporter limitation.
- **Manual HA**: Standalone clusters require additional Sentinel configuration for automatic failover.


----------------

## Monitoring Label System

The built-in monitoring system uses these [**identity parameters**](#identity-parameters) to identify Redis entities.

```text
redis_up{cls="redis-ms", ins="redis-ms-1-6379", ip="10.10.10.10", job="redis"}
redis_up{cls="redis-ms", ins="redis-ms-1-6380", ip="10.10.10.10", job="redis"}
```

The labels `cls`, `ins`, and `ip` identify the cluster name, instance name, and node IP. They accompany `job` in **all** Redis metrics collected by [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics). The Redis metrics `job` is always `redis`.
