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

The entity model of Redis is almost the same as that of [PostgreSQL](/docs/pgsql/arch#er-diagram), which also includes the concepts of **Cluster** and **Instance**. Note that the Cluster here does not refer to the native Redis Cluster mode.

The core difference between the REDIS module and the PGSQL module is that Redis uses a **single-node multi-instance** deployment rather than the 1:1 deployment: multiple Redis instances are typically deployed on a physical/virtual machine node to utilize multi-core CPUs fully. Therefore, the ways to [configure](#configuration) and [administer](#administration) Redis instances are slightly different from PGSQL.

In Redis managed by Pigsty, nodes are entirely subordinate to the cluster, which means that currently, it is not allowed to deploy Redis instances of two different clusters on one node. However, this does not affect deploying multiple independent Redis primary-replica instances on one node. Of course, there are some limitations; for example, in this case, you cannot specify different passwords for different instances on the same node.


-------

## Identity Parameters

Redis [**identity parameters**](param#redis_id) are required parameters when defining a Redis cluster.

|                       Name                       |          Attribute          |     Description      |          Example          |
|:------------------------------------------------:|:---------------------------:|:--------------------:|:-------------------------:|
|   [`redis_cluster`](param#redis_cluster)   | **REQUIRED**, cluster level |     Cluster name     |       `redis-test`        |
|      [`redis_node`](param#redis_node)      |  **REQUIRED**, node level   | Node sequence number |          `1`,`2`          |
| [`redis_instances`](param#redis_instances) |  **REQUIRED**, node level   | Instance definition  | `{ 6001 : {} ,6002 : {}}` |

- [`redis_cluster`](param#redis_cluster): Redis cluster name, serves as the top-level namespace for cluster resources.
- [`redis_node`](param#redis_node): Redis node number, an integer unique within the cluster to distinguish different nodes.
- [`redis_instances`](param#redis_instances): JSON object where keys are instance port numbers and values are JSON objects containing other instance configurations.


--------

## Redis Mode

There are three different working modes for Redis, specified by the [`redis_mode`](param#redis_mode) parameter:

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


--------

## Limitations

* A Redis node can only belong to one Redis cluster, which means you cannot assign a node to two different Redis clusters simultaneously.
* On each Redis node, you need to assign a unique port number to each Redis instance to avoid port conflicts.
* Typically, the same Redis cluster will use the same password, but multiple Redis instances on a Redis node cannot have different passwords (because redis_exporter only allows one password).
* Redis Cluster has built-in HA, while standalone master-slave HA requires additional manual configuration in Sentinel since we don't know if you have deployed Sentinel.
* Fortunately, configuring HA for standalone Redis is straightforward through Sentinel. For details, see [Administration - Configure HA with Sentinel](admin#configure-ha-with-sentinel).


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

