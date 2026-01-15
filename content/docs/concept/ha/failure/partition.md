---
title: Network Partition
weight: 50
description: Primary loses DCS connectivity, causing lease expiration and triggering split-brain protection and failover
icon: fa-solid fa-network-wired
draft: true
module: [PGSQL]
categories: [Concept]
---

{{< infographic >}}
```
infographic list-row-simple-horizontal-arrow
data
  title Network Partition Failover Flow
  desc Primary partitioned from DCS, Patroni proactively demotes to prevent split-brain, waits for TTL expiration before switchover
  items
    - label Primary Demote
      desc Patroni demotes PG after retry timeout
      icon mingcute/shield-fill
    - label Lease Expiration
      desc Leader Key TTL expires
      icon mingcute/close-circle-fill
    - label Replica Detection
      desc Replica detects lease expiration, starts election
      icon mingcute/key-2-fill
    - label Lock & Promote
      desc Replica acquires lock and promotes to new primary
      icon mingcute/radar-fill
    - label Health Check
      desc HAProxy detects new primary online
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
legend: { top: 0, itemGap: 12, data: [Primary Demote, Lease Expiration, Replica Detection, Lock & Promote, Health Check] }
grid: { left: 64, right: 24, bottom: 32, top: 40 }
xAxis: { type: value, name: sec, nameLocation: end, max: 160, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }, minorTick: { show: true, splitNumber: 5 }, minorSplitLine: { show: true, lineStyle: { type: dotted, opacity: 0.2 } } }
yAxis: { type: category, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: false }, axisLabel: { fontSize: 10, fontFamily: monospace }, data: [wide-max, wide-avg, wide-min, "", safe-max, safe-avg, safe-min, "", norm-max, norm-avg, norm-min, "", fast-max, fast-avg, fast-min] }
series:
  - { name: Primary Demote, type: bar, stack: main, barWidth: 20, z: 2, emphasis: { focus: series }, itemStyle: { color: "#76b7b2" }, data: [50, 40, 30, "-", 30, 25, 20, "-", 15, 13, 10, "-", 10, 8, 5] }
  - { name: Lease Expiration, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#e15759" }, data: [70, 70, 70, "-", 30, 30, 30, "-", 15, 15, 15, "-", 10, 10, 10] }
  - { name: Replica Detection, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#edc949" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Lock & Promote, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#59a14f" }, data: [2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0] }
  - { name: Health Check, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#4e79a7" }, data: [8, 6, 4, "-", 6, 5, 3, "-", 4, 3, 2, "-", 2, 2, 1] }
  - { name: RTO Total, type: bar, barGap: "-100%", barWidth: 20, z: 1, itemStyle: { color: "#888", opacity: 0 }, emphasis: { itemStyle: { opacity: 0 } }, data: [150, 127, 104, "-", 78, 66, 53, "-", 41, 34, 27, "-", 29, 23, 16] }
  - { name: RTO Budget, type: bar, barGap: "-100%", barWidth: 20, z: 0, itemStyle: { color: "rgba(0,0,0,0.08)" }, emphasis: { itemStyle: { color: "rgba(0,0,0,0.12)" } }, data: [150, 150, 150, "-", 90, 90, 90, "-", 45, 45, 45, "-", 30, 30, 30] }
```
{{< /echarts >}}


--------

## Failure Model


|    Phase    |            Best            |             Worst              |             Average              | Notes                               |
|:--------:|:------------------------:|:---------------------------:|:---------------------------:|:---------------------------------|
| **Demote** |         `retry`          |       `loop + retry`        |       `loop/2 + retry`      | Patroni retries after detecting partition, demotes after timeout |
| **Lease Expiration** |    `ttl - loop - retry`  |     `ttl - loop - retry`    |     `ttl - loop - retry`    | Remaining TTL time after demotion (approximately constant) |
| **Replica Detection** |           `0`            |           `loop`            |          `loop/2`           | Best: Right at detection point<br/>Worst: Just missed detection |
| **Lock & Promote** |           `0`            |            `2`              |             `1`             | Best: Direct lock and promote<br/>Worst: API timeout + Promote |
| **Health Check** |  `(rise-1) × fastinter`  | `(rise-1) × fastinter + inter` | `(rise-1) × fastinter + inter/2` | Best: State changes before check<br/>Worst: State changes right after check |
{.full-width}

**Key difference between network partition and node crash**:

|       Scenario        | Patroni State |    PostgreSQL State     |      Lease Handling       |    Split-brain Risk    |
|:---------------:|:----------:|:--------------------:|:---------------:|:----------:|
| **Node Crash** (Expire)  |  Dies with node   |        Completely unavailable         | Passive wait for TTL expiration |     None      |
| **Network Partition** (This scenario)  | Alive but cannot access DCS |   May still be running (needs active demotion)   | Passive wait for TTL expiration | **Yes, needs protection** |
{.full-width}

