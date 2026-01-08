---
title: Monitoring
weight: 3850
description: How to monitor Redis? What alert rules are worth paying attention to?
icon: fa-solid fa-binoculars
module: [REDIS]
categories: [Reference]
---


--------

## Dashboards

The REDIS module provides 3 monitoring dashboards:

- Redis Overview: Overview of all Redis clusters
- Redis Cluster: Details of a single Redis cluster
- Redis Instance: Details of a single Redis instance


----------------

## Monitoring

Pigsty provides three monitoring dashboards for the [`REDIS`](/docs/redis) module:

----------------

### Redis Overview

[Redis Overview](https://demo.pigsty.io/d/redis-overview): Overview of all Redis clusters/instances

[![redis-overview.jpg](/img/dashboard/redis-overview.jpg)](https://demo.pigsty.io/d/redis-overview)

----------------

### Redis Cluster

[Redis Cluster](https://demo.pigsty.io/d/redis-cluster): Details of a single Redis cluster

<details><summary>Redis Cluster Dashboard</summary>

[![redis-cluster.jpg](/img/dashboard/redis-cluster.jpg)](https://demo.pigsty.io/d/redis-cluster)

</details><br>

----------------

### Redis Instance

[Redis Instance](https://demo.pigsty.io/d/redis-instance): Details of a single Redis instance

<details><summary>Redis Instance Dashboard</summary>

[![redis-instance](/img/dashboard/redis-instance.jpg)](https://demo.pigsty.io/d/redis-instance)

</details><br>




---------

## Alert Rules

Pigsty provides the following six predefined alert rules for Redis, defined in [`files/victoria/rules/redis.yml`](https://github.com/Vonng/pigsty/blob/main/files/victoria/rules/redis.yml):

- `RedisDown`: Redis instance is down
- `RedisRejectConn`: Redis instance rejecting connections
- `RedisRTHigh`: Redis instance response time is too high
- `RedisCPUHigh`: Redis instance CPU usage is too high
- `RedisMemHigh`: Redis instance memory usage is too high
- `RedisQPSHigh`: Redis instance QPS is too high


```yaml
#==============================================================#
#                         Error                                #
#==============================================================#
# redis down triggers a P0 alert
- alert: RedisDown
  expr: redis_up < 1
  for: 1m
  labels: { level: 0, severity: CRIT, category: redis }
  annotations:
    summary: "CRIT RedisDown: {{ $labels.ins }} {{ $labels.instance }} {{ $value }}"
    description: |
      redis_up[ins={{ $labels.ins }}, instance={{ $labels.instance }}] = {{ $value }} == 0
      http://g.pigsty/d/redis-instance?from=now-5m&to=now&var-ins={{$labels.ins}}

# redis reject connection in last 5m
- alert: RedisRejectConn
  expr: redis:ins:conn_reject > 0
  labels: { level: 0, severity: CRIT, category: redis }
  annotations:
    summary: "CRIT RedisRejectConn: {{ $labels.ins }} {{ $labels.instance }} {{ $value }}"
    description: |
      redis:ins:conn_reject[cls={{ $labels.cls }}, ins={{ $labels.ins }}][5m] = {{ $value }} > 0
      http://g.pigsty/d/redis-instance?from=now-10m&to=now&viewPanel=88&fullscreen&var-ins={{ $labels.ins }}



#==============================================================#
#                         Latency                              #
#==============================================================#
# redis avg query response time > 160 µs
- alert: RedisRTHigh
  expr: redis:ins:rt > 0.00016
  for: 1m
  labels: { level: 1, severity: WARN, category: redis }
  annotations:
    summary: "WARN RedisRTHigh: {{ $labels.cls }} {{ $labels.ins }}"
    description: |
      pg:ins:query_rt[cls={{ $labels.cls }}, ins={{ $labels.ins }}] = {{ $value }} > 160µs
      http://g.pigsty/d/redis-instance?from=now-10m&to=now&viewPanel=97&fullscreen&var-ins={{ $labels.ins }}



#==============================================================#
#                        Saturation                            #
#==============================================================#
# redis cpu usage more than 70% for 1m
- alert: RedisCPUHigh
  expr: redis:ins:cpu_usage > 0.70
  for: 1m
  labels: { level: 1, severity: WARN, category: redis }
  annotations:
    summary: "WARN RedisCPUHigh: {{ $labels.cls }} {{ $labels.ins }}"
    description: |
      redis:ins:cpu_all[cls={{ $labels.cls }}, ins={{ $labels.ins }}] = {{ $value }} > 60%
      http://g.pigsty/d/redis-instance?from=now-10m&to=now&viewPanel=43&fullscreen&var-ins={{ $labels.ins }}

# redis mem usage more than 70% for 1m
- alert: RedisMemHigh
  expr: redis:ins:mem_usage > 0.70
  for: 1m
  labels: { level: 1, severity: WARN, category: redis }
  annotations:
    summary: "WARN RedisMemHigh: {{ $labels.cls }} {{ $labels.ins }}"
    description: |
      redis:ins:mem_usage[cls={{ $labels.cls }}, ins={{ $labels.ins }}] = {{ $value }} > 80%
      http://g.pigsty/d/redis-instance?from=now-10m&to=now&viewPanel=7&fullscreen&var-ins={{ $labels.ins }}

#==============================================================#
#                         Traffic                              #
#==============================================================#
# redis qps more than 32000 for 5m
- alert: RedisQPSHigh
  expr: redis:ins:qps > 32000
  for: 5m
  labels: { level: 2, severity: INFO, category: redis }
  annotations:
    summary: "INFO RedisQPSHigh: {{ $labels.cls }} {{ $labels.ins }}"
    description: |
      redis:ins:qps[cls={{ $labels.cls }}, ins={{ $labels.ins }}] = {{ $value }} > 16000
      http://g.pigsty/d/redis-instance?from=now-10m&to=now&viewPanel=96&fullscreen&var-ins={{ $labels.ins }}

```
