---
title: FAQ
weight: 3870
description: Frequently asked questions about the Pigsty REDIS module
icon: fa-solid fa-circle-question
module: [REDIS]
categories: [Reference]
tags: []
---


----------------

## ABORT due to redis_safeguard enabled

This means the Redis instance you are trying to remove has the safeguard enabled: this happens when attempting to remove a Redis instance with [`redis_safeguard`](/docs/redis/param#redis_safeguard) set to `true`. The `redis-rm.yml` playbook refuses to execute to prevent accidental deletion of running Redis instances.

You can override this protection with the CLI argument `-e redis_safeguard=false` to force removal of the Redis instance. This is what `redis_safeguard` is designed for.



----------------

## How to add a new Redis instance on a node?

Use `bin/redis-add <ip> <port>` to deploy a new Redis instance on the node.



----------------

## How to remove a specific instance from a node?

Use `bin/redis-rm <ip> <port>` to remove a single Redis instance from the node.


----------------

## Are there plans to upgrade to Valkey or the latest version?

Since Redis is not a core component of this project, there are currently no plans to update to the latest Redis RSAL / AGPLv3 version or Valkey.
The Redis version in Pigsty is locked to 7.2.6, the last version using the BSD license.

This version has been validated in large-scale production environments, and Pigsty no longer has such scenarios to re-validate the stability and reliability of newer versions.

