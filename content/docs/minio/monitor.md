---
title: Monitoring and Alerting
weight: 3660
description: How Pigsty monitors Silo, including its Metrics V3 endpoint, Grafana dashboards, and alert rules.
icon: fa-solid fa-binoculars
module: [MINIO]
categories: [Reference]
---


## Administration UI

Silo provides an administration UI through [`minio_admin_port`](/docs/minio/param#minio_admin_port), which defaults to `9001`. Access it directly at `https://<node-ip>:9001`.

Some configuration templates also expose the administration entry point at `m.pigsty`. Login credentials come from [`minio_access_key`](/docs/minio/param#minio_access_key) and [`minio_secret_key`](/docs/minio/param#minio_secret_key).

> [!NOTE] HTTPS and Certificate Trust
> Object storage uses HTTPS certificates issued by the Pigsty CA by default. Browsers and container clients must trust that CA. Do not substitute disabled certificate verification for a correct trust configuration in production.


---------

## Collection Paths

Silo retains the stable `job="minio"`, `cls`, `ins`, `ip`, and `instance` identity labels and uses `flavor="silo"`:

| Backend | Metric Path | Target and Labels |
|:---|:---|:---|
| Silo | VictoriaMetrics scrapes `https://<instance>:9000/minio/metrics/v3` | `job=minio`, `flavor=silo` |
{.full-width}

Each instance's FileSD target is written to `/infra/targets/minio/<minio_cluster>-<minio_seq>.yml`.

Silo registers one Metrics V3 root endpoint, which exposes cluster, system, API, and aggregated usage metrics. Pigsty drops samples with a non-empty `bucket` label and does not register separate per-bucket or replication endpoints, keeping time-series cardinality under control.


---------

## Grafana Dashboards

Pigsty provides the compatibility-named **MinIO Overview / MinIO Instance** dashboards for Silo Metrics V3 data, system logs, and instance state.

[![minio-overview.jpg](/img/dashboard/minio-overview.jpg)](https://demo.pigsty.io/d/minio-overview)

---------

## Alert Rules

The current `files/victoria/rules/minio.yml` defines five alerts for Silo:

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
