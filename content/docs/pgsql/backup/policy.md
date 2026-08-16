---
title: Backup Policy
description: Design backup policies according to your needs
icon: fa-solid fa-clipboard-list
weight: 1702
categories: [Task]
---


The chart below combines the "Recovery Window" and "Backup Storage Usage" on a single timeline (`0~108h`) so they can be inspected together.

Under the same assumptions (database size `100GB`, daily writes `10GB`), it shows how both metrics evolve over 30 days with "weekly full + daily incremental" backups and 14-day full-backup retention.

- **When**: Backup schedule
- **Where**: Backup repository
- **How**: Backup method


--------

## When to Backup

The first question is **when** to backup your database - this is a tradeoff between backup frequency and recovery time.
Since you need to replay WAL logs from the last backup to the recovery target point, the more frequent the backups, the less WAL logs need to be replayed, and the faster the recovery.


### Daily Full Backup

For production databases, it's recommended to start with the simplest daily full backup strategy.
This is also Pigsty's default backup strategy, implemented via [crontab](/docs/pgsql/backup/mechanism#scheduled-backups).

```yaml title="Full backup at 1 AM daily"
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
pgbackrest_method: local          # Choose backup repository method: `local`, `minio`, or other custom repository
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  local:                          # Default pgbackrest repository using local POSIX filesystem
    path: /pg/backup              # Local backup directory, defaults to `/pg/backup`
    retention_full_type: count    # Retain full backups by count
    retention_full: 2             # Keep 2, up to 3 full backups when using local filesystem repository
```

Assume your database size is 100GB, daily writes are 10GB, and each full backup takes 1 hour. Under this daily-full local-repo strategy, recovery window and backup storage evolve as shown below:

The recovery window cycles between 25-49 hours, and storage usage is roughly `2` full backups plus around 2 days of WAL archives.
In practice, prepare at least `3~5` times the base database size as backup disk capacity for the default policy.

