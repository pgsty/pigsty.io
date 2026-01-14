---
title: Model of Patroni Active Failure
linkTitle: Crash Failure
weight: 20
description: PostgreSQL primary process crashes while Patroni stays alive and attempts restart, triggering failover after timeout
icon: fa-solid fa-explosion
module: [PGSQL]
categories: [Concept]
---

{{< infographic >}}
```
infographic list-row-simple-horizontal-arrow
data
  title Crash Failover Process
  desc Failover process when Patroni is healthy but PostgreSQL crashes
  items
    - label Failure Detection
      desc Patroni detects PG crash in loop
      icon mingcute/close-circle-fill
    - label Restart Timeout
      desc Patroni tries to restart PG, releases lease after timeout
      icon mingcute/refresh-2-fill
    - label Standby Detection
      desc Standby wakes from loop and finds lease released, starts election
      icon mingcute/key-2-fill
    - label Lock & Promote
      desc Standbys compare and race for lock, winner promotes its PG
      icon mingcute/radar-fill
    - label Health Check
      desc HAProxy detects new primary online, routes traffic
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
legend: { top: 0, itemGap: 12, data: [Failure Detection, Restart Timeout, Standby Detection, Lock & Promote, Health Check] }
grid: { left: 64, right: 24, bottom: 32, top: 40 }
xAxis: { type: value, name: Seconds, nameLocation: end, max: 160, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }, minorTick: { show: true, splitNumber: 5 }, minorSplitLine: { show: true, lineStyle: { type: dotted, opacity: 0.2 } } }
yAxis: { type: category, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: false }, axisLabel: { fontSize: 10, fontFamily: monospace }, data: [wide-max, wide-avg, wide-min, "", safe-max, safe-avg, safe-min, "", norm-max, norm-avg, norm-min, "", fast-max, fast-avg, fast-min] }
series:
  - { name: Failure Detection, type: bar, stack: main, barWidth: 20, z: 2, emphasis: { focus: series }, itemStyle: { color: "#b07aa1" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Restart Timeout, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#f28e2c" }, data: [95, 95, 0, "-", 45, 45, 0, "-", 25, 25, 0, "-", 15, 15, 0] }
  - { name: Standby Detection, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#edc949" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Lock & Promote, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#59a14f" }, data: [2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0] }
  - { name: Health Check, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#4e79a7" }, data: [8, 6, 4, "-", 6, 5, 3, "-", 4, 3, 2, "-", 2, 2, 1] }
  - { name: RTO Total, type: bar, barGap: "-100%", barWidth: 20, z: 1, itemStyle: { color: "#888", opacity: 0 }, emphasis: { itemStyle: { opacity: 0 } }, data: [145, 122, 4, "-", 73, 61, 3, "-", 41, 35, 2, "-", 29, 24, 1] }
  - { name: RTO Budget, type: bar, barGap: "-100%", barWidth: 20, z: 0, itemStyle: { color: "rgba(0,0,0,0.08)" }, emphasis: { itemStyle: { color: "rgba(0,0,0,0.12)" } }, data: [150, 150, 150, "-", 90, 90, 90, "-", 45, 45, 45, "-", 30, 30, 30] }
```
{{< /echarts >}}


--------

## Failure Model


|    Item    |   Best   |     Worst     |     Average      | Description                                         |
|:--------:|:------:|:----------:|:-----------:|:-------------------------------------------|
| **Failure Detection** |  `0`   |   `loop`   |  `loop/2`   | Best: PG crashes right before check<br/>Worst: PG crashes right after check           |
| **Restart Timeout** |  `0`   |  `start`   |   `start`   | Best: PG recovers instantly<br/>Worst: Wait full start timeout before releasing lease         |
| **Standby Detection** |  `0`   |   `loop`   |  `loop/2`   | Best: Right at check point<br/>Worst: Just missed check point                    |
| **Lock & Promote** |  `0`   |    `2`     |     `1`     | Best: Acquire lock and promote directly<br/>Worst: API timeout + Promote          |
| **Health Check** | `(rise-1) × fastinter` | `(rise-1) × fastinter + inter` | `(rise-1) × fastinter + inter/2` | Best: State changes before check<br/>Worst: State changes right after check |
{.full-width}

