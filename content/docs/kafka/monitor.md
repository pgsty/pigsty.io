---
title: Monitoring
weight: 4906
description: Kafka metrics collection, Grafana dashboards, log queries, and alerting rules.
icon: fa-solid fa-chart-line
module: [KAFKA]
categories: [Reference]
aliases: [/docs/pilot/kafka/monitor]
---


Pigsty gives the KAFKA module a unified observability stack that combines metrics, logs, dashboards, and alerts. Monitoring covers both the Kafka JVM internals and the Kafka protocol view, so you never end up seeing only that the process is alive without visibility into partitions, ISR, and consumer lag, nor seeing only cluster metadata without visibility into the JVM, request queues, and KRaft controller health.


--------

## Scrape Architecture

The KAFKA module uses two complementary exporters:

| Scrape Surface | Service / Method | Job | Node Scope | Main Content |
|:---|:---|:---|:---|:---|
| JVM and Kafka internals | JMX Exporter Java agent `:9404` | `kafka` (with `role` label) | All Kafka nodes | JVM, broker throughput, replication, request path, KRaft, controller |
| Kafka protocol view | `kafka_exporter :9308` | `kafka` (no `role` label) | The one or two broker-capable nodes with the smallest `kafka_seq` | Broker, topic, partition, offset, consumer group, lag |
| Host resources | node_exporter | `node` | Managed nodes | CPU, memory, disk, network, filesystem |
| Logs | Journald → Vector → VictoriaLogs | `syslog` | All Kafka nodes | Structured, searchable Kafka and exporter logs |
{.full-width}

On each Infra node, the role generates one file-discovery target per instance. The JMX target and the protocol exporter target (on the selected nodes) both live in the same file, under the same `kafka` scrape job:

```text
/infra/targets/kafka/<kafka_instance>.yml
```

A single-broker cluster runs only one protocol exporter; a multi-broker cluster runs at most two. Controller-only nodes register only the JMX target; brokers that were not selected and controller-only nodes have no protocol exporter target, which is expected behavior. The target file is refreshed to match the current placement on every full run; deletion of an instance target is handled by the deregistration step in `kafka-rm.yml`.


--------

## Label Model

Both target types are registered under the same `job=kafka` scrape job, and are distinguished by the presence or absence of the `role` label.

### JMX Target

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Scrape job | `kafka` |
| `cls` | Kafka cluster name | `kf-main` |
| `ins` | Kafka instance name | `kf-main-1` |
| `ip` | Inventory host address | `10.10.10.11` |
| `instance` | JMX scrape endpoint | `10.10.10.11:9404` |
| `role` | Pigsty Kafka role | `combined`, `broker`, or `controller` |
| `node_id` | KRaft node ID | `1` |
{.full-width}

### Protocol Exporter Target

A protocol exporter target carries only `cls`, `ins`, `ip`, and `instance` (`10.10.10.11:9308`); it has no `role` or `node_id` labels. The recording rules on the vmagent side use this to distinguish the two availability types: `kafka_up` is `up{job="kafka",role=~".+"}`, and `kafka_exporter_up` is `up{job="kafka",role=""}`.

The exporter queries the entire Kafka cluster through a broker, so the two exporters of the same cluster may return an identical view of topics, partitions, and consumer groups. The cluster-level recording rules first deduplicate across exporter instances, then aggregate the logical cluster rates. In `scram` mode, the TLS/SCRAM parameters the exporter needs to connect to Kafka are generated automatically from the role's own monitoring identity.


--------

## Grafana Dashboards

Pigsty ships three complementary dashboards:

### [Kafka Overview](https://demo.pigsty.cc/ui/d/kafka-overview)

Cluster and global overview. `cls=All` is the overview across all Kafka clusters; once you select a specific `cls`, the same dashboard becomes the overview for that Kafka cluster, rather than a separate set of panels.

Main content:

- Inventory of clusters, brokers, topics, partitions, and consumer groups
- Broker availability, exporter health, and cluster workload
- Leaderless, under-replicated, ISR deficit, and non-preferred replica
- Topic offset progress, consumer commit progress, and total lag
- Consumer group members, lag ranking, and topic/group drill-down
- Kafka/exporter log volume, firing alerts, and log detail

