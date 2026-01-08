---
title: Pigsty Modules
weight: 460
description: This article lists all available modules in Pigsty and the module roadmap.
icon: fa-solid fa-boxes-stacked
module: [PIGSTY]
categories: [Reference]
tags: []
---



----------------

## Core Modules

Pigsty provides four <span class="text-primary"><b>core</b></span> modules that are essential for delivering fully-featured, highly available PostgreSQL services:

- [**`PGSQL`**](/docs/pgsql): Self-healing PostgreSQL clusters with HA, PITR, IaC, SOP, monitoring, and [**440**](https://pgext.cloud/list) extensions out of the box.
- [**`INFRA`**](/docs/infra): Local software repo, VictoriaMetrics, Grafana, VictoriaLogs, AlertManager, PushGateway, Blackbox Exporter...
- [**`NODE`**](/docs/node): Tune nodes to desired state: hostname, timezone, NTP, ssh, sudo, haproxy, docker, vector, keepalived.
- [**`ETCD`**](/docs/etcd): Distributed key-value store serving as DCS for HA PostgreSQL clusters: consensus, config management, service discovery.

----------------

## Kernel Modules

Pigsty provides four <span class="text-danger"><b>kernel</b></span> modules as optional in-place replacements for the vanilla PostgreSQL kernel, offering different database flavors:

- [**`MSSQL`**](/docs/pgsql/kernel/babelfish): Microsoft SQL Server wire-protocol compatible PG kernel, powered by AWS, WiltonDB & Babelfish!
- [**`IVORY`**](/docs/pgsql/kernel/ivorysql): Oracle-compatible PostgreSQL 16 kernel, from the IvorySQL open-source project by HighGo.
- [**`POLAR`**](/docs/pgsql/kernel/polardb): "Cloud-native" PostgreSQL kernel open-sourced by Alibaba Cloud, an Aurora-style RAC PostgreSQL fork.
- [**`CITUS`**](/docs/pgsql/kernel/citus): Distributed PostgreSQL cluster via extension (Azure Hyperscale), with native Patroni HA support!

{{% alert title="Chinese Domestic Kernel Support!" color="success" %}}

Pigsty [**Pro Edition**](/docs/about/service) provides Chinese domestic database kernel support: [**PolarDB-O v2**](/docs/pgsql/kernel/polardb-o) — an Oracle-compatible domestic database kernel based on PolarPG.

{{% /alert %}}


----------------

## Extension Modules

Pigsty provides four <span class="text-secondary"><b>extension</b></span> modules that are not essential for core functionality but can enhance PostgreSQL capabilities:

- [**`MINIO`**](/docs/minio): S3-compatible simple object storage server, serving as optional backup repository for PostgreSQL, with production deployment and monitoring support.
- [**`REDIS`**](/docs/redis): Redis server, high-performance data structure server, supporting standalone, sentinel, and cluster deployment modes with comprehensive monitoring.
- [**`MONGO`**](/docs/ferret): Native FerretDB deployment support — adding MongoDB wire-protocol level API compatibility to PostgreSQL!
- [**`DOCKER`**](/docs/node): Docker daemon service, enabling one-click deployment of containerized stateless software templates to extend Pigsty's capabilities!


----------------

## Peripheral Modules

Pigsty also supports <span class="text-success"><b>peripheral</b></span> modules that are closely related to the PostgreSQL kernel (extensions, forks, derivatives, wrappers):

- [**`DUCKDB`**](/docs/pilot/duckdb): Powerful embedded OLAP database. Pigsty provides binaries, dynamic libraries, and related PG extensions: `pg_duckdb`, `pg_lakehouse`, and `duckdb_fdw`.
- [**`SUPABASE`**](/docs/pgsql/kernel/supabase): Pigsty allows running the popular Firebase open-source alternative — Supabase — on existing HA PostgreSQL clusters!
- [**`GREENPLUM`**](/docs/pgsql/kernel/greenplum): MPP data warehouse based on PostgreSQL 12 kernel, currently with monitoring and RPM installation support only. (**Beta**)
- [**`CLOUDBERRY`**](/docs/pgsql/kernel/cloudberry): Open-source fork by original Greenplum developers after it went closed-source, based on PG 14 kernel, currently RPM installation support only. (**Beta**)
- [**`NEON`**](/docs/pgsql/kernel/neon): Serverless PostgreSQL kernel with database branching capabilities. (**WIP**)


----------------

## Pilot Modules

Pigsty is adding support for some <span class="text-info"><b>pilot</b></span> modules related to the PostgreSQL ecosystem. These may become official Pigsty modules in the future:

- [**`KAFKA`**](/docs/pilot/kafka): Deploy KRaft-powered Kafka message queues with Pigsty, with out-of-the-box monitoring support. (**Beta**)
- [**`MYSQL`**](/docs/pilot/mysql): Deploy highly available MySQL 8.0 clusters with Pigsty, with out-of-the-box monitoring support (for critique/migration evaluation). (**Beta**)
- [**`KUBE`**](/docs/pilot/kube/): Production-grade Kubernetes deployment and monitoring using SealOS. (**Alpha**)
- [**`VICTORIA`**](/docs/pilot/victoria): Alternative Infra implementation based on VictoriaMetrics and VictoriaLogs, offering better performance and resource utilization. (**Alpha**)
- [**`JUPYTER`**](/docs/pilot/jupyter): Out-of-the-box Jupyter Notebook environment for data analysis and machine learning scenarios. (**Alpha**)


----------------

## Monitoring Other Databases

Pigsty's [**`INFRA`**](/docs/infra/) module can be used standalone as an out-of-the-box monitoring infrastructure to monitor other nodes or existing PostgreSQL databases:

- Existing PostgreSQL Services: Pigsty can monitor external PostgreSQL services not managed by Pigsty, still providing relatively complete monitoring support.
- **`RDS PG`**: PostgreSQL RDS services provided by cloud vendors can be monitored as standard external Postgres instances.
- **`PolarDB`**: Alibaba Cloud's cloud-native database can be monitored as external PostgreSQL 11 / 14 instances.
- **`KingBase`**: A Chinese domestic database provided by KINGBASE, monitored as external PostgreSQL 12 instances.
- **`Greenplum`** / **`YMatrixDB`** monitoring: Currently monitored as horizontally sharded PostgreSQL clusters.

