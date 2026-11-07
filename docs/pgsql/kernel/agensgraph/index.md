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
- Validated version in this guide: `AgensGraph 2.18.6.0` (`agensgraph-18`, Debian 13 packages for amd64 / arm64)
- Example version string: `PostgreSQL 18.6 (AgensGraph 2.18.6.0)`; actual patch versions depend on the installed package and `SELECT version()`
- Current development template: `fork/agens`
- Typical use cases: graph relationship analysis, path queries, knowledge graphs, and risk/association analysis layered onto relational data

AgensGraph uses the PostgreSQL wire protocol.
Standard PostgreSQL clients, drivers, and connection pools can connect directly.
AgensGraph adds graph models, Cypher syntax, and graph objects such as vertices and edges. Properties use JSONB.


--------

## Installation

Use the built-in Pigsty template:

The commands below use the [current development template](https://github.com/pgsty/pigsty/blob/main/conf/fork/agens.yml), which defaults to AgensGraph 2.18 / PostgreSQL 18. The released [v4.5.0 template](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/agens.yml) still uses `-c agens` and defaults to PG17. For a new PG18 deployment with that release, explicitly set `pg_version: 18`.

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

AgensGraph does not require a special preload stack, unlike pgEdge or Babelfish.
Most standard Pigsty procedures for HA, backup, monitoring, access control, and IaC remain applicable.
If graph traversal and complex path queries dominate the workload, examine `work_mem`, `shared_buffers`, and planner cost settings.
Do not assume that the default OLTP settings are suitable.


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

- The current development template targets new AgensGraph 2.18 / PG18 deployments. PG18 cannot start a PG17 data directory. For existing clusters, follow the [upstream upgrade guide](https://tech.skaiworldwide.com/docs/en/agensgraph/latest/release_notes/upgrade-to-2.18.html) to evaluate `pg_upgrade` or dump and reload, and verify query compatibility.
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