In network partition scenarios, the primary PostgreSQL may still be running and accepting writes, causing **split-brain** issues.
Patroni solves this through **active demotion**: when unable to refresh Leader Key, proactively demotes PostgreSQL to read-only or shuts it down.


--------

## Timeline Analysis

### Phase 1: Primary Demotion

When primary Patroni is network-partitioned from DCS, it cannot refresh Leader Key and starts retrying.

```
Timeline:
  Partition      Detect partition      Retry timeout      Primary demotes
     |               |                    |                    |
     |←── loop ──→|←── retry ──→|
```

- **Detection delay**: After partition occurs, must wait for next `loop_wait` cycle to detect
- **Retry phase**: Patroni continuously retries DCS operations during `retry_timeout`
- **Active demotion**: After retry timeout, Patroni proactively demotes PostgreSQL (prevents split-brain)

```math
T_{demote} = \begin{cases}
retry & \text{best (partition right before detection)} \\
loop/2 + retry & \text{average} \\
loop + retry & \text{worst (partition right after refresh)}
\end{cases}
```

**Key design**: Patroni requires constraint `loop_wait + 2 × retry_timeout ≤ ttl` to ensure primary demotes before TTL expires.


### Phase 2: Lease Expiration

After primary demotion, Leader Key still exists in DCS, must wait for TTL to naturally expire.

```
Timeline:
  Primary demoted                   TTL expires
     |                                 |
     |←── ttl - (loop + retry) ──→|
```

Since the primary has demoted, waiting time during this phase is the remaining TTL time. Since partition detection and remaining TTL are negatively correlated (earlier partition means slower detection but longer remaining TTL), their sum is constant:

```math
T_{expire} = ttl - loop - retry \quad \text{(approximately constant)}
```

**Note**: Primary demotion + lease expiration total time still approximately equals `ttl`, same as expire failure.


### Phase 3: Replica Detection

Replica wakes up in `loop_wait` cycle and checks Leader Key status in DCS.

```
Timeline:
    Lease expired      Replica wakes
       |                  |
       |←── 0~loop ─→|
```

- **Best case**: Replica wakes right when lease expires, wait `0`
- **Worst case**: Replica just entered sleep when lease expires, wait `loop`
- **Average case**: `loop/2`

```math
T_{detect} = \begin{cases}
0 & \text{best} \\
loop/2 & \text{average} \\
loop & \text{worst}
\end{cases}
```


### Phase 4: Lock & Promote

After replica discovers Leader Key expired, it starts the election process.

```
Election flow:
  ReplicaA ──→ Query replication position ──→ Compare ──→ Try lock ──→ Success
  ReplicaB ──→ Query replication position ──→ Compare ──→ Try lock ──→ Fail
```

- **Best case**: Single replica or directly acquires lock and promotes, `≈ 0`
- **Worst case**: DCS API call timeout, `2s`
- **Average case**: `1s`

```math
T_{elect} = \begin{cases}
0 & \text{best} \\
1 & \text{average} \\
2 & \text{worst}
\end{cases}
```


### Phase 5: Health Check

HAProxy detects new primary coming online, requires `rise` consecutive successful health checks.

```
Detection timeline:
  New primary    First check    Second check   Third check (UP)
     |              |               |               |
     |←─ 0~inter ─→|←─ fast ─→|←─ fast ─→|
```

- **Best case**: `(rise-1) × fastinter`
- **Worst case**: `(rise-1) × fastinter + inter`
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

Sum all phase times to get total RTO.

Since primary demotion + lease expiration ≈ `ttl`, network partition RTO formula is same as expire failure:

**Best Case**

```math
RTO_{min} = ttl - loop + 0.1 + (rise-1) \times fastinter
```

$$RTO_{min} \approx ttl - loop + (rise-1) \times fastinter$$

**Average Case**

```math
RTO_{avg} = ttl + 1 + inter/2 + (rise-1) \times fastinter
```

$$RTO_{avg} = ttl + 1 + inter/2 + (rise-1) \times fastinter$$

**Worst Case**

```math
RTO_{max} = ttl + loop + 2 + inter + (rise-1) \times fastinter
```

$$RTO_{max} = ttl + loop + 2 + inter + (rise-1) \times fastinter$$


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

**Patroni constraint validation** (`loop + 2×retry ≤ ttl`):

|    Mode    | loop | retry |  TTL  | loop + 2×retry |  Meets constraint?   |
|:--------:|:----:|:-----:|:-----:|:--------------:|:----------:|
| **fast** |  5   |   5   |  20s  |      15s       |   ✓ Safe    |
| **norm** |  5   |  10   |  30s  |      25s       |   ✓ Safe    |
| **safe** |  10  |  20   |  60s  |      50s       |   ✓ Safe    |
| **wide** |  20  |  30   | 120s  |      80s       |   ✓ Safe    |
{.full-width}

