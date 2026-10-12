---
title: "Module: REDIS"
weight: 3800
description: Deploy Redis or Valkey through one REDIS module, with standalone replication, native cluster, and Sentinel modes.
icon: fas fa-layer-group
module: [REDIS]
categories: [Reference]
---

REDIS is Pigsty's Redis-compatible cache module. Select **Redis** or **Valkey** with [`redis_type`](/docs/redis/param#redis_type). The default remains `redis`. Both engines support primary-replica replication, Sentinel, and native cluster mode. They share configuration paths, instance service names, monitoring, and log entry points.

```yaml
redis_type: redis   # default; valkey is also supported
```

The role installs the selected engine and `redis-exporter`. Instance processes use `redis-server` / `redis-cli` or `valkey-server` / `valkey-cli`, respectively. A change to `redis_type` changes packages and binaries. It does not automatically validate data formats, replication topology, or rollback. Rehearse any engine change on an existing cluster. Use the same engine throughout a logical cluster.

The default Redis package remains on the 7.2 BSD branch. Patch versions can differ between operating-system repositories. Use the target repository metadata as the authoritative source.
