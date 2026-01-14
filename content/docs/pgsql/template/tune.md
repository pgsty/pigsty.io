---
title: Parameter Optimization Policy
linkTitle: Optimize Params
weight: 10
description: 了解在 Pigsty 中，预置的四种 Patroni 场景化模板所采用的不同参数优化策略
icon: fa-solid fa-gauge-high
module: [PGSQL]
categories: [参考]
---


Pigsty provides four scenario-based parameter templates by default, which can be specified and used through the [`pg_conf`](/docs/pgsql/param#pg_conf) parameter.

- `tiny.yml`: Optimized for small nodes, VMs, and small demos (1-8 cores, 1-16GB)
- `oltp.yml`: Optimized for OLTP workloads and latency-sensitive applications (4C8GB+) (default template)
- `olap.yml`: Optimized for OLAP workloads and throughput (4C8G+)
- `crit.yml`: Optimized for data consistency and critical applications (4C8G+)

Pigsty adopts different parameter optimization strategies for these four default scenarios, as shown below:


--------

## Memory Parameter Tuning

Pigsty automatically detects the system's memory size and uses it as the basis for setting the maximum number of connections and memory-related parameters.

- [`pg_max_conn`](/docs/pgsql/param#pg_max_conn): PostgreSQL maximum connections, `auto` will use recommended values for different scenarios
- [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio): Shared buffer memory ratio, default is 0.25

By default, Pigsty uses 25% of memory as PostgreSQL shared buffers, with the remaining 75% as the operating system cache.

By default, if the user has not set a [`pg_max_conn`](/docs/pgsql/param#pg_max_conn) maximum connections value, Pigsty will use defaults according to the following rules:

- oltp: 500 (pgbouncer) / 1000 (postgres)
- crit: 500 (pgbouncer) / 1000 (postgres)
- tiny: 300
- olap: 300

For OLTP and CRIT templates, if the service is not pointing to the pgbouncer connection pool but directly connects to the postgres database, the maximum connections will be doubled to 1000.

After determining the maximum connections, `work_mem` is calculated from shared memory size / maximum connections and limited to the range of 64MB ~ 1GB.

```yaml
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

In PostgreSQL, there are 4 important parameters related to parallel queries. Pigsty automatically optimizes parameters based on the current system's CPU cores.
In all strategies, the total number of parallel processes (total budget) is usually set to CPU cores + 8, with a minimum of 16, to reserve enough background workers for logical replication and extensions. The OLAP and TINY templates vary slightly based on scenarios.

| OLTP                               | Setting Logic                    | Range Limits                           |
|------------------------------------|----------------------------------|----------------------------------------|
| `max_worker_processes`             | max(100% CPU + 8, 16)            | CPU cores + 4, minimum 12              |
| `max_parallel_workers`             | max(ceil(50% CPU), 2)            | 1/2 CPU rounded up, minimum 2          |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2)            | 1/3 CPU rounded up, minimum 2          |
| `max_parallel_workers_per_gather`  | min(max(ceil(20% CPU), 2),8)     | 1/5 CPU rounded down, minimum 2, max 8 |

| OLAP                               | Setting Logic          | Range Limits                    |
|------------------------------------|------------------------|---------------------------------|
| `max_worker_processes`             | max(100% CPU + 12, 20) | CPU cores + 12, minimum 20      |
| `max_parallel_workers`             | max(ceil(80% CPU, 2))  | 4/5 CPU rounded up, minimum 2   |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2)  | 1/3 CPU rounded up, minimum 2   |
| `max_parallel_workers_per_gather`  | max(floor(50% CPU), 2) | 1/2 CPU rounded up, minimum 2   |

| CRIT                               | Setting Logic         | Range Limits                  |
|------------------------------------|-----------------------|-------------------------------|
| `max_worker_processes`             | max(100% CPU + 8, 16) | CPU cores + 8, minimum 16     |
| `max_parallel_workers`             | max(ceil(50% CPU), 2) | 1/2 CPU rounded up, minimum 2 |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 2) | 1/3 CPU rounded up, minimum 2 |
| `max_parallel_workers_per_gather`  | 0, enable as needed   |                               |

| TINY                               | Setting Logic         | Range Limits                     |
|------------------------------------|-----------------------|----------------------------------|
| `max_worker_processes`             | max(100% CPU + 4, 12) | CPU cores + 4, minimum 12        |
| `max_parallel_workers`             | max(ceil(50% CPU) 1)  | 50% CPU rounded down, minimum 1  |
| `max_parallel_maintenance_workers` | max(ceil(33% CPU), 1) | 33% CPU rounded down, minimum 1  |
| `max_parallel_workers_per_gather`  | 0, enable as needed   |                                  |

Note that the CRIT and TINY templates disable parallel queries by setting `max_parallel_workers_per_gather = 0`.
Users can enable parallel queries as needed by setting this parameter.

Both OLTP and CRIT templates additionally set the following parameters, doubling the parallel query cost to reduce the tendency to use parallel queries.

```yaml
parallel_setup_cost: 2000           # double from 100 to increase parallel cost
parallel_tuple_cost: 0.2            # double from 0.1 to increase parallel cost
min_parallel_table_scan_size: 16MB  # double from 8MB to increase parallel cost
min_parallel_index_scan_size: 1024  # double from 512 to increase parallel cost
```

Note that adjustments to the `max_worker_processes` parameter only take effect after a restart. Additionally, when a replica's configuration value for this parameter is higher than the primary's, the replica will fail to start.
This parameter must be adjusted through Patroni configuration management, which ensures consistent primary-replica configuration and prevents new replicas from failing to start during failover.



--------

## Storage Space Parameters

Pigsty automatically detects the total space of the disk where the `/data/postgres` main data directory is located and uses it as the basis for specifying the following parameters:

```yaml
{% raw %}
min_wal_size: {{ ([pg_size_twentieth, 200])|min }}GB                  # 1/20 disk size, max 200GB
max_wal_size: {{ ([pg_size_twentieth * 4, 2000])|min }}GB             # 2/10 disk size, max 2000GB
max_slot_wal_keep_size: {{ ([pg_size_twentieth * 6, 3000])|min }}GB   # 3/10 disk size, max 3000GB
temp_file_limit: {{ ([pg_size_twentieth, 200])|min }}GB               # 1/20 of disk size, max 200GB
{% endraw %}
```

- `temp_file_limit` defaults to 5% of disk space, capped at 200GB.
- `min_wal_size` defaults to 5% of disk space, capped at 200GB.
- `max_wal_size` defaults to 20% of disk space, capped at 2TB.
- `max_slot_wal_keep_size` defaults to 30% of disk space, capped at 3TB.

As a special case, the OLAP template allows 20% for `temp_file_limit`, capped at 2TB.


--------

## Manual Parameter Tuning

In addition to using Pigsty's automatically configured parameters, you can also manually tune PostgreSQL parameters.

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

