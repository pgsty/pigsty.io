# Monitoring

> JUICE module monitoring and metrics.

---

LLMS index: [llms.txt](/llms.txt)

---

JuiceFS instances expose Prometheus metrics via `juicefs mount --metrics`.
In JUICE, metrics listen on `0.0.0.0:<port>`, default port `9567`.

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
/infra/targets/juice/<hostname>.yml
```

The current source includes the [Node JuiceFS](https://demo.pigsty.io/d/node-juice) dashboard (UID: `node-juice`) for capacity, cache, object-storage, metadata-transaction, and client-resource metrics across JuiceFS mounts on a node.

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
{.full-width}

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
{.full-width}

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
