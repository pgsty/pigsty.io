---
title: OLAP Template
weight: 30
description: PostgreSQL config template optimized for online analytical processing workloads
icon: fa-solid fa-chart-line
module: [PGSQL]
categories: [Reference]
---


`olap.yml` is optimized for **online analytical processing** (OLAP). Designed for 4-128 core CPUs with support for large queries, high parallelism, relaxed timeouts, and aggressive vacuum.

> Pair with [**`node_tune`**](/docs/node/param#node_tune) = `olap` for OS-level tuning.


----------------

## Use Cases

OLAP template is ideal for:

- **Data warehouses**: Historical data storage, multidimensional analysis
- **BI reports**: Complex report queries, dashboard data sources
- **ETL processing**: Data extraction, transformation, loading
- **Data analysis**: Ad-hoc queries, data exploration
- **HTAP mixed workloads**: Analytical replicas

**Workload characteristics**:
- Complex queries (seconds to minutes)
- Low concurrent connections (tens to hundreds)
- Read-intensive, writes typically batch operations
- Throughput-sensitive, tolerates higher latency
- Scans large data volumes


----------------

## Usage

Specify [**`pg_conf`**](/docs/pgsql/param#pg_conf) = `olap.yml` in cluster definition:

```yaml
pg-olap:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
  vars:
    pg_cluster: pg-olap
    pg_conf: olap.yml    # PostgreSQL analytics template
    node_tune: olap      # OS analytics tuning
```

Use [**`olap.yml`**](olap) template for dedicated offline replicas:

```yaml
pg-mixed:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: offline, pg_conf: olap.yml }  # offline analytics replica
  vars:
    pg_cluster: pg-mixed
    pg_conf: oltp.yml    # primary and online replicas use OLTP
    node_tune: oltp      # OS OLTP tuning
```


----------------

## Parameter Details

### Connection Management

```yaml
max_connections: 500
superuser_reserved_connections: 10
```

OLAP scenarios typically don't need many connections; 500 is sufficient for most analytical workloads.

### Memory Config

OLAP template uses more aggressive memory allocation:

| Parameter | Formula | Description |
|:----------|:--------|:------------|
| `shared_buffers` | mem × `pg_shared_buffer_ratio` | Default ratio 0.25 |
| `maintenance_work_mem` | shared_buffers × **50%** | Faster index creation and VACUUM |
| `work_mem` | 64MB - **8GB** | Larger sort/hash memory |
| `effective_cache_size` | total mem - shared_buffers | Estimated cache memory |

**work_mem calculation** (differs from OLTP):
```
work_mem = min(max(shared_buffers / max_connections, 64MB), 8GB)
```

Larger `work_mem` allows bigger sort and hash operations in memory, avoiding disk spill.

### Locks & Transactions

```yaml
max_locks_per_transaction: 2-4x maxconn   # OLTP: 1-2x
```

OLAP queries may involve more tables (partitions, many JOINs), requiring more lock slots.

### Parallel Query

OLAP template aggressively enables parallel queries:

```yaml
max_worker_processes: cpu + 12 (min 20)      # OLTP: cpu + 8
max_parallel_workers: 80% × cpu (min 2)      # OLTP: 50%
max_parallel_workers_per_gather: 50% × cpu   # OLTP: 20% (max 8)
max_parallel_maintenance_workers: 33% × cpu
```

Parallel cost estimates use defaults to favor parallel plans:

```yaml
# parallel_setup_cost: 1000    # default, not doubled
# parallel_tuple_cost: 0.1     # default, not doubled
```

Partition-wise optimization enabled:

```yaml
enable_partitionwise_join: on       # smart partition JOIN
enable_partitionwise_aggregate: on  # smart partition aggregation
```

### IO Config (PG17+)

```yaml
io_workers: 50% × cpu (4-32)    # OLTP: 25% (4-16)
```

More IO workers support parallel large table scans.

### WAL Config

```yaml
min_wal_size: disk/20 (max 200GB)
max_wal_size: disk/5 (max 2000GB)
max_slot_wal_keep_size: disk×3/10 (max 3000GB)
temp_file_limit: disk/5 (max 2000GB)   # OLTP: disk/20
```

Larger `temp_file_limit` allows bigger intermediate results to spill to disk.

### Vacuum Config

OLAP template uses aggressive vacuum settings:

```yaml
vacuum_cost_delay: 10ms         # OLTP: 20ms, faster vacuum
vacuum_cost_limit: 10000        # OLTP: 2000, more work per round
autovacuum_max_workers: 3
autovacuum_naptime: 1min
autovacuum_vacuum_scale_factor: 0.08
autovacuum_analyze_scale_factor: 0.04
```

Analytical databases often have bulk writes requiring aggressive vacuum to reclaim space.

### Query Optimization

```yaml
random_page_cost: 1.1
effective_io_concurrency: 200
default_statistics_target: 1000    # OLTP: 400, more precise stats
```

Higher `default_statistics_target` provides more accurate query plans, crucial for complex analytics.

### Logging & Monitoring

```yaml
log_min_duration_statement: 1000    # OLTP: 100ms, relaxed threshold
log_statement: ddl
log_checkpoints: on
log_lock_waits: on
log_temp_files: 1024
log_autovacuum_min_duration: 1s
track_io_timing: on
track_cost_delay_timing: on         # PG18+, track vacuum cost delay
track_functions: all
track_activity_query_size: 8192
```

### Client Timeouts

```yaml
deadlock_timeout: 50ms
idle_in_transaction_session_timeout: 0   # OLTP: 10min, disabled
```

Analytical queries may need to hold transactions for extended periods, so idle timeout is disabled.


----------------

## Key Differences from OLTP

| Parameter | [**OLAP**](olap) | [**OLTP**](oltp) | Reason |
|:----------|:-----------------|:-----------------|:-------|
| max_connections | 500 | 500-1000 | Fewer analytical connections |
| work_mem limit | 8GB | 1GB | Support larger in-memory sorts |
| maintenance_work_mem | 50% buffer | 25% buffer | Faster index creation |
| max_locks_per_transaction | 2-4x | 1-2x | More tables in queries |
| max_parallel_workers | 80% cpu | 50% cpu | Aggressive parallelism |
| max_parallel_workers_per_gather | 50% cpu | 20% cpu | Aggressive parallelism |
| parallel_setup_cost | 1000 | 2000 | Default, encourages parallel |
| parallel_tuple_cost | 0.1 | 0.2 | Default, encourages parallel |
| enable_partitionwise_join | on | off | Partition optimization |
| enable_partitionwise_aggregate | on | off | Partition optimization |
| vacuum_cost_delay | 10ms | 20ms | Aggressive vacuum |
| vacuum_cost_limit | 10000 | 2000 | Aggressive vacuum |
| temp_file_limit | 1/5 disk | 1/20 disk | Allow larger temp files |
| io_workers | 50% cpu | 25% cpu | More parallel IO |
| log_min_duration_statement | 1000ms | 100ms | Relaxed slow query threshold |
| default_statistics_target | 1000 | 400 | More precise stats |
| idle_in_transaction_session_timeout | Disabled | 10min | Allow long transactions |


----------------

## Performance Tuning Tips

### With TimescaleDB

OLAP template works great with TimescaleDB:

```yaml
pg-timeseries:
  vars:
    pg_conf: olap.yml
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_extensions:
      - timescaledb
```

### With pg_duckdb

For ultimate analytical performance, combine with pg_duckdb:

```yaml
pg-analytics:
  vars:
    pg_conf: olap.yml
    pg_libs: 'pg_duckdb, pg_stat_statements, auto_explain'
```

### Columnar Storage

Consider columnar storage extensions:

```yaml
pg_extensions:
  - citus_columnar  # or pg_mooncake
```

### Resource Isolation

For mixed workloads, isolate analytics to dedicated replicas:

```yaml
pg-mixed:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }               # OLTP writes
    10.10.10.12: { pg_seq: 2, pg_role: replica }               # OLTP reads
    10.10.10.13: { pg_seq: 3, pg_role: offline }               # OLAP analytics
  vars:
    pg_cluster: pg-mixed
```

### Monitoring Metrics

Focus on these metrics:

- **Query time**: Long query execution time distribution
- **Parallelism**: Parallel worker utilization
- **Temp files**: Temp file size and count
- **Disk IO**: Sequential and index scan IO volume
- **Cache hit ratio**: shared_buffers and OS cache hit rates


----------------

## References

- [**`pg_conf`**](/docs/pgsql/param#pg_conf): PostgreSQL config template selection
- [**`node_tune`**](/docs/node/param#node_tune): OS tuning template, should match `pg_conf`
- [**OLTP Template**](oltp): Transaction template comparison
- [**CRIT Template**](crit): Critical business template comparison
- [**TINY Template**](tiny): Micro instance template comparison
- [Offline Replica](/docs/pgsql/config/cluster#offline-replica): Dedicated analytics instances

