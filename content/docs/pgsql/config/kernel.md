---
title: Kernel Version
weight: 1202
description: How to choose the appropriate PostgreSQL kernel and major version.
icon: fa-solid fa-microchip
module: [PGSQL]
categories: [Reference]
---

> Choosing a "kernel" in Pigsty means determining the PostgreSQL major version, mode/distribution, packages to install, and tuning templates to load.

Pigsty supports PostgreSQL from version 10 onwards. The current version packages core software for versions 13-18 by default and provides a complete extension set for 17/18. The following content shows how to make these choices through configuration files.


----------------

## Major Version and Packages

- `pg_version`: Specify the PostgreSQL major version (default 18). Pigsty will automatically map to the correct package name prefix based on the version.
- `pg_packages`: Define the core package set to install, supports using [package aliases](/docs/pgsql/config/alias) (default `pgsql-main pgsql-common`, includes kernel + patroni/pgbouncer/pgbackrest and other common tools).
- `pg_extensions`: List of additional extension packages to install, also supports aliases; defaults to empty meaning only core dependencies are installed.

```yaml
all:
  vars:
    pg_version: 17
    pg_packages: [ pgsql-main pgsql-common ]
    pg_extensions: [ postgis, timescaledb, pgvector, pgml ]
```

> Effect: Ansible will pull packages corresponding to `pg_version=17` during installation, pre-install extensions to the system, and database initialization scripts can then directly `CREATE EXTENSION`.

Extension support varies across versions in Pigsty's offline repository: 12/13 only provide core and tier-1 extensions, while 15/17/18 cover all extensions. If an extension is not pre-packaged, it can be added via `repo_packages_extra`.


----------------

## Kernel Mode (pg_mode)

`pg_mode` controls the kernel "flavor" to deploy. Default `pgsql` indicates standard PostgreSQL. Pigsty currently supports the following modes:

| Mode     | Scenario                                                     |
|----------|--------------------------------------------------------------|
| `pgsql`  | Standard PostgreSQL, HA + replication                        |
| `citus`  | Citus distributed cluster, requires additional `pg_shard / pg_group` |
| `gpsql`  | Greenplum / MatrixDB                                         |
| `mssql`  | Babelfish for PostgreSQL                                     |
| `mysql`  | OpenGauss/HaloDB compatible with MySQL protocol              |
| `polar`  | Alibaba PolarDB (based on pg `polar` distribution)           |
| `ivory`  | IvorySQL (Oracle-compatible syntax)                          |
| `oriole` | OrioleDB storage engine                                      |
| `oracle` | PostgreSQL + ora compatibility (`pg_mode: oracle`)           |

After selecting a mode, Pigsty will automatically load corresponding templates, dependency packages, and Patroni configurations. For example, deploying Citus:

```yaml
all:
  children:
    pg-citus0:
      hosts: { 10.10.10.11: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus0, pg_group: 0 }
    pg-citus1:
      hosts: { 10.10.10.12: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus1, pg_group: 1 }
  vars:
    pg_mode: citus
    pg_shard: pg-citus
    patroni_citus_db: meta
```

> Effect: All members will install Citus-related packages, Patroni writes to etcd in shard mode, and automatically `CREATE EXTENSION citus` in the `meta` database.


----------------

## Extensions and Pre-installed Objects

Besides system packages, you can control components automatically loaded after database startup through the following parameters:

- `pg_libs`: List to write to `shared_preload_libraries`. For example: `pg_libs: 'timescaledb, pg_stat_statements, auto_explain'`.
- `pg_default_extensions` / `pg_default_schemas`: Control schemas and extensions pre-created in `template1` and `postgres` by initialization scripts.
- `pg_parameters`: Append `ALTER SYSTEM SET` for all instances (written to `postgresql.auto.conf`).

Example: Enable TimescaleDB, pgvector and customize some system parameters.

```yaml
pg-analytics:
  vars:
    pg_cluster: pg-analytics
    pg_libs: 'timescaledb, pg_stat_statements, pgml'
    pg_default_extensions:
      - { name: timescaledb }
      - { name: pgvector }
    pg_parameters:
      timescaledb.max_background_workers: 8
      shared_preload_libraries: "'timescaledb,pg_stat_statements,pgml'"
```

> Effect: During initialization, `template1` creates extensions, Patroni's `postgresql.conf` injects corresponding parameters, and all business databases inherit these settings.


----------------

## Tuning Template (`pg_conf`)

`pg_conf` points to Patroni templates in `roles/pgsql/templates/*.yml`. Pigsty includes four built-in general templates:

| Template   | Applicable Scenario                         |
|------------|---------------------------------------------|
| `oltp.yml` | Default template, for 4–128 core TP workload |
| `olap.yml` | Optimized for analytical scenarios          |
| `crit.yml` | Emphasizes sync commit/minimal latency, suitable for zero-loss scenarios like finance |
| `tiny.yml` | Lightweight machines / edge scenarios / resource-constrained environments |

You can directly replace the template or customize a YAML file in `templates/`, then specify it in cluster `vars`.

```yaml
pg-ledger:
  hosts: { 10.10.10.21: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-ledger
    pg_conf: crit.yml
    pg_parameters:
      synchronous_commit: 'remote_apply'
      max_wal_senders: 16
      wal_keep_size: '2GB'
```

> Effect: Copy `crit.yml` as Patroni configuration, overlay `pg_parameters` written to `postgresql.auto.conf`, making instances run immediately in synchronous commit mode.


----------------

## Combined Instance: A Complete Example

```yaml
pg-rag:
  hosts:
    10.10.10.31: { pg_seq: 1, pg_role: primary }
    10.10.10.32: { pg_seq: 2, pg_role: replica }
  vars:
    pg_cluster: pg-rag
    pg_version: 18
    pg_mode: pgsql
    pg_conf: olap.yml
    pg_packages: [ pgsql-main pgsql-common ]
    pg_extensions: [ pgvector, pgml, postgis ]
    pg_libs: 'pg_stat_statements, pgvector, pgml'
    pg_parameters:
      max_parallel_workers: 8
      shared_buffers: '32GB'
```

- First primary + one replica, using `olap.yml` tuning.
- Install PG18 + RAG common extensions, automatically load `pgvector/pgml` at system level.
- Patroni/pgbouncer/pgbackrest generated by Pigsty, no manual intervention needed.

Replace the above parameters according to business needs to complete all kernel-level customization.
