---
title: Parameters
description: REDIS module provides 18 deployment parameters + 3 removal parameters
weight: 3820
icon: fa-solid fa-sliders
categories: [Reference]
---

Parameter list for the REDIS module.


----------------

## Parameter Overview

The [`REDIS`](#redis) parameter group is used for Redis cluster deployment and configuration, including identity, instance definitions, operating mode, memory configuration, persistence, and monitoring.

| Parameter                                           |    Type    |  Level  | Description                                             |
|:----------------------------------------------------|:----------:|:-------:|:--------------------------------------------------------|
| [`redis_cluster`](#redis_cluster)                   |  `string`  |   `C`   | Redis cluster name, required identity parameter         |
| [`redis_instances`](#redis_instances)               |   `dict`   |   `I`   | Redis instance definitions on this node                 |
| [`redis_node`](#redis_node)                         |   `int`    |   `I`   | Redis node number, unique positive integer in cluster   |
| [`redis_fs_main`](#redis_fs_main)                   |   `path`   |   `C`   | Redis main data directory, `/data` by default           |
| [`redis_exporter_enabled`](#redis_exporter_enabled) |   `bool`   |   `C`   | Enable Redis Exporter?                                  |
| [`redis_exporter_port`](#redis_exporter_port)       |   `port`   |   `C`   | Redis Exporter listen port                              |
| [`redis_exporter_options`](#redis_exporter_options) |  `string`  |  `C/I`  | Redis Exporter CLI arguments                            |
| [`redis_mode`](#redis_mode)                         |   `enum`   |   `C`   | Redis mode: standalone, cluster, sentinel               |
| [`redis_conf`](#redis_conf)                         |  `string`  |   `C`   | Redis config template, except sentinel                  |
| [`redis_bind_address`](#redis_bind_address)         |    `ip`    |   `C`   | Redis bind address, empty uses host IP                  |
| [`redis_max_memory`](#redis_max_memory)             |   `size`   |  `C/I`  | Max memory for each Redis instance                      |
| [`redis_mem_policy`](#redis_mem_policy)             |   `enum`   |   `C`   | Redis memory eviction policy                            |
| [`redis_password`](#redis_password)                 | `password` |   `C`   | Redis password, empty disables password                 |
| [`redis_rdb_save`](#redis_rdb_save)                 | `string[]` |   `C`   | Redis RDB save directives, empty list disables RDB      |
| [`redis_aof_enabled`](#redis_aof_enabled)           |   `bool`   |   `C`   | Enable Redis AOF?                                       |
| [`redis_rename_commands`](#redis_rename_commands)   |   `dict`   |   `C`   | Rename dangerous Redis commands                         |
| [`redis_cluster_replicas`](#redis_cluster_replicas) |   `int`    |   `C`   | Replicas per master in Redis native cluster             |
| [`redis_sentinel_monitor`](#redis_sentinel_monitor) | `master[]` |   `C`   | Master list for Redis Sentinel to monitor               |

The [`REDIS_REMOVE`](#redis_remove) parameter group controls Redis instance removal behavior.

| Parameter                                 |  Type  |  Level  | Description                                    |
|:------------------------------------------|:------:|:-------:|:-----------------------------------------------|
| [`redis_safeguard`](#redis_safeguard)     | `bool` | `G/C/A` | Prevent removing running Redis instances?      |
| [`redis_rm_data`](#redis_rm_data)         | `bool` | `G/C/A` | Remove Redis data directory when removing?     |
| [`redis_rm_pkg`](#redis_rm_pkg)           | `bool` | `G/C/A` | Uninstall Redis packages when removing?        |


The [Redis](/docs/redis) module contains 18 deployment parameters and 3 removal parameters.

```yaml
#redis_cluster:             <CLUSTER> # Redis cluster name, required identity parameter
#redis_node: 1              <NODE>    # Redis node number, unique in cluster
#redis_instances: {}        <NODE>    # Redis instance definitions on this node
redis_fs_main: /data                  # Redis main data directory, `/data` by default
redis_exporter_enabled: true          # Enable Redis Exporter?
redis_exporter_port: 9121             # Redis Exporter listen port
redis_exporter_options: ''            # Redis Exporter CLI arguments
redis_mode: standalone                # Redis mode: standalone, cluster, sentinel
redis_conf: redis.conf                # Redis config template, except sentinel
redis_bind_address: '0.0.0.0'         # Redis bind address, empty uses host IP
redis_max_memory: 1GB                 # Max memory for each Redis instance
redis_mem_policy: allkeys-lru         # Redis memory eviction policy
redis_password: ''                    # Redis password, empty disables password
redis_rdb_save: ['1200 1']            # Redis RDB save directives, empty disables RDB
redis_aof_enabled: false              # Enable Redis AOF?
redis_rename_commands: {}             # Rename dangerous Redis commands
redis_cluster_replicas: 1             # Replicas per master in Redis native cluster
redis_sentinel_monitor: []            # Master list for Sentinel, sentinel mode only

# REDIS_REMOVE
redis_safeguard: false                # Prevent removing running Redis instances?
redis_rm_data: true                   # Remove Redis data directory when removing?
redis_rm_pkg: false                   # Uninstall Redis packages when removing?
```



### `redis_cluster`

Parameter: `redis_cluster`, Type: `string`, Level: `C`

Redis cluster name, a required identity parameter that must be explicitly configured at the cluster level. It serves as the namespace for resources within the cluster.

Must follow the naming pattern `[a-z][a-z0-9-]*` to comply with various identity constraints. Using `redis-` as a cluster name prefix is recommended.





### `redis_node`

Parameter: `redis_node`, Type: `int`, Level: `I`

Redis node sequence number, a required identity parameter that must be explicitly configured at the node (Host) level.

A positive integer that should be unique within the cluster, used to distinguish and identify different nodes. Assign starting from 0 or 1.





### `redis_instances`

Parameter: `redis_instances`, Type: `dict`, Level: `I`

Redis instance definitions on the current node, a required parameter that must be explicitly configured at the node (Host) level.

Format is a JSON key-value object where keys are numeric port numbers and values are instance-specific JSON configuration items.

```yaml
redis-test: # redis native cluster: 3m x 3s
  hosts:
    10.10.10.12: { redis_node: 1 ,redis_instances: { 6379: { } ,6380: { } ,6381: { } } }
    10.10.10.13: { redis_node: 2 ,redis_instances: { 6379: { } ,6380: { } ,6381: { } } }
  vars: { redis_cluster: redis-test ,redis_password: 'redis.test' ,redis_mode: cluster, redis_max_memory: 32MB }
```

Each Redis instance listens on a unique port on its node. The `replica_of` field in instance configuration sets the upstream master address to establish replication:

```yaml
redis_instances:
    6379: {}
    6380: { replica_of: '10.10.10.13 6379' }
    6381: { replica_of: '10.10.10.13 6379' }
```






### `redis_fs_main`

Parameter: `redis_fs_main`, Type: `path`, Level: `C`

Main data disk mount point for Redis, default is `/data`. Pigsty creates a `redis` directory under this path to store Redis data.

The actual data storage directory is `/data/redis`, owned by the `redis` OS user. See [FHS: Redis](/docs/ref/fhs#redis-fhs) for internal structure details.





### `redis_exporter_enabled`

Parameter: `redis_exporter_enabled`, Type: `bool`, Level: `C`

Enable Redis Exporter monitoring component?

Enabled by default, deploying one exporter per Redis node, listening on [`redis_exporter_port`](#redis_exporter_port) `9121` by default. It scrapes metrics from all Redis instances on the node.

When set to `false`, `roles/redis/tasks/exporter.yml` still renders config files but skips starting the `redis_exporter` systemd service (the `redis_exporter_launch` task has `when: redis_exporter_enabled|bool`), allowing manually configured exporters to remain.





### `redis_exporter_port`

Parameter: `redis_exporter_port`, Type: `port`, Level: `C`

Redis Exporter listen port, default value: `9121`





### `redis_exporter_options`

Parameter: `redis_exporter_options`, Type: `string`, Level: `C/I`

Extra CLI arguments for Redis Exporter, rendered to `/etc/default/redis_exporter` (see `roles/redis/tasks/exporter.yml`), default is empty string. `REDIS_EXPORTER_OPTS` is appended to the systemd service's `ExecStart=/bin/redis_exporter $REDIS_EXPORTER_OPTS`, useful for configuring extra scrape targets or filtering behavior.






### `redis_mode`

Parameter: `redis_mode`, Type: `enum`, Level: `C`

Redis cluster operating mode, three options: `standalone`, `cluster`, `sentinel`. Default: `standalone`

* `standalone`: Default, independent Redis master-slave mode
* `cluster`: Redis native cluster mode
* `sentinel`: Redis high availability component: Sentinel

When using `standalone` mode, Pigsty sets up Redis replication based on the `replica_of` parameter.

When using `cluster` mode, Pigsty creates a native Redis cluster using all defined instances based on the [`redis_cluster_replicas`](#redis_cluster_replicas) parameter.

When `redis_mode=sentinel`, `redis.yml` executes the `redis-ha` phase (lines 80-130 of `redis.yml`) to distribute targets from [`redis_sentinel_monitor`](#redis_sentinel_monitor) to all sentinels. When `redis_mode=cluster`, it also executes the `redis-join` phase (lines 134-180) calling `redis-cli --cluster create --cluster-yes ... --cluster-replicas {{ redis_cluster_replicas }}`. Both phases are automatically triggered in normal `./redis.yml -l <cluster>` runs, or can be run separately with `-t redis-ha` or `-t redis-join`.





### `redis_conf`

Parameter: `redis_conf`, Type: `string`, Level: `C`

Redis config template path, except for Sentinel.

Default: `redis.conf`, a template file at [`roles/redis/templates/redis.conf`](https://github.com/pgsty/pigsty/blob/main/roles/redis/templates/redis.conf).

To use your own Redis config template, place it in the `templates/` directory and set this parameter to the template filename.

Note: Redis Sentinel uses a different template file: [`roles/redis/templates/redis-sentinel.conf`](https://github.com/pgsty/pigsty/blob/main/roles/redis/templates/redis-sentinel.conf).





### `redis_bind_address`

Parameter: `redis_bind_address`, Type: `ip`, Level: `C`

IP address Redis server binds to. Empty string uses the hostname defined in the inventory.

Default: `0.0.0.0`, binding to all available IPv4 addresses on the host.

For security in production environments, bind only to internal IPs by setting this to empty string `''`.

When empty, the template [`roles/redis/templates/redis.conf`](https://github.com/pgsty/pigsty/blob/main/roles/redis/templates/redis.conf) uses `inventory_hostname` to render `bind <ip>`, binding to the management address declared in the inventory.






### `redis_max_memory`

Parameter: `redis_max_memory`, Type: `size`, Level: `C/I`

Maximum memory for each Redis instance, default: `1GB`.





### `redis_mem_policy`

Parameter: `redis_mem_policy`, Type: `enum`, Level: `C`

Redis memory eviction policy, default: `allkeys-lru`

- `noeviction`: Don't save new values when memory limit is reached; only applies to primary when using replication
- `allkeys-lru`: Keep most recently used keys; remove least recently used (LRU) keys
- `allkeys-lfu`: Keep frequently used keys; remove least frequently used (LFU) keys
- `volatile-lru`: Remove least recently used keys with expire field set
- `volatile-lfu`: Remove least frequently used keys with expire field set
- `allkeys-random`: Randomly remove keys to make space for new data
- `volatile-random`: Randomly remove keys with expire field set
- `volatile-ttl`: Remove keys with expire field set and shortest remaining TTL

See [Redis Eviction Policy](https://redis.io/docs/reference/eviction/) for details.





### `redis_password`

Parameter: `redis_password`, Type: `password`, Level: `C/N`

Redis password. Empty string disables password, which is the default behavior.

Note that due to redis_exporter implementation limitations, you can only set one `redis_password` per node. This is usually not a problem since Pigsty doesn't allow deploying two different Redis clusters on the same node.

Pigsty automatically writes this password to `/etc/default/redis_exporter` (`REDIS_PASSWORD=...`) and uses it in the `redis-ha` phase with `redis-cli -a <password>`, so no need to separately configure exporter or Sentinel authentication.

> Use a strong password in production environments




### `redis_rdb_save`

Parameter: `redis_rdb_save`, Type: `string[]`, Level: `C`

Redis RDB save directives. Use empty list to disable RDB.

Default is `["1200 1"]`: dump dataset to disk every 20 minutes if at least 1 key changed.

See [Redis Persistence](https://redis.io/docs/management/persistence/) for details.




### `redis_aof_enabled`

Parameter: `redis_aof_enabled`, Type: `bool`, Level: `C`

Enable Redis AOF? Default is `false`, meaning AOF is not used.





### `redis_rename_commands`

Parameter: `redis_rename_commands`, Type: `dict`, Level: `C`

Rename dangerous Redis commands. A k:v dictionary where `old` is the command to rename and `new` is the new name.

Default: `{}`. You can hide dangerous commands like `FLUSHDB` and `FLUSHALL`. Example:

```yaml
{
  "keys": "op_keys",
  "flushdb": "op_flushdb",
  "flushall": "op_flushall",
  "config": "op_config"
}
```




### `redis_cluster_replicas`

Parameter: `redis_cluster_replicas`, Type: `int`, Level: `C`

Number of replicas per master/primary in Redis native cluster. Default: `1`, meaning one replica per master.



### `redis_sentinel_monitor`

Parameter: `redis_sentinel_monitor`, Type: `master[]`, Level: `C`

List of masters for Redis Sentinel to monitor, used only on sentinel clusters. Each managed master is defined as:

```yaml
redis_sentinel_monitor:  # primary list for redis sentinel, use cls as name, primary ip:port
  - { name: redis-src, host: 10.10.10.45, port: 6379 ,password: redis.src, quorum: 1 }
  - { name: redis-dst, host: 10.10.10.48, port: 6379 ,password: redis.dst, quorum: 1 }
```

`name` and `host` are required; `port`, `password`, and `quorum` are optional. `quorum` sets the number of sentinels needed to agree on master failure, typically more than half of sentinel instances (default is 1).

Starting from Pigsty 4.0, you can add `remove: true` to an entry, causing the `redis-ha` phase to only execute `SENTINEL REMOVE <name>`, useful for cleaning up targets no longer needed.


----------------

## REDIS_REMOVE

The following parameters are used by the [`redis_remove`](https://github.com/pgsty/pigsty/tree/main/roles/redis_remove) role, invoked by the [`redis-rm.yml`](/docs/redis/playbook#redis-rmyml) playbook, controlling Redis instance removal behavior.


### `redis_safeguard`

Parameter: `redis_safeguard`, Type: `bool`, Level: `G/C/A`

Redis safety guard to prevent accidental removal: when enabled, the `redis-rm.yml` playbook cannot remove running Redis instances.

Default is `false`. When set to `true`, the `redis-rm.yml` playbook refuses to execute, preventing accidental deletion of running Redis instances.

Override with CLI argument `-e redis_safeguard=false` to force removal.


### `redis_rm_data`

Parameter: `redis_rm_data`, Type: `bool`, Level: `G/C/A`

Remove Redis data directory when removing Redis instances? Default is `true`.

The data directory (`/data/redis/`) contains Redis RDB and AOF files. If not removed, newly deployed Redis instances will load data from these backup files.

Set to `false` to preserve data directories for later recovery.


### `redis_rm_pkg`

Parameter: `redis_rm_pkg`, Type: `bool`, Level: `G/C/A`

Uninstall Redis and redis_exporter packages when removing Redis instances? Default is `false`.

Typically not needed to uninstall packages; only enable when completely cleaning up a node.

