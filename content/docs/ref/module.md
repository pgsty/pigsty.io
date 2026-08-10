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

|            Module            | Category  | Status |   Docs Path    | Summary                                                                                               |
|:----------------------------:|:---------:|:------:|:--------------:|:------------------------------------------------------------------------------------------------------|
|  [**`PGSQL`**](/docs/pgsql)  | **Core**  |   GA   | `/docs/pgsql`  | High-availability PostgreSQL clusters with built-in backup, monitoring, SOP, and extension ecosystem. |
|  [**`INFRA`**](/docs/infra)  | **Core**  |   GA   | `/docs/infra`  | Local software repository + VictoriaMetrics/Logs/Traces + Grafana infrastructure stack.               |
|   [**`NODE`**](/docs/node)   | **Core**  |   GA   |  `/docs/node`  | Node initialization and convergence: system tuning, admin, HAProxy, Vector, Keepalived, etc.           |
|   [**`ETCD`**](/docs/etcd)   | **Core**  |   GA   |  `/docs/etcd`  | DCS for PostgreSQL HA (service discovery, config, leader-election metadata).                          |
|  [**`MINIO`**](/docs/minio)  | Extension |   GA   | `/docs/minio`  | Unified S3-compatible object storage with Silo by default or RustFS, suitable for PostgreSQL backups. |
|  [**`REDIS`**](/docs/redis)  | Extension |   GA   | `/docs/redis`  | Redis by default, or Valkey, in standalone, Sentinel, or native-cluster mode with monitoring.         |
| [**`DOCKER`**](/docs/docker) | Extension |   GA   | `/docs/docker` | Docker daemon and the runtime capability for containerized apps.                                      |
|  [**`JUICE`**](/docs/juice)  | Extension |  BETA  | `/docs/juice`  | JuiceFS distributed file system using PostgreSQL as metadata engine.                                  |
|   [**`VIBE`**](/docs/vibe)   | Extension |  BETA  |  `/docs/vibe`  | Browser-based dev environment with Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.      |
|  [**`KAFKA`**](/docs/kafka)  | Extension |  BETA  | `/docs/kafka`  | Apache Kafka 4.x dynamic KRaft cluster deployment, security baseline, and monitoring.                 |
{.stretch-last}


----------------

## Core Modules

Pigsty provides four <span class="text-primary"><b>core</b></span> modules that are important for delivering complete highly available PostgreSQL services:

- [**`PGSQL`**](/docs/pgsql): Self-healing PostgreSQL clusters with HA, PITR, IaC, SOP, monitoring, and [**{{< param pgext_count >}}**](/ext/list) extensions.
- [**`INFRA`**](/docs/infra): Local software repository, VictoriaMetrics, VictoriaLogs, VictoriaTraces, Grafana, Alertmanager, Blackbox Exporter...
- [**`NODE`**](/docs/node): Node convergence for hostname, timezone, NTP, SSH, sudo, HAProxy, Vector, and Keepalived.
- [**`ETCD`**](/docs/etcd): Distributed key-value store used as DCS for HA PostgreSQL clusters: consensus leader election/config management/service discovery.

Although these four modules are usually installed together, separate use is still feasible. In practice, only the NODE module is usually mandatory.


----------------

## Extension Modules

Pigsty provides six <span class="text-secondary"><b>extension</b></span> modules. They are not mandatory for core functionality, but can enhance PostgreSQL capabilities:

- [**`MINIO`**](/docs/minio): An S3-compatible object-storage module that deploys Silo or RustFS from one inventory and provides PostgreSQL backup integration and corresponding monitoring.
- [**`REDIS`**](/docs/redis): Redis server with standalone/sentinel/cluster production deployment and full monitoring support.
- [**`DOCKER`**](/docs/docker): Docker daemon service for one-click deployment of stateless software templates on Pigsty.
- [**`JUICE`**](/docs/juice): JuiceFS distributed filesystem module using PostgreSQL as metadata engine, providing shared POSIX storage.
- [**`VIBE`**](/docs/vibe): Browser-based development environment with Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.
- [**`KAFKA`**](/docs/kafka): Apache Kafka 4.x dynamic KRaft clusters with TLS/SCRAM/ACL security baseline, declarative topics/users, and full monitoring.


----------------

## Ecosystem Modules

The modules below are closely related to the PostgreSQL ecosystem. They are optional ecosystem capabilities and are not counted in the 10 official modules above:

- [**`SUPABASE`**](/docs/pgsql/kernel/supabase), [**`DUCKDB`**](/docs/pilot/duckdb): peripheral ecosystem integration.
- [**`MSSQL`**](/docs/pgsql/kernel/babelfish), [**`IVORY`**](/docs/pgsql/kernel/ivorysql), [**`POLAR`**](/docs/pgsql/kernel/polardb), [**`CITUS`**](/docs/pgsql/kernel/citus), [**`CLOUDBERRY`**](/docs/pgsql/kernel/cloudberry), [**`PGEDGE`**](/docs/pgsql/kernel/pgedge): kernel replacement, distributed, and MPP forms.
- [**`MYSQL`-compatible kernel (OpenHalo)**](/docs/pgsql/kernel/openhalo), [**`ORIOLE`**](/docs/pgsql/kernel/orioledb), [**`PGTDE`**](/docs/pgsql/kernel/percona), [**`AGENS`**](/docs/pgsql/kernel/agensgraph): protocol compatibility, storage engine, transparent encryption, and graph database kernels. Here, `MYSQL` means the `pg_mode=mysql` PostgreSQL-compatible kernel, not a native MySQL service.
- [**`GREENPLUM`**](/docs/pgsql/kernel/greenplum), [**`NEON`**](/docs/pgsql/kernel/neon): historical docs retained, no longer default public capabilities.
- [**Native `MYSQL` pilot**](/docs/pilot/mysql/): the current `mysql.yml`, `mysql-rm.yml`, and `roles/mysql*` manage a fixed native MySQL 8.4 platform with either one node or a three-node single-primary InnoDB Cluster. It remains a PILOT and is not counted among the 10 official modules above.
- [**`KUBE`**](/docs/pilot/kube/), [**`VICTORIA`**](/blog/db/victoria-stack/), [**`JUPYTER`**](/docs/app/jupyter/): other pilot modules, currently not open for public use.
