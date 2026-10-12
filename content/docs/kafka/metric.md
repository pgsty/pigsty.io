---
title: Metrics
weight: 4907
description: Kafka JMX, protocol exporter, and recording rule metrics dictionary.
icon: fa-solid fa-gauge-high
module: [KAFKA]
categories: [Reference]
aliases: [/docs/pilot/kafka/metric]
---


Both metric sources use `job=kafka`. JMX targets have a `role` label and collect each JVM's internal state. Protocol targets lack `role` and collect logical cluster, topic, partition, and consumer-group state through Kafka protocol. Protocol exporters run on the one or two broker-capable nodes with the lowest `kafka_seq`. Single-broker clusters run one.

JMX uses an allowlist for standard JVM and selected broker, replication, request-path, and KRaft metrics. It excludes per-client and per-partition MBeans to limit series counts. Protocol exporters provide partition details.


--------

## Common Labels

| Metric Source | Common Labels |
|:---|:---|
| JMX target (`:9404`) | `job`, `cls`, `ins`, `ip`, `instance`, `role`, `node_id` |
| Protocol exporter target (`:9308`) | `job`, `cls`, `ins`, `ip`, `instance` |
{.full-width}

Both target types use `job` value `kafka`. Presence of the `role` label distinguishes JMX from protocol targets.

Some metrics also carry dimensions such as `topic`, `partition`, `broker`, `consumergroup`, `request`, `version`, `error`, `quantile`, `state`, or `operation`.


--------

## Availability and Scrape Metrics

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_up` | Gauge/Recording | JMX target scrape availability: `up{job="kafka",role=~".+"}` |
| `kafka_exporter_up` | Gauge/Recording | Protocol exporter target scrape availability: `up{job="kafka",role=""}` |
| `up` | Gauge | VictoriaMetrics scrape status for the raw target |
| `jmx_scrape_error` | Gauge | Whether the JMX Exporter's last scrape errored; healthy value is `0` |
| `jmx_scrape_duration_seconds` | Gauge | JMX scrape duration |
| `jmx_scrape_cached_beans` | Gauge | Number of MBeans cached by the JMX Exporter |
| `scrape_duration_seconds` | Gauge | Time VictoriaMetrics took to scrape the exporter |
| `scrape_samples_scraped` | Gauge | Number of samples in this scrape |
{.full-width}


--------

## Protocol Exporter Metrics

Protocol exporters report the same logical cluster state. Before cluster aggregation, deduplicate according to metric meaning. Do not simply sum every `ins`.

### Broker and Topic

| Metric | Type | Key Dimensions | Meaning |
|:---|:---:|:---|:---|
| `kafka_brokers` | Gauge | Cluster | Number of brokers discovered by the exporter |
| `kafka_broker_info` | Gauge | `id`, `address`, etc. | Broker info, carried on labels with value `1` |
| `kafka_topic_partitions` | Gauge | `topic` | Number of partitions in a topic |
| `kafka_topic_partition_current_offset` | Gauge | `topic`, `partition` | Partition's current log end offset |
| `kafka_topic_partition_oldest_offset` | Gauge | `topic`, `partition` | Partition's current earliest readable offset |
| `kafka_topic_partition_leader` | Gauge | `topic`, `partition` | Current leader broker ID; used to spot anomalies when there is no leader |
| `kafka_topic_partition_replicas` | Gauge | `topic`, `partition`, `broker` | The replica set assigned to a partition |
| `kafka_topic_partition_in_sync_replica` | Gauge | `topic`, `partition`, `broker` | Current ISR members |
| `kafka_topic_partition_under_replicated_partition` | Gauge | `topic`, `partition` | Whether the partition is under-replicated |
| `kafka_topic_partition_leader_is_preferred` | Gauge | `topic`, `partition` | Whether the current leader is the preferred replica |
{.full-width}

`current_offset - oldest_offset` estimates the retained offset span. It measures neither bytes nor, for compacted topics, an exact message count.


### Consumer Group

| Metric | Type | Key Dimensions | Meaning |
|:---|:---:|:---|:---|
| `kafka_consumergroup_members` | Gauge | `consumergroup` | Current member count of the group |
| `kafka_consumergroup_current_offset` | Gauge | `consumergroup`, `topic`, `partition` | Group's committed offset |
| `kafka_consumergroup_current_offset_sum` | Gauge | `consumergroup`, `topic` | Sum of committed offsets |
| `kafka_consumergroup_lag` | Gauge | `consumergroup`, `topic`, `partition` | Partition-level consumer lag |
| `kafka_consumergroup_lag_sum` | Gauge | `consumergroup`, `topic` | Consumer lag aggregated per group/topic |
{.full-width}

These series may be absent for consumers that never commit offsets, use external offset storage, or have not consumed the topic.


### Exporter Itself

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_exporter_build_info` | Gauge | Exporter version, revision, and build info |
| `process_*` | Gauge/Counter | Exporter process CPU, memory, FD, start time, etc. |
| `go_*` | Gauge/Counter | Exporter Go runtime, GC, goroutine, and memory state |
| `promhttp_metric_handler_*` | Counter | `/metrics` request handling status |
{.full-width}