{{< echarts height="640px" >}}
```js
var int1 = function(v) { return Math.round(Number(v)); };
var fmtHour = function(v) { return int1(v) === 0 ? '0' : int1(v) + 'h'; };
var fmtWin = function(v) { return int1(v) + 'h'; };
var fmtGb = function(v) {
  return Number(v) === 0 ? '0' : (((Number(v) >= 100) ? Number(v).toFixed(0) : ((Number(v) >= 10) ? Number(v).toFixed(1) : Number(v).toFixed(2))).replace(/\.00$/, '').replace(/(\.\d)0$/, '$1') + 'GB');
};
var fmtGbTick = function(v) { return int1(v) === 0 ? '0' : '' + int1(v); };
var tipMerged = function(params) {
  if (!params || !params.length) { return ''; }
  return (function(stat) {
    return ['Time: ' + int1(params[0].axisValue) + 'h']
      .concat(stat.win === null ? [] : ['Recovery Window: ' + fmtWin(stat.win)])
      .concat(['Primary Backup: ' + fmtGb(stat.p), 'Secondary Backup: ' + fmtGb(stat.s), 'WAL Archive: ' + fmtGb(stat.w)])
      .concat(stat.t > 0 ? ['Transient Backup: ' + fmtGb(stat.t)] : [])
      .concat(['Backup Storage: ' + fmtGb(stat.p + stat.s + stat.w + stat.t)])
      .join('<br/>');
  })(params.reduce(function(acc, item) {
    return item.seriesName === 'Recovery Window' ? { win: Number(item.data[1]), p: acc.p, s: acc.s, w: acc.w, t: acc.t } :
      (item.seriesName === 'Primary Backup' ? { win: acc.win, p: Number(item.value), s: acc.s, w: acc.w, t: acc.t } :
      (item.seriesName === 'Secondary Backup' ? { win: acc.win, p: acc.p, s: Number(item.value), w: acc.w, t: acc.t } :
      (item.seriesName === 'WAL Archive' ? { win: acc.win, p: acc.p, s: acc.s, w: Number(item.value), t: acc.t } :
      (item.seriesName === 'Transient Backup' ? { win: acc.win, p: acc.p, s: acc.s, w: acc.w, t: Number(item.value) } : acc))));
  }, { win: null, p: 0, s: 0, w: 0, t: 0 }));
};
```
```yaml
tooltip: { trigger: axis, formatter: $fn:tipMerged, axisPointer: { type: line, snap: true, label: { show: false } } }
axisPointer: { link: [ { xAxisIndex: [0, 1] } ] }
legend: { show: false, bottom: 10, itemGap: 18, data: ["Primary Backup", "Secondary Backup", "WAL Archive", "Transient Backup"] }
grid:
  - { left: 82, right: "10%", top: 42, height: 218, containLabel: false }
  - { left: 82, right: "10%", top: 286, height: 218, containLabel: false }
xAxis:
  - type: category
    gridIndex: 0
    position: bottom
    boundaryGap: false
    data: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108]
    name: Time h
    nameLocation: end
    nameGap: 10
    nameTextStyle: { align: left, verticalAlign: top, padding: [8, 0, 0, 0] }
    axisLabel: { interval: 11, formatter: $fn:fmtHour }
    axisLine: { show: true, symbol: [none, arrow], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.28, color: "#9ca3af" } }
    minorTick: { show: true, splitNumber: 12, length: 3 }
    minorSplitLine: { show: true, lineStyle: { type: dotted, width: 1, opacity: 0.14, color: "#9ca3af" } }
  - type: category
    gridIndex: 1
    position: top
    boundaryGap: true
    data: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108]
    axisLabel: { show: false }
    axisLine: { show: true, lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.22, color: "#9ca3af" } }
yAxis:
  - type: value
    gridIndex: 0
    min: 0
    max: 52
    interval: 5
    name: Recovery Window h
    nameLocation: end
    nameRotate: 0
    nameGap: 8
    nameTextStyle: { align: left, verticalAlign: bottom, padding: [0, 0, 8, 4] }
    axisLabel: { formatter: $fn:fmtWin }
    axisLine: { show: true, symbol: [none, arrow], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.35, color: "#9ca3af" } }
    minorTick: { show: true, splitNumber: 5, length: 3 }
    minorSplitLine: { show: true, lineStyle: { type: dotted, width: 1, opacity: 0.18, color: "#9ca3af" } }
  - type: value
    gridIndex: 1
    min: 0
    max: 350
    interval: 50
    inverse: true
    name: Backup Storage GB
    nameLocation: end
    nameRotate: 0
    nameGap: 8
    nameTextStyle: { align: left, verticalAlign: top, padding: [10, 0, 0, 4] }
    axisLabel: { formatter: $fn:fmtGbTick }
    axisLine: { show: true, symbol: [arrow, none], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.32, color: "#9ca3af" } }
series: [ { name: Recovery Window, type: line, smooth: false, symbol: none, showSymbol: false, xAxisIndex: 0, yAxisIndex: 0, lineStyle: { width: 3, color: "#f2a000" }, itemStyle: { color: "#f2a000" }, data: [[0,0],[1,0],[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[8,8],[9,9],[10,10],[11,11],[12,12],[13,13],[14,14],[15,15],[16,16],[17,17],[18,18],[19,19],[20,20],[21,21],[22,22],[23,23],[24,24],[25,25],[26,26],[27,27],[28,28],[29,29],[30,30],[31,31],[32,32],[33,33],[34,34],[35,35],[36,36],[37,37],[38,38],[39,39],[40,40],[41,41],[42,42],[43,43],[44,44],[45,45],[46,46],[47,47],[48,48],[49,49],[49,25],[50,26],[51,27],[52,28],[53,29],[54,30],[55,31],[56,32],[57,33],[58,34],[59,35],[60,36],[61,37],[62,38],[63,39],[64,40],[65,41],[66,42],[67,43],[68,44],[69,45],[70,46],[71,47],[72,48],[73,49],[73,25],[74,26],[75,27],[76,28],[77,29],[78,30],[79,31],[80,32],[81,33],[82,34],[83,35],[84,36],[85,37],[86,38],[87,39],[88,40],[89,41],[90,42],[91,43],[92,44],[93,45],[94,46],[95,47],[96,48],[97,49],[97,25],[98,26],[99,27],[100,28],[101,29],[102,30],[103,31],[104,32],[105,33],[106,34],[107,35],[108,36]], markLine: { symbol: none, label: { show: false }, data: [ { xAxis: 0, lineStyle: { color: "#59a14f", type: "solid", width: 1.4, opacity: 0.75 } }, { xAxis: 24, lineStyle: { color: "#59a14f", type: "solid", width: 1.4, opacity: 0.75 } }, { xAxis: 48, lineStyle: { color: "#59a14f", type: "solid", width: 1.4, opacity: 0.75 } }, { xAxis: 72, lineStyle: { color: "#59a14f", type: "solid", width: 1.4, opacity: 0.75 } }, { xAxis: 96, lineStyle: { color: "#59a14f", type: "solid", width: 1.4, opacity: 0.75 } }, { xAxis: 1, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.8 } }, { xAxis: 25, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.8 } }, { xAxis: 49, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.8 } }, { xAxis: 73, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.8 } }, { xAxis: 97, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.8 } }, { yAxis: 25, label: { show: true, formatter: "lower 25h", position: "end", distance: 12, color: "#2563eb" }, lineStyle: { color: "#2563eb", type: "dashdot", width: 1.4, opacity: 0.75 } }, { yAxis: 49, label: { show: true, formatter: "upper 49h", position: "end", distance: 12, color: "#7c3aed" }, lineStyle: { color: "#7c3aed", type: "dashdot", width: 1.4, opacity: 0.75 } } ] } }, { name: Primary Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 5, itemStyle: { color: "#59a14f" }, data: [0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100] }, { name: Secondary Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 5, itemStyle: { color: "#4e79a7" }, data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100] }, { name: WAL Archive, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 5, itemStyle: { color: "#edc949" }, data: [0,0,0.42,0.83,1.25,1.67,2.08,2.5,2.92,3.33,3.75,4.17,4.58,5,5.42,5.83,6.25,6.67,7.08,7.5,7.92,8.33,8.75,9.17,9.58,10,10.42,10.83,11.25,11.67,12.08,12.5,12.92,13.33,13.75,14.17,14.58,15,15.42,15.83,16.25,16.67,17.08,17.5,17.92,18.33,18.75,19.17,19.58,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20] }, { name: Transient Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 5, itemStyle: { color: "#9ca3af", opacity: 0.75 }, data: [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0] } ]
```
{{< /echarts >}}


