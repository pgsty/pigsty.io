---
title: agens
weight: 450
description: AgensGraph kernel template with property graph model and Cypher query support
icon: fa-solid fa-project-diagram
categories: [Reference]
---

Current development sources use `conf/fork/agens.yml` and default to AgensGraph 2.18 / PG18. The v4.5.0 release still uses `conf/agens.yml` (`-c agens`) and defaults to PG17. Explicitly set `pg_version: 18` for a new PG18 cluster with that release.

The `fork/agens` template replaces the standard PostgreSQL kernel with AgensGraph.
It supports property graphs and Cypher queries.

For the full guide, see: **[AgensGraph kernel guide](/docs/pgsql/kernel/agensgraph/)**


--------

## Overview

- Config name: `fork/agens`
- Node count: Single node
- Description: AgensGraph (PG18) graph database kernel template
- Supported OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- Supported arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Enable with:

```bash
./configure -c fork/agens [-i <primary_ip>]
```


--------

## Template Content

The embedded YAML below matches the development source: `conf/fork/agens.yml`; previous release source: [`v4.5.0: conf/agens.yml`](https://github.com/pgsty/pigsty/blob/v4.5.0/conf/agens.yml).

{{< include file="yaml/agens.yml" code=true lang="yaml" >}}


--------

## Notes

The `fork/agens` template sets `pg_mode: agens` in the `pg-meta` cluster.
It installs the `agensgraph` kernel package instead of standard PostgreSQL.

**Key features**:

- Property graph model support (Vertex / Edge)
- Cypher query syntax, can be combined with SQL
- Compatible with PostgreSQL ecosystem and standard operations
- Based on PostgreSQL 18-compatible kernel by default

**Typical use cases**:

- Graph relationship analysis and path queries
- Social graph, risk linkage, knowledge graph scenarios
- Workloads requiring graph queries within PostgreSQL operations

**Caveats**:

- The current development template sets `pg_version: 18`, resolving the `agensgraph` alias to `agensgraph-18`.
- This default applies to new deployments. Existing PG17 clusters require a major upgrade and cannot reuse their data directory directly.
- The default topology has one node for validation. For production, plan and extend it for high availability.
- Follow the official AgensGraph documentation for graph schemas and Cypher semantics.
