---
title: Modules
weight: 460
description: This article lists available Pigsty modules and the current module planning.
icon: fa-solid fa-boxes-stacked
module: [PIGSTY]
categories: [Reference]
---


----------------

## Official Modules

| Module | Category | Status | Docs Path | Summary |
|:-----------------------------:|:------:|:-----:|:---------------:|:----------------------------------------------------------|
|  [**`PGSQL`**](/docs/pgsql)   | **Core** |  GA   |  `/docs/pgsql`  | High-availability PostgreSQL clusters with built-in backup, monitoring, SOP, and extension ecosystem. |
|  [**`INFRA`**](/docs/infra)   | **Core** |  GA   |  `/docs/infra`  | Local software repository + VictoriaMetrics/Logs/Traces + Grafana infrastructure stack. |
|   [**`NODE`**](/docs/node)    | **Core** |  GA   |  `/docs/node`   | Node initialization and convergence: system tuning, admin, HAProxy, Vector, Docker, etc. |
|   [**`ETCD`**](/docs/etcd)    | **Core** |  GA   |  `/docs/etcd`   | DCS for PostgreSQL HA (service discovery, config, leader-election metadata). |
|  [**`MINIO`**](/docs/minio)   | Extension |  GA   |  `/docs/minio`  | S3-compatible object storage, optionally used as PostgreSQL backup repository. |
|  [**`REDIS`**](/docs/redis)   | Extension |  GA   |  `/docs/redis`  | Redis standalone/sentinel/cluster deployment and monitoring. |
| [**`FERRET`**](/docs/ferret)  | Extension |  GA   | `/docs/ferret`  | FerretDB module (`MONGO` API compatibility) for MongoDB protocol access over PG. |
| [**`DOCKER`**](/docs/docker)  | Extension |  GA   | `/docs/docker`  | Docker daemon and the runtime capability for containerized apps. |
|  [**`JUICE`**](/docs/juice)   | Extension | BETA  |  `/docs/juice`  | JuiceFS distributed file system using PostgreSQL as metadata engine. |
|   [**`VIBE`**](/docs/vibe)    | Extension | BETA  |  `/docs/vibe`   | Browser-based dev environment with Code-Server, JupyterLab, Node.js, and Claude Code. |
{.stretch-last}


----------------

## Core Modules

Pigsty provides four <span class="text-primary"><b>core</b></span> modules that are important for delivering complete highly available PostgreSQL services:

- [**`PGSQL`**](/docs/pgsql): Self-healing PostgreSQL clusters with HA, PITR, IaC, SOP, monitoring, and [**451**](https://pgext.cloud/list) extensions.
- [**`INFRA`**](/docs/infra): Local software repository, Prometheus, Grafana, Loki, AlertManager, PushGateway, Blackbox Exporter...
- [**`NODE`**](/docs/node): Node convergence for hostname, timezone, NTP, ssh, sudo, haproxy, docker, vector, keepalived.
- [**`ETCD`**](/docs/etcd): Distributed key-value store used as DCS for HA PostgreSQL clusters: consensus leader election/config management/service discovery.

Although these four modules are usually installed together, separate use is still feasible. In practice, only the NODE module is usually mandatory.


----------------

## Extension Modules

Pigsty provides six <span class="text-secondary"><b>extension</b></span> modules. They are not mandatory for core functionality, but can enhance PostgreSQL capabilities:

- [**`MINIO`**](/docs/minio): S3-compatible object storage, optional PostgreSQL backup repository, with production deployment and monitoring support.
- [**`REDIS`**](/docs/redis): Redis server with standalone/sentinel/cluster production deployment and full monitoring support.
- [**`MONGO`**](/docs/ferret): Native FerretDB deployment support, adding MongoDB wire-protocol compatible APIs to PostgreSQL.
- [**`DOCKER`**](/docs/docker): Docker daemon service for one-click deployment of stateless software templates on Pigsty.
- [**`JUICE`**](/docs/juice): JuiceFS distributed filesystem module using PostgreSQL as metadata engine, providing shared POSIX storage.
- [**`VIBE`**](/docs/vibe): Browser-based development environment with Code-Server, JupyterLab, Node.js, and Claude Code.


----------------

## Ecosystem Modules

The modules below are closely related to the PostgreSQL ecosystem. They are optional ecosystem capabilities and are not counted in the 10 official modules above:

- [**`SUPABASE`**](/docs/pgsql/kernel/supabase), [**`DUCKDB`**](/docs/pilot/duckdb): peripheral ecosystem integration.
- [**`MSSQL`**](/docs/pgsql/kernel/babelfish), [**`IVORY`**](/docs/pgsql/kernel/ivorysql), [**`POLAR`**](/docs/pgsql/kernel/polardb), [**`CITUS`**](/docs/pgsql/kernel/citus): kernel replacement/distributed forms.
- [**`GREENPLUM`**](/docs/pgsql/kernel/greenplum), [**`CLOUDBERRY`**](/docs/pgsql/kernel/cloudberry), [**`NEON`**](/docs/pgsql/kernel/neon): historical docs retained, no longer default public capabilities.
- [**`KAFKA`**](/docs/pilot/kafka), [**`MYSQL`**](/docs/pilot/mysql), [**`KUBE`**](/docs/pilot/kube/), [**`VICTORIA`**](/blog/db/victoria-stack/), [**`JUPYTER`**](/docs/app/jupyter/): pilot modules, currently not open for public use.
