---
title: PostgreSQL
weight: 203
description: PostgreSQL module component interactions and data flow.
icon: fas fa-database
module: [PGSQL]
categories: [Concept]
---


The PGSQL module organizes PostgreSQL in production as **clusters**—**logical entities** composed of a group of database **instances** associated by **primary-replica** relationships.

Each cluster is an **autonomous** business unit consisting of at least one **primary instance**, exposing capabilities through services.

There are four core entities in Pigsty's PGSQL module:

- **Cluster**: An autonomous PostgreSQL business unit serving as the top-level namespace for other entities.
- **Service**: A named abstraction that exposes capabilities, routes traffic, and exposes services using node ports.
- **Instance**: A single PostgreSQL server consisting of running processes and database files on a single node.
- **Node**: A hardware resource abstraction running Linux + Systemd environment—can be bare metal, VM, container, or Pod.

Along with two business entities—"Database" and "Role"—these form the complete logical view as shown below:

![pigsty-er.jpg](/img/pigsty/er.jpg)

**Naming Conventions**

- Cluster names should be valid DNS domain names without any dots, regex: `[a-zA-Z0-9-]+`
- Service names should be prefixed with the cluster name and suffixed with specific words: `primary`, `replica`, `offline`, `delayed`, connected by `-`.
- Instance names are prefixed with the cluster name and suffixed with a positive integer instance number, connected by `-`, e.g., `${cluster}-${seq}`.
- Nodes are identified by their primary internal IP address; since databases and hosts are deployed 1:1 in the PGSQL module, hostnames typically match instance names.


--------

## Overview

The diagram below illustrates the PGSQL module architecture, showing interactions between components:

