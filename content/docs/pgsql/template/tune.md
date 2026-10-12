---
title: Parameter Optimization Policy
linkTitle: Optimize Params
weight: 10
description: Learn the parameter optimization strategies Pigsty uses for the 4 different PostgreSQL workload scenarios.
icon: fa-solid fa-gauge-high
module: [PGSQL]
categories: [Reference]
---


Pigsty provides four parameter templates for different workloads.
Select a template with [`pg_conf`](/docs/pgsql/param#pg_conf).

- `tiny.yml`: Optimized for small nodes, VMs, and demos (the template is labeled for 1-3 cores)
- `oltp.yml`: Optimized for OLTP workloads and latency-sensitive applications (4C8GB+) (default template)
- `olap.yml`: Optimized for OLAP workloads and throughput (4C8G+)
- `crit.yml`: Optimized for data consistency and critical applications (4C8G+)

The following sections describe the optimization settings for these four templates.


--------

## Memory Parameter Tuning

Pigsty detects the system's memory size.
It uses this value to set the maximum number of connections and memory-related parameters.

- [`pg_max_conn`](/docs/pgsql/param#pg_max_conn): PostgreSQL maximum connections, `auto` will use recommended values for different scenarios
- [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio): Shared buffer memory ratio, default is 0.25

By default, Pigsty assigns 25% of memory to PostgreSQL shared buffers.
Connections, `work_mem`, background processes, and the operating-system cache share the remaining memory.

If you do not set [`pg_max_conn`](/docs/pgsql/param#pg_max_conn), Pigsty selects the maximum connections from these defaults:

- oltp: 500 (pgbouncer) / 1000 (postgres)
- crit: 500 (pgbouncer) / 1000 (postgres)
- tiny: 250
- olap: 500

For OLTP and CRIT, the maximum is 500 when the service connects through PgBouncer.
If the service connects directly to PostgreSQL, the maximum doubles to 1000.

Pigsty calculates `work_mem` as shared memory size divided by maximum connections.
It limits the result to 64MB ~ 1GB.

```jinja2
{% raw %}
{% if pg_max_conn != 'auto' and pg_max_conn|int >= 20 %}{% set pg_max_connections = pg_max_conn|int %}{% else %}{% if pg_default_service_dest|default('postgres') == 'pgbouncer' %}{% set pg_max_connections = 500 %}{% else %}{% set pg_max_connections = 1000 %}{% endif %}{% endif %}
{% set pg_max_prepared_transactions = pg_max_connections if 'citus' in pg_libs else 0 %}
{% set pg_max_locks_per_transaction = (2 * pg_max_connections)|int if 'citus' in pg_libs or 'timescaledb' in pg_libs else pg_max_connections %}
{% set pg_shared_buffers = (node_mem_mb|int * pg_shared_buffer_ratio|float) | round(0, 'ceil') | int %}
{% set pg_maintenance_mem = (pg_shared_buffers|int * 0.25)|round(0, 'ceil')|int %}
{% set pg_effective_cache_size = node_mem_mb|int - pg_shared_buffers|int  %}
{% set pg_workmem =  ([ ([ (pg_shared_buffers / pg_max_connections)|round(0,'floor')|int , 64 ])|max|int , 1024])|min|int %}
{% endraw %}
```


--------

## CPU Parameter Tuning

PostgreSQL has 4 important parameters for parallel queries.
Pigsty sets them from the number of CPU cores.
The templates first calculate a worker budget for parallel queries and extensions.
They add eight reserved slots when they write `max_worker_processes`.
The final GUC is therefore eight higher than the intermediate variable near the start of each template.

| OLTP                               | Setting Logic                    | Range Limits                           |
|------------------------------------|----------------------------------|----------------------------------------|
| `max_worker_processes`             | max(CPU + 8, 16) + 8             | `max(CPU + 16, 24)`                    |
| `max_parallel_workers`             | max(ceil(50% CPU), 2)            | 1/2 CPU rounded up, minimum 2          |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2)            | 1/3 CPU rounded up, minimum 2          |
| `max_parallel_workers_per_gather`  | min(max(ceil(20% CPU), 2),8)     | 1/5 CPU rounded down, minimum 2, max 8 |

| OLAP                               | Setting Logic          | Range Limits                    |
|------------------------------------|------------------------|---------------------------------|
| `max_worker_processes`             | max(CPU + 12, 20) + 8  | `max(CPU + 20, 28)`             |
| `max_parallel_workers`             | max(ceil(80% CPU, 2))  | 4/5 CPU rounded up, minimum 2   |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2)  | 1/3 CPU rounded up, minimum 2   |
| `max_parallel_workers_per_gather`  | max(floor(50% CPU), 2) | 1/2 CPU rounded up, minimum 2   |

| CRIT                               | Setting Logic         | Range Limits                  |
|------------------------------------|-----------------------|-------------------------------|
| `max_worker_processes`             | max(CPU + 8, 16) + 8  | `max(CPU + 16, 24)`           |
| `max_parallel_workers`             | max(ceil(50% CPU), 2) | 1/2 CPU rounded up, minimum 2 |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2) | 1/3 CPU rounded up, minimum 2 |
| `max_parallel_workers_per_gather`  | 0, enable as needed   |                               |