**Key Difference Between Active and Passive Failure**:

|       Scenario       | Patroni Status |        Lease Handling        |         Main Wait Time          |
|:--------------:|:----------:|:------------------:|:-----------------------:|
| **Active Failure** (PG crash) |   Alive, healthy    | Actively tries to restart PG, releases lease after timeout  | `primary_start_timeout` |
| **Passive Failure** (node down) |  Dies with node   | Cannot actively release, must wait for TTL expiry | `ttl`          |
{.full-width}

In active failure scenarios, Patroni remains alive and can **actively detect PG crash and attempt restart**.
If restart succeeds, service self-heals; if timeout expires without recovery, Patroni **actively releases the Leader Key**, triggering cluster election.


--------

## Timing Analysis

### Phase 1: Failure Detection

Patroni checks PostgreSQL status every `loop_wait` cycle (via `pg_isready` or process check).

```
Timeline:
    Last check      PG crash      Next check
       |              |              |
       |←── 0~loop ──→|              |
```

- **Best case**: PG crashes right before Patroni check, detected immediately, wait `0`
- **Worst case**: PG crashes right after check, wait for next cycle, wait `loop`
- **Average case**: `loop/2`

```math
T_{detect} = \begin{cases}
0 & \text{Best} \\
loop/2 & \text{Average} \\
loop & \text{Worst}
\end{cases}
```


### Phase 2: Restart Timeout

After Patroni detects PG crash, it attempts to restart PostgreSQL. This phase has two possible outcomes:

```
Timeline:
  Crash detected     Restart attempt     Success/Timeout
      |                  |                    |
      |←──── 0 ~ start ─────────────────────→|
```

**Path A: Self-healing Success** (Best case)
- PG restarts successfully, service recovers
- No failover triggered, extremely short RTO
- Wait time: `0` (relative to Failover path)

**Path B: Failover Required** (Average/Worst case)
- PG still not recovered after `primary_start_timeout`
- Patroni actively releases Leader Key
- Wait time: `start`

```math
T_{restart} = \begin{cases}
0 & \text{Best (self-healing success)} \\
start & \text{Average (failover required)} \\
start & \text{Worst}
\end{cases}
```

> **Note**: Average case assumes failover is required. If PG can quickly self-heal, overall RTO will be significantly lower.


### Phase 3: Standby Detection

Standbys wake up on `loop_wait` cycle and check Leader Key status in DCS. When primary Patroni releases the Leader Key, standbys discover this and begin election.

```
Timeline:
    Lease released    Standby wakes
       |                  |
       |←── 0~loop ──────→|
```

- **Best case**: Standby wakes right when lease is released, wait `0`
- **Worst case**: Standby just went to sleep when lease released, wait `loop`
- **Average case**: `loop/2`

```math
T_{standby} = \begin{cases}
0 & \text{Best} \\
loop/2 & \text{Average} \\
loop & \text{Worst}
\end{cases}
```


### Phase 4: Lock & Promote

After standbys discover Leader Key vacancy, election begins. The standby that acquires the Leader Key executes `pg_ctl promote` to become the new primary.

1. Via REST API, parallel queries to check each standby's replication position, typically 10ms, hardcoded 2s timeout.
2. Compare WAL positions to determine best candidate, standbys attempt to create Leader Key (CAS atomic operation)
3. Execute `pg_ctl promote` to become primary (very fast, typically negligible)

```
Election process:
  StandbyA ──→ Query replication position ──→ Compare ──→ Try lock ──→ Success
  StandbyB ──→ Query replication position ──→ Compare ──→ Try lock ──→ Fail
```

- **Best case**: Single standby or direct lock acquisition and promote, constant overhead `0.1s`
- **Worst case**: DCS API call timeout: `2s`
- **Average case**: `1s` constant overhead

```math
T_{elect} = \begin{cases}
0.1 & \text{Best} \\
1 & \text{Average} \\
2 & \text{Worst}
\end{cases}
```


### Phase 5: Health Check

HAProxy detects new primary online, requires `rise` consecutive successful health checks.

```
Check timeline:
  New primary    First check    Second check   Third check (UP)
     |              |               |               |
     |←─ 0~inter ──→|←─── fast ────→|←─── fast ────→|
```

