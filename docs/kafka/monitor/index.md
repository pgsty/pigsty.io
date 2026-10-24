# Monitoring

> Kafka metrics collection, Grafana dashboards, log queries, and alerting rules.

---

LLMS index: [llms.txt](/llms.txt)

---

Kafka monitoring combines metrics, logs, dashboards, and alerts. It covers JVM internals and the Kafka protocol view. You can inspect partitions, ISR, and consumer lag together with JVM state, request queues, and KRaft controller health.


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

On each INFRA node, the role creates one discovery file per instance. JMX and any selected protocol target share that file and `kafka` scrape job:

```text
/infra/targets/kafka/<kafka_instance>.yml
```

Single-broker clusters run one protocol exporter; larger clusters run at most two. Controllers register only JMX. Controllers and unselected brokers have no protocol target by design. Full runs refresh target files for current placement. `kafka-rm.yml` deregistration removes instance targets.


--------

## Label Model

Both targets use `job=kafka`. JMX has a `role` label; protocol targets do not.

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

Protocol targets carry `cls`, `ins`, `ip`, and `instance` (`10.10.10.11:9308`), without `role` or `node_id`. vmagent-side rules distinguish availability by those labels. `kafka_up` is `up{job="kafka",role=~".+"}`. `kafka_exporter_up` is `up{job="kafka",role=""}`.

Each exporter queries the whole cluster through a broker. Both can return identical topic, partition, and consumer-group state. Recording rules deduplicate exporters before aggregating cluster rates. In `scram` mode, the role generates exporter TLS/SCRAM settings from its monitoring identity.


--------

## Grafana Dashboards

Pigsty ships four complementary dashboards:

### [Kafka Overview](https://demo.pigsty.cc/ui/d/kafka-overview)

`cls=All` shows all Kafka clusters. Selecting one `cls` changes the same panels to that cluster's overview.

Main content:

- Inventory of clusters, brokers, topics, partitions, and consumer groups
- Broker availability, exporter health, and cluster workload
- Leaderless, under-replicated, ISR deficit, and non-preferred replica
- Topic offset progress, consumer commit progress, and total lag
- Consumer group members, lag ranking, and topic/group drill-down
- Kafka/exporter log volume, firing alerts, and log detail

Common variables: `cls`, `members`, `topic`, `group`, `topk`.


### [Kafka Instance](https://demo.pigsty.cc/ui/d/kafka-instance)

Use `ins` to select a broker or controller JVM, including controller-only nodes. The dashboard also shows related host resources.

Main content:

- Instance identity, role, JMX availability, and scrape quality
- JVM heap, GC, threads, buffer pool, CPU, FD, and uptime
- Broker throughput, replication state, request errors/latency/queues, and handler/network idle
- KRaft member state, metadata log, controller health, and event latency
- Node CPU/memory, disk I/O, network, filesystem, and Kafka logs

Common variables: `cls`, `ins`, `ip`.


### [Kafka Topic](https://demo.pigsty.cc/ui/d/kafka-topic)

Use `cls` and `topic` to select a logical topic and inspect its topic/partition protocol state.

Main content:

- Topic and partition inventory, leader, replicas, ISR, and preferred leader
- Current offset, retention span, and message append rate
- Leaderless, ISR deficit, and non-preferred replica
- Associated consumer groups, commit progress, and lag

Common variables: `cls`, `topic`, `topk`.


### [Kafka Consumer](https://demo.pigsty.cc/ui/d/kafka-consumer)

Use `cls` and `group` to inspect consumer-group members, committed offsets, progress, and backlog.

Main content:

- Consumer group inventory and member count
- Committed offsets by group/topic/partition
- Commit rate, total lag, maximum partition lag, and backlog trend
- Drill-down from group to topic/partition

Common variables: `cls`, `group`, `topic`, `topk`.


--------

## Choosing a Dashboard

| Question | Preferred Dashboard | Drill-Down Path |
|:---|:---|:---|
| Which cluster or topic is misbehaving? | Kafka Overview | Select `cls`, `topic`, `group` |
| Why is a consumer group falling behind? | Kafka Consumer | Group → Topic → Partition offset |
| Is a particular topic/partition unhealthy? | Kafka Topic | Topic → Partition → Consumer |
| Is a particular broker overloaded? | Kafka Instance | Request path → JVM → Node resources |
| Is the KRaft controller healthy? | Kafka Instance | KRaft metadata plane → Controller health |
| Are there leaderless/URP/ISR problems? | Kafka Overview | Cluster → Kafka Instance / Topic |
| Is the exporter missing data, or is Kafka itself unhealthy? | Overview + Instance | Compare `kafka_exporter_up` with `kafka_up` |
{.full-width}


--------

## Recording Rules

The Kafka rule file lives at `/infra/rules/kafka.yml`. The main recorded metrics are:

| Metric | Meaning |
|:---|:---|
| `kafka:topic:msg_rate1m/5m` | 1m/5m forward change rate of a topic's current offset |
| `kafka:cls:msg_rate1m/5m` | Deduplicated cluster message append rate |
| `kafka:csg_topic:commit_rate5m` | 5-minute commit progress rate per consumer group/topic |
| `kafka:csg_topic:lag` | Total lag per consumer group/topic |
| `kafka:csg:lag` | Total lag of a consumer group across topics |
| `kafka:cls:lag` | Total lag of all consumer groups in a Kafka cluster |
| `kafka:ins:jvm_heap_used_ratio` | Kafka JVM heap usage ratio |
| `kafka:ins:jvm_cpu_cores` | Number of CPU cores consumed by the Kafka JVM |
| `kafka:ins:load` / `kafka:cls:load` | Saturation of the busiest request thread pool, and the cluster average |
| `kafka:ins:jvm_gc_time_rate5m` | 5-minute GC time rate |
| `kafka:ins:messages_in_rate5m` | Broker 5-minute message receive rate |
| `kafka:ins:bytes_in_rate5m` | Broker 5-minute inbound client byte rate |
| `kafka:ins:bytes_out_rate5m` | Broker 5-minute outbound client byte rate |
| `kafka:ins:request_error_rate5m` | Broker 5-minute request error rate |
| `kafka:cls:under_replicated_partitions` | Total under-replicated partitions in the cluster |
| `kafka:cls:offline_partitions` | Offline partitions in the cluster |
{.full-width}

Offset-change rates measure progress, not client requests. Truncation, offset rollback, and exporter restarts can briefly produce negative changes. Rules use `clamp_min(..., 0)` to retain forward progress only.


--------

## Alert Rules

| Alert | Condition | Duration | Severity | Preferred Drill-Down |
|:---|:---|:---:|:---:|:---|
| `KafkaDown` | `up{job="kafka",role=~".+"} < 1` | 1m | CRIT | Kafka Instance / `ins` |
| `KafkaExporterDown` | `up{job="kafka",role=""} < 1` | 1m | CRIT | Kafka Instance / `ins` |
| `KafkaJmxScrapeError` | `jmx_scrape_error{job="kafka"} > 0` | 3m | WARN | Kafka Instance / JMX Collector |
| `KafkaJvmHeapHigh` | Heap usage > 90% | 15m | WARN | Kafka Instance / JVM Memory |
| `KafkaJvmDeadlock` | JVM deadlocked threads > 0 | 1m | CRIT | Kafka Instance / JVM Threads |
| `KafkaRequestHandlerSaturated` | Handler idle < 10% | 10m | WARN | Kafka Instance / Request Path |
| `KafkaNetworkProcessorSaturated` | Network processor idle < 10% | 10m | WARN | Kafka Instance / Request Path |
| `KafkaUnderReplicatedPartitions` | URP > 0 | 5m | WARN | Kafka Instance / Replication |
| `KafkaUnderMinISR` | Under min ISR > 0 | 1m | CRIT | Kafka Instance / Replication |
| `KafkaOfflineLogDirectory` | Offline log directory > 0 | 1m | CRIT | Kafka Instance / Disk Pressure |
| `KafkaOfflinePartitions` | Controller offline partitions > 0 | 1m | CRIT | Kafka Overview / `cls` |
| `KafkaControllerCountMismatch` | Active controller count is not 1 | 1m | CRIT | Kafka Overview / `cls` |
| `KafkaFencedBrokers` | Fenced brokers > 0 | 5m | WARN | Kafka Overview / `cls` |
| `KafkaUncleanLeaderElection` | An unclean leader election in the last 5 minutes | immediate | CRIT | Kafka Overview / `cls` |
| `KafkaConsumerLagGrowing` | Group lag > 100000 and still growing after 30m | 30m | WARN | Kafka Consumer / `group` |
{.full-width}

An unclean leader election can indicate data loss. Immediately preserve controller and broker logs. Identify affected topics and replicas before choosing recovery actions.


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

Kafka writes stdout and stderr to Journald. Vector forwards these records to VictoriaLogs under `job:syslog`.

```text
job:syslog unit:kafka
job:syslog app:kafka
job:syslog unit:kafka_exporter
ip:10.10.10.11 job:syslog (unit:kafka OR app:kafka)
```

Kafka Instance log panels use similar queries and show time, level, Systemd unit, and message. Compare the same time window across logs, KRaft, ISR, request queues, GC, disk I/O, and network metrics.


--------

## Verifying the Monitoring Chain

Verify the raw endpoints on a Kafka node:

```bash
curl -fsS http://<kafka-ip>:9404/metrics | grep '^jmx_scrape_error'
curl -fsS http://127.0.0.1:9308/metrics | grep '^kafka_brokers'
```

Check discovery files on an INFRA node. Each instance has one file; selected nodes include both JMX and protocol targets:

```bash
ls -l /infra/targets/kafka/
cat /infra/targets/kafka/kf-main-1.yml
```

Query `up{job="kafka"}` in VictoriaMetrics, or recording metrics `kafka_up` and `kafka_exporter_up`. Use native Prometheus `up` for endpoint availability; custom exporter samples can remain briefly after failed scrapes. If raw endpoints work but recording metrics are absent, check discovery files, target state, network, rule loading, and labels in order. If JMX HTTP works but `jmx_scrape_error` is `1`, inspect Kafka logs and MBean matching in `/etc/kafka/jmx_exporter.yml`.

For complete metric semantics, see [Metric Definitions](/docs/kafka/metric).
