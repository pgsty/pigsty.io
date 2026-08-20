---
title: demo/redis
weight: 1045
description: Four-node demo of Redis replica, Sentinel, and native Cluster modes
icon: fa-solid fa-bolt
categories: [Reference]
---

`demo/redis` demonstrates standalone/replica, Sentinel, and native Cluster modes supported by Pigsty's Redis module in one configuration.


--------

## Overview

- Config Name: `demo/redis`
- Node Count: 4
- Clusters: `redis-ms`, `redis-meta`, `redis-test`
- Related: [`demo/demo`](/docs/conf/demo/)

```bash
./configure -c demo/redis -s
```


--------

## Content

Source: [`pigsty/conf/demo/redis.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/redis.yml)

{{< include file="yaml/demo/redis.yml" code=true lang="yaml" >}}


--------

## Explanation

- `redis-ms`: a `6379` primary and `6380` replica on one node
- `redis-meta`: three Sentinel instances monitoring the `redis-ms` primary
- `redis-test`: a native Redis Cluster across two nodes with three instances per node
- Small per-instance memory limits keep the topology suitable for demonstrations

The IP addresses, passwords, and memory limits are demonstration values. Adjust them to the real topology, then install the Redis module with the [`redis.yml`](/docs/redis/) playbook.
