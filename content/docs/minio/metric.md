---
title: Metrics
weight: 3670
description: Metrics V3 and native RustFS interfaces, key metrics, and stable labels currently used by the Pigsty MINIO module.
icon: fa-solid fa-list-check
module: [MINIO]
categories: [Reference]
---


The MINIO module now has two metric paths: Silo/MinIO expose `/minio/metrics/v3`, while RustFS pushes native OTLP metrics and uses a separate HTTPS readiness probe. The metric set varies with server versions and enabled features, so this page documents the stable interfaces used by current dashboards and alerts rather than treating a complete scrape from one old version as a permanent contract.


--------

## Stable Identity Labels

All object-storage targets use these Pigsty labels:

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Fixed module namespace | `minio` |
| `flavor` | Actual backend | `silo`, `minio`, `rustfs` |
| `cls` | `minio_cluster` identity | `minio` |
| `ins` | `<minio_cluster>-<minio_seq>` instance identity | `minio-1` |
| `ip` | Inventory management address | `10.10.10.10` |
| `instance` | Metric target address | `10.10.10.10:9000` |
{.full-width}

Queries and recording rules should prefer the stable `cls`, `ins`, and `ip` identities. RustFS also attaches OTEL resource attributes, but those can change after restarts, container changes, or network changes and should not replace Pigsty identity labels.


--------

## Silo / MinIO Metrics V3

Each Silo or MinIO instance exposes only the V3 root endpoint, `/minio/metrics/v3`. Current key metrics are:

| Category | Key Metrics | Meaning |
|:---|:---|:---|
| Liveness | `minio_up` | Pigsty scrape/health state for the instance |
| Nodes | `minio_cluster_health_nodes_online_count`, `minio_cluster_health_nodes_offline_count` | Online and offline nodes |
| Drives | `minio_cluster_health_drives_online_count`, `minio_cluster_health_drives_offline_count` | Online and offline drives |
| Capacity | `minio_cluster_health_capacity_raw_total_bytes` | Raw total capacity |
| Capacity | `minio_cluster_health_capacity_usable_total_bytes`, `minio_cluster_health_capacity_usable_free_bytes` | Usable total and free capacity |
| Objects | `minio_cluster_usage_objects_count`, `minio_cluster_usage_objects_total_bytes` | Object count and used bytes |
| Buckets | `minio_cluster_usage_objects_buckets_count` | Aggregated bucket count |
| Erasure coding | `minio_cluster_erasure_set_overall_health`, `minio_cluster_erasure_set_overall_write_quorum` | Erasure-set health and write quorum |
| API | `minio_api_requests_total`, `minio_api_requests_errors_total`, `minio_api_requests_4xx_errors_total` | API requests and errors |
| API | `minio_api_requests_inflight_total`, `minio_api_requests_incoming_total` | In-flight and incoming requests |
| Traffic | `minio_api_requests_traffic_received_bytes`, `minio_api_requests_traffic_sent_bytes` | Received and sent bytes |
| Latency | `minio_api_requests_ttfb_seconds_distribution` | Time-to-first-byte distribution |
| Process | `minio_system_process_cpu_total_seconds`, `minio_system_process_resident_memory_bytes` | Process CPU and resident memory |
| System | `minio_system_drive_free_bytes`, `minio_system_drive_used_bytes`, `minio_system_drive_health` | Per-drive capacity and health |
| Audit | `minio_audit_total_messages` | Audit-message count |
{.full-width}

Pigsty drops samples whose `bucket` label is non-empty at scrape time and does not register dedicated per-bucket or replication endpoints. This is an intentional cardinality-control policy. If per-bucket metrics are required, evaluate the time-series volume before adding a custom scrape job.


--------

## Native RustFS Metrics

RustFS pushes native `rustfs_*` metrics to VictoriaMetrics through OTLP/HTTP. Common metrics include:

| Category | Key Metrics |
|:---|:---|
| Readiness | `rustfs_up`, from the separate Blackbox HTTPS probe |
| Telemetry freshness | `rustfs_start_total`, `rustfs_telemetry_age_seconds` |
| Cluster capacity | `rustfs_cluster_capacity_raw_total_bytes`, `rustfs_cluster_capacity_usable_total_bytes`, `rustfs_cluster_capacity_free_bytes`, `rustfs_cluster_capacity_used_bytes` |
| Members and drives | `rustfs_cluster_servers_offline_total`, `rustfs_cluster_health_drives_online_count`, `rustfs_cluster_health_drives_offline_count` |
| Objects and buckets | `rustfs_cluster_objects_total`, `rustfs_cluster_buckets_total` |
| S3 workload | `rustfs_s3_operations_total` |
| HTTP | `rustfs_http_server_requests_total`, `rustfs_http_server_failures_total`, `rustfs_http_server_request_duration_seconds_sum`, `rustfs_http_server_request_duration_seconds_count` |
| Process | `rustfs_system_process_cpu_total_seconds`, `rustfs_system_process_resident_memory_bytes`, `rustfs_system_process_file_descriptor_open_total` |
| Erasure coding | `rustfs_cluster_erasure_set_read_health`, `rustfs_cluster_erasure_set_write_health`, `rustfs_cluster_erasure_set_read_quorum`, `rustfs_cluster_erasure_set_write_quorum` |
{.full-width}

Cluster capacity, bucket, drive, and erasure-code metrics are usually reported by every member. Deduplicate cluster values by object identity with `max` or `min`; do not sum them directly. Process and HTTP counters can be summed over `rate()` when a cluster-wide total is required.

RustFS creates some metrics lazily as features and workloads activate, so an empty panel does not necessarily indicate failure. Check `rustfs_up` together with `rustfs_telemetry_age_seconds` first to distinguish an unavailable service from a healthy service whose telemetry path is interrupted.