### Full + Incremental Backup

You can optimize backup space usage by adjusting these parameters.

If using Silo / S3 as a centralized backup repository, storage is no longer limited by the local disk.
In this case, consider using full + incremental backup with a 2-week retention policy:

```yaml
pg_crontab:  # Full backup at 1 AM on Monday, incremental backups on weekdays
  - '00 01 * * 1           /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 /pg/bin/pg-backup'
pgbackrest_method: minio
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  minio:                          # Optional S3-compatible repository preset
    type: s3                      # Silo uses the S3-compatible repository type
    s3_endpoint: sss.pigsty       # object-storage endpoint, `sss.pigsty` by default
    s3_region: us-east-1          # compatibility region, `us-east-1` by default
    s3_bucket: pgsql              # backup bucket, `pgsql` by default
    s3_key: pgbackrest            # pgBackRest access key
    s3_key_secret: S3User.Backup  # object-storage user secret
    s3_uri_style: path            # use path-style rather than host-style URIs
    path: /pgbackrest             # backup path, `/pgbackrest` by default
    storage_port: 9000            # Silo service port, 9000 by default
    storage_ca_file: /etc/pki/ca.crt  # Pigsty CA path, `/etc/pki/ca.crt` by default
    block: y                      # Enable block-level incremental backup
    bundle: y                     # Bundle small files into a single file
    bundle_limit: 20MiB           # Bundle size limit, recommended 20MiB for object storage
    bundle_size: 128MiB           # Bundle target size, recommended 128MiB for object storage
    cipher_type: aes-256-cbc      # Enable AES encryption for remote backup repository
    cipher_pass: pgBackRest       # AES encryption password, defaults to 'pgBackRest'
    retention_full_type: time     # Retain full backups by time
    retention_full: 14            # Keep full backups from the last 14 days
```

With weekly full backups and time-based retention of 14 days, the steady-state recovery window is roughly 14–21 days. The exact window still depends on successful backup and WAL archival runs.

Assuming your database size is 100GB and writes 10GB of data per day, the backup size is as follows:


