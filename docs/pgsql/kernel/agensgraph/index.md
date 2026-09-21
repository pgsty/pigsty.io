# AgensGraph

> Use the AgensGraph (PG17) graph database kernel in Pigsty to get property graph and Cypher/SQL hybrid query capabilities within the PostgreSQL ecosystem.

---

LLMS index: [llms.txt](/llms.txt)

---

[AgensGraph](https://github.com/skaiworldwide-oss/agensgraph) is a property graph database kernel built on PostgreSQL, supporting openCypher queries and mixed Cypher/SQL workflows.


--------

## Overview

Pigsty integrates AgensGraph through `pg_mode: agens` while preserving most of the standard PostgreSQL operational model.

- Kernel package: `agensgraph`
- Mode identifier: `pg_mode: agens`
- Current template version: `AgensGraph 2.17.0`
- Current version string: `PostgreSQL 17.10 (AgensGraph 2.17.0)`
- Built-in template: `agens`
- Typical use cases: graph relationship analysis, path queries, knowledge graphs, and risk/association analysis layered onto relational data

From the client side, AgensGraph still speaks the PostgreSQL wire protocol, so normal PostgreSQL clients, drivers, and connection pools can connect directly.
The real difference from vanilla PostgreSQL is not how you connect, but that the database now contains graph objects, Cypher syntax, and the `agtype` data type.


--------

## Installation

Use the built-in Pigsty template:

```bash
./configure -c agens
./deploy.yml
```

The `agens` template automatically enables `pg_mode: agens` and installs the `agensgraph` kernel package. After deployment, verify the kernel version:

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

AgensGraph does not require a special preload stack like pgEdge or Babelfish, so most standard Pigsty patterns for HA, backup, monitoring, access control, and IaC remain unchanged.
If your workload is dominated by graph traversal and complex path queries, focus on `work_mem`, `shared_buffers`, and planner cost settings instead of assuming default OLTP habits will fit.


--------

## Usage

After connecting to the database, the usual first step is to create a graph and set `graph_path`:

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

In real projects, the more common pattern is to mix "relational tables + graph labels + Cypher queries":
transactions, privileges, and backup workflows still follow PostgreSQL, while graph analysis logic lives in AgensGraph graph objects and the `cypher()` interface.


--------

## Notes

- AgensGraph is currently fixed to the PG17-compatible line, so do not assume PG18 extension availability will carry over.
- The default `agens` template is single-node for quick validation; production deployments should extend to an HA topology.
- Not all third-party PostgreSQL extensions are guaranteed to work on the AgensGraph kernel; verify compatibility first.
- Graph objects and relational objects can coexist in the same database, but in production it is usually better to define clear database or naming conventions so they do not become tangled together.
- Tune memory and cost parameters based on your graph model scale; do not blindly use defaults.
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

The AgensGraph kernel has **60** available extensions. After removing bundled PG Contrib extensions, the following extra extensions remain:

| Extension | Version | Description |
|:----------|:--------|:------------|
| [meta](/ext/e/meta) | `1.0` | Utility functions for agensgraph |
{.full-width}
