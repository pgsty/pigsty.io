---
title: Monitoring
weight: 4550
description: JuiceFS filesystem monitoring metrics and Grafana dashboards
icon: fa-solid fa-chart-line
module: [JUICE]
categories: [Reference]
---


Each JuiceFS instance exposes Prometheus-format metrics on configured port (default 9567).


--------

## Monitoring Architecture

```
JuiceFS Instance (port: 9567)
    ↓ /metrics
VictoriaMetrics (scrape)
    ↓
Grafana Dashboard
```

Pigsty automatically registers JuiceFS instances to VictoriaMetrics, target file located at:

```
/infra/targets/juice/<hostname>.yml
```


--------

## Key Metrics

### Object Storage Metrics

| Metric                                                    | Type        | Description         |
|:------------------------------------------------------|:----------|:-----------|
| `juicefs_object_request_durations_histogram_seconds`  | histogram | Object storage request latency distribution |
| `juicefs_object_request_data_bytes`                   | counter   | Object storage data transfer volume  |
| `juicefs_object_request_errors`                       | counter   | Object storage request error count  |
{.full-width}

### Cache Metrics

| Metric                            | Type      | Description      |
|:------------------------------|:--------|:--------|
| `juicefs_blockcache_hits`     | counter | Block cache hit count  |
| `juicefs_blockcache_misses`   | counter | Block cache miss count |
| `juicefs_blockcache_writes`   | counter | Block cache write count  |
| `juicefs_blockcache_drops`    | counter | Block cache drop count  |
| `juicefs_blockcache_evictions`| counter | Block cache eviction count  |
| `juicefs_blockcache_hit_bytes`| counter | Cache hit bytes |
| `juicefs_blockcache_miss_bytes`| counter | Cache miss bytes|
{.full-width}

### Metadata Metrics

| Metric                                                  | Type        | Description          |
|:----------------------------------------------------|:----------|:------------|
| `juicefs_meta_ops_durations_histogram_seconds`      | histogram | Metadata operation latency distribution   |
| `juicefs_transaction_durations_histogram_seconds`   | histogram | Transaction latency distribution      |
| `juicefs_transaction_restart`                       | counter   | Transaction retry count      |
{.full-width}

### FUSE Operation Metrics

| Metric                                                | Type        | Description           |
|:--------------------------------------------------|:----------|:-------------|
| `juicefs_fuse_ops_durations_histogram_seconds`    | histogram | FUSE operation latency distribution  |
| `juicefs_fuse_read_size_bytes`                    | histogram | Read operation size distribution      |
| `juicefs_fuse_written_size_bytes`                 | histogram | Write operation size distribution      |
{.full-width}

### Filesystem Metrics

| Metric                       | Type    | Description        |
|:-------------------------|:------|:----------|
| `juicefs_used_space`     | gauge | Used space (bytes) |
| `juicefs_used_inodes`    | gauge | Used inodes |
{.full-width}


--------

## Common PromQL

### Cache Hit Rate

```promql
rate(juicefs_blockcache_hits[5m]) /
(rate(juicefs_blockcache_hits[5m]) + rate(juicefs_blockcache_misses[5m]))
```

### Object Storage P99 Latency

```promql
histogram_quantile(0.99, rate(juicefs_object_request_durations_histogram_seconds_bucket[5m]))
```

### Metadata Operation P99 Latency

```promql
histogram_quantile(0.99, rate(juicefs_meta_ops_durations_histogram_seconds_bucket[5m]))
```

### Read/Write Throughput

```promql
# Read throughput
rate(juicefs_blockcache_hit_bytes[5m]) + rate(juicefs_blockcache_miss_bytes[5m])

# Write throughput
rate(juicefs_fuse_written_size_bytes_sum[5m])
```


--------

## Metrics Scrape Config

JuiceFS instance VictoriaMetrics target file format:

```yaml
# /infra/targets/juice/<hostname>.yml
- labels: { ip: 10.10.10.10, ins: "node-jfs", cls: "jfs" }
  targets: [ 10.10.10.10:9567 ]
```

To manually re-register:

```bash
./juice.yml -l <ip> -t juice_register
```

