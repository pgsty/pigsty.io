---
title: "Module: REDIS"
weight: 3800
description: Deploy Redis or Valkey through one REDIS module, with standalone replication, native cluster, and Sentinel modes.
icon: fas fa-layer-group
module: [REDIS]
categories: [Reference]
---

REDIS is Pigsty's Redis-compatible cache module. Choose **Redis** or **Valkey** with [`redis_type`](/docs/redis/param#redis_type); the default remains `redis`. Both engines support primary-replica replication, Sentinel, and native cluster mode while sharing configuration paths, instance service names, monitoring, and log entry points.

```yaml
redis_type: redis   # default; valkey is also supported
```

The role installs the selected engine and `redis-exporter`. Instance processes use `redis-server` / `redis-cli` or `valkey-server` / `valkey-cli`, respectively. Changing `redis_type` changes packages and binaries; it does not automatically validate data formats, replication topology, or rollback. Rehearse any existing-cluster switch, and use one engine consistently across a logical cluster.

The default Redis package remains on the 7.2 BSD branch. Patch versions can differ by operating-system repository; treat the target repository metadata as authoritative.
