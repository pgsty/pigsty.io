---
title: Monitoring and Alerting
weight: 3660
description: How Pigsty monitors Silo, MinIO, and RustFS, including object-storage metric paths, Grafana dashboards, and alert rules.
icon: fa-solid fa-binoculars
module: [MINIO]
categories: [Reference]
---


## Administration UI

The selected object-storage engine provides an administration UI through [`minio_admin_port`](/docs/minio/param#minio_admin_port), which defaults to `9001`. Access Silo/MinIO directly at `https://<node-ip>:9001`; the RustFS console is under `/rustfs/console/` on the same port.

Some configuration templates also expose the administration entry point at `m.pigsty`. Login credentials come from [`minio_access_key`](/docs/minio/param#minio_access_key) and [`minio_secret_key`](/docs/minio/param#minio_secret_key).

{{% alert title="HTTPS and Certificate Trust" color="info" %}}
Object storage uses HTTPS certificates issued by the Pigsty CA by default. Browsers and container clients must trust that CA. Do not substitute disabled certificate verification for a correct trust configuration in production.
{{% /alert %}}


---------

## Collection Paths

All three engines retain the stable `job="minio"`, `cls`, `ins`, `ip`, and `instance` identity labels and distinguish the backend with `flavor`:

| Engine | Metric Path | Target and Labels |
|:---|:---|:---|
| Silo / MinIO | VictoriaMetrics scrapes `https://<instance>:9000/minio/metrics/v3` | `job=minio`, with `flavor=silo` or `flavor=minio` |
| RustFS | RustFS pushes native metrics over OTLP/HTTP; the `minio` scrape job separately probes `/minio/health/ready` through Blackbox Exporter | `job=minio`, `flavor=rustfs` |
{.full-width}

Each instance's FileSD target is written to `/infra/targets/minio/<minio_cluster>-<minio_seq>.yml`.

Silo/MinIO register one Metrics V3 root endpoint, which exposes cluster, system, API, and aggregated usage metrics. Pigsty drops samples with a non-empty `bucket` label and does not register separate per-bucket or replication endpoints, keeping time-series cardinality under control.

RustFS does not expose MinIO Metrics V3. By default, it pushes native metrics every 15 seconds to `/opentelemetry/v1/metrics` on VictoriaMetrics at the first `infra` node in the inventory. Use [`rustfs_metrics_endpoint`](/docs/minio/param#rustfs_metrics_endpoint) to target an existing VictoriaMetrics Cluster/VIP. Independent single-node VictoriaMetrics instances do not replicate pushed samples, so an ordinary load balancer cannot provide replication semantics.


---------

## Grafana Dashboards

Pigsty provides two dashboard sets for object storage:

- **MinIO Overview / MinIO Instance** for Silo and MinIO Metrics V3
- **RustFS Overview / RustFS Instance** for native RustFS OTLP metrics, readiness, and structured logs

[![minio-overview.jpg](/img/dashboard/minio-overview.jpg)](https://demo.pigsty.io/d/minio-overview)

RustFS writes application logs to the systemd journal at `warn` level by default. Pigsty's generic syslog path can send them to VictoriaLogs; the role does not create a dedicated RustFS Vector source or sink.


---------

## Alert Rules

The current `files/victoria/rules/minio.yml` defines five alerts for Silo/MinIO:

| Alert | Condition Summary | Severity |
|:---|:---|:---:|
| `MinioServerDown` | `minio_up < 1` for 1 minute | CRIT |
| `MinioNodeOffline` | Five-minute average offline-node count above 0 for 3 minutes | WARN |
| `MinioDiskOffline` | Five-minute average offline-drive count above 0 for 3 minutes | WARN |
| `MinioErasureSetUnhealthy` | Any erasure set's overall health below 1 for 1 minute | CRIT |
| `MinioClusterCapacityHigh` | Usable capacity utilization above 90% for 15 minutes | WARN |
{.full-width}

Key expressions use Metrics V3 names:

```promql
minio_up < 1

max by (cls) (
  avg_over_time(minio_cluster_health_nodes_offline_count{job="minio"}[5m])
) > 0

max by (cls) (
  avg_over_time(minio_cluster_health_drives_offline_count{job="minio"}[5m])
) > 0

min by (cls) (
  minio_cluster_erasure_set_overall_health{job="minio"}
  or (minio_cluster_erasure_set_overall_write_quorum{job="minio"} * 0)
) < 1

max by (cls) (
  1 - (
    (minio_cluster_health_capacity_usable_free_bytes{job="minio"}
     or (minio_cluster_health_capacity_usable_total_bytes{job="minio"} * 0))
    / minio_cluster_health_capacity_usable_total_bytes{job="minio"}
  )
) > 0.90
```

The separate RustFS HTTPS readiness probe records `rustfs_up`, not `minio_up`. `files/victoria/rules/rustfs.yml` defines eleven additional alerts:

| Alert | Focus |
|:---|:---|
| `RustfsServerDown` | HTTPS readiness probe failed |
| `RustfsTelemetryMissing` | Service is ready but no new OTLP metrics for 90 seconds |
| `RustfsRuntimeNotReady` | Internal RustFS readiness is unhealthy |
| `RustfsServerOffline` | Cluster member offline |
| `RustfsDriveOffline` | Drive offline |
| `RustfsErasureSetUnhealthy` | Erasure-set reads or writes unhealthy |
| `RustfsCapacityHigh` | Usable capacity utilization above 85% |
| `RustfsHttpFailures` | Sustained high HTTP failure rate |
| `RustfsInternodeErrors` | Excessive inter-node operation errors |
| `RustfsScannerFailures` | Scanner cycle or bucket scan failed |
| `RustfsTlsHandshakeFailures` | TLS handshake errors above the calibrated baseline |
{.full-width}

MinIO Metrics V3 and native RustFS metrics are handled by separate rule sets. A metric absent from the other backend is not treated as a zero-valued failure.