Common variables: `cls`, `members`, `topic`, `group`, `topk`.


### [Kafka Instance](https://demo.pigsty.cc/ui/d/kafka-instance)

Use the `ins` variable to select a broker instance running `kafka_exporter`, and view cluster metadata and consumer state from the protocol perspective, correlated with host resources.

Main content:

- Exporter availability, identity, runtime, and scrape cost
- Broker directory, topic inventory, partition topology
- Leader distribution, ISR deficit, leaderless, and non-preferred
- Topic offset span, append/commit progress
- Consumer group inventory, members, offsets, and lag
- Node CPU/memory, disk I/O, network, filesystem, and logs

Common variables: `ins`, `cls`, `ip`, `topic`, `consumergroup`, `topk`.


### [Kafka Node](https://demo.pigsty.cc/ui/d/kafka-node)

Use the `ins` variable to select any Kafka JVM, including controller-only nodes, and view JMX, broker, and KRaft internal state.

Main content:

- JVM heap, GC, threads, buffer pool, CPU, FD, and uptime
- Broker message/network/replication throughput and ISR churn
- Request rate, errors, P95/P99 latency, queues, and handler/network idle
- Under-replicated, under min ISR, offline replica/log directory
- KRaft member state, metadata log, propagation lag, and snapshot
- Active controller, fenced broker, offline partition, and event latency
- JMX scrape quality, host pressure, and Kafka logs

Common variables: `cls`, `ins`, `ip`.


--------

## Choosing a Dashboard

| Question | Preferred Dashboard | Drill-Down Path |
|:---|:---|:---|
| Which cluster or topic is misbehaving? | Kafka Overview | Select `cls`, `topic`, `group` |
| Why is a consumer group falling behind? | Kafka Instance | Group → Topic → Partition offset |
| Is a particular broker overloaded? | Kafka Node | Request path → JVM → Node resources |
| Is the KRaft controller healthy? | Kafka Node | KRaft metadata plane → Controller health |
| Are there leaderless/URP/ISR problems? | Kafka Overview | Cluster → Kafka Node |
| Is the exporter missing data, or is Kafka itself unhealthy? | Instance + Node | Compare `kafka_exporter_up` with `kafka_up` |
{.full-width}


--------

## Recording Rules

The Kafka rule file lives at `/infra/rules/kafka.yml`. The main recorded metrics are:

| Metric | Meaning |
|:---|:---|
| `kafka:topic:msg_rate1m/5m` | 1m/5m forward change rate of a topic's current offset |
| `kafka:ins:msg_rate1m/5m` | Message append rate as seen by a single exporter |
| `kafka:cls:msg_rate1m/5m` | Deduplicated cluster message append rate |
| `kafka:topic:csg_rate1m/5m` | 1m/5m forward change rate of a consumer group's commit offset |
| `kafka:ins:csg_rate1m/5m` | Consumer commit rate as seen by a single exporter |
| `kafka:cls:csg_rate1m/5m` | Deduplicated cluster consumer commit rate |
| `kafka:ins:jvm_heap_used_ratio` | Kafka JVM heap usage ratio |
| `kafka:ins:jvm_cpu_cores` | Number of CPU cores consumed by the Kafka JVM |
| `kafka:ins:jvm_gc_time_rate5m` | 5-minute GC time rate |
| `kafka:ins:messages_in_rate5m` | Broker 5-minute message receive rate |
| `kafka:ins:bytes_in_rate5m` | Broker 5-minute inbound client byte rate |
| `kafka:ins:bytes_out_rate5m` | Broker 5-minute outbound client byte rate |
{.full-width}

Rates derived from offset changes represent progress, not client request counts. Log truncation, offset rollback, or an exporter restart can produce a transient negative change; the rules use `clamp_min(..., 0)` to keep only forward progress.


--------

## Alert Rules

