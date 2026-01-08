---
title: Kernel Forks
weight: 2200
description: How to use other PostgreSQL kernel forks in Pigsty? Such as Citus, Babelfish,
  IvorySQL, PolarDB, etc.
icon: fas fa-heart
module: [PGSQL]
categories: [Reference, Concept]
tags: [Kernel]
---

In Pigsty, you can replace the "native PG kernel" with different "**flavors**" of PostgreSQL forks to achieve special features and effects.

Pigsty supports various PostgreSQL kernels and compatible forks, enabling you to simulate different database systems while leveraging PostgreSQL's ecosystem. Each kernel provides unique capabilities and compatibility layers.

| Kernel                                      | Key Feature                | Description                                    |
|:--------------------------------------------|:---------------------------|:-----------------------------------------------|
| [PostgreSQL](/docs/pgsql)                   | **Original Flavor**        | Vanilla PostgreSQL with 440 extensions         |
| [Citus](/docs/pgsql/kernel/citus)           | **Horizontal Scaling**     | Distributed PostgreSQL via native extension    |
| [WiltonDB](/docs/pgsql/kernel/babelfish)    | **SQL Server Compatible**  | SQL Server wire-protocol compatibility         |
| [IvorySQL](/docs/pgsql/kernel/ivorysql)     | **Oracle Compatible**      | Oracle syntax and PL/SQL compatibility         |
| [OpenHalo](/docs/pgsql/kernel/openhalo)     | **MySQL Compatible**       | MySQL wire-protocol compatibility              |
| [Percona](/docs/pgsql/kernel/percona)       | **Transparent Encryption** | Percona Distribution with pg_tde               |
| [FerretDB](/docs/ferret)                    | **MongoDB Migration**      | MongoDB wire-protocol compatibility            |
| [OrioleDB](/docs/pgsql/kernel/orioledb)     | **OLTP Optimization**      | Zheap, No bloat, S3 Storage                    |
| [PolarDB](/docs/pgsql/kernel/polardb)       | **Aurora-style RAC**       | RAC, China domestic compliance                 |
| [Supabase](/docs/pgsql/kernel/supabase)     | **Backend as a Service**   | BaaS based on PostgreSQL, Firebase alternative |
| [Cloudberry](/docs/pgsql/kernel/cloudberry) | **MPP DW & Analytics**     | Massively parallel processing data warehouse   |

