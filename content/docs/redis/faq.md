---
title: FAQ
weight: 3870
description: Frequently asked questions about the Pigsty REDIS module
icon: fa-solid fa-circle-question
module: [REDIS]
categories: [Reference]
---


----------------

## ABORT due to redis_safeguard enabled

This means the Redis instance you are trying to remove has the safeguard enabled. If [`redis_safeguard`](/docs/redis/param#redis_safeguard) is `true`, `redis-rm.yml` always refuses to run. The switch does not check whether an instance is running.

First, confirm the exact `-l`/`redis_port` target, a recent backup, and the `redis_rm_data` setting. Then use `-e redis_safeguard=false` to override the protection and run removal. This switch only disables the guard. It does not verify the target or recovery capability.



----------------

## How to add a new Redis instance on a node?

Use `bin/redis-add <ip> <port>` to deploy a new Redis instance on the node.



----------------

## How to remove a specific instance from a node?

Use `bin/redis-rm <ip> <port>` to remove a single Redis instance from the node.


----------------

## How do I choose Redis or Valkey?

Current source defaults to `redis_type: redis` and also supports explicit `redis_type: valkey`. The role installs the corresponding `redis` or `valkey` package. Instance units use the matching `redis-server` / `valkey-server` and CLI binaries. Configuration paths, instance service names, monitoring `job`, and parameter prefixes retain the `redis` namespace.

The default Redis package remains on the 7.2 BSD branch. Patch versions vary by operating-system channel. Use the actual repository metadata as the authoritative source.

An engine switch to Valkey does not automatically migrate an existing cluster. First, verify RDB/AOF compatibility with the target version. Also verify replication, Sentinel/Cluster behavior, and a rollback procedure.
