# Model of Patroni Active Failure

> PostgreSQL primary process crashes while Patroni stays alive and attempts restart, triggering failover after timeout

---

LLMS index: [llms.txt](/llms.txt)

---

```infographic
infographic list-row-simple-horizontal-arrow
data
  desc When Patroni is healthy but PostgreSQL crashes
  items
    - label Crash Found
    - label Restart Timeout
    - label Replica Detect
    - label Elect Promote
    - label HAProxy Check
theme light
  palette antv
```


--------

## RTO Timeline

<script>
window.OinkEchartsFunctions = window.OinkEchartsFunctions || {};
(function (registry) {
var fmt = function(params) { if (!params || !params.length || params[0].name === '') return ''; return '<b>' + params[0].name + '</b><br/>' + params.filter(p => p.value !== '-' && p.value != null).map(p => p.marker + ' ' + p.seriesName + ': ' + p.value + 's').join('<br/>'); };
registry["fmt"] = fmt;
})(window.OinkEchartsFunctions);
</script>

```echarts {height="520px"}
tooltip: { trigger: axis, axisPointer: { type: shadow }, formatter: $fn:fmt }
legend: { top: 0, itemGap: 12, data: [ Crash Found, Restart Timeout, Replica Detection, Elect Promote, HAProxy Check] }
grid: { left: 64, right: 24, bottom: 32, top: 40 }
xAxis: { type: value, name: Seconds, nameLocation: end, max: 160, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }, minorTick: { show: true, splitNumber: 5 }, minorSplitLine: { show: true, lineStyle: { type: dotted, opacity: 0.2 } } }
yAxis: { type: category, axisLine: { show: true }, axisTick: { show: true }, splitLine: { show: false }, axisLabel: { fontSize: 10, fontFamily: monospace }, data: [wide-max, wide-avg, wide-min, "", safe-max, safe-avg, safe-min, "", norm-max, norm-avg, norm-min, "", fast-max, fast-avg, fast-min] }
series:
  - { name: Crash Found, type: bar, stack: main, barWidth: 20, z: 2, emphasis: { focus: series }, itemStyle: { color: "#b07aa1" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Restart Timeout, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#f28e2c" }, data: [95, 95, 0, "-", 45, 45, 0, "-", 25, 25, 0, "-", 15, 15, 0] }
  - { name: Replica Detect, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#edc949" }, data: [20, 10, 0, "-", 10, 5, 0, "-", 5, 3, 0, "-", 5, 3, 0] }
  - { name: Elect Promote, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#59a14f" }, data: [2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0, "-", 2, 1, 0] }
  - { name: HAProxy Check, type: bar, stack: main, z: 2, emphasis: { focus: series }, itemStyle: { color: "#4e79a7" }, data: [8, 6, 4, "-", 6, 5, 3, "-", 4, 3, 2, "-", 2, 2, 1] }
  - { name: RTO Total, type: bar, barGap: "-100%", barWidth: 20, z: 1, itemStyle: { color: "#888", opacity: 0 }, emphasis: { itemStyle: { opacity: 0 } }, data: [145, 122, 4, "-", 73, 61, 3, "-", 41, 35, 2, "-", 29, 24, 1] }
  - { name: RTO Budget, type: bar, barGap: "-100%", barWidth: 20, z: 0, itemStyle: { color: "rgba(0,0,0,0.08)" }, emphasis: { itemStyle: { color: "rgba(0,0,0,0.12)" } }, data: [150, 150, 150, "-", 90, 90, 90, "-", 45, 45, 45, "-", 30, 30, 30] }
```


--------

## Failure Model


|        Item         |          Best          |             Worst              |             Average              | Description                                                                           |
|:-------------------:|:----------------------:|:------------------------------:|:--------------------------------:|:--------------------------------------------------------------------------------------|
|   **Crash Found**   |          `0`           |             `loop`             |             `loop/2`             | Best: PG crashes right before check<br/>Worst: PG crashes right after check           |
| **Restart Timeout** |          `0`           |            `start`             |             `start`              | Best: PG recovers instantly<br/>Worst: Wait full start timeout before releasing lease |
| **Replica Detect**  |          `0`           |             `loop`             |             `loop/2`             | Best: Right at check point<br/>Worst: Just missed check point                         |
|  **Elect Promote**  |          `0`           |              `2`               |               `1`                | Best: Acquire lock and promote directly<br/>Worst: API timeout + Promote              |
|  **HAProxy Check**  | `(rise-1) × fastinter` | `(rise-1) × fastinter + inter` | `(rise-1) × fastinter + inter/2` | Best: State changes before check<br/>Worst: State changes right after check           |
{.full-width}

**Key Difference Between Active and Passive Failure**:

|            Scenario             | Patroni Status |                       Lease Handling                       |     Main Wait Time      |
|:-------------------------------:|:--------------:|:----------------------------------------------------------:|:-----------------------:|
|  **Active Failure** (PG crash)  | Alive, healthy | Actively tries to restart PG, releases lease after timeout | `primary_start_timeout` |
| **Passive Failure** (node down) | Dies with node |     Cannot actively release, must wait for TTL expiry      |          `ttl`          |
{.full-width}

During active failure, Patroni remains available. It detects a PostgreSQL crash and attempts a restart. If restart succeeds, service recovers locally. If recovery times out, Patroni releases the **Leader Key** and triggers an election.


