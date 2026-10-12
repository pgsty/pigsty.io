---
title: Configuration
weight: 3810
description: Choose the appropriate Redis mode for your use case and express your
  requirements through the inventory
icon: fa-solid fa-code
module: [REDIS]
categories: [Reference]
---


-------

## Concept

The Redis entity model is similar to the [PostgreSQL model](/docs/concept/model/pgsql#examples). It includes **Cluster** and **Instance** entities. Here, Cluster does not mean native Redis Cluster mode.

REDIS uses a **single-node multi-instance** deployment. PGSQL uses a 1:1 deployment. Multiple Redis instances typically share one physical or virtual node to use multiple CPU cores. Thus, the procedures to [configure](/docs/redis/config/) and [administer](/docs/redis/admin/) Redis instances differ slightly from PGSQL.

In Pigsty, each Redis node belongs to one cluster. You cannot deploy instances from two different Redis clusters on the same node.

You can still deploy multiple independent Redis primary-replica instances on one node. Some restrictions apply. For example, instances on the same node cannot use different passwords.

Choose the server implementation with [`redis_type`](/docs/redis/param#redis_type): `redis` by default, or `valkey`. Set it consistently at cluster level. The role changes packages and the `*-server` / `*-cli` binaries. It retains `/etc/redis`, `/data/redis`, instance systemd unit names, and the `redis` monitoring namespace. Validate data compatibility and rollback independently before changing an existing cluster's engine.


-------

## Identity Parameters

Redis [**identity parameters**](/docs/redis/config#identity-parameters) are required parameters when defining a Redis cluster.

|                       Name                       |          Attribute          |     Description      |          Example          |
|:------------------------------------------------:|:---------------------------:|:--------------------:|:-------------------------:|
|   [`redis_cluster`](/docs/redis/param#redis_cluster)   | **REQUIRED**, cluster level |     Cluster name     |       `redis-test`        |
|      [`redis_node`](/docs/redis/param#redis_node)      |  **REQUIRED**, node level   | Node sequence number |          `1`,`2`          |
| [`redis_instances`](/docs/redis/param#redis_instances) |  **REQUIRED**, node level   | Instance definition  | `{ 6001 : {} ,6002 : {}}` |

- [`redis_cluster`](/docs/redis/param#redis_cluster): Redis cluster name, serves as the top-level namespace for cluster resources.
- [`redis_node`](/docs/redis/param#redis_node): Redis node number, an integer unique within the cluster to distinguish different nodes.
- [`redis_instances`](/docs/redis/param#redis_instances): JSON object where keys are instance port numbers and values are JSON objects containing other instance configurations.


--------

## Redis Mode

There are three different working modes for Redis, specified by the [`redis_mode`](/docs/redis/param#redis_mode) parameter:

* `standalone`: Default standalone master-slave mode
* `cluster`: Redis native distributed cluster mode
* `sentinel`: Sentinel mode, providing high availability for standalone master-slave Redis

Here are three examples of Redis cluster definitions:

* A 1-node, one master & one slave Redis Standalone cluster: `redis-ms`
* A 1-node, 3-instance Redis Sentinel cluster: `redis-sentinel`
* A 2-node, 6-instance Redis Cluster: `redis-cluster`

```yaml
redis-ms: # redis classic primary & replica
  hosts: { 10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { replica_of: '10.10.10.10 6379' } } } }
  vars: { redis_cluster: redis-ms ,redis_password: 'redis.ms' ,redis_max_memory: 64MB }

redis-meta: # redis sentinel x 3
  hosts: { 10.10.10.11: { redis_node: 1 , redis_instances: { 26379: { } ,26380: { } ,26381: { } } } }
  vars:
    redis_cluster: redis-meta
    redis_password: 'redis.meta'
    redis_mode: sentinel
    redis_max_memory: 16MB
    redis_sentinel_monitor: # primary list for redis sentinel, use cls as name, primary ip:port
      - { name: redis-ms, host: 10.10.10.10, port: 6379 ,password: redis.ms, quorum: 2 }

redis-test: # redis native cluster: 3m x 3s
  hosts:
    10.10.10.12: { redis_node: 1 ,redis_instances: { 6379: { } ,6380: { } ,6381: { } } }
    10.10.10.13: { redis_node: 2 ,redis_instances: { 6379: { } ,6380: { } ,6381: { } } }
  vars: { redis_cluster: redis-test ,redis_password: 'redis.test' ,redis_mode: cluster, redis_max_memory: 32MB }
```

These examples omit `redis_type` and therefore use the default Redis engine. To deploy Valkey, add `redis_type: valkey` to the cluster's `vars`. Do not mix engines within one logical cluster.


--------

## Limitations

* A Redis node can belong to only one Redis cluster. You cannot assign it to two clusters at the same time.
* On each Redis node, you need to assign a unique port number to each Redis instance to avoid port conflicts.
* A Redis cluster typically uses the same password for all instances. All instances on one node must share a password because redis_exporter supports only one.
* Redis Cluster includes HA. For standalone master-slave HA, configure Sentinel manually. Pigsty does not know whether you have deployed Sentinel.
* Use Sentinel to configure HA for standalone Redis. For details, see [Administration - Configure HA with Sentinel](/docs/redis/admin#configure-ha-with-sentinel).


--------

## Typical Configuration Examples

Here are some common Redis configuration examples for different scenarios:

### Cache Cluster (Pure In-Memory)

For pure caching scenarios with no data persistence requirements:

```yaml
redis-cache:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { } } }
    10.10.10.11: { redis_node: 2 , redis_instances: { 6379: { }, 6380: { } } }
  vars:
    redis_cluster: redis-cache
    redis_password: 'cache.password'
    redis_max_memory: 2GB
    redis_mem_policy: allkeys-lru    # evict LRU keys when memory is full
    redis_rdb_save: []               # disable RDB persistence
    redis_aof_enabled: false         # disable AOF persistence
```

### Session Store Cluster

For web application session storage with some persistence needs:

```yaml
redis-session:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { replica_of: '10.10.10.10 6379' } } }
  vars:
    redis_cluster: redis-session
    redis_password: 'session.password'
    redis_max_memory: 1GB
    redis_mem_policy: volatile-lru   # only evict keys with expire set
    redis_rdb_save: ['300 1']        # save every 5 minutes if at least 1 change
    redis_aof_enabled: false
```

### Message Queue Cluster

For simple message queue scenarios requiring higher data reliability:

```yaml
redis-queue:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { replica_of: '10.10.10.10 6379' } } }
  vars:
    redis_cluster: redis-queue
    redis_password: 'queue.password'
    redis_max_memory: 4GB
    redis_mem_policy: noeviction     # reject writes when memory full, don't evict
    redis_rdb_save: ['60 1']         # save every minute if at least 1 change
    redis_aof_enabled: true          # enable AOF for better persistence
```

### High Availability Master-Slave Cluster

Master-slave cluster with Sentinel automatic failover:

```yaml
# Master-slave cluster
redis-ha:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { } } }                              # primary
    10.10.10.11: { redis_node: 2 , redis_instances: { 6379: { replica_of: '10.10.10.10 6379' } } } # replica 1
    10.10.10.12: { redis_node: 3 , redis_instances: { 6379: { replica_of: '10.10.10.10 6379' } } } # replica 2
  vars:
    redis_cluster: redis-ha
    redis_password: 'ha.password'
    redis_max_memory: 8GB

# Sentinel cluster (manages the above master-slave cluster)
redis-sentinel:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 26379: { } } }
    10.10.10.11: { redis_node: 2 , redis_instances: { 26379: { } } }
    10.10.10.12: { redis_node: 3 , redis_instances: { 26379: { } } }
  vars:
    redis_cluster: redis-sentinel
    redis_password: 'sentinel.password'
    redis_mode: sentinel
    redis_max_memory: 64MB
    redis_sentinel_monitor:
      - { name: redis-ha, host: 10.10.10.10, port: 6379, password: 'ha.password', quorum: 2 }
```

### Large-Scale Native Cluster

For high-volume, high-throughput scenarios using native distributed cluster:

```yaml
redis-cluster:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { }, 6381: { } } }
    10.10.10.11: { redis_node: 2 , redis_instances: { 6379: { }, 6380: { }, 6381: { } } }
    10.10.10.12: { redis_node: 3 , redis_instances: { 6379: { }, 6380: { }, 6381: { } } }
    10.10.10.13: { redis_node: 4 , redis_instances: { 6379: { }, 6380: { }, 6381: { } } }
  vars:
    redis_cluster: redis-cluster
    redis_password: 'cluster.password'
    redis_mode: cluster
    redis_cluster_replicas: 1        # 1 replica per primary shard
    redis_max_memory: 16GB           # max memory per instance
    redis_rdb_save: ['900 1']
    redis_aof_enabled: false

# This creates a 6-primary, 6-replica native cluster
# Total capacity ~96GB (6 * 16GB)
```

### Security Hardening Configuration

Recommended security configuration for production environments:

```yaml
redis-secure:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { } } }
  vars:
    redis_cluster: redis-secure
    redis_password: 'StrongP@ssw0rd!'  # use strong password
    redis_bind_address: ''             # bind to internal IP instead of 0.0.0.0
    redis_max_memory: 4GB
    redis_rename_commands:             # rename dangerous commands
      FLUSHDB: 'DANGEROUS_FLUSHDB'
      FLUSHALL: 'DANGEROUS_FLUSHALL'
      DEBUG: ''                        # disable command
      CONFIG: 'ADMIN_CONFIG'
```
