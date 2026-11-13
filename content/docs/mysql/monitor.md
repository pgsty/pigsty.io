---
title: Monitoring
weight: 5015
description: MySQL metric collection, Grafana dashboards, alert rules, and log queries.
icon: fa-solid fa-chart-line
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/monitor]
---

MYSQL uses Pigsty's observability stack: `mysqld_exporter` and `node_exporter` textfiles feed VictoriaMetrics, Journald/Vector send error logs to VictoriaLogs, Grafana provides 5 dashboards, and vmalert loads **70 recording rules** and **8 actionable alerts**.

--------

## Collection Architecture

Each MySQL node runs `mysqld_exporter` on `9104`, collecting server and MGR metrics with the least-privilege `dbuser_monitor@'127.0.0.1'` account. `mysql-backup` also writes the local physical backup timestamp and size to `/var/lib/node_exporter/textfile/mysql.prom`; `node_exporter` reports these, and rules join them to cluster metrics by `ip`. Deployment creates file-discovery targets on Infra nodes:

```text
/infra/targets/mysql/<instance>.yml     # e.g. my-test-1.yml
```

The VictoriaMetrics `mysql` job reads this directory. `mysql_exporter_enabled: false` empties the target list. Only `mysql-rm.yml` removes the file.

Collectors cover global status/variables, binlog size, InnoDB, process lists, top-50 statement digests, table/index I/O waits, MGR membership, and replication statistics.


--------

## Label Model

All MySQL metrics carry a consistent label set:

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Scrape job | `mysql` |
| `cls` | Cluster name | `my-test` |
| `ins` | Instance name | `my-test-1` |
| `ip` | Member address | `10.10.10.11` |
| `topology` | Topology type | `innodb_cluster` / `standalone` |
{.full-width}

Derived names use `mysql:ins:*` for instances and `mysql:cls:*` for clusters. See [Metrics](/docs/mysql/metric).


--------

## Grafana Dashboards

| Dashboard | Purpose |
|:---|:---|
| [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) | Fleet view: cluster inventory, health, QPS/TPS, active alerts, instance list |
| [MySQL Cluster](https://demo.pigsty.io/ui/d/mysql-cluster) | One cluster: member states, workload, node resources, cluster logs |
| [MySQL Instance](https://demo.pigsty.io/ui/d/mysql-instance) | One instance: connections, statements, InnoDB, temp tables, locks, logs |
| [MySQL Group Replication](https://demo.pigsty.io/ui/d/mysql-replication) | MGR deep dive: roles, certification/applier queues, flow control, read-only safety, GR logs |
| [MySQL Alert](https://demo.pigsty.io/ui/d/mysql-alert) | Alert summary and key platform logs |
{.full-width}

`mysql:cls:health` reports **2 healthy, 1 degraded but writable, or 0 critical or unwritable**. Overview's Healthy Clusters stat and Cluster Health timeline use it.

Group Replication panels apply only to `innodb_cluster`. No data is expected for standalone clusters.


--------

## Alert Rules

[`files/victoria/rules/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/files/victoria/rules/mysql.yml) provides **8 focused, actionable alerts**. Diagnostic signals such as slow queries, temporary tables, buffer pool hit rate, and redo utilization remain on Grafana dashboards rather than generating noisy alerts:

| Alert | Severity | Duration | Expression and Response |
|:---|:---:|:---:|:---|
| `MySQLDown` | `CRIT` | `1m` | `mysql:ins:exporter_up == 1 and on (...) mysql:ins:up < 1`: exporter is up but cannot connect to `mysqld` |
| `MySQLExporterDown` | `WARN` | `2m` | `mysql:ins:exporter_up < 1`: cannot scrape `mysqld_exporter` |
| `MySQLClusterDown` | `CRIT` | `1m` | `mysql:cls:health{topology="innodb_cluster"} < 1`: no majority or no unique online primary; rerun `mysql.yml` after all hosts are reachable |
| `MySQLClusterDegraded` | `WARN` | `5m` | `mysql:cls:health{topology="innodb_cluster"} == 1`: writable but a member is offline; rerun `mysql.yml` or replace at the same address |
| `MySQLReplicationLag` | `WARN` | `10m` | `mysql:ins:gr_certifier_queue > 1000 or mysql:ins:gr_applier_queue > 1000`: MGR certification/apply backlog exceeds 1000 transactions |
| `MySQLConnUsageHigh` | `WARN` | `5m` | `mysql:ins:connection_usage > 0.80`: connections exceed 80% of `max_connections` |
| `MySQLHistoryListLarge` | `WARN` | `15m` | `mysql:ins:history_list_length > 1000000`: long transactions block undo purge, with over one million history entries |
| `MySQLBackupStale` | `WARN` | `5m` | `time() - mysql:cls:backup_time > 30 * 3600`: no successful local full backup across the cluster for 30 hours, or the first backup failed |
{.full-width .wide .expand}

Observed behavior: automatic primary failover (about 20 seconds) briefly enters pending without firing a false alarm. A real complete outage or offline member triggers `MySQLClusterDown` or `MySQLClusterDegraded` after its duration window.

--------

## Log Queries

MySQL writes errors to `/var/log/mysql/error.log` and through syslog → Journald → Vector → VictoriaLogs. `app=mysqld-<instance>` labels support dashboard panels and LogsQL queries:

```bash
# Recent errors from one instance
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=app:mysqld-my-test-1 level:err _time:1h'

# All MySQL-related logs for a cluster, including backup runs
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=job:syslog cls:my-test (app:~"mysqld-" OR unit:mysql-backup) _time:1h | limit 100'
```

Log `cls` uses the **node** cluster, `node_cluster`. Match it to `mysql_cluster`, as examples do, to align metric and log labels.

Known boundaries:

- **Slow queries:** `slow.log`, with a 1s threshold, remains local. Inspect it on the instance or use statement digests such as `mysql:ins:statement_latency`.
- **Router runtime logs:** `/var/log/mysqlrouter/` also remains local.


--------

## Verify the Pipeline

Verify every pipeline stage after deployment:

```bash
# Exporter itself
curl -s http://<member>:9104/metrics | grep -E '^mysql_up '

# VictoriaMetrics scrape and recording rules
curl -s 'http://<infra>:8428/api/v1/query?query=mysql_up'
curl -s 'http://<infra>:8428/api/v1/query?query=mysql:cls:health'

# vmalert rule groups (expect mysql-rules and mysql-alerts)
curl -s 'http://<infra>:8880/api/v1/rules' | grep -o '"name":"mysql-[a-z]*"'

# Log ingestion
curl -s 'http://<infra>:9428/select/logsql/query' -d 'query=app:~"mysqld-" _time:1h | stats by (app) count()'
```
