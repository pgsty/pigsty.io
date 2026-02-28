---
title: AgensGraph
weight: 2115
description: Use the AgensGraph (PG16) graph database kernel in Pigsty with property graph modeling and Cypher/SQL hybrid queries.
icon: fa-solid fa-project-diagram
module: [PGSQL]
categories: [Concept]
---

> [AgensGraph](https://github.com/skaiworldwide-oss/agensgraph) is a multi-model graph database kernel based on PostgreSQL, supporting property graph models and openCypher queries.


--------

## Overview

In Pigsty, AgensGraph is activated via `pg_mode: agens`. Key characteristics:

- Kernel package: `agensgraph`
- Mode identifier: `pg_mode: agens`
- Current template version: `AgensGraph 2.16.0` (based on `PostgreSQL 16`)
- Supported OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- Supported arch: `x86_64`, `aarch64`

Pigsty `v4.2.0` (released `2026-02-27`) includes `agensgraph` in the standard package mapping and template delivery pipeline.


--------

## Installation

### Install with Pigsty Template (Recommended)

```bash
./configure -c agens
./deploy.yml
```

The `agens` template automatically enables `pg_mode: agens` and installs the `agensgraph` kernel package.


### Official Installation (Source Compilation)

If you want to evaluate AgensGraph independently from Pigsty, refer to the official build process:

```bash
git clone https://github.com/skaiworldwide-oss/agensgraph.git
cd agensgraph
./configure
make install-world
```

Official installation docs: <https://tech.skaiworldwide.com/docs/en/agensgraph/16/quick_guide/installation.html>


--------

## Configuration

Key configuration for AgensGraph in Pigsty:

```yaml
all:
  vars:
    node_repo_modules: node,infra,pgsql
    pg_version: 16

  children:
    pg-meta:
      vars:
        pg_mode: agens
        pg_packages: [ agensgraph, pgsql-common ]
```

For graph query performance tuning, pay attention to the following parameters in `postgresql.conf`:

- `shared_buffers`
- `work_mem`
- `random_page_cost` (consider lowering for graph query workloads)

For more parameter details, see the official docs: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/operation_manual/configuration.html>


--------

## Usage

After connecting to the database, create a graph and set the graph path:

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

Syntax and examples above are from the official Cypher manual: <https://tech.skaiworldwide.com/docs/en/agensgraph/16/cypher_manual/cypher_manual.html>


--------

## Notes

- The default `agens` template is single-node for quick validation; production deployments should extend to an HA topology.
- Not all third-party PostgreSQL extensions are guaranteed to work on the AgensGraph kernel; verify compatibility first.
- Tune memory and cost parameters based on your graph model scale; do not blindly use defaults.
- For compatibility or semantic issues with the AgensGraph kernel, consult the official manual and upstream issues first.


--------

## Related Docs

- Pigsty config template: [`conf/agens`](/docs/conf/agens/)
- Pigsty kernel mode config: [/docs/pgsql/config/kernel/](/docs/pgsql/config/kernel/)
- AgensGraph repository: <https://github.com/skaiworldwide-oss/agensgraph>
- AgensGraph official docs: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/>
- AgensGraph Quick Guide: <https://tech.skaiworldwide.com/docs/en/agensgraph/16/quick_guide/index.html>
- AgensGraph 2.16.0 Release Notes: <https://tech.skaiworldwide.com/docs/en/agensgraph/latest/release_notes/agensgraph_release_notes_2_16_0.html>
