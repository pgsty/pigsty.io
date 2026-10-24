# Default Extensions

> PostgreSQL extensions installed by default in Pigsty

---

LLMS index: [llms.txt](/llms.txt)

---

During PostgreSQL cluster initialization, Pigsty installs and enables some core extensions by default.


--------

## Default Installed Extensions

Pigsty installs these extensions by default through [`pg_packages`](/docs/pgsql/param#pg_packages):

| Extension   | Description                                                                  |
|:------------|:-----------------------------------------------------------------------------|
| `pg_repack` | Handle table bloat online, important maintenance tool                        |
| `wal2json`  | Logical decoding outputs JSON format changes, commonly used in CDC scenarios |
| `pgvector`  | Vector data type and indexes, installed with `pgsql-main` by default         |

The default value of [`pg_extensions`](/docs/pgsql/param#pg_extensions) is an empty array `[]`.
Declare additional extensions as required.
For example:

| Extension     | Description                    |
|:--------------|:-------------------------------|
| `postgis`     | Geospatial database extension  |
| `timescaledb` | Time-series database extension |
| `pgvector`    | Vector data type and indexes   |


--------

## Default Enabled Extensions

Pigsty enables these extensions in all databases by default through [`pg_default_extensions`](/docs/pgsql/param#pg_default_extensions):

| Extension            | Schema  | Description                        |
|:---------------------|:--------|:-----------------------------------|
| `pg_stat_statements` | monitor | SQL statement execution statistics |
| `pgstattuple`        | monitor | Tuple-level statistics             |
| `pg_buffercache`     | monitor | Buffer cache inspection            |
| `pageinspect`        | monitor | Page-level inspection              |
| `pg_prewarm`         | monitor | Relation prewarming                |
| `pg_visibility`      | monitor | Visibility map inspection          |
| `pg_freespacemap`    | monitor | Free space map inspection          |
| `postgres_fdw`       | public  | PostgreSQL foreign data wrapper    |
| `file_fdw`           | public  | File foreign data wrapper          |
| `btree_gist`         | public  | B-tree GiST operator classes       |
| `btree_gin`          | public  | B-tree GIN operator classes        |
| `pg_trgm`            | public  | Trigram matching                   |
| `intagg`             | public  | Integer aggregator                 |
| `intarray`           | public  | Integer array functions            |
| `pg_repack`          | repack  | Online table reorganization        |

These extensions provide basic monitoring and operations tools.
They also add database features.


--------

## Default Preloaded Extensions

By default, [`pg_libs`](/docs/pgsql/param#pg_libs) adds these extensions to `shared_preload_libraries`:

| Extension            | Description                                        |
|:---------------------|:---------------------------------------------------|
| `pg_stat_statements` | Track execution statistics of all SQL statements   |
| `auto_explain`       | Automatically log execution plans for slow queries |

These two extensions provide basic observability.
We strongly recommend that you keep them.


--------

## Customize Default Extensions

To change which extensions Pigsty installs and enables by default, edit these configuration parameters:

```yaml
all:
  vars:
    # Modify default extension packages
    pg_packages:
      - pgsql-main pgsql-common
      - pg_repack_$v* wal2json_$v*

    # Modify default installed extensions
    pg_extensions: [ postgis, timescaledb, pgvector ]

    # Modify default preloaded extensions
    pg_libs: 'timescaledb, pg_stat_statements, auto_explain'

    # Modify default enabled extensions
    pg_default_extensions:
      - { name: pg_stat_statements, schema: monitor }
      - { name: pg_repack }
      # ... add more
```

For extension procedures and concepts, see:

- [Quick Start](/docs/pgsql/ext/start/): Overview of the extension usage process
- [Extension Introduction](/docs/pgsql/ext/intro/): Core concepts of extensions
- [Install Extensions](/docs/pgsql/ext/install/): How to install extensions
- [Configure Extensions](/docs/pgsql/ext/config/): Preloading and parameter configuration
- [Create Extensions](/docs/pgsql/ext/create/): Creating extensions in databases