--------

## JMX: JVM Baseline

`excludeJvmMetrics: false` makes the JMX Exporter expose the standard JVM/process metrics. The Kafka Instance dashboard mainly uses:

| Metric | Meaning |
|:---|:---|
| `jvm_memory_used_bytes` | Used memory, split by heap/non-heap and memory pool |
| `jvm_memory_committed_bytes` | JVM committed memory |
| `jvm_memory_max_bytes` | Maximum memory available to the JVM |
| `jvm_gc_collection_seconds_count` | GC count |
| `jvm_gc_collection_seconds_sum` | Cumulative GC time |
| `jvm_threads_state` | Thread count by thread state |
| `jvm_threads_deadlocked` | Number of detected deadlocked thread cycles |
| `jvm_buffer_pool_used_bytes` | Direct/mapped buffer pool usage |
| `process_cpu_seconds_total` | Cumulative CPU time of the Kafka JVM |
| `process_open_fds` / `process_max_fds` | Open and maximum file descriptors |
| `process_start_time_seconds` | Kafka JVM start time |
{.full-width}


--------

## JMX: Broker Traffic

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_server_broker_messages_in_total` | Counter | Total messages received by the broker |
| `kafka_server_broker_bytes_in_total` | Counter | Total client bytes received by the broker |
| `kafka_server_broker_bytes_out_total` | Counter | Total client bytes sent by the broker |
| `kafka_server_broker_replication_bytes_in_total` | Counter | Total replication bytes received by the broker |
| `kafka_server_broker_replication_bytes_out_total` | Counter | Total replication bytes sent by the broker |
| `kafka_server_broker_produce_requests_total` | Counter | Total produce requests |
| `kafka_server_broker_failed_produce_requests_total` | Counter | Total failed produce requests |
| `kafka_server_broker_fetch_requests_total` | Counter | Total fetch requests |
| `kafka_server_broker_failed_fetch_requests_total` | Counter | Total failed fetch requests |
{.full-width}

Broker totals have no topic dimension. Their JMX series count therefore does not grow with topic count. Protocol exporters provide topic offsets and progress.


--------

## JMX: Replication and Storage

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_server_replica_manager_under_replicated_partitions` | Gauge | Number of partitions whose ISR is smaller than the assigned replica set |
| `kafka_server_replica_manager_under_min_isr_partitions` | Gauge | Number of partitions whose ISR is below `min.insync.replicas` |
| `kafka_server_replica_manager_at_min_isr_partitions` | Gauge | Number of partitions whose ISR is exactly `min.insync.replicas` |
| `kafka_server_replica_manager_offline_replicas` | Gauge | Number of offline replicas on the current broker |
| `kafka_server_replica_manager_partitions` | Gauge | Number of replicas hosted by the current broker |
| `kafka_server_replica_manager_leaders` | Gauge | Number of partitions led by the current broker |
| `kafka_server_replica_manager_isr_shrinks_total` | Counter | Total ISR shrink events |
| `kafka_server_replica_manager_isr_expands_total` | Counter | Total ISR expand events |
| `kafka_server_replica_manager_failed_isr_updates_total` | Counter | Total failed ISR updates |
| `kafka_server_replica_manager_reassigning_partitions` | Gauge | Number of leader partitions currently being reassigned |
| `kafka_server_delayed_operation_purgatory_size` | Gauge | Number of delayed operations waiting, split by `operation` |
| `kafka_log_manager_offline_log_directories` | Gauge | Number of log directories Kafka has marked offline |
{.full-width}

