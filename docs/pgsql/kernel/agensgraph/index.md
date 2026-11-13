# AgensGraph

> Use the AgensGraph (PG18) graph database kernel in Pigsty to get property graph and Cypher/SQL hybrid query capabilities within the PostgreSQL ecosystem.

---

LLMS index: [llms.txt](/llms.txt)

---

[AgensGraph](https://github.com/skaiworldwide-oss/agensgraph) is a property graph database kernel built on PostgreSQL.
It supports openCypher queries and mixed Cypher/SQL workflows.


--------

## Overview

Pigsty integrates AgensGraph through `pg_mode: agens` while preserving most of the standard PostgreSQL operational model.

- Kernel package alias: `agensgraph`, resolved to `agensgraph-18` by the PG18 template
- Mode identifier: `pg_mode: agens`
- Current package baseline: `AgensGraph 2.18.6.1`, based on `PostgreSQL 18.6` (`agensgraph-18`)
- Example version string: `PostgreSQL 18.6 (AgensGraph 2.18.6.1)`; actual patch versions depend on the installed package and `SELECT version()`
- Template: [`fork/agens`](https://github.com/pgsty/pigsty/blob/main/conf/fork/agens.yml); `-c agens` and `-c fork/agens` are equivalent
- Typical use cases: graph relationship analysis, path queries, knowledge graphs, and risk/association analysis layered onto relational data

AgensGraph uses the PostgreSQL wire protocol.
Standard PostgreSQL clients, drivers, and connection pools can connect directly.
AgensGraph adds graph models, Cypher syntax, and graph objects such as vertices and edges. Properties use JSONB.


--------

## Installation

Use Pigsty's [`fork/agens`](/docs/conf/agens/) template ([`conf/fork/agens.yml`](https://github.com/pgsty/pigsty/blob/main/conf/fork/agens.yml)), which defaults to AgensGraph 2.18 / PostgreSQL 18:

```bash
./configure -c fork/agens
./deploy.yml
```

The `fork/agens` template automatically enables `pg_mode: agens` and installs the `agensgraph` kernel package.
After deployment, verify the kernel version:

```bash
psql -d meta -c "SELECT version();"
```


--------

## Configuration

Key configuration for AgensGraph in Pigsty:

```yaml
all:
  vars:
    node_repo_modules: node,infra,pgsql
    pg_version: 18

  children:
    pg-meta:
      vars:
        pg_mode: agens
        pg_packages: [ agensgraph, pgsql-common ]
```

AgensGraph does not require an extra set of proprietary preload libraries like pgEdge or Babelfish, so standard Pigsty HA, backup, monitoring, access control, and IaC workflows remain applicable. With `pg_mode: agens`, Pigsty injects `pg-version-force=18` (matching `pg_version`) into `/etc/pgbackrest/pgbackrest.conf` and temporary PITR configuration. It also sets `checksum-page=n` in `pgbackrest.conf`: AgensGraph stores plain-text graph metadata in `base/<oid>/AG_VERSION`, not standard PostgreSQL pages, so page checksums would fail the backup.
If graph traversal and complex path queries dominate the workload, examine `work_mem`, `shared_buffers`, and planner cost settings.

--------

## Usage

After you connect to the database, usually create a graph first and set `graph_path`:

```sql
CREATE GRAPH g;
SET graph_path = g;
```

Create labels, vertices, and edges:

```sql
CREATE VLABEL person;
CREATE ELABEL knows;

CREATE (:person {name: 'Jack'});
CREATE (:person {name: 'Emily'})-[:knows]->(:person {name: 'Tom'});
```

Run graph queries and updates:

```sql
MATCH (:person {name: 'Emily'})-[:knows]->(v:person)
RETURN v.name;

MATCH (v:person {name: 'Jack'})
SET v.age = '24';
```

To process Cypher results in SQL, use a graph query as a `FROM` subquery. See the [AgensGraph hybrid query manual](https://tech.skaiworldwide.com/docs/en/agensgraph/latest/querying/combining-sql-and-cypher.html):

```sql
SELECT name #>> '{}' AS name
FROM (MATCH (v:person) RETURN v.name AS name) AS people
ORDER BY name;
```

Projects commonly combine relational tables, graph labels, and Cypher queries.
Transactions, privileges, and backup procedures still follow PostgreSQL.
Graph analysis uses AgensGraph's mixed Cypher and SQL syntax. Apache AGE's `cypher()` / `agtype` belongs to a different interface and cannot be used interchangeably.


--------

## Notes

- `fork/agens` targets AgensGraph 2.18 / PG18. PG18 cannot directly use a PG17 data directory. For existing clusters, evaluate `pg_upgrade` or logical export/import using the [**upstream upgrade guide**](https://tech.skaiworldwide.com/docs/en/agensgraph/latest/release_notes/upgrade-to-2.18.html), and verify query compatibility.
- If upgrading from a configuration without `checksum-page=n` and previous backups reported `AG_VERSION` checksum errors or warnings, run a fresh full backup (`pg-backup full`) after updating configuration.
- The default `fork/agens` template uses one node for quick validation. Production deployments should use an HA topology.
- Third-party PostgreSQL extensions may be incompatible with AgensGraph. Verify compatibility first.
- Graph objects and relational objects can coexist in one database. For production, clear database or naming conventions usually help you distinguish them.
- Tune memory and cost parameters for the size of your graph model. Check that the defaults are suitable before you use them.
- For compatibility or semantic issues with the AgensGraph kernel, consult the official manual and upstream issues first.

--------

## Related Docs

- Pigsty config template: [`conf/agens`](/docs/conf/agens/)
- [PGSQL kernel mode config](/docs/pgsql/config/kernel/)
- AgensGraph repository: <https://github.com/skaiworldwide-oss/agensgraph>
- AgensGraph official docs: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/>
- AgensGraph Quick Guide: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/get_started/index.html>
- AgensGraph 2.18 Release Notes: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/release_notes/2.18.html>


--------

## Available Extensions

The table lists selected non-Contrib extensions for reference. [Query the target instance](/docs/pgsql/kernel/#versions) to confirm actual availability and versions.

| Extension | Version | Description |
|:----------|:--------|:------------|
| [meta](/ext/e/meta) | `1.0` | Utility functions for agensgraph |
{.full-width}
