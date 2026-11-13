---
title: Monitoring
weight: 4550
description: JUICE module monitoring and metrics.
icon: fa-solid fa-chart-line
module: [JUICE]
categories: [Reference]
---

JuiceFS instances expose Prometheus metrics via `juicefs mount --metrics`.
In JUICE, the metrics endpoint listens on `0.0.0.0:<port>`. The default port is `9567`.

--------

## Monitoring Architecture

```text
JuiceFS Mount (metrics: 0.0.0.0:<port>)
    ↓
VictoriaMetrics (scrape)
    ↓
Grafana Dashboard
```

If [`INFRA`](/docs/infra) is deployed, `juice_register` writes scrape targets to:

```text
/infra/targets/juice/<ip>.yml
```

This file is rewritten from the full node configuration and contains only `state: create` instances. It is deleted if none remain. `juice_clean` updates or removes it during instance cleanup; [`node-rm.yml`](/docs/node/playbook#node-rmyml) also deletes it when decommissioning the node.

The source includes the [**Node JuiceFS**](https://demo.pigsty.io/d/node-juice) dashboard (UID: `node-juice`),
which shows capacity, cache, object storage, metadata transactions, and client resource metrics for JuiceFS mounts on a single node.

--------

## Target File Example

```yaml
- labels: { ip: 10.10.10.10, ins: "node-jfs", cls: "jfs" }
  targets: [ 10.10.10.10:9567 ]
```

To register manually:

```bash
./juice.yml -l <host> -t juice_register
```

--------

## Key Metrics

### Object Storage

| Metric | Type | Description |
|:-----|:----:|:-----|
| `juicefs_object_request_durations_histogram_seconds` | histogram | Object storage request latency |
| `juicefs_object_request_errors` | counter | Object storage errors |
{.full-width .wide .expand}

### Cache

| Metric | Type | Description |
|:-----|:----:|:-----|
| `juicefs_blockcache_hits` | counter | Cache hits |
| `juicefs_blockcache_miss` | counter | Cache misses |
{.full-width}

### Metadata Transactions

| Metric | Type | Description |
|:-----|:----:|:-----|
| `juicefs_transaction_durations_histogram_seconds` | histogram | Metadata transaction latency (histogram) |
| `juicefs_transaction_durations_histogram_seconds_count` | counter | Metadata transaction request count |
{.full-width .wide .expand}

--------

## Common PromQL

Cache hit ratio:

```promql
rate(juicefs_blockcache_hits[5m]) /
(rate(juicefs_blockcache_hits[5m]) + rate(juicefs_blockcache_miss[5m]))
```

Object storage P99 latency:

```promql
histogram_quantile(0.99, rate(juicefs_object_request_durations_histogram_seconds_bucket[5m]))
```

--------

## Alerts

JuiceFS currently has no dedicated alert rules. The general `AgentDown` alert covers instance availability: the `agent_up` recording rule includes `job="juice"` targets, and a scrape failure lasting 1 minute triggers a `CRIT` alert. See [**INFRA Monitoring**](/docs/infra/monitor/).

A scrape failure does not necessarily indicate a failed mount. If another process occupies the metrics port, JuiceFS logs `listen on ... failed` and continues mounting; the filesystem works without metrics. Check `journalctl -u juicefs-<name>`.