`Under Replicated` means some replicas are not synchronized. `Under Min ISR` means write availability or durability has fallen below the configured minimum. `At Min ISR` still meets that minimum but has no remaining replica margin.


--------

## JMX: Request Path

| Metric | Type | Extra Labels | Meaning |
|:---|:---:|:---|:---|
| `kafka_network_request_total` | Counter | `request`, `version` | Total requests per Kafka API |
| `kafka_network_request_errors_total` | Counter | `request`, `error` | Total error responses per API/error code |
| `kafka_network_request_total_time_seconds` | Gauge | `request`, `version`, `quantile` | Total API time at P50/P95/P99 |
| `kafka_network_request_queue_size` | Gauge | — | Number of requests waiting for a request handler |
| `kafka_network_response_queue_size` | Gauge | — | Number of responses waiting for a network processor |
| `kafka_server_request_handler_idle_ratio` | Gauge | — | Average request-handler idle ratio |
| `kafka_network_processor_idle_ratio` | Gauge | — | Average network-processor idle ratio |
{.full-width}

For high latency, examine request volume, errors, P95/P99, both queues, thread idle ratios, GC, CPU, disk I/O, and network. A low idle ratio alone cannot locate the bottleneck.


--------

## JMX: KRaft and Broker Metadata

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_server_raft_state` | Gauge | The current member's KRaft state, expressed via the `state` label |
| `kafka_server_raft_current_leader` | Gauge | Current KRaft leader node ID; `-1` means unknown |
| `kafka_server_raft_current_epoch` | Gauge | Current KRaft epoch |
| `kafka_server_raft_high_watermark` | Gauge | Metadata log high watermark |
| `kafka_server_raft_log_end_offset` | Gauge | Metadata log end offset |
| `kafka_server_broker_metadata_last_applied_record_lag_seconds` | Gauge | Time lag of the broker applying metadata records |
| `kafka_server_broker_metadata_load_errors_total` | Counter | Total broker metadata load errors |
| `kafka_server_broker_metadata_apply_errors_total` | Counter | Total broker metadata image apply errors |
| `kafka_server_metadata_snapshot_bytes` | Gauge | Size of the most recently generated or loaded metadata snapshot |
| `kafka_server_metadata_snapshot_age_seconds` | Gauge | Age of the most recent metadata snapshot |
{.full-width}

`log_end_offset - high_watermark` helps estimate metadata commit lag. Also check member role, leader, epoch, and controller event latency.


--------

## JMX: Controller

These MBeans exist only in Kafka processes that carry the controller role:

| Metric | Type | Meaning |
|:---|:---:|:---|
| `kafka_controller_active_controller_count` | Gauge | `1` on the active controller, `0` on the others |
| `kafka_controller_fenced_broker_count` | Gauge | Number of fenced brokers observed by the active controller |
| `kafka_controller_active_broker_count` | Gauge | Number of active brokers |
| `kafka_controller_global_topic_count` | Gauge | Number of topics observed by the controller |
| `kafka_controller_global_partition_count` | Gauge | Number of partitions observed by the controller |
| `kafka_controller_offline_partition_count` | Gauge | Number of offline non-internal partitions |
| `kafka_controller_preferred_replica_imbalance_count` | Gauge | Number of partitions whose leader is not the preferred replica |
| `kafka_controller_metadata_errors_total` | Counter | Total controller metadata processing errors |
| `kafka_controller_last_applied_record_lag_seconds` | Gauge | Time lag of the controller applying metadata records |
| `kafka_controller_timed_out_broker_heartbeats_total` | Counter | Total broker heartbeat timeouts |
| `kafka_controller_elections_total` | Counter | Total new active-controller elections observed by this node |
| `kafka_controller_unclean_leader_elections_total` | Counter | Total unclean leader elections |
| `kafka_controller_event_queue_time_seconds` | Gauge | Controller event queue time at P50/P95/P99 |
| `kafka_controller_event_processing_time_seconds` | Gauge | Controller event processing time at P50/P95/P99 |
{.full-width}

Healthy clusters should have exactly one active controller. Prioritize increases in `offline_partition_count`, `metadata_errors_total`, and `unclean_leader_elections_total`.


--------

## Recording Rule Metrics

### Offset Progress

| Metric | Aggregation Level | Window | Meaning |
|:---|:---:|:---:|:---|
| `kafka:topic:msg_rate1m` | Topic | 1m | Forward growth rate of current offset, deduplicated across exporters |
| `kafka:topic:msg_rate5m` | Topic | 5m | Forward growth rate of current offset, deduplicated across exporters |
| `kafka:cls:msg_rate1m` | Logical cluster | 1m | Message append rate, deduplicated across exporters |
| `kafka:cls:msg_rate5m` | Logical cluster | 5m | Message append rate, deduplicated across exporters |
| `kafka:csg_topic:commit_rate5m` | Group/Topic | 5m | Forward growth rate of commit offset |
| `kafka:csg_topic:lag` | Group/Topic | current | Partition lag, deduplicated and summed |
| `kafka:csg:lag` | Consumer group | current | Total group lag across topics |
| `kafka:cls:lag` | Logical cluster | current | Total cluster lag across consumer groups |
{.full-width}

### JVM and Broker

| Metric | Meaning |
|:---|:---|
| `kafka:ins:jvm_heap_used_ratio` | Heap used / heap max |
| `kafka:ins:jvm_cpu_cores` | 5-minute JVM CPU core consumption |
| `kafka:ins:load` | Saturation of the instance's busiest request thread pool |
| `kafka:cls:load` | Average load across the cluster's instances |
| `kafka:ins:jvm_gc_time_rate5m` | 5-minute GC time rate |
| `kafka:ins:messages_in_rate5m` | Broker 5-minute message receive rate |
| `kafka:ins:bytes_in_rate5m` | Broker 5-minute inbound client byte rate |
| `kafka:ins:bytes_out_rate5m` | Broker 5-minute outbound client byte rate |
| `kafka:ins:request_error_rate5m` | 5-minute rate of non-`NONE` request errors |
| `kafka:cls:under_replicated_partitions` | Total under-replicated partitions in the cluster |
| `kafka:cls:offline_partitions` | Offline partitions in the cluster |
{.full-width}


--------

## Cardinality and Interpretation Notes

- Do not directly sum multiple `kafka_exporter` results for one `cls`. They can duplicate cluster state.
- `kafka_topic_partition_current_offset` measures offsets, not exact bytes, requests, or business events.
- Consumer lag covers only visible groups with committed offsets.
- Controller-only nodes normally lack broker and protocol metrics. Unselected brokers normally lack protocol metrics.
- A JMX series is absent if its MBean does not exist for the Kafka version or role. Interpret this with `role`.
- The allowlist excludes per-client and per-partition JMX metrics to limit unpredictable series counts.

For how to use the dashboards and alerts, see [Monitoring](/docs/kafka/monitor).
