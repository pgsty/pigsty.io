---
title: agens
weight: 450
description: AgensGraph kernel template with property graph model and Cypher query support
icon: fa-solid fa-project-diagram
categories: [Reference]
---

The `agens` template replaces the standard PostgreSQL kernel with AgensGraph.
It supports property graphs and Cypher queries.

For the full guide, see: **[AgensGraph kernel guide](/docs/pgsql/kernel/agensgraph/)**


--------

## Overview

- Config name: `agens`
- Node count: Single node
- Description: AgensGraph (PG17) graph database kernel template
- Supported OS: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- Supported arch: `x86_64`, `aarch64`
- Related templates: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Enable with:

```bash
./configure -c agens [-i <primary_ip>]
```


--------

## Template Content

Source: [`pigsty/conf/agens.yml`](https://github.com/pgsty/pigsty/blob/main/conf/agens.yml)

{{< include file="yaml/agens.yml" code=true lang="yaml" >}}


--------

## Notes

The `agens` template sets `pg_mode: agens` in the `pg-meta` cluster.
It installs the `agensgraph` kernel package instead of standard PostgreSQL.

**Key features**:

- Property graph model support (Vertex / Edge)
- Cypher query syntax, can be combined with SQL
- Compatible with PostgreSQL ecosystem and standard operations
- Based on PostgreSQL 17-compatible kernel by default

**Typical use cases**:

- Graph relationship analysis and path queries
- Social graph, risk linkage, knowledge graph scenarios
- Workloads requiring graph queries within PostgreSQL operations

**Caveats**:

- Current AgensGraph template is pinned to `pg_version: 17`
- The default topology has one node for validation. For production, plan and extend it for high availability.
- Follow the official AgensGraph documentation for graph schemas and Cypher semantics.
