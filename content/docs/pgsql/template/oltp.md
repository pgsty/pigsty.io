---
title: OLTP Template
weight: 20
description: PostgreSQL config template optimized for online transaction processing workloads
icon: fa-solid fa-bolt
module: [PGSQL]
categories: [Reference]
---


`oltp.yml` is Pigsty's default config template, optimized for **online transaction processing** (OLTP). Designed for 4-128 core CPUs with high concurrency, low latency, and high throughput.

> Pair with [**`node_tune`**](/docs/node/param#node_tune) = `oltp` for OS-level tuning.


----------------

## Use Cases

OLTP template is ideal for:

- **E-commerce**: Order processing, inventory, user transactions
- **Social apps**: User feeds, messaging, following relationships
- **Gaming backends**: Player data, leaderboards, game state
- **SaaS applications**: Multi-tenant business systems
- **Web apps**: CRUD-intensive workloads

**Workload characteristics**:
- Many short transactions (millisecond-level)
- High concurrent connections (hundreds to thousands)
- Read/write ratio typically 7:3 to 9:1
- Latency-sensitive, requires fast response
- High data consistency requirements


----------------

## Usage

[**`oltp.yml`**](oltp) is the default template, no explicit specification needed:

```yaml
pg-oltp:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
  vars:
    pg_cluster: pg-oltp
    # pg_conf: oltp.yml  # PostgreSQL config template (default)
    # node_tune: oltp    # OS tuning template (default)
```

Or explicitly specify:

```yaml
pg-oltp:
  vars:
    pg_conf: oltp.yml    # PostgreSQL config template
    node_tune: oltp      # OS tuning template
```


----------------

## Parameter Details

### Connection Management

```yaml
max_connections: 500/1000   # depends on pgbouncer usage
superuser_reserved_connections: 10
```

- When [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest) is `pgbouncer`, `max_connections` is set to 500
- When traffic connects directly to PostgreSQL, `max_connections` is set to 1000
- Override via [`pg_max_conn`](/docs/pgsql/param#pg_max_conn) parameter

### Memory Config

OLTP template memory allocation strategy:

| Parameter | Formula | Description |
|:----------|:--------|:------------|
| `shared_buffers` | mem × `pg_shared_buffer_ratio` | Default ratio 0.25 |
| `maintenance_work_mem` | shared_buffers × 25% | For VACUUM, CREATE INDEX |
| `work_mem` | 64MB - 1GB | Based on shared_buffers/max_connections |
| `effective_cache_size` | total mem - shared_buffers | Estimated cache memory |

**work_mem calculation**:
```
work_mem = min(max(shared_buffers / max_connections, 64MB), 1GB)
```

Ensures each connection has sufficient sort/hash memory without over-allocation.

### Parallel Query

OLTP template moderately limits parallel queries to prevent resource contention:

```yaml
max_worker_processes: cpu + 8 (min 16)
max_parallel_workers: 50% × cpu (min 2)
max_parallel_workers_per_gather: 20% × cpu (2-8)
max_parallel_maintenance_workers: 33% × cpu (min 2)
```

Parallel cost estimates are increased to favor serial execution:

```yaml
parallel_setup_cost: 2000      # 2x default (1000)
parallel_tuple_cost: 0.2       # 2x default (0.1)
min_parallel_table_scan_size: 16MB   # 2x default (8MB)
min_parallel_index_scan_size: 1024   # 2x default (512)
```

### WAL Config

```yaml
min_wal_size: disk/20 (max 200GB)
max_wal_size: disk/5 (max 2000GB)
max_slot_wal_keep_size: disk×3/10 (max 3000GB)
wal_buffers: 16MB
wal_writer_delay: 20ms
wal_writer_flush_after: 1MB
commit_delay: 20
commit_siblings: 10
checkpoint_timeout: 15min
checkpoint_completion_target: 0.80
```

Balances data safety and write performance.

### Vacuum Config

```yaml
vacuum_cost_delay: 20ms         # sleep after each vacuum round
vacuum_cost_limit: 2000         # cost limit per vacuum round
autovacuum_max_workers: 3
autovacuum_naptime: 1min
autovacuum_vacuum_scale_factor: 0.08    # 8% table change triggers vacuum
autovacuum_analyze_scale_factor: 0.04   # 4% table change triggers analyze
autovacuum_freeze_max_age: 1000000000
```

Conservative vacuum settings avoid impacting online transaction performance.

### Query Optimization

```yaml
random_page_cost: 1.1           # SSD optimized
effective_io_concurrency: 200   # SSD concurrent IO
default_statistics_target: 400  # Statistics precision
```

Enables planner to generate better query plans.

### Logging & Monitoring

```yaml
log_min_duration_statement: 100         # log queries > 100ms
log_statement: ddl                      # log DDL statements
log_checkpoints: on
log_lock_waits: on
log_temp_files: 1024                    # log temp files > 1MB
log_autovacuum_min_duration: 1s
track_io_timing: on
track_functions: all
track_activity_query_size: 8192
```

### Client Timeouts

```yaml
deadlock_timeout: 50ms
idle_in_transaction_session_timeout: 10min
```

10-minute idle transaction timeout prevents zombie transactions holding locks.

### Extension Config

```yaml
shared_preload_libraries: 'pg_stat_statements, auto_explain'

# auto_explain
auto_explain.log_min_duration: 1s
auto_explain.log_analyze: on
auto_explain.log_verbose: on
auto_explain.log_timing: on
auto_explain.log_nested_statements: true

# pg_stat_statements
pg_stat_statements.max: 10000
pg_stat_statements.track: all
pg_stat_statements.track_utility: off
pg_stat_statements.track_planning: off
```


----------------

## Template Comparison

| Feature | [**OLTP**](oltp) | [**OLAP**](olap) | [**CRIT**](crit) |
|:--------|:-----------------|:-----------------|:-----------------|
| max_connections | 500-1000 | 500 | 500-1000 |
| work_mem | 64MB-1GB | 64MB-8GB | 64MB-1GB |
| Parallel query | Moderate limit | Aggressive | Disabled |
| Vacuum intensity | Conservative | Aggressive | Conservative |
| Txn timeout | 10min | Disabled | 1min |
| Slow query threshold | 100ms | 1000ms | 100ms |

### Why OLTP over OLAP?

- Queries are mostly simple point/range lookups
- Transaction response time requires milliseconds
- High concurrent connections
- No complex analytical queries

### Why OLTP over CRIT?

- Small probability of data loss acceptable (async replication)
- Complete audit logs not required
- Better write performance desired


----------------

## Performance Tuning Tips

### Connection Pooling

For high concurrency, use PgBouncer connection pool:

```yaml
pg-oltp:
  vars:
    pg_default_service_dest: pgbouncer  # default
    pgbouncer_poolmode: transaction     # transaction-level pooling
```

### Read Separation

Use read replicas to share read load:

```yaml
pg-oltp:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
```

### Monitoring Metrics

Focus on these metrics:

- **Connections**: Active/waiting connection counts
- **Transaction rate**: TPS, commit/rollback ratio
- **Response time**: Query latency percentiles (p50/p95/p99)
- **Lock waits**: Lock wait time, deadlock counts
- **Replication lag**: Replica delay time and bytes


----------------

## References

- [**`pg_conf`**](/docs/pgsql/param#pg_conf): PostgreSQL config template selection
- [**`node_tune`**](/docs/node/param#node_tune): OS tuning template, should match `pg_conf`
- [**OLAP Template**](olap): Analytics template comparison
- [**CRIT Template**](crit): Critical business template comparison
- [**TINY Template**](tiny): Micro instance template comparison
- [Cluster Config](/docs/pgsql/config/cluster): PostgreSQL cluster type configuration
- [High Availability](/docs/concept/ha): HA architecture design