- **Best case**: New primary comes up right at check time, `(rise-1) × fastinter`
- **Worst case**: New primary comes up right after check, `(rise-1) × fastinter + inter`
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

**Best Case** (PG instant self-healing)

```math
RTO_{min} = 0 + 0 + 0 + 0.1 + (rise-1) \times fastinter \approx (rise-1) \times fastinter
```

**Average Case** (Failover required)

```math
RTO_{avg} = loop + start + 1 + inter/2 + (rise-1) \times fastinter
```

**Worst Case**

```math
RTO_{max} = loop \times 2 + start + 2 + inter + (rise-1) \times fastinter
```


--------

## Model Calculation

Substituting the four RTO model parameters into the formulas above:

```yaml
pg_rto_plan:  # [ttl, loop, retry, start, margin, inter, fastinter, downinter, rise, fall]
  fast: [ 20  ,5  ,5  ,15 ,5  ,'1s' ,'0.5s' ,'1s' ,3 ,3 ]  # rto < 30s
  norm: [ 30  ,5  ,10 ,25 ,5  ,'2s' ,'1s'   ,'2s' ,3 ,3 ]  # rto < 45s
  safe: [ 60  ,10 ,20 ,45 ,10 ,'3s' ,'1.5s' ,'3s' ,3 ,3 ]  # rto < 90s
  wide: [ 120 ,20 ,30 ,95 ,15 ,'4s' ,'2s'   ,'4s' ,3 ,3 ]  # rto < 150s
```

**Calculation Results for Four Modes** (unit: seconds, format: min / avg / max)

|   Phase   |        fast        |        norm        |        safe         |         wide          |
|:------:|:------------------:|:------------------:|:-------------------:|:---------------------:|
|  Failure Detection  |  `0` / `3` / `5`   |  `0` / `3` / `5`   |  `0` / `5` / `10`   |  `0` / `10` / `20`    |
|  Restart Timeout  | `0` / `15` / `15`  | `0` / `25` / `25`  | `0` / `45` / `45`   |  `0` / `95` / `95`    |
|  Standby Detection  |  `0` / `3` / `5`   |  `0` / `3` / `5`   |  `0` / `5` / `10`   |  `0` / `10` / `20`    |
|  Lock & Promote  |  `0` / `1` / `2`   |  `0` / `1` / `2`   |   `0` / `1` / `2`   |    `0` / `1` / `2`    |
|  Health Check  |  `1` / `2` / `2`   |  `2` / `3` / `4`   |   `3` / `5` / `6`   |    `4` / `6` / `8`    |
| **Total** | `1` / `24` / `29`  | `2` / `35` / `41`  | `3` / `61` / `73`   | `4` / `122` / `145`   |
{.full-width}


--------

## Comparison with Passive Failure

|   Phase   | Active Failure (PG crash) | Passive Failure (node down) | Description                         |
|:------:|:------------:|:------------:|:---------------------------|
|  Detection Mechanism  |  Patroni active detection  |  TTL passive expiry   | Active detection discovers failure faster                 |
|  Core Wait  |   `start`    |    `ttl`     | start is usually less than ttl, but requires additional failure detection time |
|  Lease Handling  |    Active release     |   Passive expiry     | Active release is more timely                    |
|  Self-healing Possible  |     Yes      |     No     | Active detection can attempt local recovery                |
{.full-width}

**RTO Comparison** (Average case):

|   Mode   | Active Failure (PG crash) | Passive Failure (node down) | Difference     |
|:------:|:------------:|:------------:|:-------|
|  fast  |     24s      |     23s      | +1s    |
|  norm  |     35s      |     34s      | +1s    |
|  safe  |     61s      |     66s      | -5s    |
|  wide  |    122s      |    127s      | -5s    |
{.full-width}

> **Analysis**: In `fast` and `norm` modes, active failure RTO is slightly higher than passive failure because it waits for `primary_start_timeout` (`start`);
> but in `safe` and `wide` modes, since `start < ttl - loop`, active failure is actually faster.
> However, active failure has the possibility of self-healing, with potentially extremely short RTO in best case scenarios.
