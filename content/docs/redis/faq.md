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

## Are there plans to upgrade to Valkey or the latest version?

Pigsty v4.x still uses Redis 7.2 BSD branch as the default implementation, and has not switched to newer Redis license variants or Valkey as the default component.
Redis patch versions may differ across OS channels (for example, APT can provide 7.2.7). Please use the package version in your actual repository as the source of truth.