**Four mode calculation results** (seconds, format: min / avg / max)

|       Phase        |        fast        |        norm        |        safe         |         wide          |
|:------------------:|:------------------:|:------------------:|:-------------------:|:---------------------:|
|   Primary Demote   |  `5` / `8` / `10`  | `10` / `13` / `15` | `20` / `25` / `30`  |  `30` / `40` / `50`   |
|  Lease Expiration  |       `10`         |        `15`        |        `30`         |         `70`          |
| Replica Detection  |  `0` / `3` / `5`   |  `0` / `3` / `5`   |  `0` / `5` / `10`   |   `0` / `10` / `20`   |
|   Lock & Promote   |  `0` / `1` / `2`   |  `0` / `1` / `2`   |   `0` / `1` / `2`   |    `0` / `1` / `2`    |
|    Health Check    |  `1` / `2` / `2`   |  `2` / `3` / `4`   |   `3` / `5` / `6`   |    `4` / `6` / `8`    |
|     **Total**      | `16` / `23` / `29` | `27` / `34` / `41` | `53` / `66` / `78`  | `104` / `127` / `150` |
{.full-width}

**Conclusion**: Network partition RTO is same as expire failure (node crash), as the bottleneck is TTL expiration time.


--------

## Split-brain Protection

The biggest risk of network partition is **split-brain**: old primary may still be running and accepting writes. Patroni provides multiple protection mechanisms:

### 1. Primary Self-Demotion

Patroni's core protection mechanism: when unable to refresh Leader Key, proactively demotes PostgreSQL.

```python
# Patroni pseudo-code logic
if not can_refresh_leader_key():
    retry_until(retry_timeout)
    if still_cannot_refresh():
        demote_postgresql()  # Demote to read-only or shut down
```

### 2. Linux Watchdog

If Patroni process hangs and cannot execute demotion, Linux watchdog will force system restart.

```yaml
# patroni.yml configuration
watchdog:
  mode: required  # Require watchdog available
  device: /dev/watchdog
  safety_margin: 5
```

### 3. Fencing Mechanism

Can configure fencing scripts to forcibly isolate old primary (e.g., disable network interface, stop service, etc.).


--------

## Special Scenarios

### Scenario A: Primary partitioned from DCS, replicas normal

This is the most common network partition scenario, the main focus of this article.

```
┌─────────┐         ╳         ┌─────────┐
│ Primary │ ←── Partition ──→ │   DCS   │
│ Patroni │                   │  etcd   │
└─────────┘                   └─────────┘
                                  ↑
                              Normal connection
                                  ↓
                              ┌─────────┐
                              │ Replica │
                              │ Patroni │
                              └─────────┘
```

- Primary Patroni cannot refresh Leader Key → Active demotion
- Replica normally detects TTL expiration → Elected as new primary
- RTO ≈ Expire failure RTO

### Scenario B: Primary normal, replica partitioned from DCS

```
┌─────────┐                   ┌─────────┐
│ Primary │ ←── Normal ──→    │   DCS   │
│ Patroni │                   │  etcd   │
└─────────┘                   └─────────┘
                                  ╳
                              Partition
                                  ╳
                              ┌─────────┐
                              │ Replica │
                              │ Patroni │
                              └─────────┘
```

- Primary normally refreshes Leader Key
- Replica cannot participate in election (but replication can continue)
- **No failover triggered**, service continues normally

### Scenario C: All nodes partitioned from DCS

```
┌─────────┐         ╳         ┌─────────┐
│ Primary │ ←── Partition ──→ │   DCS   │
│ Patroni │                   │  etcd   │
└─────────┘                   └─────────┘
                                  ╳
┌─────────┐         ╳             │
│ Replica │ ←── Partition ────────┘
│ Patroni │
└─────────┘
```

- Primary demotes, replica cannot elect
- **Cluster completely unavailable**
- Requires manual intervention to restore DCS connectivity


--------

## Comparison with Other Failures

|    Failure Type    |   Primary State   |    Lease Handling    |     RTO      |   Split-brain Risk   |
|:----------:|:--------:|:----------:|:------------:|:--------:|
|  **Expire Failure**  |   Node crash   | Passive wait TTL expiration | 16s ~ 150s |    None     |
|  **Crash Failure**  | PG crash, Patroni alive | Release after restart timeout | 1s ~ 111s  |    None     |
|  **Network Partition**  | Alive but isolated from DCS | Passive wait TTL expiration | 16s ~ 150s | **Yes, needs protection** |
|  **Manual Switchover**  |  Normal or failed  |  Direct release/acquire  |  1s ~ 11s  |    None     |
{.full-width}

**Key Insight**: Network partition RTO is same as expire failure, but requires additional split-brain protection mechanisms.
Ensuring `loop_wait + 2 × retry_timeout ≤ ttl` constraint is the key design to prevent split-brain.
