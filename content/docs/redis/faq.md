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

This means the Redis instance you are trying to remove has the safeguard enabled. When [`redis_safeguard`](/docs/redis/param#redis_safeguard) is `true`, `redis-rm.yml` refuses to run unconditionally; the switch does not probe whether an instance is running.

You can override this protection with the CLI argument `-e redis_safeguard=false` to force removal of the Redis instance. This is what `redis_safeguard` is designed for.



----------------

## How to add a new Redis instance on a node?

Use `bin/redis-add <ip> <port>` to deploy a new Redis instance on the node.



----------------

## How to remove a specific instance from a node?

Use `bin/redis-rm <ip> <port>` to remove a single Redis instance from the node.


----------------

## How do I choose Redis or Valkey?

Current source defaults to `redis_type: redis` and also supports explicit `redis_type: valkey`. The role installs the corresponding `redis` or `valkey` package and calls the matching `redis-server` / `valkey-server` and CLI binaries from instance units. Configuration paths, instance service names, monitoring `job`, and parameter prefixes retain the `redis` namespace.

The default Redis package remains on the 7.2 BSD branch; patch versions vary by operating-system channel, so use the actual repository metadata as the source of truth. Switching an existing cluster to Valkey is not an automatic migration: first verify target-version RDB/AOF compatibility, replication and Sentinel/Cluster behavior, and a rollback path.
