---
title: Model of Patroni Passive Failure
linkTitle: Expire Failure
weight: 10
description: Failover path triggered by node crash causing leader lease expiration and cluster election
icon: fa-solid fa-clock-rotate-left
module: [PGSQL]
categories: [Concept]
---

{{< infographic >}}
```
infographic list-row-simple-horizontal-arrow
data
  title Lease Expiration Failover Flow
  desc When node crashes, Patroni cannot actively release lease, must wait for TTL expiration
  items
    - label Lease Expiration
      desc Patroni disconnected, passively waiting for primary lease TTL expiration
      icon mingcute/close-circle-fill
    - label Replica Detection
      desc Replica wakes from loop and detects lease expiration, starts election
      icon mingcute/key-2-fill
    - label Lock Contest & Promote
      desc Replicas compare and contest for lock, winner promotes its PG
      icon mingcute/radar-fill
    - label Health Check
      desc HAProxy health check detects new primary online, routes traffic
      icon mingcute/arrow-up-circle-fill
theme light
  palette antv
```
{{< /infographic >}}


--------

## RTO Timeline

{{< echarts height="520px" >}}
```js
var fmt = function(params) { if (!params || !params.length || params[0].name === '') return ''; return '<b>' + params[0].name + '</b><br/>' + params.filter(p => p.value !== '-' && p.value != null).map(p => p.marker + ' ' + p.seriesName + ': ' + p.value + 's').join('<br/>'); };
```
```yaml
tooltip: { trigger: axis, axisPointer: { type: shadow }, formatter: $fn:fmt }
legend: { top: 0, itemGap: 12, data: [Lease Expiration, Replica Detection, Lock Contest & Promote, Health Check] }
grid: { left: 64, right: 24, bottom: 32, top: 40 }
xAxis: { type: value, name: Seconds, nameLocation: end, max: 160, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }, minorTick: { show: true, splitNumber: 5 }, minorSplitLine: { show: true, lineStyle: { type: dotted, opacity: 0.2 } } }
yAxis: { type: category, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: false }, axisLabel: { fontSize: 10, fontFamily: monospace }, data: [wide-max, wide-avg, wide-min, "", safe-max, safe-avg, safe-min, "", norm-max, norm-avg, norm-min, "", fast-max, fast-avg, fast-min] }
series:
  - { name: Lease Expiration, type: bar, stack: main, barWidth: 20, z: 2, emphasis: { focus: series }, itemStyle: { color: "#e15759" }, data: [120, 110, 100, "-", 60, 55, 50, "-", 30, 27, 25, "-", 20, 17, 15] }
  - { name: Replica Detection, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#edc949" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Lock Contest & Promote, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#59a14f" }, data: [2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0] }
  - { name: Health Check, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#4e79a7" }, data: [8, 6, 4, "-", 6, 5, 3, "-", 4, 3, 2, "-", 2, 2, 1] }
  - { name: Total RTO, type: bar, barGap: "-100%", barWidth: 20, z: 1, itemStyle: { color: "#888", opacity: 0 }, emphasis: { itemStyle: { opacity: 0 } }, data: [150, 127, 104, "-", 78, 66, 53, "-", 41, 34, 27, "-", 29, 23, 16] }
  - { name: RTO Budget, type: bar, barGap: "-100%", barWidth: 20, z: 0, itemStyle: { color: "rgba(0,0,0,0.08)" }, emphasis: { itemStyle: { color: "rgba(0,0,0,0.12)" } }, data: [150, 150, 150, "-", 90, 90, 90, "-", 45, 45, 45, "-", 30, 30, 30] }
```
{{< /echarts >}}


--------

## Failure Model


|    Phase    |           Best           |               Worst               |                Average                | Description                             |
|:--------:|:----------------------:|:------------------------------:|:--------------------------------:|:-------------------------------|
| **Lease Expiration** |      `ttl - loop`      |             `ttl`              |          `ttl - loop/2`          | Best: crash just before refresh<br/>Worst: crash right after refresh      |
| **Replica Detection** |          `0`           |             `loop`             |            `loop / 2`            | Best: exactly at check point<br/>Worst: just missed check point        |
| **Lock Contest & Promote** |          `0`           |              `2`               |               `1`                | Best: direct lock and promote<br/>Worst: API timeout + Promote |
| **Health Check** | `(rise-1) × fastinter` | `(rise-1) × fastinter + inter` | `(rise-1) × fastinter + inter/2` | Best: state change before check<br/>Worst: state change right after check    |
{.full-width}

**Key Difference Between Passive and Active Failover**:

|       Scenario       | Patroni Status |        Lease Handling        |         Primary Wait Time          |
|:--------------:|:----------:|:------------------:|:-----------------------:|
| **Active Failover** (PG crash) |   Alive, healthy    | Actively tries to restart PG, releases lease on timeout  | `primary_start_timeout` |
| **Passive Failover** (Node crash) |  Dies with node   | Cannot actively release, must wait for TTL expiration | `ttl`          |
{.full-width}

In passive failover scenarios, Patroni dies along with the node and **cannot actively release the Leader Key**.
The lease in DCS can only trigger cluster election after TTL naturally expires.


--------

## Timeline Analysis

### Phase 1: Lease Expiration

The Patroni primary refreshes the Leader Key every `loop_wait` cycle, resetting TTL to the configured value.