| Component                                       | Type            | Description                                                                         |
|:------------------------------------------------|-----------------|:------------------------------------------------------------------------------------|
| [**PostgreSQL**](#postgresql)                   | Database        | The world's most advanced open-source relational database, core of PGSQL            |
| [**Patroni**](#patroni)                         | HA              | Manages PostgreSQL processes, coordinates failover, leader election, config changes |
| [**etcd**](/docs/etcd/)                         | DCS             | Distributed consistent store for cluster metadata and leader information            |
| [**Pgbouncer**](#pgbouncer)                     | Connection Pool | Lightweight connection pooling middleware, reduces overhead, adds flexibility       |
| [**HAProxy**](#haproxy)                         | Load Balancer   | Exposes service ports, routes traffic to primary or replicas based on role          |
| [**vip-manager**](#vip-manager)                 | VIP Management  | Binds L2 VIP to current primary node for transparent failover [Optional]            |
| [**pgBackRest**](#pgbackrest)                   | Backup/Recovery | Full/incremental backup and WAL archiving, supports local and object storage        |
| [**pg_exporter**](#pg_exporter)                 | Metrics Export  | Exports PostgreSQL monitoring metrics for Prometheus scraping                       |
| [**pgbouncer_exporter**](#pgbouncer_exporter)   | Metrics Export  | Exports Pgbouncer connection pool metrics                                           |
| [**pgbackrest_exporter**](#pgbackrest_exporter) | Metrics Export  | Exports backup status metrics                                                       |
| [**Vector**](/docs/node/)                       | Log Collection  | Collects PostgreSQL, Patroni, Pgbouncer logs and ships to central store             |

[![pigsty-arch](/img/pigsty/arch.png)](/docs/pgsql/)


----------------

## PostgreSQL

**PostgreSQL** is the core of the PGSQL module, listening on port `5432` by default for relational database services.

| Protocol | Port   | Description                    |
|:---------|:-------|:-------------------------------|
| TCP      | `5432` | PostgreSQL database service    |

Installing the PGSQL module on multiple nodes with the same [**`pg_cluster`**](/docs/pgsql/param#pg_cluster) automatically forms a high-availability cluster based on streaming replication.
Instance roles are defined by [**`pg_role`**](/docs/pgsql/param#pg_role): `primary`, `replica`, or `offline`.

**PostgreSQL** processes are managed by **Patroni** by default. Configuration templates can be switched via [**`pg_conf`**](/docs/pgsql/param#pg_conf) for OLTP/OLAP/CRIT/TINY workloads,
and any parameter can be overridden through [**`pg_parameters`**](/docs/pgsql/param#pg_parameters).

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


----------------

## Patroni

**Patroni** is the PostgreSQL high-availability controller, listening on port `8008` by default for its REST API.

| Protocol | Port   | Description                        |
|:---------|:-------|:-----------------------------------|
| TCP      | `8008` | Patroni REST API / Health Check    |

**Patroni** takes over **PostgreSQL** startup, shutdown, configuration, and health status, writing leader and member information to **etcd**.
It handles automatic failover, maintains replication factor, coordinates parameter changes, and provides a REST API for **HAProxy**, monitoring, and administrators.

**HAProxy** uses **Patroni** health check endpoints to determine instance roles and route traffic to the correct primary or replica.
**vip-manager** monitors the leader key in **etcd** and automatically migrates the VIP when the primary changes.

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


----------------

## Pgbouncer

**Pgbouncer** is a lightweight connection pooling middleware, listening on port `6432` by default.

| Protocol | Port   | Description              |
|:---------|:-------|:-------------------------|
| TCP      | `6432` | Pgbouncer connection pool|

**Pgbouncer** runs statelessly on each instance, connecting to **PostgreSQL** via local Unix socket,
absorbing burst connections, stabilizing sessions, and providing additional metrics.

By default, Pigsty routes production traffic (read-write service `5433` / read-only service `5434`) through **Pgbouncer**,
while only the default service (`5436`) and offline service (`5438`) bypass the connection pool for direct **PostgreSQL** connections.

Pool mode is controlled by [**`pgbouncer_poolmode`**](/docs/pgsql/param#pgbouncer_poolmode), defaulting to `transaction` (transaction-level pooling).
Connection pooling can be disabled via [**`pgbouncer_enabled`**](/docs/pgsql/param#pgbouncer_enabled).

For more information, see: [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


----------------

## HAProxy

**HAProxy** serves as the service entry point and load balancer, exposing multiple database service ports.

| Port   | Service     | Target           | Description                              |
|:-------|:------------|:-----------------|:-----------------------------------------|
| `9101` | Admin       | -                | HAProxy statistics and admin page        |
| `5433` | primary     | Primary Pgbouncer| Read-write service, routes to primary pool|
| `5434` | replica     | Replica Pgbouncer| Read-only service, routes to replica pool|
| `5436` | default     | Primary Postgres | Default service, direct to primary (bypasses pool)|
| `5438` | offline     | Offline Postgres | Offline service, direct to offline replica (ETL/analytics)|

**HAProxy** uses **Patroni** REST API health checks to determine instance roles and route traffic to the appropriate primary or replica.
Service definitions are composed from [**`pg_default_services`**](/docs/pgsql/param#pg_default_services) and [**`pg_services`**](/docs/pgsql/param#pg_services).

A dedicated HAProxy node group can be specified via [**`pg_service_provider`**](/docs/pgsql/param#pg_service_provider) to handle higher traffic;
by default, **HAProxy** on local nodes publishes services.

For more information, see: [**Service Access**](/docs/pgsql/service/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


----------------

## vip-manager

**vip-manager** binds an L2 VIP to the current primary node for transparent failover.

| Protocol | Description                           |
|:---------|:--------------------------------------|
| L2       | Virtual IP bound to primary node NIC  |

**vip-manager** runs on each PG node, monitoring the leader key written by **Patroni** in **etcd**,
and binds [**`pg_vip_address`**](/docs/pgsql/param#pg_vip_address) to the current primary node's network interface.

During failover, **vip-manager** immediately releases the VIP from the old primary and rebinds it on the new primary,
ensuring the old primary stops responding to requests and preventing split-brain.

This component is optional, enabled via [**`pg_vip_enabled`**](/docs/pgsql/param#pg_vip_enabled).
When enabled, ensure all nodes are in the same VLAN; otherwise, VIP migration will fail.

For more information, see: [**Tutorial: VIP Configuration**](/docs/pgsql/tutorial/pg-vip/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


----------------

## pgBackRest

**pgBackRest** is a professional PostgreSQL backup and recovery tool supporting full/incremental/differential backups and WAL archiving.

| Feature        | Description                              |
|:---------------|:-----------------------------------------|
| Full Backup    | Complete database backup                 |
| Incremental    | Backs up only changed data blocks        |
| WAL Archiving  | Continuous WAL archiving, enables PITR   |
| Repository     | Local disk (default) or object storage like MinIO |

**pgBackRest** works with **PostgreSQL** to create backup repositories on the primary, executing backup and archiving tasks.
By default, it uses a local backup repository ([**`pgbackrest_method`**](/docs/pgsql/param#pgbackrest_method) = `local`),
but can be configured for MinIO or other object storage for centralized backup management.

After initialization, [**`pgbackrest_init_backup`**](/docs/pgsql/param#pgbackrest_init_backup) can automatically trigger the first full backup.
Recovery integrates with **Patroni**, supporting bootstrapping replicas as new primaries or standbys.

For more information, see: [**Backup & Recovery**](/docs/pgsql/backup/) and [**Config: PGSQL - PG_BACKUP**](/docs/pgsql/param/#pg_backup)


----------------

## pg_exporter

**pg_exporter** exports PostgreSQL monitoring metrics, listening on port `9630` by default.

| Protocol | Port   | Description                 |
|:---------|:-------|:----------------------------|
| TCP      | `9630` | pg_exporter metrics port    |

**pg_exporter** runs on each PG node, connecting to **PostgreSQL** via local Unix socket,
exporting rich metrics covering sessions, buffer hits, replication lag, transaction rates, etc., scraped by **VictoriaMetrics** on INFRA nodes.

Collection configuration is specified by [**`pg_exporter_config`**](/docs/pgsql/param#pg_exporter_config),
with support for automatic database discovery ([**`pg_exporter_auto_discovery`**](/docs/pgsql/param#pg_exporter_auto_discovery)),
and tiered cache strategies via [**`pg_exporter_cache_ttls`**](/docs/pgsql/param#pg_exporter_cache_ttls).

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


----------------

## pgbouncer_exporter

**pgbouncer_exporter** exports Pgbouncer connection pool metrics, listening on port `9631` by default.

| Protocol | Port   | Description                     |
|:---------|:-------|:--------------------------------|
| TCP      | `9631` | pgbouncer_exporter metrics port |

**pgbouncer_exporter** reads **Pgbouncer** statistics views, providing metrics on pool utilization, wait queues, and hit rates.
If **Pgbouncer** is disabled, this component should also be disabled.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


----------------

## pgbackrest_exporter

**pgbackrest_exporter** exports backup status metrics, listening on port `9854` by default.

| Protocol | Port   | Description                       |
|:---------|:-------|:----------------------------------|
| TCP      | `9854` | pgbackrest_exporter metrics port  |

**pgbackrest_exporter** parses **pgBackRest** status, generating metrics for most recent backup time, size, type, etc.
Combined with alerting policies, it quickly detects expired or failed backups, ensuring data safety.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


----------------

## Summary

The PGSQL module provides production-grade PostgreSQL high-availability clusters for Pigsty, serving as the core of the entire system.

| Component           | Port   | Description                    |
|:--------------------|:-------|:-------------------------------|
| PostgreSQL          | `5432` | Database service               |
| Patroni             | `8008` | HA controller REST API         |
| Pgbouncer           | `6432` | Connection pool                |
| HAProxy             | `543x` | Service entry and load balancer|
| vip-manager         | -      | L2 VIP management (Optional)   |
| pgBackRest          | -      | Backup and recovery            |
| pg_exporter         | `9630` | PostgreSQL metrics export      |
| pgbouncer_exporter  | `9631` | Pgbouncer metrics export       |
| pgbackrest_exporter | `9854` | Backup status metrics export   |

Typical access path: Client → DNS/VIP → HAProxy (service port) → Pgbouncer → PostgreSQL.

**Patroni** and **etcd** work together for automatic failover, **pgBackRest** ensures data recoverability,
and the three Exporters combined with **VictoriaMetrics** provide complete observability.

For more information, see: [**PGSQL Module**](/docs/pgsql/) and [**Components & Interactions**](/docs/pgsql/arch/parts/)
