---
title: Administration
weight: 3840
description: Redis cluster management SOPs for creating, destroying, scaling, and
  configuring high availability
icon: fa-solid fa-building-columns
module: [REDIS]
categories: [Task]
---



Here are some common Redis administration task SOPs (Standard Operating Procedures):

**Basic Operations**
- [Initialize Redis](#initialize-redis)
- [Remove Redis](#remove-redis)
- [Reconfigure Redis](#reconfigure-redis)
- [Using Redis Client](#using-redis-client)

**High Availability**
- [Configure Redis Replica](#configure-redis-replica)
- [Configure HA with Sentinel](#configure-ha-with-sentinel)
- [Initialize Redis Native Cluster](#initialize-redis-native-cluster)

**Scaling & Migration**
- [Scale Up Redis Nodes](#scale-up-redis-nodes)
- [Scale Down Redis Nodes](#scale-down-redis-nodes)
- [Backup and Restore](#backup-and-restore)

**Troubleshooting**
- [Common Issue Diagnosis](#common-issue-diagnosis)
- [Performance Tuning](#performance-tuning)

For more questions, please refer to [FAQ: REDIS](faq).


-------------

### Initialize Redis

You can use the [`redis.yml`](playbook#redisyml) playbook to initialize Redis clusters, nodes, or instances:

```bash
# Initialize all Redis instances in the cluster
./redis.yml -l <cluster>      # init redis cluster

# Initialize all Redis instances on a specific node
./redis.yml -l 10.10.10.10    # init redis node

# Initialize a specific Redis instance: 10.10.10.11:6379
./redis.yml -l 10.10.10.11 -e redis_port=6379 -t redis
```

You can also use wrapper scripts to initialize:

```bash
bin/redis-add redis-ms          # create redis cluster 'redis-ms'
bin/redis-add 10.10.10.10       # create redis node '10.10.10.10'
bin/redis-add 10.10.10.10 6379  # create redis instance '10.10.10.10:6379'
```

-------------

### Remove Redis

You can use the [`redis-rm.yml`](playbook#redis-rmyml) playbook to remove Redis clusters, nodes, or instances:

```bash
# Remove Redis cluster `redis-test`
./redis-rm.yml -l redis-test

# Remove Redis cluster `redis-test` and uninstall Redis packages
./redis-rm.yml -l redis-test -e redis_rm_pkg=true

# Remove all instances on Redis node 10.10.10.13
./redis-rm.yml -l 10.10.10.13

# Remove a specific Redis instance 10.10.10.13:6379
./redis-rm.yml -l 10.10.10.13 -e redis_port=6379
```

You can also use wrapper scripts to remove Redis clusters/nodes/instances:

```bash
bin/redis-rm redis-ms          # remove redis cluster 'redis-ms'
bin/redis-rm 10.10.10.10       # remove redis node '10.10.10.10'
bin/redis-rm 10.10.10.10 6379  # remove redis instance '10.10.10.10:6379'
```

-------------

### Reconfigure Redis

You can partially run the [`redis.yml`](playbook#redisyml) playbook to reconfigure Redis clusters, nodes, or instances:

```bash
./redis.yml -l <cluster> -t redis_config,redis_launch
```

Note that Redis cannot reload configuration online. You must restart Redis using the launch task to make configuration changes take effect.


-------------

## Using Redis Client

Access Redis instances with `redis-cli`:

```bash
$ redis-cli -h 10.10.10.10 -p 6379 # <--- connect with host and port
10.10.10.10:6379> auth redis.ms    # <--- authenticate with password
OK
10.10.10.10:6379> set a 10         # <--- set a key
OK
10.10.10.10:6379> get a            # <--- get the key value
"10"
```

Redis provides the `redis-benchmark` tool, which can be used for Redis performance evaluation or to generate load for testing.

```bash
redis-benchmark -h 10.10.10.13 -p 6379
```

-------------

### Configure Redis Replica

https://redis.io/commands/replicaof/

```bash
# Promote a Redis instance to primary
> REPLICAOF NO ONE
"OK"

# Make a Redis instance a replica of another instance
> REPLICAOF 127.0.0.1 6799
"OK"
```

-------------

### Configure HA with Sentinel

Redis standalone master-slave clusters can be configured for automatic high availability through Redis Sentinel. For detailed information, please refer to the [Sentinel official documentation](https://redis.io/docs/management/sentinel/).

Using the four-node [sandbox environment](/docs/deploy/install#sandbox) as an example, a Redis Sentinel cluster `redis-meta` can be used to manage multiple standalone Redis master-slave clusters.

Taking the one-master-one-slave Redis standalone cluster `redis-ms` as an example, you need to add the target on each Sentinel instance using `SENTINEL MONITOR` and provide the password using `SENTINEL SET`, and the high availability is configured.

```bash
# For each sentinel, add the redis master to sentinel management: (26379,26380,26381)
$ redis-cli -h 10.10.10.11 -p 26379 -a redis.meta
10.10.10.11:26379> SENTINEL MONITOR redis-ms 10.10.10.10 6379 1
10.10.10.11:26379> SENTINEL SET redis-ms auth-pass redis.ms      # if auth enabled, password needs to be configured
```

If you want to remove a Redis master-slave cluster managed by Sentinel, use `SENTINEL REMOVE <name>`.

You can use the [`redis_sentinel_monitor`](/docs/redis/param#redis_sentinel_monitor) parameter defined on the Sentinel cluster to automatically configure the list of masters managed by Sentinel.

```yaml
redis_sentinel_monitor:  # list of masters to be monitored, port, password, quorum (should be more than 1/2 of sentinels) are optional
  - { name: redis-src, host: 10.10.10.45, port: 6379 ,password: redis.src, quorum: 1 }
  - { name: redis-dst, host: 10.10.10.48, port: 6379 ,password: redis.dst, quorum: 1 }
```

The `redis-ha` stage in `redis.yml` will render `/tmp/<cluster>.monitor` on each sentinel instance based on this list and execute `SENTINEL REMOVE` and `SENTINEL MONITOR` commands sequentially, ensuring the sentinel management state remains consistent with the inventory. If you only want to remove a target without re-adding it, set `remove: true` on the monitor object, and the playbook will skip re-registration after `SENTINEL REMOVE`.

Use the following command to refresh the managed master list on the Redis Sentinel cluster:

```bash
./redis.yml -l redis-meta -t redis-ha   # replace redis-meta if your Sentinel cluster has a different name
```

-------------

### Initialize Redis Native Cluster

When [`redis_mode`](/docs/redis/param#redis_mode) is set to `cluster`, `redis.yml` will additionally execute the `redis-join` stage: it uses `redis-cli --cluster create --cluster-yes ... --cluster-replicas {{ redis_cluster_replicas }}` in `/tmp/<cluster>-join.sh` to join all instances into a native cluster.

This step runs automatically during the first deployment. Subsequently re-running `./redis.yml -l <cluster> -t redis-join` will regenerate and execute the same command. Since `--cluster create` is not idempotent, you should only trigger this stage separately when you are sure you need to rebuild the entire native cluster.


-------------

### Scale Up Redis Nodes

#### Scale Up Standalone Cluster

When adding new nodes/instances to an existing Redis master-slave cluster, first add the new definition in the inventory:

```yaml
redis-ms:
  hosts:
    10.10.10.10: { redis_node: 1 , redis_instances: { 6379: { }, 6380: { replica_of: '10.10.10.10 6379' } } }
    10.10.10.11: { redis_node: 2 , redis_instances: { 6379: { replica_of: '10.10.10.10 6379' } } }  # new node
  vars: { redis_cluster: redis-ms ,redis_password: 'redis.ms' ,redis_max_memory: 64MB }
```

Then deploy only the new node:

```bash
./redis.yml -l 10.10.10.11   # deploy only the new node
```

#### Scale Up Native Cluster

Adding new nodes to a Redis native cluster requires additional steps:

```bash
# 1. Add the new node definition in the inventory
# 2. Deploy the new node
./redis.yml -l 10.10.10.14

# 3. Add the new node to the cluster (manual execution)
redis-cli --cluster add-node 10.10.10.14:6379 10.10.10.12:6379

# 4. Reshard slots if needed
redis-cli --cluster reshard 10.10.10.12:6379
```

#### Scale Up Sentinel Cluster

To add new instances to a Sentinel cluster:

```bash
# Add new sentinel instances in the inventory, then execute:
./redis.yml -l <sentinel-cluster> -t redis_instance
```


-------------

### Scale Down Redis Nodes

#### Scale Down Standalone Cluster

```bash
# 1. If removing a replica, just remove it directly
./redis-rm.yml -l 10.10.10.11 -e redis_port=6379

# 2. If removing the primary, first perform a failover
redis-cli -h 10.10.10.10 -p 6380 REPLICAOF NO ONE      # promote replica
redis-cli -h 10.10.10.10 -p 6379 REPLICAOF 10.10.10.10 6380  # demote original primary

# 3. Then remove the original primary
./redis-rm.yml -l 10.10.10.10 -e redis_port=6379

# 4. Update the inventory to remove the definition
```

#### Scale Down Native Cluster

```bash
# 1. First migrate data slots
redis-cli --cluster reshard 10.10.10.12:6379 \
  --cluster-from <node-id> --cluster-to <target-node-id> --cluster-slots <count>

# 2. Remove node from cluster
redis-cli --cluster del-node 10.10.10.12:6379 <node-id>

# 3. Remove the instance
./redis-rm.yml -l 10.10.10.14

# 4. Update the inventory
```


-------------

### Backup and Restore

#### Manual Backup

```bash
# Trigger RDB snapshot
redis-cli -h 10.10.10.10 -p 6379 -a <password> BGSAVE

# Check snapshot status
redis-cli -h 10.10.10.10 -p 6379 -a <password> LASTSAVE

# Copy RDB file (default location)
cp /data/redis/redis-ms-1-6379/dump.rdb /backup/redis-ms-$(date +%Y%m%d).rdb
```

#### Data Restore

```bash
# 1. Stop Redis instance
sudo systemctl stop redis-ms-1-6379

# 2. Replace RDB file
cp /backup/redis-ms-20241231.rdb /data/redis/redis-ms-1-6379/dump.rdb
chown redis:redis /data/redis/redis-ms-1-6379/dump.rdb

# 3. Start Redis instance
sudo systemctl start redis-ms-1-6379
```

#### Using AOF Persistence

If you need higher data safety, enable AOF:

```yaml
redis-ms:
  vars:
    redis_aof_enabled: true
    redis_rdb_save: ['900 1', '300 10', '60 10000']  # keep RDB as well
```

Redeploy to apply AOF configuration:

```bash
./redis.yml -l redis-ms -t redis_config,redis_launch
```


-------------

### Common Issue Diagnosis

#### Connection Troubleshooting

```bash
# Check Redis service status
systemctl status redis-ms-1-6379

# Check port listening
ss -tlnp | grep 6379

# Check firewall
sudo iptables -L -n | grep 6379

# Test connection
redis-cli -h 10.10.10.10 -p 6379 PING
```

#### Memory Troubleshooting

```bash
# Check memory usage
redis-cli -h 10.10.10.10 -p 6379 INFO memory

# Find big keys
redis-cli -h 10.10.10.10 -p 6379 --bigkeys

# Memory analysis report
redis-cli -h 10.10.10.10 -p 6379 MEMORY DOCTOR
```

#### Performance Troubleshooting

```bash
# Check slow query log
redis-cli -h 10.10.10.10 -p 6379 SLOWLOG GET 10

# Real-time command monitoring
redis-cli -h 10.10.10.10 -p 6379 MONITOR

# Check client connections
redis-cli -h 10.10.10.10 -p 6379 CLIENT LIST
```

#### Replication Troubleshooting

```bash
# Check replication status
redis-cli -h 10.10.10.10 -p 6379 INFO replication

# Check replication lag
redis-cli -h 10.10.10.10 -p 6380 INFO replication | grep lag
```


-------------

### Performance Tuning

#### Memory Optimization

```yaml
redis-cache:
  vars:
    redis_max_memory: 4GB           # set based on available memory
    redis_mem_policy: allkeys-lru   # LRU recommended for cache scenarios
    redis_conf: redis.conf
```

#### Persistence Optimization

```yaml
# Pure cache scenario: disable persistence
redis-cache:
  vars:
    redis_rdb_save: []              # disable RDB
    redis_aof_enabled: false        # disable AOF

# Data safety scenario: enable both RDB and AOF
redis-data:
  vars:
    redis_rdb_save: ['900 1', '300 10', '60 10000']
    redis_aof_enabled: true
```

#### Connection Pool Recommendations

When connecting to Redis from client applications:

- Use connection pooling to avoid frequent connection creation
- Set reasonable timeout values (recommended 1-3 seconds)
- Enable TCP keepalive
- For high-concurrency scenarios, consider using Pipeline for batch operations

#### Key Monitoring Metrics

Monitor these metrics through Grafana dashboards:

- **Memory usage**: Pay attention when `redis:ins:mem_usage` > 80%
- **CPU usage**: Pay attention when `redis:ins:cpu_usage` > 70%
- **QPS**: Watch for spikes and abnormal fluctuations
- **Response time**: Investigate when `redis:ins:rt` > 1ms
- **Connection count**: Monitor connection growth trends
- **Replication lag**: Important for master-slave replication scenarios
