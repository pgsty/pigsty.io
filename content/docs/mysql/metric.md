---
title: Metrics
weight: 5016
description: Label model, derived-metric dictionary, and raw metric families of the MYSQL module.
icon: fa-solid fa-gauge-high
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/metric]
---

MYSQL metrics come from `mysqld_exporter` (raw metrics, `mysql_` prefix) and vmalert recording rules (`mysql:ins:*` / `mysql:cls:*`). Dashboards and alerts are built on the derived metrics; this page is their dictionary.


--------

## Common Labels

Every metric carries `job=mysql` and the identity labels `cls` / `ins` / `ip` / `topology` (`standalone` or `innodb_cluster`). Instance-level derived metrics keep all identity labels; cluster-level metrics aggregate to `cls` + `topology`.


--------

## Availability

| Metric | Meaning |
|:---|:---|
| `mysql:ins:exporter_up` | Scrape success (transport health) |
| `mysql:ins:up` | MySQL connection probe success (database health) |
| `mysql:ins:uptime` | Instance uptime in seconds |
| `mysql:cls:instances` | Declared instance count |
| `mysql:cls:up` | Online instance count |
| `mysql:cls:health` | Cluster health: 2 healthy / 1 degraded-writable / 0 critical |
{.full-width}

For HA clusters, `mysql:cls:health` combines quorum, single-primary, and full-membership status; for standalones it is `2 × mysql:cls:up`.


--------

## Workload

| Metric | Meaning |
|:---|:---|
| `mysql:ins:qps` | Questions per second |
| `mysql:ins:tps` | Transactions per second (commit + rollback) |
| `mysql:ins:read_qps` / `mysql:ins:write_qps` | Read-class / write-class command rate |
| `mysql:ins:row_ops` | InnoDB row operations (read/insert/update/delete dimensions) |
| `mysql:ins:statement_rate` | Performance-schema statement rate |
| `mysql:ins:statement_latency` | Mean statement latency (seconds) |
| `mysql:ins:rows_examined_per_query` | Average rows examined per query |
| `mysql:ins:statement_errors` | Statement error rate |
| `mysql:ins:slow_queries` / `mysql:ins:slow_query_ratio` | Slow query rate and ratio |
| `mysql:ins:no_index_queries` | Rate of queries using no index |
{.full-width}


--------

## Connections and Sessions

| Metric | Meaning |
|:---|:---|
| `mysql:ins:connections` | Current connections (Threads_connected) |
| `mysql:ins:connection_usage` | Connections / `max_connections` |
| `mysql:ins:connection_rate` | New connection rate |
| `mysql:ins:threads_running` / `mysql:ins:threads_cached` | Active / cached threads |
| `mysql:ins:aborted_connects` / `mysql:ins:aborted_clients` | Failed handshakes / abnormal disconnects |
| `mysql:ins:connection_errors` | Total connection error rate |
| `mysql:ins:rx_bytes` / `mysql:ins:tx_bytes` | Network receive / transmit rate |
{.full-width}


--------

## Temp Tables, Scans, and Caches

| Metric | Meaning |
|:---|:---|
| `mysql:ins:tmp_tables` / `mysql:ins:tmp_disk_tables` | In-memory / on-disk temp table creation rate |
| `mysql:ins:tmp_disk_ratio` | Share of temp tables spilling to disk |
| `mysql:ins:full_joins` / `mysql:ins:full_scans` | Index-less join / full scan rate |
| `mysql:ins:sort_merge_passes` | Sort merge passes (undersized sort buffer signal) |
| `mysql:ins:table_open_cache_hit_ratio` | Table open cache hit ratio |
| `mysql:ins:open_files_usage` | Open file usage ratio |
{.full-width}


--------

## InnoDB

| Metric | Meaning |
|:---|:---|
| `mysql:ins:buffer_pool_hit_ratio` | Buffer pool hit ratio |
| `mysql:ins:buffer_pool_usage` / `mysql:ins:buffer_pool_dirty_ratio` | Buffer pool usage / dirty page ratio |
| `mysql:ins:buffer_pool_waits` | Free-page wait rate (memory pressure signal) |
| `mysql:ins:data_read_bytes` / `mysql:ins:data_write_bytes` | Data file read / write throughput |
| `mysql:ins:data_reads` / `mysql:ins:data_writes` / `mysql:ins:data_fsyncs` | Data file I/O and fsync rates |
| `mysql:ins:redo_bytes` | Redo write throughput |
| `mysql:ins:redo_utilization` | Redo capacity utilization (checkpoint lag) |
| `mysql:ins:log_waits` | Redo buffer wait rate |
| `mysql:ins:row_lock_waits` / `mysql:ins:row_lock_time` | Row lock wait rate / time |
| `mysql:ins:deadlocks` | Deadlock rate |
| `mysql:ins:history_list_length` | Purge lag (history list length) |
| `mysql:ins:binlog_bytes` | Total on-disk binlog size (bytes) |
{.full-width}


--------

## Group Replication

Instance-level membership flags (value 1 or absent — the series does not exist when the condition is false, which is why alerts use `unless`):

| Metric | Meaning |
|:---|:---|
| `mysql:ins:gr_member` | Instance is in any MGR member state |
| `mysql:ins:gr_online` | Instance is ONLINE |
| `mysql:ins:gr_primary` / `mysql:ins:gr_secondary` | Instance is the ONLINE primary / a secondary |
{.full-width}

Cluster-level quorum and topology:

| Metric | Meaning |
|:---|:---|
| `mysql:cls:gr_online_members` | ONLINE member count |
| `mysql:cls:gr_primary_members` | ONLINE primary count |
| `mysql:cls:gr_quorum` | Majority held (0/1) |
| `mysql:cls:gr_single_primary` | Exactly one primary (0/1) |
{.full-width}

Replication pipeline (certification and apply):

| Metric | Meaning |
|:---|:---|
| `mysql:ins:gr_certifier_queue` / `mysql:ins:gr_applier_queue` | Transactions backed up in certification / applier queues |
| `mysql:ins:gr_certifier_queue_ratio` / `mysql:ins:gr_applier_queue_ratio` | Queue depth relative to flow-control thresholds |
| `mysql:ins:gr_checked_rate` / `mysql:ins:gr_applied_rate` | Certification / apply throughput |
| `mysql:ins:gr_conflict_rate` | Certification conflict rate (should be 0 under single-primary) |
{.full-width}


--------

## Raw Metric Families

For anything not covered by derived metrics, query the exporter's raw families:

| Prefix | Content |
|:---|:---|
| `mysql_up` / `up` | Database probe / scrape status |
| `mysql_global_status_*` | Full `SHOW GLOBAL STATUS` counters |
| `mysql_global_variables_*` | Key system variables (e.g. `max_connections`) |
| `mysql_perf_schema_events_statements_*` | Statement digests (top 50 by digest) |
| `mysql_perf_schema_table_io_waits_*` / `..._index_io_waits_*` | Table / index I/O waits |
| `mysql_perf_schema_replication_group_member_info` | MGR membership (`member_state` / `member_role` dimensions) |
| `mysql_perf_schema_transactions_*` / `mysql_perf_schema_conflicts_detected_total` | MGR certification, applier queues, and conflicts |
| `mysql_binlog_*` | Binlog file count and size |
| `mysql_info_schema_processlist_*` | Session distribution by state |
{.full-width}

Browse the complete list with the `mysql_` prefix in VictoriaMetrics vmui (`/select/vmui`).