```
Timeline:
     t-loop        t          t+ttl-loop    t+ttl
       |           |              |           |
    Last Refresh  Failure      Best Case   Worst Case
       |←── loop ──→|              |           |
       |←──────────── ttl ─────────────────────→|
```

- **Best case**: Failure occurs just before lease refresh (elapsed `loop` since last refresh), remaining TTL = `ttl - loop`
- **Worst case**: Failure occurs right after lease refresh, must wait full `ttl`
- **Average case**: `ttl - loop/2`

```math
T_{expire} = \begin{cases}
ttl - loop & \text{Best} \\
ttl - loop/2 & \text{Average} \\
ttl & \text{Worst}
\end{cases}
```


### Phase 2: Replica Detection

Replicas wake up on `loop_wait` cycles and check the Leader Key status in DCS.

```
Timeline:
    Lease Expired   Replica Wakes
       |            |
       |←── 0~loop ─→|
```

- **Best case**: Replica happens to wake when lease expires, wait `0`
- **Worst case**: Replica just entered sleep when lease expires, wait `loop`
- **Average case**: `loop/2`

```math
T_{detect} = \begin{cases}
0 & \text{Best} \\
loop/2 & \text{Average} \\
loop & \text{Worst}
\end{cases}
```


### Phase 3: Lock Contest & Promote

When replicas detect Leader Key expiration, they start the election process. The replica that acquires the Leader Key executes `pg_ctl promote` to become the new primary.

1. Via REST API, parallel queries to check each replica's replication position, typically 10ms, hardcoded 2s timeout.
2. Compare WAL positions to determine the best candidate, replicas attempt to create Leader Key (CAS atomic operation)
3. Execute `pg_ctl promote` to become primary (very fast, typically negligible)

```
Election Flow:
  ReplicaA ──→ Query replication position ──→ Compare ──→ Contest lock ──→ Success
  ReplicaB ──→ Query replication position ──→ Compare ──→ Contest lock ──→ Fail
```

- **Best case**: Single replica or immediate lock acquisition and promotion, constant overhead `0.1s`
- **Worst case**: DCS API call timeout: `2s`
- **Average case**: `1s` constant overhead

```math
T_{elect} = \begin{cases}
0.1 & \text{Best} \\
1 & \text{Average} \\
2 & \text{Worst}
\end{cases}
```


### Phase 4: Health Check

HAProxy detects the new primary online, requiring `rise` consecutive successful health checks.

```
Detection Timeline:
  New Primary    First Check   Second Check  Third Check (UP)
     |          |           |           |
     |←─ 0~inter ─→|←─ fast ─→|←─ fast ─→|
```

- **Best case**: New primary promoted just before check, `(rise-1) × fastinter`
- **Worst case**: New primary promoted right after check, `(rise-1) × fastinter + inter`
- **Average case**: `(rise-1) × fastinter + inter/2`

```math
T_{haproxy} = \begin{cases}
(rise-1) \times fastinter & \text{Best} \\
(rise-1) \times fastinter + inter/2 & \text{Average} \\
(rise-1) \times fastinter + inter & \text{Worst}
\end{cases}
```


--------

## RTO Formula

Sum all phase times to get total RTO:

**Best Case**

```math
RTO_{min} = ttl - loop + 0.1 + (rise-1) \times fastinter
```

**Average Case**

```math
RTO_{avg} = ttl + 1 + inter/2 + (rise-1) \times fastinter
```

**Worst Case**

```math
RTO_{max} = ttl + loop + 2 + inter + (rise-1) \times fastinter
```




--------

## Model Calculation

Substitute the four RTO model parameters into the formulas above:

```yaml
pg_rto_plan:  # [ttl, loop, retry, start, margin, inter, fastinter, downinter, rise, fall]
  fast: [ 20  ,5  ,5  ,15 ,5  ,'1s' ,'0.5s' ,'1s' ,3 ,3 ]  # rto < 30s
  norm: [ 30  ,5  ,10 ,25 ,5  ,'2s' ,'1s'   ,'2s' ,3 ,3 ]  # rto < 45s
  safe: [ 60  ,10 ,20 ,45 ,10 ,'3s' ,'1.5s' ,'3s' ,3 ,3 ]  # rto < 90s
  wide: [ 120 ,20 ,30 ,95 ,15 ,'4s' ,'2s'   ,'4s' ,3 ,3 ]  # rto < 150s
```

**Four Mode Calculation Results** (unit: seconds, format: min / avg / max)

|   Phase   |        fast        |        norm        |        safe         |         wide          |
|:------:|:------------------:|:------------------:|:-------------------:|:---------------------:|
|  Lease Expiration  | `15` / `17` / `20` | `25` / `27` / `30` | `50` / `55` / `60`  | `100` / `110` / `120` |
|  Replica Detection  |  `0` / `3` / `5`   |  `0` / `3` / `5`   |  `0` / `5` / `10`   |   `0` / `10` / `20`   |
|  Lock Contest & Promote  |  `0` / `1` / `2`   |  `0` / `1` / `2`   |   `0` / `1` / `2`   |    `0` / `1` / `2`    |
|  Health Check  |  `1` / `2` / `2`   |  `2` / `3` / `4`   |   `3` / `5` / `6`   |    `4` / `6` / `8`    |
| **Total** | `16` / `23` / `29` | `27` / `34` / `41` | `53` / `66` / `78`  | `104` / `127` / `150` |
{.full-width}
