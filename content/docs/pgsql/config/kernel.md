---
title: Kernel Version
weight: 20
description: How to choose the appropriate PostgreSQL kernel and major version.
icon: fa-solid fa-microchip
module: [PGSQL]
categories: [Reference]
---

> Choosing a "kernel" in Pigsty means determining the PostgreSQL major version, mode/distribution, packages to install, and tuning templates to load.

The Pigsty v4.5 source supports PostgreSQL 14-18 and uses 18 by default.
Use the following configuration settings to select a kernel.


----------------

## Major Version and Packages

- `pg_version`: Select the PostgreSQL major version. The default is 18. Pigsty maps the version to the correct package name prefix.
- `pg_packages`: Select core packages with [package aliases](/docs/pgsql/config/alias). The default, `pgsql-main pgsql-common`, includes the kernel, Patroni, PgBouncer, pgBackRest, and other common tools.
- `pg_extensions`: Select additional extension packages. Aliases are supported. The default is empty, which installs only core dependencies.

```yaml
all:
  vars:
    pg_version: 18
    pg_packages: [ pgsql-main, pgsql-common ]
    pg_extensions: [ postgis, timescaledb, pgvector, pgml ]
```

> During installation, Ansible downloads packages for `pg_version=18` and installs extension files on the system.
> Database initialization scripts can then run `CREATE EXTENSION`.

Extension availability differs between versions in Pigsty's offline repository.
PostgreSQL 14 has fewer extensions, while 17/18 have the widest coverage.
If an extension is not included, add it through `repo_extra_packages`.


----------------

## Kernel Mode (pg_mode)

`pg_mode` selects the kernel distribution.
The default, `pgsql`, selects standard PostgreSQL.
Pigsty supports these modes:

| Mode     | Scenario                                                             |
|----------|----------------------------------------------------------------------|
| `pgsql`  | Standard PostgreSQL, HA + replication                                |
| `citus`  | Citus distributed cluster, requires additional `pg_shard / pg_group` |
| `gpsql`  | Cloudberry / Greenplum / MatrixDB                                    |
| `mssql`  | Babelfish                                                            |
| `mysql`  | OpenGauss/HaloDB compatible with MySQL protocol                      |
| `polar`  | Alibaba PolarDB (based on pg `polar` distribution)                   |
| `ivory`  | IvorySQL (Oracle-compatible syntax)                                  |
| `pgtde`  | Percona PostgreSQL with pg_tde under `/usr/pgtde-$v`                 |
| `oriole` | OrioleDB storage engine                                              |
| `agens`  | AgensGraph graph database kernel                                     |
| `pgedge` | pgEdge distributed replication kernel                                |

`pg_mode` selects binary paths, Patroni integration, and some kernel-specific behavior.
It does not automatically add every required package, extension, and application database.
For deployment, use the matching `conf/*.yml` template.
Alternatively, set `pg_packages`, `pg_extensions`, `pg_libs`, and `pg_databases` explicitly.
This is a minimal Citus example:

```yaml
all:
  children:
    pg-citus1:
      hosts: { 10.10.10.11: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus1, pg_group: 0 }
    pg-citus2:
      hosts: { 10.10.10.12: { pg_seq: 1, pg_role: primary } }
      vars: { pg_cluster: pg-citus2, pg_group: 1 }
  vars:
    pg_mode: citus
    pg_shard: pg-citus
    pg_primary_db: citus
    pg_extensions: [ citus ]
    pg_libs: 'citus, pg_stat_statements'
    pg_databases:
      - { name: citus, extensions: [ citus ] }
```

> `conf/ha/citus.yml` provides the current complete example.
> The example above explicitly installs Citus packages and creates the extension in the `citus` database.


----------------

## Extensions and Pre-installed Objects

Use these parameters to control components loaded automatically after database startup:

- `pg_libs`: List to write to `shared_preload_libraries`. For example: `pg_libs: 'timescaledb, pg_stat_statements, auto_explain'`.
- `pg_default_extensions` / `pg_default_schemas`: Control schemas and extensions pre-created in `template1` and `postgres` by initialization scripts.
- `pg_parameters`: Rendered by Pigsty into `postgresql.auto.conf` during configuration. Do not also manage the same settings manually with `ALTER SYSTEM`.

Example: Enable TimescaleDB, pgvector and customize some system parameters.

```yaml
pg-analytics:
  vars:
    pg_cluster: pg-analytics
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'
    pg_default_extensions:
      - { name: timescaledb }
      - { name: vector }
    pg_parameters:
      timescaledb.max_background_workers: 8
```

> During initialization, Pigsty creates default extensions in `template1` and `postgres`.
> New databases based on `template1` inherit these objects.
> Pigsty writes `pg_parameters` directly to `postgresql.auto.conf`.


----------------

## Tuning Template (`pg_conf`)

`pg_conf` selects a Patroni template from `roles/pgsql/templates/*.yml`.
Pigsty includes four general templates:

| Template   | Applicable Scenario                                                                   |
|------------|---------------------------------------------------------------------------------------|
| `oltp.yml` | Default template, for 4–128 core TP workload                                          |
| `olap.yml` | Optimized for analytical scenarios                                                    |
| `crit.yml` | Emphasizes sync commit/minimal latency, suitable for zero-loss scenarios like finance |
| `tiny.yml` | Lightweight machines / edge scenarios / resource-constrained environments             |

You can replace the template or customize a YAML file in `templates/`.
Then select it in the cluster `vars`.

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

> Pigsty uses `crit.yml` as the Patroni configuration and writes `pg_parameters` overrides to `postgresql.auto.conf`.
> The instances then use synchronous commit immediately.


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
    pg_packages: [ pgsql-main, pgsql-common ]
    pg_extensions: [ pgvector, pgml, postgis ]
    pg_libs: 'pg_stat_statements, auto_explain'
    pg_parameters:
      max_parallel_workers: 8
      shared_buffers: '32GB'
```

- First primary + one replica, using `olap.yml` tuning.
- Install PG18 plus common RAG extensions; only libraries that actually require preloading belong in `pg_libs`.
- Patroni/pgbouncer/pgbackrest generated by Pigsty, no manual intervention needed.

Adjust these parameters for the application requirements to customize the kernel configuration.
