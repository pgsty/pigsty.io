---
title: PG Kernels
weight: 2200
description: How to use PostgreSQL kernel forks in Pigsty, such as Citus, Babelfish, IvorySQL, PolarDB, and more.
icon: fas fa-heart
module: [PGSQL]
categories: [Reference, Concept]
---

In Pigsty, you can replace the native PostgreSQL kernel with different PostgreSQL "flavors" to unlock specialized capabilities.

Pigsty supports multiple PostgreSQL kernels and compatibility branches so you can emulate different database systems while keeping PostgreSQL ecosystem tooling and operations.

| Kernel                                          | Key Feature                           | Description                                   |
|:------------------------------------------------|:--------------------------------------|:----------------------------------------------|
| [**PostgreSQL**](/docs/pgsql)                   | **Native kernel, full extension set** | Vanilla PostgreSQL with 464 extensions        |
| [**Citus**](/docs/pgsql/kernel/citus)           | **Horizontal scaling**                | Distributed PostgreSQL via native extension   |
| [**Babelfish**](/docs/pgsql/kernel/babelfish)   | **SQL Server compatible**             | SQL Server wire-protocol compatibility (PG17) |
| [**IvorySQL**](/docs/pgsql/kernel/ivorysql)     | **Oracle compatible**                 | Oracle syntax and PL/SQL compatibility        |
| [**OpenHalo**](/docs/pgsql/kernel/openhalo)     | **MySQL compatible**                  | MySQL wire-protocol compatibility             |
| [**Percona**](/docs/pgsql/kernel/percona)       | **Transparent data encryption**       | Percona distribution with pg_tde              |
| [**FerretDB**](/docs/ferret)                    | **MongoDB migration**                 | MongoDB wire-protocol compatibility           |
| [**OrioleDB**](/docs/pgsql/kernel/orioledb)     | **OLTP optimization**                 | Zheap, no bloat, S3 storage                   |
| [**PolarDB**](/docs/pgsql/kernel/polardb)       | **Aurora-style RAC**                  | RAC, China-local compliance scenario          |
| [**Supabase**](/docs/pgsql/kernel/supabase)     | **Backend as a Service**              | PostgreSQL-based BaaS, Firebase alternative   |
| [**Cloudberry**](/docs/pgsql/kernel/cloudberry) | **MPP DW and analytics**              | Massively parallel data warehouse             |
| [**AgensGraph**](/docs/pgsql/kernel/agensgraph) | **Graph database kernel**             | PostgreSQL-based graph database branch        |
| [**pgEdge**](/docs/pgsql/kernel/pgedge)         | **Distributed edge kernel**           | Distributed PostgreSQL for edge scenarios     |
{.full-width}

![](/img/pigsty/pg-forks.webp)