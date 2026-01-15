---
title: Manual Switchover
weight: 40
description: Failover path when an administrator manually executes Switchover or Failover
icon: fa-solid fa-hand
draft: true
module: [PGSQL]
categories: [Concept]
---

{{< infographic >}}
```
infographic list-row-simple-horizontal-arrow
data

  items
    - label Command Execution
      desc Admin executes failover
      icon mingcute/terminal-fill
    - label Replica Promotion
      desc pg_ctl promote
      icon mingcute/arrow-up-circle-fill
    - label Health Check
      desc HAProxy detects online
      icon mingcute/check-circle-fill
theme light
  palette antv
```
{{< /infographic >}}


--------

## RTO Timeline

The following analysis focuses on **Failover** (manual failover) since it involves actual service interruption time.

{{< echarts height="520px" >}}
```js
var fmt = function(params) { if (!params || !params.length || params[0].name === '') return ''; return '<b>' + params[0].name + '</b><br/>' + params.filter(p => p.value !== '-' && p.value != null).map(p => p.marker + ' ' + p.seriesName + ': ' + p.value + 's').join('<br/>'); };
```
```yaml
tooltip: { trigger: axis, axisPointer: { type: shadow }, formatter: $fn:fmt }
legend: { top: 0, itemGap: 12, data: [Command, Promote, HealthCheck] }
grid: { left: 64, right: 24, bottom: 32, top: 40 }
xAxis: { type: value, name: sec, nameLocation: end, max: 15, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }, minorTick: { show: true, splitNumber: 5 }, minorSplitLine: { show: true, lineStyle: { type: dotted, opacity: 0.2 } } }
yAxis: { type: category, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: false }, axisLabel: { fontSize: 10, fontFamily: monospace }, data: [wide-max, wide-avg, wide-min, "", safe-max, safe-avg, safe-min, "", norm-max, norm-avg, norm-min, "", fast-max, fast-avg, fast-min] }
series:
  - { name: Command, type: bar, stack: main, barWidth: 20, z: 2, emphasis: { focus: series }, itemStyle: { color: "#b07aa1" }, data: [2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0] }
  - { name: Promote, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#59a14f" }, data: [1, 0, 0, "-", 1, 0, 0, "-", 1, 0, 0, "-", 1, 0, 0] }
  - { name: HealthCheck, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#4e79a7" }, data: [8, 6, 4, "-", 6, 5, 3, "-", 4, 3, 2, "-", 2, 2, 1] }
  - { name: TotalRTO, type: bar, barGap: "-100%", barWidth: 20, z: 1, itemStyle: { color: "#888", opacity: 0 }, emphasis: { itemStyle: { opacity: 0 } }, data: [11, 7, 4, "-", 9, 6, 3, "-", 7, 4, 2, "-", 5, 3, 1] }
```
{{< /echarts >}}


--------

## Failure Model


|    Phase    |           Best           |               Worst               |                Average                | Notes                                  |
|:--------:|:----------------------:|:------------------------------:|:--------------------------------:|:--------------------------------------|
| **Command** |          `0`           |              `2`               |               `1`                | Best: API responds immediately<br/>Worst: Network delay or API timeout |
| **Promote** |          `0`           |              `1`               |               `0`                | Best: Promote completes instantly<br/>Worst: Checkpoint overhead |
| **Health Check** | `(rise-1) × fastinter` | `(rise-1) × fastinter + inter` | `(rise-1) × fastinter + inter/2` | Best: State changes before check<br/>Worst: State changes right after check |
{.full-width}

**Key difference between manual and automatic switchover**:

|     Mode      |  Lease Expiry  |  Replica Detection  |    Main Delay     |    Typical RTO    |
|:-------------:|:------:|:------:|:-----------:|:------------:|
| **Auto** (Expire) | Wait TTL | Wait loop wake | Lease expiry + Replica detection | 16s ~ 150s  |
| **Auto** (Crash) | Wait restart timeout | Wait loop wake | Restart timeout + Replica detection | 1s ~ 111s   |
| **Manual** (Failover) | **Skip** | **Skip** |    Health check     | **1s ~ 11s** |
{.full-width}

Manual switchover skips the most time-consuming **lease expiry** and **replica detection** phases, significantly reducing RTO.


--------

## Timeline Analysis

### Phase 1: Command Execution

Administrator executes the Failover command, Patroni receives and processes the REST API request.

```bash
# Pigsty wrapped failover command
pg failover pg-test              # Failover to best candidate
pg failover pg-test pg-test-2    # Failover to specified replica
```

```
Timeline:
  Execute cmd      API Response      Start Promote
     |               |               |
     |←── 0~2s ──→|
```

- **Best case**: API responds immediately, overhead negligible `≈ 0`
- **Worst case**: Network delay or DCS access timeout, `2s`
- **Average case**: `1s`

```math
T_{command} = \begin{cases}
0 & \text{best} \\
1 & \text{average} \\
2 & \text{worst}
\end{cases}
```


### Phase 2: Replica Promotion

Patroni acquires Leader Key and executes `pg_ctl promote` to promote the target replica to new primary.

```
Promotion flow:
  Patroni ──→ Acquire Leader Key ──→ pg_ctl promote ──→ New primary ready
```

- **Best case**: Promote completes instantly, `≈ 0`
- **Worst case**: Needs to complete checkpoint, `1s`
- **Average case**: `0s` (usually very fast)

```math
T_{promote} = \begin{cases}
0 & \text{best} \\
0 & \text{average} \\
1 & \text{worst}
\end{cases}
```


### Phase 3: Health Check

HAProxy detects new primary coming online, requires `rise` consecutive successful health checks.