| Alert | Condition | Duration | Severity | Preferred Drill-Down |
|:---|:---|:---:|:---:|:---|
| `KafkaDown` | `up{job="kafka"} < 1` | 1m | CRIT | Kafka Node / `ins` |
| `KafkaExporterDown` | `up{job="kafka_exporter"} < 1` | 1m | CRIT | Kafka Instance / `ins` |
| `KafkaJmxScrapeError` | `jmx_scrape_error > 0` | 3m | WARN | Kafka Node / JMX Collector |
| `KafkaJvmHeapHigh` | Heap usage > 90% | 15m | WARN | Kafka Node / JVM Memory |
| `KafkaJvmDeadlock` | JVM deadlocked threads > 0 | 1m | CRIT | Kafka Node / JVM Threads |
| `KafkaRequestHandlerSaturated` | Handler idle < 10% | 10m | WARN | Kafka Node / Request Path |
| `KafkaUnderReplicatedPartitions` | URP > 0 | 5m | WARN | Kafka Node / Replication |
| `KafkaUnderMinISR` | Under min ISR > 0 | 1m | CRIT | Kafka Node / Replication |
| `KafkaOfflineLogDirectory` | Offline log directory > 0 | 1m | CRIT | Kafka Node / Disk Pressure |
| `KafkaOfflinePartitions` | Controller offline partitions > 0 | 1m | CRIT | Kafka Node / `cls` |
| `KafkaControllerCountMismatch` | Active controller count is not 1 | 1m | CRIT | Kafka Node / `cls` |
| `KafkaFencedBrokers` | Fenced brokers > 0 | 5m | WARN | Kafka Node / `cls` |
| `KafkaUncleanLeaderElection` | An unclean leader election in the last 5 minutes | immediate | CRIT | Kafka Node / `cls` |
{.full-width}

An unclean leader election can mean data loss. Immediately preserve the controller/broker logs, confirm the affected topics and replicas, and only then decide on a recovery action.


--------

## Common PromQL

Check scrape targets:

```promql
kafka_up
kafka_exporter_up
up{job="kafka"}
```

Check the replication health of a cluster:

```promql
sum by (cls) (kafka_server_replica_manager_under_replicated_partitions{job="kafka"})
sum by (cls) (kafka_server_replica_manager_under_min_isr_partitions{job="kafka"})
max by (cls) (kafka_controller_offline_partition_count{job="kafka"})
```

Check consumer lag:

```promql
topk(20, kafka_consumergroup_lag_sum{cls="kf-main"})
```

Check request saturation and latency:

```promql
kafka_server_request_handler_idle_ratio{job="kafka",cls="kf-main"}
max by (ins,request,quantile) (
  kafka_network_request_total_time_seconds{job="kafka",cls="kf-main",quantile=~"0.95|0.99"}
)
```


--------

## Log Queries

Kafka services write stdout and stderr to Journald; the node's Vector Journald source forwards them to VictoriaLogs, all under `job:syslog`.

```text
job:syslog unit:kafka
job:syslog app:kafka
job:syslog unit:kafka_exporter
ip:10.10.10.11 job:syslog (unit:kafka OR app:kafka)
```

The log panel on the Kafka Node dashboard uses similar queries and shows time, level, systemd unit, and message. When diagnosing, align the logs with the KRaft, ISR, request queue, GC, disk I/O, and network metrics from the same time window.


--------

## Verifying the Monitoring Chain

Verify the raw endpoints on a Kafka node:

```bash
curl -fsS http://<kafka-ip>:9404/metrics | grep '^jmx_scrape_error'
curl -fsS http://127.0.0.1:9308/metrics | grep '^kafka_brokers'
```

Check file discovery on an Infra node (one file per instance; the file for a selected node contains both the JMX and the protocol exporter targets):

```bash
ls -l /infra/targets/kafka/
cat /infra/targets/kafka/kf-main-1.yml
```

Then query `up{job="kafka"}` in VictoriaMetrics (or the recorded metrics `kafka_up` and `kafka_exporter_up`). After a failed scrape, custom exporter metrics may briefly retain stale samples, so endpoint liveness should be judged by Prometheus's native `up`. If the raw endpoints are fine but the recorded metrics are missing, check file discovery, the VictoriaMetrics target, network reachability, rule loading, and labels, in that order. If the JMX HTTP endpoint is fine but `jmx_scrape_error` is `1`, check the Kafka logs and the MBean matching in `/etc/kafka/jmx_exporter.yml`.

For complete metric semantics, see [Metric Definitions](/docs/kafka/metric).
