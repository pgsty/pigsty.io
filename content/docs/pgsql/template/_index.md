---
title: Param Templates
weight: 2200
description: Use Pigsty's built-in Patroni config templates or customize your own
icon: fas fa-paint-roller
module: [PGSQL]
categories: [Reference]
---


Pigsty provides four preset Patroni/PostgreSQL config templates optimized for different workloads:

| Template                 | CPU Cores | Use Case          | Characteristics           |
|:-------------------------|:----------|:------------------|:--------------------------|
| [**`oltp.yml`**](oltp)   | 4-128C    | OLTP transactions | High concurrency, low latency |
| [**`olap.yml`**](olap)   | 4-128C    | OLAP analytics    | Large queries, high parallelism |
| [**`crit.yml`**](crit)   | 4-128C    | Critical/Finance  | Data safety, audit, zero-loss |
| [**`tiny.yml`**](tiny)   | 1-3C      | Tiny instances    | Resource-constrained envs |
{.full-width}

Use [**`pg_conf`**](/docs/pgsql/param#pg_conf) to select a template; default is [**`oltp.yml`**](oltp).

> The database tuning template [**`pg_conf`**](/docs/pgsql/param#pg_conf) should be paired with the OS tuning template [**`node_tune`**](/docs/node/param#node_tune).


----------------

## Usage

Set [**`pg_conf`**](/docs/pgsql/param#pg_conf) in your cluster definition.
It's recommended to set [**`node_tune`**](/docs/node/param#node_tune) accordingly for OS-level tuning:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
  vars:
    pg_cluster: pg-test
    pg_conf: oltp.yml    # PostgreSQL config template (default)
    node_tune: oltp      # OS tuning template (default)
```

For critical financial workloads, use [**`crit.yml`**](crit):

```yaml
pg-finance:
  hosts:
    10.10.10.21: { pg_seq: 1, pg_role: primary }
    10.10.10.22: { pg_seq: 2, pg_role: replica }
    10.10.10.23: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-finance
    pg_conf: crit.yml    # PostgreSQL critical template
    node_tune: crit      # OS critical tuning
```

For low-spec VMs or dev environments, use [**`tiny.yml`**](tiny):

```yaml
pg-dev:
  hosts:
    10.10.10.31: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-dev
    pg_conf: tiny.yml    # PostgreSQL tiny template
    node_tune: tiny      # OS tiny tuning
```


----------------

## Comparison

The four templates differ significantly in key parameters:

### Connections & Memory

| Parameter                       | OLTP         | OLAP         | CRIT         | TINY         |
|:--------------------------------|:-------------|:-------------|:-------------|:-------------|
| **max_connections**             | 500/1000     | 500          | 500/1000     | 250          |
| **work_mem** range              | 64MB-1GB     | 64MB-8GB     | 64MB-1GB     | 16MB-256MB   |
| **maintenance_work_mem**        | 25% shmem    | 50% shmem    | 25% shmem    | 25% shmem    |
| **max_locks_per_transaction**   | 1-2x maxconn | 2-4x maxconn | 1-2x maxconn | 1-2x maxconn |
{.full-width}

### Parallel Query

| Parameter                           | OLTP            | OLAP    | CRIT      | TINY      |
|:------------------------------------|:----------------|:--------|:----------|:----------|
| **max_worker_processes**            | cpu+8           | cpu+12  | cpu+8     | cpu+4     |
| **max_parallel_workers**            | 50% cpu         | 80% cpu | 50% cpu   | 50% cpu   |
| **max_parallel_workers_per_gather** | 20% cpu (max 8) | 50% cpu | 0 (off)   | 0 (off)   |
| **parallel_setup_cost**             | 2000            | 1000    | 2000      | 1000      |
| **parallel_tuple_cost**             | 0.2             | 0.1     | 0.2       | 0.1       |
{.full-width}

### Sync Replication

| Parameter              | OLTP           | OLAP           | CRIT       | TINY           |
|:-----------------------|:---------------|:---------------|:-----------|:---------------|
| **synchronous_mode**   | depends pg_rpo | depends pg_rpo | forced on  | depends pg_rpo |
| **data_checksums**     | optional       | optional       | forced on  | optional       |
{.full-width}

### Vacuum Config

| Parameter                  | OLTP | OLAP  | CRIT | TINY |
|:---------------------------|:-----|:------|:-----|:-----|
| **vacuum_cost_delay**      | 20ms | 10ms  | 20ms | 20ms |
| **vacuum_cost_limit**      | 2000 | 10000 | 2000 | 2000 |
| **autovacuum_max_workers** | 3    | 3     | 3    | 2    |
{.full-width}

### Timeout & Security

| Parameter                               | OLTP    | OLAP   | CRIT      | TINY    |
|:----------------------------------------|:--------|:-------|:----------|:--------|
| **idle_in_transaction_session_timeout** | 10min   | off    | 1min      | 10min   |
| **log_min_duration_statement**          | 100ms   | 1000ms | 100ms     | 100ms   |
| **default_statistics_target**           | 400     | 1000   | 400       | 200     |
| **track_activity_query_size**           | 8KB     | 8KB    | 32KB      | 8KB     |
| **log_connections**                     | auth    | auth   | full      | default |
{.full-width}


### IO Config (PG17+)

| Parameter           | OLTP           | OLAP           | CRIT          | TINY      |
|:--------------------|:---------------|:---------------|:--------------|:----------|
| **io_workers**      | 25% cpu (4-16) | 50% cpu (4-32) | 25% cpu (4-8) | 3         |
| **temp_file_limit** | 1/20 disk      | 1/5 disk       | 1/20 disk     | 1/20 disk |
{.full-width}


----------------

## Selection Guide

- [**OLTP Template**](oltp): Default choice for most transaction processing. Ideal for e-commerce, social, gaming apps.

- [**OLAP Template**](olap): For data warehouses, BI reports, ETL. Allows large queries, high parallelism, relaxed timeouts.

- [**CRIT Template**](crit): For financial transactions, core accounting with strict consistency/security requirements. Forced sync replication, checksums, full audit.

- [**TINY Template**](tiny): For dev/test environments, resource-constrained VMs, Raspberry Pi. Minimizes resource usage, disables parallel queries.


----------------

## Custom Templates

Create custom templates based on existing ones. Templates are in `roles/pgsql/templates/`:

```bash
roles/pgsql/templates/
├── oltp.yml    # OLTP template (default)
├── olap.yml    # OLAP template
├── crit.yml    # CRIT critical template
└── tiny.yml    # TINY micro template
```

Steps to create a custom template:

1. Copy an existing template as base
2. Modify parameters as needed
3. Place in `roles/pgsql/templates/`
4. Reference via [`pg_conf`](/docs/pgsql/param#pg_conf)

Example:

```bash
cp roles/pgsql/templates/oltp.yml roles/pgsql/templates/myapp.yml
# Edit myapp.yml as needed
```

Then use in your cluster:

```yaml
pg-myapp:
  vars:
    pg_conf: myapp.yml
```

Templates use Jinja2 syntax; parameters are dynamically computed based on node resources (CPU, memory, disk).


----------------

## Tuning Strategy

For technical details on template parameter optimization, see [**Tuning Strategy**](tune):

- Memory tuning (shared buffers, work mem, max connections)
- CPU tuning (parallel query worker config)
- Storage tuning (WAL size, temp file limits)
- Manual parameter adjustment


----------------

## Related Parameters

- [**`pg_conf`**](/docs/pgsql/param#pg_conf): PostgreSQL config template
- [**`node_tune`**](/docs/node/param#node_tune): OS tuning template, should match `pg_conf`
- [**`pg_rto`**](/docs/pgsql/param#pg_rto): Recovery time objective, affects failover timeout
- [**`pg_rpo`**](/docs/pgsql/param#pg_rpo): Recovery point objective, affects sync replication
- [**`pg_max_conn`**](/docs/pgsql/param#pg_max_conn): Override template max connections
- [**`pg_shared_buffer_ratio`**](/docs/pgsql/param#pg_shared_buffer_ratio): Shared buffer memory ratio
- [**`pg_storage_type`**](/docs/pgsql/param#pg_storage_type): Storage type, affects IO params