```
Detection timeline:
  New primary    First check    Second check   Third check (UP)
     |              |               |               |
     |←─ 0~inter ─→|←─ fast ─→|←─ fast ─→|
```

- **Best case**: New primary promoted right at check time, `(rise-1) × fastinter`
- **Worst case**: New primary promoted right after check, `(rise-1) × fastinter + inter`
- **Average case**: `(rise-1) × fastinter + inter/2`

```math
T_{haproxy} = \begin{cases}
(rise-1) \times fastinter & \text{best} \\
(rise-1) \times fastinter + inter/2 & \text{average} \\
(rise-1) \times fastinter + inter & \text{worst}
\end{cases}
```


--------

## RTO Formula

Sum all phase times to get total RTO:

**Best Case**

```math
RTO_{min} = 0 + 0 + (rise-1) \times fastinter
```

$$RTO_{min} = (rise-1) \times fastinter$$

**Average Case**

```math
RTO_{avg} = 1 + 0 + (rise-1) \times fastinter + inter/2
```

$$RTO_{avg} = 1 + (rise-1) \times fastinter + inter/2$$

**Worst Case**

```math
RTO_{max} = 2 + 1 + (rise-1) \times fastinter + inter
```

$$RTO_{max} = 3 + (rise-1) \times fastinter + inter$$


--------

## Model Calculation

Substituting the four RTO model parameters into the formulas:

```yaml
pg_rto_plan:  # [ttl, loop, retry, start, margin, inter, fastinter, downinter, rise, fall]
  fast: [ 20  ,5  ,5  ,15 ,5  ,'1s' ,'0.5s' ,'1s' ,3 ,3 ]  # rto < 30s
  norm: [ 30  ,5  ,10 ,25 ,5  ,'2s' ,'1s'   ,'2s' ,3 ,3 ]  # rto < 45s
  safe: [ 60  ,10 ,20 ,45 ,10 ,'3s' ,'1.5s' ,'3s' ,3 ,3 ]  # rto < 90s
  wide: [ 120 ,20 ,30 ,95 ,15 ,'4s' ,'2s'   ,'4s' ,3 ,3 ]  # rto < 150s
```

**Four mode calculation results** (seconds, format: min / avg / max)

|   Phase   |      fast       |      norm       |      safe       |       wide       |
|:------:|:---------------:|:---------------:|:---------------:|:----------------:|
|  Command  | `0` / `1` / `2` | `0` / `1` / `2` | `0` / `1` / `2` | `0` / `1` / `2`  |
|  Promote  | `0` / `0` / `1` | `0` / `0` / `1` | `0` / `0` / `1` | `0` / `0` / `1`  |
|  Health Check  | `1` / `2` / `2` | `2` / `3` / `4` | `3` / `5` / `6` | `4` / `6` / `8`  |
| **Total** | `1` / `3` / `5` | `2` / `4` / `7` | `3` / `6` / `9` | `4` / `7` / `11` |
{.full-width}


--------

## Switchover Notes

**Switchover** (planned switchover) is used for planned maintenance scenarios. The main difference from Failover is the **WAL catch-up phase**.

```bash
# Pigsty wrapped switchover command
pg switchover pg-test              # Switch to best candidate
pg switchover pg-test pg-test-2    # Switch to specified replica
```

{{< infographic >}}
```
infographic list-row-simple-horizontal-arrow
data
  title Switchover Planned Switchover Flow
  desc Primary running normally, graceful switch after WAL catch-up
  items
    - label Stop Writes
      desc Primary stops accepting writes
      icon mingcute/pause-circle-fill
    - label WAL Catch-up
      desc Wait for replica sync complete
      icon mingcute/time-fill
    - label Replica Promote
      desc Patroni executes pg_ctl promote
      icon mingcute/arrow-up-circle-fill
    - label Health Check
      desc HAProxy detects new primary online
      icon mingcute/check-circle-fill
theme light
  palette antv
```
{{< /infographic >}}

**WAL catch-up time not counted in RTO**: During catch-up, primary can still handle read-only requests, service not completely interrupted.

|     Type      |      Scenario       |   Primary State   | WAL Catch-up |  Data Loss  |       RTO       |
|:-----------:|:-------------:|:--------:|:------:|:------:|:---------------:|
| Switchover  | Planned maintenance, rolling upgrade, migration  |   Running normally   |   Wait   |   None    | ≈ Failover RTO  |
|  Failover   |  Primary failure, emergency switch   |  Failed or unreachable  |   Skip   | May have some  |   1s ~ 11s    |
{.full-width}

**WAL catch-up time** depends on replica replication lag. In normal operation scenarios, replicas usually stay synchronized or near-sync, catch-up completes in milliseconds to seconds.
With synchronous replication, WAL catch-up time is 0, making Switchover and Failover RTO nearly identical.


--------

## Key Insights

1. **Manual switchover RTO is extremely short**: 1~11 seconds, far below automatic switchover's 16~150 seconds
2. **Health check is the main delay source**: 60%~75% of total RTO
3. **Best choice in emergencies**: If admin can respond quickly, manual Failover is the fastest way to restore service

|    Mode    | Manual Failover | Auto (Expire) | Auto (Crash) |   Speedup   |
|:--------:|:-----------:|:-----------:|:-----------:|:--------:|
| **fast** |     3s      |    23s     |    24s     |  **8x**  |
| **norm** |     4s      |    34s     |    30s     |  **8x**  |
| **safe** |     6s      |    66s     |    46s     | **8~11x** |
| **wide** |     7s      |   127s     |    87s     | **12~18x** |
{.full-width}
