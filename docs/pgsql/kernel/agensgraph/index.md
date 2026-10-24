# AgensGraph

> Use the AgensGraph (PG17) graph database kernel in Pigsty to get property graph and Cypher/SQL hybrid query capabilities within the PostgreSQL ecosystem.

---

LLMS index: [llms.txt](/llms.txt)

---

[AgensGraph](https://github.com/skaiworldwide-oss/agensgraph) is a property graph database kernel built on PostgreSQL.
It supports openCypher queries and mixed Cypher/SQL workflows.


--------

## Overview

Pigsty integrates AgensGraph through `pg_mode: agens` while preserving most of the standard PostgreSQL operational model.

- Kernel package: `agensgraph`
- Mode identifier: `pg_mode: agens`
- Current template version: `AgensGraph 2.17.0`
- Current version string: `PostgreSQL 17.10 (AgensGraph 2.17.0)`
- Built-in template: `agens`
- Typical use cases: graph relationship analysis, path queries, knowledge graphs, and risk/association analysis layered onto relational data

AgensGraph uses the PostgreSQL wire protocol.
Standard PostgreSQL clients, drivers, and connection pools can connect directly.
AgensGraph adds graph objects, Cypher syntax, and the `agtype` data type to the database.


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c agens
./deploy.yml
```

The `agens` template automatically enables `pg_mode: agens` and installs the `agensgraph` kernel package.
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
    pg_version: 17

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

To call Cypher from within SQL, use the `cypher()` function:

```sql
SELECT *
FROM cypher('g', $$ MATCH (v:person) RETURN v.name $$) AS (name agtype);
```

Projects commonly combine relational tables, graph labels, and Cypher queries.
Transactions, privileges, and backup procedures still follow PostgreSQL.
Graph analysis uses AgensGraph graph objects and the `cypher()` interface.


--------

## Notes

- AgensGraph currently uses the PG17-compatible line. Do not assume that PG18 extensions are available.
- The default `agens` template uses one node for quick validation. Production deployments should use an HA topology.
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
- AgensGraph Quick Guide: <https://tech.skaiworldwide.com/docs/en/agensgraph/17/quick_guide/index.html>
- AgensGraph 2.17.0 Release Notes: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/release_notes/agensgraph_release_notes_2_17_0.html>


--------

## Available Extensions

The AgensGraph kernel has **60** available extensions.
The following table lists the extra extensions, excluding bundled PG Contrib extensions:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [meta](/ext/e/meta) | `1.0` | Utility functions for agensgraph |
{.full-width}
