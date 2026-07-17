---
title: CRIT Template
weight: 40
description: PostgreSQL parameter template for consistency-first workloads, with strict synchronous replication, data checksums, and detailed connection logging.
icon: fa-solid fa-shield-halved
module: [PGSQL]
categories: [Reference]
---

`crit.yml` targets transactional workloads with elevated consistency and audit requirements. It forces data checksums and Patroni strict synchronous mode, adds connection logging, and adjusts selected WAL, timeout, and parallel-query parameters.

The template increases write latency and may block writes when no synchronous replica is available. Before use, confirm consistency objectives, failure domains, client commit settings, and availability requirements.

Also evaluate [**`node_tune: crit`**](/docs/node/param#node_tune), although host tuning and database parameters can be selected independently.


----------------

<span id="use-cases"></span>

## Usage

```yaml
pg-critical:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-critical
    pg_conf: crit.yml
    node_tune: crit
```

A three-node topology leaves room to select another synchronous replica after one node fails. Continued write availability still depends on remaining node state, DCS, network, and synchronous-replica selection. Exercise failures on the target topology.


----------------

<span id="core-features"></span>
<span id="forced-sync-replication"></span>

## Strict Synchronous Replication

CRIT does not derive synchronous mode from [**`pg_rpo`**](/docs/pgsql/param#pg_rpo). It enables these settings unconditionally:

```yaml
synchronous_mode: true
synchronous_mode_strict: true
```

`synchronous_mode_strict` prevents Patroni from falling back to asynchronous replication when no synchronous replica is available. The primary therefore blocks writes that require synchronous acknowledgment.

The mode targets preservation of acknowledged transactions when:

- the session has not lowered `synchronous_commit` to `local`, `off`, or another asynchronous level;
- a synchronous replica acknowledges WAL during commit;
- failover selects only an eligible node containing the required WAL.

RPO must therefore be validated against client parameters, replication state, and the failure model; it cannot be inferred from the template name alone.

To require acknowledgment from multiple synchronous replicas, change Patroni dynamic configuration:

```bash
pg edit-config pg-critical
```

```yaml
synchronous_node_count: 2
```

A higher synchronous-replica count imposes stricter conditions for accepting writes.


----------------

<span id="forced-data-checksums"></span>

## Data Checksums

CRIT initialization always includes:

```yaml
initdb:
  - data-checksums
```

This overrides a disabled [**`pg_checksum`**](/docs/pgsql/param#pg_checksum) setting and enables page checksums for a new cluster. Checksums detect page damage after write; they do not detect logical errors or every memory error.


----------------

<span id="audit-logging-key-differences"></span>
<span id="query-logging"></span>

## Connection and Query Logging

CRIT logs DDL, statements taking longer than 100 ms, and disconnection events:

```yaml
log_statement: ddl
log_min_duration_statement: 100
log_disconnections: 'on'
```

PostgreSQL 18 and later use:

```yaml
log_connections: 'receipt,authentication,authorization'
```

Earlier versions use `log_connections: on`. These records support connection auditing but are not fine-grained SQL audit logs. Enable `pgaudit` separately to record object reads and writes, roles, or statement classes.

`track_activity_query_size` is set to 32 KiB to retain longer active-query text. Logs may contain SQL and business data; restrict access and set an appropriate retention period.


----------------

## Watchdog

CRIT changes Patroni watchdog from disabled to `automatic`:

```yaml
watchdog:
  mode: automatic
  device: /dev/watchdog
```

`automatic` activates only when the system has a usable watchdog device. If fencing must be mandatory, verify hardware, virtualization support, and device permissions before setting `required` explicitly. A bad configuration can prevent primary startup or disrupt failover.


----------------

<span id="parameter-details"></span>
<span id="key-differences-from-oltp"></span>
<span id="disabled-parallel-query"></span>

## Key Parameter Differences

| Parameter | CRIT | OLTP Default | Effect |
|:---|:---|:---|:---|
| `synchronous_mode` | Always enabled | Derived from `pg_rpo` | Consistency first |
| `synchronous_mode_strict` | `true` | General template behavior | Blocks writes without a synchronous replica |
| `data-checksums` | Always enabled | Controlled by `pg_checksum` | Page-damage detection |
| `max_parallel_workers_per_gather` | `0` | Calculated from CPU | Reduces parallel-query variability |
| `wal_writer_delay` | `10ms` | `20ms` | Processes WAL more frequently |
| `wal_writer_flush_after` | `0` | `1MB` | Changes WAL flush behavior |
| `idle_replication_slot_timeout` | `3d` | `7d` | Removes idle replication slots sooner |
| `idle_in_transaction_session_timeout` | `1min` | `10min` | Terminates idle transactions sooner |
| `track_activity_query_size` | `32KiB` | `8KiB` | Retains longer query text |
| `log_connections` | Detailed connection events | PostgreSQL 18 logs authorization by default | Adds connection-audit detail |
| `log_disconnections` | `on` | `off` | Records disconnections |
{.full-width}

CRIT also disables parallel gather for individual queries and adjusts parallel costs, autovacuum, WAL, and statistics parameters. The active values for a release are defined in `roles/pgsql/templates/crit.yml`.


----------------

<span id="extension-config"></span>

## Preloaded Extensions

CRIT generates `shared_preload_libraries` from [**`pg_libs`**](/docs/pgsql/param#pg_libs). The role default sets:

```yaml
pg_libs: 'pg_stat_statements, auto_explain'
```

Selecting `crit.yml` alone **does not load `passwordcheck`**. Configure it explicitly when password-complexity checks are required:

```yaml
pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain'
```

[**`ha/safe`**](/docs/conf/safe) includes this override. To use `pgaudit`, also add it to `pg_libs` and configure the audit scope:

```yaml
pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain, pgaudit'
pg_parameters:
  pgaudit.log: 'ddl, role, write'
```


----------------

<span id="performance-impact"></span>
<span id="ha-configuration"></span>

## Performance and Availability Impact

- Synchronous commit waits for a synchronous replica; write latency includes at least replica network and WAL durability time.
- Strict synchronous mode blocks writes when no synchronous replica is available.
- Disabling parallel gather can reduce throughput for large queries, but also reduces resource variability from parallel execution.
- More detailed logging and statistics consume additional I/O, CPU, and storage.
- A shorter idle-transaction timeout may terminate application sessions that hold a transaction open without executing statements.

The impact depends on hardware, network, queries, and client behavior. Test with the actual workload instead of relying on a fixed latency or throughput percentage.


----------------

<span id="security-hardening-tips"></span>
<span id="monitoring-metrics"></span>

## Launch Checklist

- [ ] Deploy at least one usable synchronous replica and verify write behavior during node failure
- [ ] Check whether applications change `synchronous_commit`
- [ ] Select watchdog `automatic` or `required` according to availability requirements
- [ ] Verify collection, access control, and retention for connection logs
- [ ] Configure `pg_libs` and extension parameters explicitly when password checks or SQL auditing are required
- [ ] Test write latency, throughput, and idle-transaction timeouts with the production workload
- [ ] Exercise primary, synchronous-replica, DCS, and network-partition failures


----------------

<span id="references"></span>

## Related Documentation

- [**Security Model**](/docs/concept/sec/level): where CRIT fits in the overall hardening path
- [**Data Security**](/docs/concept/sec/data): boundaries of synchronous replication, checksums, and auditing
- [**`ha/safe` Configuration**](/docs/conf/safe): three-node hardening example that includes CRIT
- [**Sync Standby**](/docs/pgsql/config/cluster#sync-standby): synchronous replication configuration
- [**Quorum Commit**](/docs/pgsql/config/cluster#quorum-commit): synchronous replica count
- [**OLTP Template**](/docs/pgsql/template/oltp/): general transaction template
