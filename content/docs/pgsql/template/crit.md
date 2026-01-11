---
title: CRIT Template
weight: 40
description: PostgreSQL config template optimized for critical/financial workloads with data safety and audit compliance
icon: fa-solid fa-shield-halved
module: [PGSQL]
categories: [Reference]
---


`crit.yml` is optimized for **critical/financial workloads**. Designed for 4-128 core CPUs with forced sync replication, data checksums, full audit logging, and strict security. Trades performance for maximum data safety.

> Pair with [**`node_tune`**](/docs/node/param#node_tune) = `crit` for OS-level tuning, optimizing dirty page management.


----------------

## Use Cases

CRIT template is ideal for:

- **Financial transactions**: Bank transfers, payment settlement, securities trading
- **Core accounting**: General ledger systems, accounting systems
- **Compliance audit**: Businesses requiring complete operation records
- **Critical business**: Any scenario that cannot tolerate data loss

**Requirements**:
- Zero data loss (RPO = 0)
- Data integrity verification
- Complete audit logs
- Strict security policies
- Acceptable performance trade-offs


----------------

## Usage

Specify [**`pg_conf`**](/docs/pgsql/param#pg_conf) = `crit.yml` in cluster definition:

```yaml
pg-finance:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-finance
    pg_conf: crit.yml    # PostgreSQL critical template
    node_tune: crit      # OS critical tuning
```

**Recommendation**: Critical clusters should have at least 3 nodes to maintain sync replication when one node fails.


----------------

## Core Features

### Forced Sync Replication

CRIT template **forces sync replication** regardless of [`pg_rpo`](/docs/pgsql/param#pg_rpo) setting:

```yaml
synchronous_mode: true   # forced on, ignores pg_rpo
```

Every transaction commit waits for at least one replica confirmation, ensuring **RPO = 0** (zero data loss).

**Cost**: Write latency increases (typically 1-5ms depending on network).

### Forced Data Checksums

CRIT template **forces data checksums** regardless of [`pg_checksum`](/docs/pgsql/param#pg_checksum) setting:

```yaml
initdb:
  - data-checksums   # forced on, ignores pg_checksum
```

Data checksums detect silent disk corruption (bit rot), critical for financial data.

### Disabled Parallel Query

CRIT template disables parallel query gather operations:

```yaml
max_parallel_workers_per_gather: 0   # parallel queries disabled
```

Parallel cost estimates are also increased:

```yaml
parallel_setup_cost: 2000
parallel_tuple_cost: 0.2
min_parallel_table_scan_size: 16MB
min_parallel_index_scan_size: 1024
```

**Reason**: Parallel queries may cause unstable latency. For latency-sensitive financial transactions, predictable stable performance is more important.


----------------

## Parameter Details

### Connection Management

```yaml
max_connections: 500/1000   # depends on pgbouncer usage
superuser_reserved_connections: 10
```

Same as OLTP template.

### Memory Config

| Parameter | Formula | Description |
|:----------|:--------|:------------|
| `shared_buffers` | mem × `pg_shared_buffer_ratio` | Default ratio 0.25 |
| `maintenance_work_mem` | shared_buffers × 25% | For VACUUM, CREATE INDEX |
| `work_mem` | 64MB - 1GB | Same as OLTP |
| `effective_cache_size` | total mem - shared_buffers | Estimated cache memory |

### WAL Config (Key Differences)

```yaml
wal_writer_delay: 10ms              # OLTP: 20ms, more frequent flush
wal_writer_flush_after: 0           # OLTP: 1MB, immediate flush, no buffer
idle_replication_slot_timeout: 3d   # OLTP: 7d, stricter slot cleanup
```

`wal_writer_flush_after: 0` ensures every WAL write flushes to disk immediately, minimizing data loss risk.

### Replication Config (PG15-)

```yaml
vacuum_defer_cleanup_age: 500000    # PG15 and below only
```

Preserves 500K recent transactions from vacuum cleanup, providing more catchup buffer for replicas.

### Audit Logging (Key Differences)

CRIT template enables full connection audit:

**PostgreSQL 18+**:
```yaml
log_connections: 'receipt,authentication,authorization'
```

**PostgreSQL 17 and below**:
```yaml
log_connections: 'on'
log_disconnections: 'on'
```

Records complete connection lifecycle:
- Connection receipt
- Authentication process
- Authorization result
- Disconnection

### Query Logging

```yaml
log_min_duration_statement: 100     # log queries > 100ms
log_statement: ddl                  # log all DDL
track_activity_query_size: 32768    # OLTP: 8192, capture full queries
```

32KB `track_activity_query_size` ensures capturing complete long query text.

### Statistics Tracking

```yaml
track_io_timing: on
track_cost_delay_timing: on         # PG18+, track vacuum cost delay
track_functions: all
track_activity_query_size: 32768
```

### Client Timeouts (Key Differences)

```yaml
idle_in_transaction_session_timeout: 1min   # OLTP: 10min, stricter
```

1-minute idle transaction timeout quickly releases zombie transactions holding locks.

### Extension Config

```yaml
shared_preload_libraries: '$libdir/passwordcheck, pg_stat_statements, auto_explain'
```

**Note**: CRIT template loads `passwordcheck` by default, enforcing password complexity.


----------------

## Key Differences from OLTP

| Parameter | [**CRIT**](crit) | [**OLTP**](oltp) | Reason |
|:----------|:-----------------|:-----------------|:-------|
| synchronous_mode | **Forced true** | Depends on pg_rpo | Zero data loss |
| data-checksums | **Forced on** | Optional | Data integrity |
| max_parallel_workers_per_gather | **0** | 20% cpu | Stable latency |
| wal_writer_delay | 10ms | 20ms | More frequent flush |
| wal_writer_flush_after | **0** | 1MB | Immediate flush |
| idle_replication_slot_timeout | 3d | 7d | Stricter cleanup |
| idle_in_transaction_session_timeout | **1min** | 10min | Quick lock release |
| track_activity_query_size | **32KB** | 8KB | Complete query capture |
| log_connections | **Full logging** | Auth only | Audit compliance |
| log_disconnections | **on** | off | Audit compliance |
| passwordcheck | **Enabled** | Not enabled | Password security |
| vacuum_defer_cleanup_age | 500000 | 0 | Replica catchup buffer |


----------------

## Performance Impact

Using CRIT template has these impacts:

### Increased Write Latency

Sync replication adds 1-5ms write latency (network-dependent):

```
Async replication: commit -> local flush -> return to client
Sync replication:  commit -> local flush -> wait replica confirm -> return to client
```

### Reduced Write Throughput

Due to replica confirmation wait, write TPS may drop 10-30%.

### More Stable Query Latency

With parallel queries disabled, query latency is more predictable without parallel startup overhead variance.

### Slightly Increased Resource Overhead

More frequent WAL flushes and complete audit logs add extra IO overhead.


----------------

## HA Configuration

### Minimum Recommended Setup

```yaml
pg-critical:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-critical
    pg_conf: crit.yml    # PostgreSQL critical template
    node_tune: crit      # OS critical tuning
```

3-node setup ensures sync replication continues when one node fails.

### Cross-DC Deployment

For financial-grade disaster recovery:

```yaml
pg-critical:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary, pg_weight: 100 }  # DC A
    10.10.10.12: { pg_seq: 2, pg_role: replica, pg_weight: 100 }  # DC A
    10.20.10.13: { pg_seq: 3, pg_role: replica, pg_weight: 0 }    # DC B (standby)
  vars:
    pg_cluster: pg-critical
    pg_conf: crit.yml    # PostgreSQL critical template
    node_tune: crit      # OS critical tuning
```

### Quorum Commit

For higher consistency, configure multiple sync replicas:

```bash
$ pg edit-config pg-critical
synchronous_mode: true
synchronous_node_count: 2    # require 2 replica confirmations
```


----------------

## Security Hardening Tips

### Password Policy

CRIT template has `passwordcheck` enabled; further configure:

```sql
-- Set password encryption
ALTER SYSTEM SET password_encryption = 'scram-sha-256';
```

### Audit Extension

Consider `pgaudit` for detailed auditing:

```yaml
pg_libs: 'pg_stat_statements, auto_explain, pgaudit'
pg_parameters:
  pgaudit.log: 'ddl, role, write'
```

### Network Isolation

Ensure database network is isolated; use [HBA rules](/docs/pgsql/config/hba) to restrict access.


----------------

## Monitoring Metrics

For critical clusters, focus on:

- **Replication lag**: Sync lag should be near zero
- **Transaction commit time**: p99 latency
- **Lock waits**: Long lock waits may impact business
- **Checkpoints**: Checkpoint duration and frequency
- **WAL generation rate**: Predict disk space needs


----------------

## References

- [**`pg_conf`**](/docs/pgsql/param#pg_conf): PostgreSQL config template selection
- [**`node_tune`**](/docs/node/param#node_tune): OS tuning template, should match `pg_conf`
- [**`pg_rpo`**](/docs/pgsql/param#pg_rpo): Recovery point objective parameter
- [**OLTP Template**](oltp): Transaction template comparison
- [**OLAP Template**](olap): Analytics template comparison
- [**TINY Template**](tiny): Micro instance template comparison
- [Sync Standby](/docs/pgsql/config/cluster#sync-standby): Sync replication configuration
- [Quorum Commit](/docs/pgsql/config/cluster#quorum-commit): Higher consistency level

