---
title: TINY Template
weight: 50
description: PostgreSQL config template optimized for micro instances and resource-constrained environments
icon: fa-solid fa-microchip
module: [PGSQL]
categories: [Reference]
---


`tiny.yml` is optimized for **micro instances** and resource-constrained environments. Designed for 1-3 core CPUs with minimal resource usage, conservative memory allocation, and disabled parallel queries.

> Pair with [**`node_tune`**](/docs/node/param#node_tune) = `tiny` for OS-level tuning.


----------------

## Use Cases

TINY template is ideal for:

- **Dev/test**: Local development, CI/CD testing
- **Low-spec VMs**: 1-2 core CPU, 1-4GB RAM cloud instances
- **Edge computing**: Raspberry Pi, embedded devices
- **Demos**: Quick Pigsty experience
- **Personal projects**: Resource-limited blogs, small apps

**Resource constraints**:
- 1-3 CPU cores
- 1-8 GB RAM
- Limited disk space
- May share resources with other services


----------------

## Usage

Specify [**`pg_conf`**](/docs/pgsql/param#pg_conf) = `tiny.yml` in cluster definition:

```yaml
pg-dev:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-dev
    pg_conf: tiny.yml    # PostgreSQL micro instance template
    node_tune: tiny      # OS micro instance tuning
```

Single-node development:

```yaml
pg-local:
  hosts:
    127.0.0.1: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-local
    pg_conf: tiny.yml    # PostgreSQL micro instance template
    node_tune: tiny      # OS micro instance tuning
```


----------------

## Parameter Details

### Connection Management

```yaml
max_connections: 250   # OLTP: 500-1000, reduced connection overhead
superuser_reserved_connections: 10
```

Micro instances don't need many concurrent connections; 250 is sufficient for dev/test.

### Memory Config

TINY template uses conservative memory allocation:

| Parameter | Formula | Description |
|:----------|:--------|:------------|
| `shared_buffers` | mem × `pg_shared_buffer_ratio` | Default ratio 0.25 |
| `maintenance_work_mem` | shared_buffers × 25% | For VACUUM, CREATE INDEX |
| `work_mem` | 16MB - **256MB** | Smaller sort/hash memory |
| `effective_cache_size` | total mem - shared_buffers | Estimated cache memory |

**work_mem calculation** (differs from OLTP):
```
work_mem = min(max(shared_buffers / max_connections, 16MB), 256MB)
```

Smaller `work_mem` limit (256MB vs OLTP's 1GB) prevents memory exhaustion.

### Parallel Query (Fully Disabled)

TINY template completely disables parallel queries:

```yaml
max_worker_processes: cpu + 4 (min 12)      # OLTP: cpu + 8
max_parallel_workers: 50% × cpu (min 1)      # OLTP: 50% (min 2)
max_parallel_workers_per_gather: 0           # parallel queries disabled
max_parallel_maintenance_workers: 33% × cpu (min 1)
```

`max_parallel_workers_per_gather: 0` ensures queries won't spawn parallel workers, avoiding resource contention on low-core systems.

### IO Config (PG17+)

```yaml
io_workers: 3   # fixed value, OLTP: 25% cpu (4-16)
```

Fixed low IO worker count suitable for resource-constrained environments.

### Vacuum Config

```yaml
vacuum_cost_delay: 20ms
vacuum_cost_limit: 2000
autovacuum_max_workers: 2          # OLTP: 3, one fewer worker
autovacuum_naptime: 1min
# autovacuum_vacuum_scale_factor uses default
# autovacuum_analyze_scale_factor uses default
```

Fewer autovacuum workers reduce background resource usage.

### Query Optimization

```yaml
random_page_cost: 1.1
effective_io_concurrency: 200
default_statistics_target: 200     # OLTP: 400, lower precision saves space
```

Lower `default_statistics_target` reduces `pg_statistic` table size.

### Logging Config

```yaml
log_min_duration_statement: 100    # same as OLTP
log_statement: ddl
log_checkpoints: on
log_lock_waits: on
log_temp_files: 1024
# log_connections uses default (no extra logging)
```

TINY template doesn't enable extra connection logging to reduce log volume.

### Client Timeouts

```yaml
deadlock_timeout: 50ms
idle_in_transaction_session_timeout: 10min   # same as OLTP
```

### Extension Config

```yaml
shared_preload_libraries: 'pg_stat_statements, auto_explain'

pg_stat_statements.max: 2500      # OLTP: 10000, reduced memory usage
pg_stat_statements.track: all
pg_stat_statements.track_utility: off
pg_stat_statements.track_planning: off
```

`pg_stat_statements.max` reduced from 10000 to 2500, saving ~75% memory.


----------------

## Key Differences from OLTP

| Parameter | [**TINY**](tiny) | [**OLTP**](oltp) | Reason |
|:----------|:-----------------|:-----------------|:-------|
| max_connections | **250** | 500-1000 | Reduce connection overhead |
| work_mem limit | **256MB** | 1GB | Prevent memory exhaustion |
| max_worker_processes | cpu+4 | cpu+8 | Fewer background processes |
| max_parallel_workers_per_gather | **0** | 20% cpu | Disable parallel queries |
| autovacuum_max_workers | **2** | 3 | Reduce background load |
| default_statistics_target | **200** | 400 | Save space |
| pg_stat_statements.max | **2500** | 10000 | Reduce memory usage |
| io_workers | **3** | 25% cpu | Fixed low value |


----------------

## Resource Estimates

TINY template resource usage by configuration:

### 1 Core 1GB RAM

```yaml
shared_buffers: ~256MB
work_mem: ~16MB
maintenance_work_mem: ~64MB
max_connections: 250
max_worker_processes: ~12
```

**PostgreSQL process memory**: ~400-600MB

### 2 Core 4GB RAM

```yaml
shared_buffers: ~1GB
work_mem: ~32MB
maintenance_work_mem: ~256MB
max_connections: 250
max_worker_processes: ~12
```

**PostgreSQL process memory**: ~1.5-2GB

### 4 Core 8GB RAM

Consider using OLTP template instead:

```yaml
pg-small:
  vars:
    pg_conf: oltp.yml   # 4C8G can use OLTP template
```


----------------

## Performance Tuning Tips

### Further Resource Reduction

For extremely constrained resources:

```yaml
pg_parameters:
  max_connections: 100           # further reduce
  shared_buffers: 128MB          # further reduce
  maintenance_work_mem: 32MB
  work_mem: 8MB
```

### Disable Unnecessary Extensions

```yaml
pg_libs: 'pg_stat_statements'    # keep only essential extensions
```

### Disable Unnecessary Features

```yaml
pg_parameters:
  track_io_timing: off           # disable IO timing tracking
  track_functions: none          # disable function tracking
```

### Use External Connection Pool

Even on micro instances, PgBouncer significantly improves concurrency:

```yaml
pg-tiny:
  vars:
    pg_conf: tiny.yml
    pg_default_service_dest: pgbouncer
    pgbouncer_poolmode: transaction
```


----------------

## Cloud Platform Recommendations

### AWS

- **t3.micro**: 1 vCPU, 1GB RAM - suitable for TINY
- **t3.small**: 2 vCPU, 2GB RAM - suitable for TINY
- **t3.medium**: 2 vCPU, 4GB RAM - consider OLTP

### Alibaba Cloud

- **ecs.t6-c1m1.small**: 1 vCPU, 1GB RAM - suitable for TINY
- **ecs.t6-c1m2.small**: 1 vCPU, 2GB RAM - suitable for TINY
- **ecs.t6-c1m4.small**: 1 vCPU, 4GB RAM - suitable for TINY

### Tencent Cloud

- **SA2.SMALL1**: 1 vCPU, 1GB RAM - suitable for TINY
- **SA2.SMALL2**: 1 vCPU, 2GB RAM - suitable for TINY
- **SA2.SMALL4**: 1 vCPU, 4GB RAM - suitable for TINY


----------------

## Edge Device Deployment

### Raspberry Pi 4

```yaml
pg-pi:
  hosts:
    192.168.1.100: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-pi
    pg_conf: tiny.yml       # PostgreSQL micro instance template
    node_tune: tiny         # OS micro instance tuning
    pg_storage_type: SSD    # SSD storage recommended
```

### Docker Container

```yaml
pg-docker:
  hosts:
    172.17.0.2: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-docker
    pg_conf: tiny.yml       # PostgreSQL micro instance template
    node_tune: tiny         # OS micro instance tuning
```


----------------

## Upgrading to OLTP

When your application grows and needs more resources, easily upgrade to [**OLTP template**](oltp):

1. Upgrade VM specs (4 core 8GB+)
2. Modify cluster config:

```yaml
pg-growing:
  vars:
    pg_conf: oltp.yml    # change from tiny.yml to oltp.yml
    node_tune: oltp      # change from tiny to oltp
```

3. [Reconfigure cluster](/docs/pgsql/admin#configure-cluster) or redeploy


----------------

## References

- [**`pg_conf`**](/docs/pgsql/param#pg_conf): PostgreSQL config template selection
- [**`node_tune`**](/docs/node/param#node_tune): OS tuning template, should match `pg_conf`
- [**OLTP Template**](oltp): Transaction template, upgrade for 4C8G+
- [**OLAP Template**](olap): Analytics template
- [**CRIT Template**](crit): Critical business template
- [Single-Node Install](/docs/setup/install#single-node-install): Pigsty single-node installation guide