| TINY                               | Setting Logic         | Range Limits                     |
|------------------------------------|-----------------------|----------------------------------|
| `max_worker_processes`             | max(CPU + 4, 12) + 8   | `max(CPU + 12, 20)`             |
| `max_parallel_workers`             | max(floor(50% CPU), 1) | 50% CPU rounded down, minimum 1  |
| `max_parallel_maintenance_workers` | max(floor(33% CPU), 1) | 33% CPU rounded down, minimum 1  |
| `max_parallel_workers_per_gather`  | 0                       | Disables parallel gather per query |

The CRIT and TINY templates set `max_parallel_workers_per_gather = 0` to disable parallel queries.
To enable parallel queries, change this parameter as required.

The OLTP and CRIT templates set the following parameters.
They double parallel query costs to make the planner less likely to choose parallel queries.

```yaml
parallel_setup_cost: 2000           # double from 100 to increase parallel cost
parallel_tuple_cost: 0.2            # double from 0.1 to increase parallel cost
min_parallel_table_scan_size: 32MB  # 4x default 8MB, prefer non-parallel scan
min_parallel_index_scan_size: 2MB   # 4x default 512kB, prefer non-parallel scan
```

Changes to `max_worker_processes` take effect only after a restart.
A replica fails to start if its value is higher than the primary value.
Change this parameter through Patroni configuration management.
Patroni keeps primary and replica settings consistent and prevents new replicas from failing to start during failover.



--------

## Storage Space Parameters

Pigsty detects the total disk capacity for the `/data/postgres` main data directory.
It uses this value to set these parameters:

```jinja2
{% raw %}
{% set pg_size_twentieth = ([([(node_fs_bytes|int / 21474836480)|round(0, 'ceil')|int, 1])|max, 100])|min %}
min_wal_size: {{ ([pg_size_twentieth, 200])|min }}GB                  # 1/20 disk size, max 200GB
max_wal_size: {{ ([pg_size_twentieth * 4, 2000])|min }}GB             # 2/10 disk size, max 2000GB
max_slot_wal_keep_size: {{ ([pg_size_twentieth * 6, 3000])|min }}GB   # 3/10 disk size, max 3000GB
temp_file_limit: {{ ([pg_size_twentieth, 200])|min }}GB               # 1/20 of disk size, max 200GB
{% endraw %}
```

- `pg_size_twentieth` is one twentieth of disk capacity rounded up, clamped to 1-100GB.
- Therefore, in the three standard templates, the effective cap for `temp_file_limit` and `min_wal_size` is 100GB.
- The effective cap for `max_wal_size` is 400GB.
- The effective cap for `max_slot_wal_keep_size` is 600GB.

The OLAP template sets `temp_file_limit` to `pg_size_twentieth × 4`, with an effective limit of 400GB.
Existing 200GB/2TB/3TB comments at the ends of template lines omit the 100GB limit already applied to `pg_size_twentieth`.
Use the rendered expression as the authoritative value.


--------

## Manual Parameter Tuning

You can manually adjust PostgreSQL parameters in addition to the values that Pigsty sets automatically.

Use the `pg edit-config <cluster>` command to interactively edit cluster configuration:

```bash
pg edit-config pg-meta
```

Or use the `-p` parameter to directly set parameters:

```bash
pg edit-config -p log_min_duration_statement=1000 pg-meta
pg edit-config --force -p shared_preload_libraries='timescaledb, pg_cron, pg_stat_statements, auto_explain' pg-meta
```

You can also use the Patroni REST API to modify configuration:

```bash
curl -u 'postgres:Patroni.API' \
    -d '{"postgresql":{"parameters": {"log_min_duration_statement":200}}}' \
    -s -X PATCH http://10.10.10.10:8008/config | jq .
```
