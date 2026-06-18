---
title: PG Kernels
weight: 2200
description: How to use PostgreSQL kernel forks in Pigsty, such as Citus, Babelfish, IvorySQL, PolarDB, and more.
icon: fas fa-heart
module: [PGSQL]
categories: [Reference, Concept]
---

In Pigsty, you can replace the native PostgreSQL kernel with different PostgreSQL "flavors" to unlock specialized capabilities.

Pigsty supports multiple PostgreSQL kernels and compatibility branches so you can get compatibility layers, multi-master replication, graph queries, MPP warehousing, transparent encryption, and more inside one operational framework.

One thing to keep in mind is that not every kernel has the same delivery depth in Pigsty:
PostgreSQL, Citus, Babelfish, IvorySQL, PolarDB, AgensGraph, and pgEdge already have relatively clear templates and configuration paths;
Cloudberry and Greenplum, by contrast, are more often managed through `gpsql` mode, and their MPP initialization plus scale-out operations are still better handled with upstream tooling.

Kernel configuration templates should link to this overview and to their dedicated kernel guide. When a kernel has dedicated extensions, prefer linking to the extension catalog, such as [`spock`](/ext/e/spock/), [`snowflake`](/ext/e/snowflake/), and [`lolor`](/ext/e/lolor/).

| Kernel                                          | Key Feature                           | Description                                   |
|:------------------------------------------------|:--------------------------------------|:----------------------------------------------|
| [**PostgreSQL**](/docs/pgsql)                   | **Native kernel, full extension set** | Vanilla PostgreSQL with 524 extensions        |
| [**Supabase**](/docs/pgsql/kernel/supabase)     | **Backend as a Service**              | PostgreSQL-based BaaS, Firebase alternative   |
| [**Citus**](/docs/pgsql/kernel/citus)           | **Horizontal scaling**                | Distributed PostgreSQL via native extension   |
| [**Babelfish**](/docs/pgsql/kernel/babelfish)   | **SQL Server compatible**             | SQL Server wire-protocol compatibility (PG17) |
| [**IvorySQL**](/docs/pgsql/kernel/ivorysql)     | **Oracle compatible**                 | Oracle syntax and PL/SQL compatibility        |
| [**OpenHalo**](/docs/pgsql/kernel/openhalo)     | **MySQL compatible**                  | MySQL wire-protocol compatibility             |
| [**Percona**](/docs/pgsql/kernel/percona)       | **Transparent data encryption**       | Percona distribution with pg_tde              |
| [**FerretDB**](/docs/ferret)                    | **MongoDB migration**                 | MongoDB wire-protocol compatibility           |
| [**OrioleDB**](/docs/pgsql/kernel/orioledb)     | **OLTP optimization**                 | Zheap, no bloat, S3 storage                   |
| [**PolarDB**](/docs/pgsql/kernel/polardb)       | **Aurora-style RAC**                  | RAC, China-local compliance scenario          |
| [**Cloudberry**](/docs/pgsql/kernel/cloudberry) | **Open-source MPP warehouse**         | Cloudberry integrated through `gpsql` mode    |
| [**AgensGraph**](/docs/pgsql/kernel/agensgraph) | **Property graph + Cypher**           | Graph query capability inside PostgreSQL      |
| [**pgEdge**](/docs/pgsql/kernel/pgedge)         | **Spock multi-master replication**    | Distributed PostgreSQL for edge scenarios     |
{.full-width}

![](/img/pigsty/pg-forks.webp)

## Versions

Below are the version strings or current package references for each PG kernel flavor. Citus, FerretDB, and Supabase use the same base PostgreSQL versioning pattern as vanilla PostgreSQL.

These version strings mostly come from the current Pigsty repository packages. One thing worth noting: Cloudberry `2.0.0` is currently RPM-only, pgEdge is currently delivered as a PG18-series kernel, and PolarDB is currently shown using the upstream stable branch `POLARDB_17_STABLE` and latest upstream release naming.

| Kernel                                          | Description                                                                                                                                                    |
|:------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [**PostgreSQL**](/docs/pgsql)                   | `PostgreSQL 18.2 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-5), 64-bit`                                                  |
| [**Babelfish**](/docs/pgsql/kernel/babelfish)   | `Babelfish 17.7 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit`                                                  |
| [**IvorySQL**](/docs/pgsql/kernel/ivorysql)     | `PostgreSQL 18.1 (IvorySQL 5.1) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 9.5.0, 64-bit`                                                                |
| [**OpenHalo**](/docs/pgsql/kernel/openhalo)     | `openHalo 1.0.14.18 (260226) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit`                                     |
| [**Percona**](/docs/pgsql/kernel/percona)       | `PostgreSQL 18.1 - Percona Server for PostgreSQL 18.1.1 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11.0.1), 64-bit`      |
| [**OrioleDB**](/docs/pgsql/kernel/orioledb)     | `PostgreSQL 17.6 (OrioleDB 1.6-beta14) on aarch64-unknown-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit`                     |
| [**PolarDB**](/docs/pgsql/kernel/polardb)       | `POLARDB_17_STABLE (based on PostgreSQL 17, latest upstream release v17.9.1.0)`                                                                               |
| [**AgensGraph**](/docs/pgsql/kernel/agensgraph) | `PostgreSQL 16.9 (AgensGraph 2.16) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit`                               |
| [**pgEdge**](/docs/pgsql/kernel/pgedge)         | `PostgreSQL 18.3 (pgEdge; pgedge-18 package, Spock 5.0.6)`                                                                                                      |
| [**Cloudberry**](/docs/pgsql/kernel/cloudberry) | `PostgreSQL 14.4 (Apache Cloudberry 2.0.0-incubating build 1) on aarch64-unknown-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit` |