{{< echarts height="640px" >}}
```js
var int30d = function(v) { return Math.round(Number(v)); };
var fmtDay30 = function(v) { return (int30d(v) < 1 || int30d(v) > 30) ? '' : ('' + int30d(v)); };
var fmtWin30 = function(v) { return int30d(v) + 'h'; };
var fmtGb30 = function(v) { return Number(v) === 0 ? '0' : (((Number(v) >= 100) ? Number(v).toFixed(0) : ((Number(v) >= 10) ? Number(v).toFixed(1) : Number(v).toFixed(2))).replace(/\.00$/, '').replace(/(\.\d)0$/, '$1') + 'GB'); };
var fmtGbTick30 = function(v) { return int30d(v) === 0 ? '0' : '' + int30d(v); };
var valY30 = function(v) { return Array.isArray(v) ? Number(v[1]) : Number(v); };
var tipMerged30 = function(params) {
  if (!params || !params.length) { return ''; }
  return (function(stat) {
    return ['Day ' + int30d(params[0].axisValue)]
      .concat(stat.win === null ? [] : ['Recovery Window: ' + fmtWin30(stat.win)])
      .concat(['Primary Backup: ' + fmtGb30(stat.p), 'Secondary Backup: ' + fmtGb30(stat.s), 'Incremental Backup: ' + fmtGb30(stat.i), 'WAL Archive: ' + fmtGb30(stat.w)])
      .concat(stat.t > 0 ? ['Transient Backup: ' + fmtGb30(stat.t)] : [])
      .concat(['Backup Storage: ' + fmtGb30(stat.p + stat.s + stat.i + stat.w + stat.t)])
      .join('<br/>');
  })(params.reduce(function(acc, item) {
    return item.seriesName === 'Recovery Window' ? { win: valY30(item.value), p: acc.p, s: acc.s, i: acc.i, w: acc.w, t: acc.t } :
      (item.seriesName === 'Primary Backup' ? { win: acc.win, p: valY30(item.value), s: acc.s, i: acc.i, w: acc.w, t: acc.t } :
      (item.seriesName === 'Secondary Backup' ? { win: acc.win, p: acc.p, s: valY30(item.value), i: acc.i, w: acc.w, t: acc.t } :
      (item.seriesName === 'Incremental Backup' ? { win: acc.win, p: acc.p, s: acc.s, i: valY30(item.value), w: acc.w, t: acc.t } :
      (item.seriesName === 'WAL Archive' ? { win: acc.win, p: acc.p, s: acc.s, i: acc.i, w: valY30(item.value), t: acc.t } :
      (item.seriesName === 'Transient Backup' ? { win: acc.win, p: acc.p, s: acc.s, i: acc.i, w: acc.w, t: valY30(item.value) } : acc)))));
  }, { win: null, p: 0, s: 0, i: 0, w: 0, t: 0 }));
};
```
```yaml
tooltip: { trigger: axis, formatter: $fn:tipMerged30, axisPointer: { type: line, snap: true, label: { show: false } } }
axisPointer: { link: [ { xAxisIndex: [0, 1] } ] }
legend: { show: false, bottom: 10, itemGap: 18, data: ["Primary Backup", "Secondary Backup", "Incremental Backup", "WAL Archive", "Transient Backup"] }
grid:
  - { left: 82, right: "10%", top: 42, height: 218, containLabel: false }
  - { left: 82, right: "10%", top: 302, height: 218, containLabel: false }
xAxis:
  - type: value
    gridIndex: 0
    position: bottom
    boundaryGap: false
    min: 0
    max: 31
    interval: 1
    name: Time
    nameLocation: end
    nameGap: 10
    nameTextStyle: { align: left, verticalAlign: top, padding: [8, 0, 0, 0] }
    axisLabel: { formatter: $fn:fmtDay30 }
    axisLine: { show: true, symbol: [none, arrow], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.28, color: "#9ca3af" } }
    minorTick: { show: true, splitNumber: 4, length: 3 }
    minorSplitLine: { show: true, lineStyle: { type: dotted, width: 1, opacity: 0.14, color: "#9ca3af" } }
  - type: category
    gridIndex: 1
    position: top
    boundaryGap: true
    z: 10
    data: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    axisLabel: { show: false }
    axisLine: { show: true, lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, alignWithLabel: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.22, color: "#9ca3af" } }
yAxis:
  - type: value
    gridIndex: 0
    min: 0
    max: 360
    interval: 48
    name: Recovery Window h
    nameLocation: end
    nameRotate: 0
    nameGap: 8
    nameTextStyle: { align: left, verticalAlign: bottom, padding: [0, 0, 8, 4] }
    axisLabel: { formatter: $fn:fmtWin30 }
    axisLine: { show: true, symbol: [none, arrow], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.35, color: "#9ca3af" } }
    minorTick: { show: true, splitNumber: 4, length: 3 }
    minorSplitLine: { show: true, lineStyle: { type: dotted, width: 1, opacity: 0.18, color: "#9ca3af" } }
  - type: value
    gridIndex: 1
    min: 0
    max: 600
    interval: 50
    inverse: true
    z: 10
    name: Storage GB
    nameLocation: end
    nameRotate: 0
    nameGap: 8
    nameTextStyle: { align: left, verticalAlign: top, padding: [10, 0, 0, 4] }
    axisLabel: { formatter: $fn:fmtGbTick30 }
    axisLine: { show: true, symbol: [arrow, none], symbolSize: [10, 14], lineStyle: { width: 1.6, color: "#4b5563" } }
    axisTick: { show: true, length: 6 }
    splitLine: { show: true, lineStyle: { type: dashed, width: 1, opacity: 0.32, color: "#9ca3af" } }
series:
  - { name: Recovery Window, type: line, smooth: false, symbol: none, showSymbol: false, xAxisIndex: 0, yAxisIndex: 0, lineStyle: { width: 3, color: "#f28e2c" }, itemStyle: { color: "#f28e2c" }, data: [[1,24],[2,48],[3,72],[4,96],[5,120],[6,144],[7,168],[8,192],[9,216],[10,240],[11,264],[12,288],[13,312],[14,336],[14,168],[15,192],[16,216],[17,240],[18,264],[19,288],[20,312],[21,336],[21,168],[22,192],[23,216],[24,240],[25,264],[26,288],[27,312],[28,336],[28,168],[29,192],[30,216]], markLine: { symbol: none, label: { show: false }, data: [ { xAxis: 7, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.65 } }, { xAxis: 14, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.65 } }, { xAxis: 21, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.65 } }, { xAxis: 28, lineStyle: { color: "#336791", type: "solid", width: 1.4, opacity: 0.65 } }, { yAxis: 168, label: { show: true, formatter: "lower 7d", position: "end", distance: 12, color: "#2563eb" }, lineStyle: { color: "#2563eb", type: "dashdot", width: 1.4, opacity: 0.72 } }, { yAxis: 336, label: { show: true, formatter: "upper 14d", position: "end", distance: 12, color: "#7c3aed" }, lineStyle: { color: "#7c3aed", type: "dashdot", width: 1.4, opacity: 0.72 } } ] } }
  - { name: Primary Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 16, itemStyle: { color: "#59a14f" }, data: [100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100] }
  - { name: Secondary Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 16, itemStyle: { color: "#4e79a7" }, data: [0,0,0,0,0,0,0,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100,100] }
  - { name: Incremental Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 16, itemStyle: { color: "#76b7b2" }, data: [0,10,20,30,40,50,60,70,80,90,100,110,120,130,70,80,90,100,110,120,130,70,80,90,100,110,120,130,70,80] }
  - { name: WAL Archive, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 16, itemStyle: { color: "#edc949" }, data: [10,20,30,40,50,60,70,80,90,100,110,120,130,140,80,90,100,110,120,130,140,80,90,100,110,120,130,140,80,90] }
  - { name: Transient Backup, type: bar, stack: used, xAxisIndex: 1, yAxisIndex: 1, barWidth: 16, itemStyle: { color: "#9ca3af", opacity: 0.75 }, data: [0,0,0,0,0,0,0,0,0,0,0,0,0,110,0,0,0,0,0,0,110,0,0,0,0,0,0,110,0,0] }
```
{{< /echarts >}}


