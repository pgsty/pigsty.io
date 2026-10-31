# Metrics

> The Metrics V3 interface, key metrics, and stable labels used by the Pigsty MINIO module to monitor Silo.

---

LLMS index: [llms.txt](/llms.txt)

---

The MINIO module collects Silo metrics through `/minio/metrics/v3`. The metric set varies with the server version and enabled features. This page describes the stable interfaces used by current dashboards and alerts. A complete scrape from one version is not a permanent interface contract.


--------

## Stable Identity Labels

All object-storage targets use these Pigsty labels:

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Fixed module namespace | `minio` |
| `flavor` | Actual backend | `silo` |
| `cls` | `minio_cluster` identity | `minio` |
| `ins` | `<minio_cluster>-<minio_seq>` instance identity | `minio-1` |
| `ip` | Inventory management address | `10.10.10.10` |
| `instance` | Metric target address | `10.10.10.10:9000` |
{.full-width}

Queries and recording rules should prefer the stable `cls`, `ins`, and `ip` identity labels.


--------

## Liveness Metric Source

`minio_up = up{job="minio"}` is a recording rule from [`roles/infra/templates/victoria/agent.yml`](https://github.com/pgsty/pigsty/blob/main/roles/infra/templates/victoria/agent.yml), not raw Silo Metrics V3 output. It indicates successful scraping and does not prove read or write quorum. The module's `files/victoria/rules/minio.yml` provides 5 alerting rules and no additional recording rules.

## Silo Metrics V3

Each Silo instance exposes only the V3 root endpoint, `/minio/metrics/v3`. Current key metrics are:

| Category | Key Metrics | Meaning |
|:---|:---|:---|
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

During scraping, Pigsty drops samples with a non-empty `bucket` label. It does not register dedicated per-bucket or replication endpoints. This policy controls the number of time series.

If you need per-bucket metrics, evaluate the time-series volume before you add a custom scrape job.
