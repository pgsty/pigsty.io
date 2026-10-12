---
title: PG Kernels
weight: 2200
description: How to use PostgreSQL kernel forks in Pigsty, such as Citus, Babelfish, IvorySQL, PolarDB, and more.
icon: fas fa-heart
module: [PGSQL]
categories: [Reference, Concept]
---

In Pigsty, you can replace the native PostgreSQL kernel with a variant that provides specialized features.

Pigsty supports multiple PostgreSQL kernels and compatibility branches within one operational framework.
These kernels provide compatibility layers, multi-master replication, graph queries, MPP warehousing, transparent encryption, and other features.

The level of Pigsty integration differs between kernels.
PostgreSQL, Citus, Babelfish, IvorySQL, PolarDB, AgensGraph, and pgEdge have defined templates and configuration procedures.
Cloudberry and Greenplum usually use `gpsql` mode.
For their MPP initialization and scale-out operations, upstream tools remain the preferred method.

| Kernel                                          | Key Feature                           | Description                                   |
|:------------------------------------------------|:--------------------------------------|:----------------------------------------------|
| [**PostgreSQL**](/docs/pgsql)                   | **Native kernel, full extension set** | Vanilla PostgreSQL with {{< param pgext_count >}} extensions        |
| [**Supabase**](/docs/pgsql/kernel/supabase)     | **Backend as a Service**              | PostgreSQL-based BaaS, Firebase alternative   |
| [**Citus**](/docs/pgsql/kernel/citus)           | **Horizontal scaling**                | Distributed PostgreSQL via native extension   |
| [**Babelfish**](/docs/pgsql/kernel/babelfish)   | **SQL Server compatible**             | SQL Server wire-protocol compatibility (PG17/18) |
| [**IvorySQL**](/docs/pgsql/kernel/ivorysql)     | **Oracle compatible**                 | Oracle syntax and PL/SQL compatibility        |
| [**OpenHalo**](/docs/pgsql/kernel/openhalo)     | **MySQL compatible**                  | MySQL wire-protocol compatibility             |
| [**Percona**](/docs/pgsql/kernel/percona)       | **Transparent data encryption**       | Percona distribution with pg_tde              |
| [**DocumentDB**](/docs/pgsql/kernel/documentdb) | **MongoDB migration**                 | DocumentDB + FerretDB wire compatibility      |
| [**OrioleDB**](/docs/pgsql/kernel/orioledb)     | **OLTP optimization**                 | Zheap, no bloat, S3 storage                   |
| [**PolarDB**](/docs/pgsql/kernel/polardb)       | **Aurora-style RAC**                  | RAC, China-local compliance scenario          |
| [**Cloudberry**](/docs/pgsql/kernel/cloudberry) | **Open-source MPP warehouse**         | Cloudberry integrated through `gpsql` mode    |
| [**AgensGraph**](/docs/pgsql/kernel/agensgraph) | **Property graph + Cypher**           | Graph query capability inside PostgreSQL      |
| [**pgEdge**](/docs/pgsql/kernel/pgedge)         | **Spock multi-master replication**    | Distributed PostgreSQL for edge scenarios     |
{.full-width}

![PostgreSQL forks and compatible kernels](/img/pigsty/pg-forks.webp)

## Versions

| Kernel | Debian / Ubuntu | EL |
|:-------|:----------------|:---|
| [**PostgreSQL / Citus**](/docs/pgsql/kernel/citus) | `PostgreSQL {{< param pg_version >}} (Ubuntu {{< param pg_version >}}-1.pgdg26.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `PostgreSQL {{< param pg_version >}} on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**IvorySQL**](/docs/pgsql/kernel/ivorysql) | `PostgreSQL 18.4 (IvorySQL 5.4) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 9.5.0, 64-bit` | `PostgreSQL 18.4 (IvorySQL 5.4) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 9.5.0, 64-bit` |
| [**Babelfish**](/docs/pgsql/kernel/babelfish) | `Babelfish 17.7 on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `Babelfish 17.7 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**PolarDB**](/docs/pgsql/kernel/polardb) | `PostgreSQL 17.10 (PolarDB 17.10.1.0 build accf02e2) on x86_64-linux-gnu` | `PostgreSQL 17.10 (PolarDB 17.10.1.0 build accf02e2) on x86_64-linux-gnu` |
| [**Percona**](/docs/pgsql/kernel/percona) | `PostgreSQL 18.4 - Percona Server for PostgreSQL 18.4.1 on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `PostgreSQL 18.4 - Percona Server for PostgreSQL 18.4.1 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20250617 (Red Hat 14.3.1-2), 64-bit` |
| [**OrioleDB**](/docs/pgsql/kernel/orioledb) | `OrioleDB 18.4 (OrioleDB 1.8-beta16) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `OrioleDB 18.4 (OrioleDB 1.8-beta16) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**OpenHalo**](/docs/pgsql/kernel/openhalo) | `openHalo 14.18 on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `openHalo 14.18 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**DocumentDB**](/docs/pgsql/kernel/documentdb) | `PostgreSQL {{< param pg_version >}} (Ubuntu {{< param pg_version >}}-1.pgdg26.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `PostgreSQL {{< param pg_version >}} on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**AgensGraph**](/docs/pgsql/kernel/agensgraph) | `PostgreSQL 17.10 (AgensGraph 2.17.0) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `PostgreSQL 17.10 (AgensGraph 2.17.0) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**pgEdge**](/docs/pgsql/kernel/pgedge) | `PostgreSQL 18.4 (pgEdge 5.0.10) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 15.2.0-16ubuntu1) 15.2.0, 64-bit` | `PostgreSQL 18.4 (pgEdge 5.0.10) on x86_64-pc-linux-gnu, compiled by gcc (GCC) 14.3.1 20251022 (Red Hat 14.3.1-4), 64-bit` |
| [**Cloudberry**](/docs/pgsql/kernel/cloudberry) |  | `PostgreSQL 14.4 (Apache Cloudberry 2.0.0-incubating build 1) on aarch64-unknown-linux-gnu, compiled by gcc (GCC) 11.5.0 20240719 (Red Hat 11.5.0-11), 64-bit` |
{.full-width}