--------

## Backup Location

By default, Pigsty provides two default backup repository definitions: `local` and `minio` backup repositories.

- `local`: **Default option**, uses local `/pg/backup` directory (symlink to [`pg_fs_backup`](/docs/pgsql/param/#pg_fs_backup): `/data/backups`)
- `minio`: Uses SNSD single-node MinIO cluster (supported by Pigsty, but not enabled by default)

```yaml
pgbackrest_method: local          # Choose backup repository method: `local`, `minio`, or other custom repository
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  local:                          # Default pgbackrest repository using local POSIX filesystem
    path: /pg/backup              # Local backup directory, defaults to `/pg/backup`
    retention_full_type: count    # Retain full backups by count
    retention_full: 2             # Keep 2, up to 3 full backups when using local filesystem repository
  minio:                          # Optional minio repository
    type: s3                      # minio is S3 compatible
    s3_endpoint: sss.pigsty       # minio endpoint domain, defaults to `sss.pigsty`
    s3_region: us-east-1          # minio region, defaults to us-east-1, meaningless for minio
    s3_bucket: pgsql              # minio bucket name, defaults to `pgsql`
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret for pgbackrest
    s3_uri_style: path            # minio uses path-style URIs instead of host-style
    path: /pgbackrest             # minio backup path, defaults to `/pgbackrest`
    storage_port: 9000            # minio port, defaults to 9000
    storage_ca_file: /etc/pki/ca.crt  # minio CA certificate path, defaults to `/etc/pki/ca.crt`
    block: y                      # Enable block-level incremental backup
    bundle: y                     # Bundle small files into a single file
    bundle_limit: 20MiB           # Bundle size limit, recommended 20MiB for object storage
    bundle_size: 128MiB           # Bundle target size, recommended 128MiB for object storage
    cipher_type: aes-256-cbc      # Enable AES encryption for remote backup repository
    cipher_pass: pgBackRest       # AES encryption password, defaults to 'pgBackRest'
    retention_full_type: time     # Retain full backups by time
    retention_full: 14            # Keep full backups from the last 14 days
```