--------

## Timing Analysis

### Phase 1: Failure Detection

Each `loop_wait` cycle, Patroni checks PostgreSQL through `pg_isready` or a process check.

```text
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

After detecting a crash, Patroni attempts to restart PostgreSQL. There are two possible results:

```text
Timeline:
  Crash detected     Restart attempt     Success/Timeout
      |                  |                    |
      |←──── 0 ~ start ─────────────────────→|
```

**Path A: Self-healing Success** (Best case)
- PostgreSQL restarts and service recovers.
- No failover occurs, so RTO is very short.
- Wait: `0` relative to the failover path.

**Path B: Failover Required** (Average/Worst case)
- PostgreSQL does not recover before `primary_start_timeout`.
- Patroni releases the Leader Key.
- Wait: `start`.

```math
T_{restart} = \begin{cases}
0 & \text{Best (self-healing success)} \\
start & \text{Average (failover required)} \\
start & \text{Worst}
\end{cases}
```

> **Note**: The average assumes failover is necessary. A quick local restart can substantially reduce RTO.


### Phase 3: Standby Detection

Standbys check the DCS Leader Key each `loop_wait` cycle. After the primary releases it, they detect its absence and begin an election.

```text
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

When the Leader Key is absent, standbys begin an election. The winner acquires the key and runs `pg_ctl promote`.

1. Query standby replication positions in parallel through REST APIs. Typical response time is 10ms; the hardcoded timeout is 2s.
2. Compare WAL positions and select the best candidate. Standbys attempt atomic CAS creation of the Leader Key.
3. Run `pg_ctl promote`. Its duration is usually negligible.

```text
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

HAProxy requires `rise` consecutive successful checks before it marks the new primary healthy.

```text
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

Add the phase durations to calculate total RTO:

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

Apply the four RTO presets to these formulas:

```yaml
pg_rto_plan:  # [ttl, loop, retry, start, margin, inter, fastinter, downinter, rise, fall]
  fast: [ 20  ,5  ,5  ,15 ,5  ,'1s' ,'500ms'  ,'1s' ,3 ,3 ]  # rto < 30s
  norm: [ 30  ,5  ,10 ,25 ,5  ,'2s' ,'1s'     ,'2s' ,3 ,3 ]  # rto < 45s
  safe: [ 60  ,10 ,20 ,45 ,10 ,'3s' ,'1500ms' ,'3s' ,3 ,3 ]  # rto < 90s
  wide: [ 120 ,20 ,30 ,95 ,15 ,'4s' ,'2s'     ,'4s' ,3 ,3 ]  # rto < 150s
```

**Calculation Results for Four Modes** (unit: seconds, format: min / avg / max)

|       Phase       |       fast        |       norm        |       safe        |        wide         |
|:-----------------:|:-----------------:|:-----------------:|:-----------------:|:-------------------:|
| Failure Detection |  `0` / `3` / `5`  |  `0` / `3` / `5`  | `0` / `5` / `10`  |  `0` / `10` / `20`  |
|  Restart Timeout  | `0` / `15` / `15` | `0` / `25` / `25` | `0` / `45` / `45` |  `0` / `95` / `95`  |
| Standby Detection |  `0` / `3` / `5`  |  `0` / `3` / `5`  | `0` / `5` / `10`  |  `0` / `10` / `20`  |
|  Lock & Promote   |  `0` / `1` / `2`  |  `0` / `1` / `2`  |  `0` / `1` / `2`  |   `0` / `1` / `2`   |
|   Health Check    |  `1` / `2` / `2`  |  `2` / `3` / `4`  |  `3` / `5` / `6`  |   `4` / `6` / `8`   |
|     **Total**     | `1` / `24` / `29` | `2` / `35` / `41` | `3` / `61` / `73` | `4` / `122` / `145` |
{.full-width}


--------

## Comparison with Passive Failure

|         Phase         | Active Failure (PG crash) | Passive Failure (node down) | Description                                                                    |
|:---------------------:|:-------------------------:|:---------------------------:|:-------------------------------------------------------------------------------|
|  Detection Mechanism  | Patroni active detection  |     TTL passive expiry      | Active detection discovers failure faster                                      |
|       Core Wait       |          `start`          |            `ttl`            | start is usually less than ttl, but requires additional failure detection time |
|    Lease Handling     |      Active release       |       Passive expiry        | Active release is more timely                                                  |
| Self-healing Possible |            Yes            |             No              | Active detection can attempt local recovery                                    |
{.full-width}

**RTO Comparison** (Average case):

|   Mode   | Active Failure (PG crash) | Passive Failure (node down) | Difference     |
|:------:|:------------:|:------------:|:-------|
|  fast  |     24s      |     23s      | +1s    |
|  norm  |     35s      |     34s      | +1s    |
|  safe  |     61s      |     66s      | -5s    |
|  wide  |    122s      |    127s      | -5s    |
{.full-width}

> **Analysis**: In `fast` and `norm`, active failures wait for `primary_start_timeout` (`start`), making RTO slightly longer than for passive failures.
> In `safe` and `wide`, `start < ttl - loop`, so active recovery is faster.
> A successful local restart can make the best-case active RTO much shorter.
