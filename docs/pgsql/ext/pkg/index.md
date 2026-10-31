# Packages

> Extension package aliases and category naming conventions

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty uses **package aliases** to simplify extension installation and management.


--------

## Package Alias Mechanism

Extensions have different names at different layers:

| Layer            | Example `pgvector`       | Example `postgis`                  |
|:-----------------|:-------------------------|:-----------------------------------|
| Extension Name   | `vector`                 | `postgis`, `postgis_topology`, ... |
| Package Alias    | `pgvector`               | `postgis`                          |
| RPM Package Name | `pgvector_18`            | `postgis36_18`                    |
| DEB Package Name | `postgresql-18-pgvector` | `postgresql-18-postgis-3`         |

Use a **package alias** to specify an extension without its RPM or DEB package name:

```yaml
pg_extensions: [ pgvector, postgis, timescaledb ]  # Use package aliases
```

Pigsty converts each alias to the correct package names for the operating system and PostgreSQL version.

> Note: When using `CREATE EXTENSION`, you use the **extension name** (e.g., `vector`), not the package alias (`pgvector`).


--------

## Category Aliases

Pigsty organizes all extensions into 16 categories.
Use category aliases to install extensions from a category together:

```yaml
# Use generic category aliases (auto-adapt to current PG version)
pg_extensions: [ pgsql-gis, pgsql-rag, pgsql-fts ]

# Or use version-specific category aliases
pg_extensions: [ pg18-gis, pg18-rag, pg18-fts ]
```

Category aliases expand to package groups in each platform's `package_map`. They do not include every extension in a category or guarantee support for every PostgreSQL version. See [alias mappings](/docs/pgsql/config/alias/) and the [availability matrix](/ext/os/) for members and version support.

Check dependencies and compatibility for the versions in use. For example, the current [`pg_mooncake`](https://github.com/Mooncake-Labs/pg_mooncake/blob/main/pg_mooncake.control) depends on `pg_duckdb`; both must be installed and preloaded.


--------

## Category List

| Category | Description          | Typical Extensions                             |
|:--------:|:---------------------|:-----------------------------------------------|
|  `time`  | Time-series          | timescaledb, pg_cron, periods                  |
|  `gis`   | Geospatial           | postgis, h3, pgrouting                         |
|  `rag`   | Vector/RAG           | pgvector, pgml, vchord                         |
|  `fts`   | Full-text Search     | pg_trgm, zhparser, pgroonga                    |
|  `olap`  | Analytics            | citus, pg_duckdb, pg_mooncake                  |
|  `feat`  | Feature              | age, pg_graphql, rum                           |
|  `lang`  | Language             | plpython3u, pljava, plv8                       |
|  `type`  | Data Type            | hstore, ltree, citext                          |
|  `util`  | Utility              | http, pg_net, pgjwt                            |
|  `func`  | Function             | pgcrypto, uuid-ossp, pg_uuidv7                 |
| `admin`  | Admin                | pg_repack, pgagent, pg_squeeze                 |
|  `stat`  | Statistics           | pg_stat_statements, pg_qualstats, auto_explain |
|  `sec`   | Security             | pgaudit, pgcrypto, pgsodium                    |
|  `fdw`   | Foreign Data Wrapper | postgres_fdw, mysql_fdw, oracle_fdw            |
|  `sim`   | Compatibility        | orafce, babelfishpg_tds                        |
|  `etl`   | Data/ETL             | pglogical, wal2json, decoderbufs               |


--------

## Browse Extension Catalog

Use the [Pigsty Extension Catalog](/ext/list) to find these details for all available extensions:

- Extension name, description, version
- Supported PostgreSQL versions
- Supported OS distributions
- Installation methods, preloading requirements
- License, source repository
