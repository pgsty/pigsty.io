---
title: Components
weight: 1102
description: Introduction to the components in PostgreSQL clusters in Pigsty, as well
  as their interactions and dependencies.
icon: fas fa-gears
module: [PGSQL]
categories: [Concept]
---

## Overview

The following is a detailed description of PostgreSQL module components and their interactions, from top to bottom:

- Cluster DNS is resolved by DNSMASQ on infra nodes
- Cluster VIP is managed by the `vip-manager` component, which binds [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) to the cluster primary node.
  - `vip-manager` obtains cluster leader information written by `patroni` from the `etcd` cluster
- Cluster services are exposed by Haproxy on nodes, with different services distinguished by different node ports (543x).
  - Haproxy port 9101: monitoring metrics & statistics & admin page
  - Haproxy port 5433: routes to primary pgbouncer by default: [read-write service](/docs/pgsql/service/#primary-service)
  - Haproxy port 5434: routes to replica pgbouncer by default: [read-only service](/docs/pgsql/service/#replica-service)
  - Haproxy port 5436: routes to primary postgres by default: [default service](/docs/pgsql/service/#default-service)
  - Haproxy port 5438: routes to offline postgres by default: [offline service](/docs/pgsql/service/#offline-service)
  - HAProxy routes traffic based on health check information provided by `patroni`.
- Pgbouncer is a connection pool middleware that listens on port 6432 by default, capable of buffering connections, exposing additional metrics, and providing extra flexibility.
  - Pgbouncer is stateless and deployed 1:1 with the Postgres server via local Unix socket.
  - Production traffic (primary/replica) will go through pgbouncer by default (can be skipped by specifying [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest))
  - Default/offline services will always bypass pgbouncer and connect directly to the target Postgres.
- PostgreSQL listens on port 5432, providing relational database services
  - Installing the PGSQL module on multiple nodes with the same cluster name will automatically form a high-availability cluster based on streaming replication
  - PostgreSQL processes are managed by `patroni` by default.
- Patroni listens on port 8008 by default, supervising the PostgreSQL server process
  - Patroni spawns the Postgres server as a child process
  - Patroni uses `etcd` as DCS: storing configuration, fault detection, and leader election.
  - Patroni provides Postgres information through health checks (such as primary/replica), and HAProxy uses this information to distribute service traffic
  - Patroni metrics will be scraped by VictoriaMetrics on infra nodes
- PG Exporter exposes postgres metrics on port 9630
  - PostgreSQL metrics will be scraped by VictoriaMetrics on infra nodes
- Pgbouncer Exporter exposes pgbouncer metrics on port 9631
  - Pgbouncer metrics will be scraped by VictoriaMetrics on infra nodes
- pgBackRest uses local backup repository by default (`pgbackrest_method` = `local`)
  - If `local` (default) is used as the backup repository, pgBackRest will create a local repository under the primary node's [`pg_fs_bkup`](/docs/pgsql/param#pg_fs_bkup)
  - If `minio` is used as the backup repository, pgBackRest will create a backup repository on a dedicated MinIO cluster: [`pgbackrest_repo`.`minio`](/docs/pgsql/param#pgbackrest_repo)
- Postgres-related logs (postgres, pgbouncer, patroni, pgbackrest) are collected by vector
  - Vector listens on port 9598 and also exposes its own monitoring metrics to VictoriaMetrics on infra nodes
  - Vector sends logs to VictoriaLogs on infra nodes

## Cluster DNS

Cluster DNS service is maintained by DNSMASQ on infra nodes, providing stable FQDNs (`<cluster>.<pg_dns_suffix>`) for each [`pg_cluster`](/docs/pgsql/param#pg_cluster). DNS records point to the primary or VIP, for access by business sides, automation processes, and cross-cluster data services without needing to directly care about real-time node IPs. DNS relies on inventory information written during deployment and only updates during VIP or primary node drift at runtime. Its upstream is `vip-manager` and the primary node status in etcd.

DNS's downstream includes clients and third-party service endpoints, and it also provides unified target addresses for intermediate layers like HAProxy. This component is optional; it can be skipped when the cluster runs in an isolated network or when business ends directly use IPs, but it is recommended for most production environments to avoid hard-coding node addresses.

**Key Parameters**

- [`pg_dns_suffix`](/docs/pgsql/param#pg_dns_suffix): Defines the unified suffix for cluster DNS records.
- [`pg_dns_target`](/docs/pgsql/param#pg_dns_target): Controls whether the resolution target points to VIP, primary, or explicit IP.

## Primary Virtual IP (vip-manager)

`vip-manager` runs on each PG node, monitors the leader key written by Patroni in etcd, and binds [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) to the current primary node, achieving transparent L2 drift. It depends on the health status of the DCS and requires that the target network interface can be controlled by the current node, so that VIP is immediately released and rebound during failover, ensuring the old primary does not continue responding.

VIP's downstream includes DNS, self-built clients, legacy systems, and other accessors needing fixed endpoints. This component is optional: only enabled when `pg_vip_enabled` is `true` and business requires static addresses. When enabled, all participating nodes must have the same VLAN access, otherwise VIP cannot drift correctly.

**Key Parameters**

- [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled): Controls whether to enable L2 VIP.
- [`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface): Specifies the network interface listening and drifting VIP.
- [`pg_vip_address`](/docs/pgsql/param#pg_vip_address): Defines VIP IPv4/mask.
- [`pg_namespace`](/docs/pgsql/param#pg_namespace): Namespace in etcd, shared by Patroni and vip-manager.

## Service Entry and Traffic Scheduling (HAProxy)

HAProxy is installed on PG nodes (or dedicated service nodes), uniformly exposing database service port groups: `5433/5434` (read-write/read-only, via Pgbouncer), `5436/5438` (direct primary/offline), and `9101` management interface. Each backend pool relies on role and health information provided by `patroni` REST API for routing decisions and forwards traffic to corresponding instances or connection pools.

This component is the entry point for the entire cluster, with downstream directly facing applications, ETL, and management tools. You can point `pg_service_provider` to dedicated HA nodes to carry higher traffic, or publish locally on instances. HAProxy has no dependency on VIP but usually works with DNS and VIP to create a unified access point. Service definitions are composed of `pg_default_services` and `pg_services`, allowing fine-grained configuration of ports, load balancing strategies, and targets.

**Key Parameters**

- [`pg_default_services`](/docs/pgsql/param#pg_default_services): Defines global default service ports, targets, and check methods.
- [`pg_services`](/docs/pgsql/param#pg_services): Appends or overrides business services for specific clusters.
- [`pg_service_provider`](/docs/pgsql/param#pg_service_provider): Specifies HAProxy node group publishing services (empty means local).
- [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest): Determines whether default service forwards to Pgbouncer or Postgres.
- [`pg_weight`](/docs/pgsql/param#pg_weight): Configures a single instance's weight in specific services.

## Connection Pool (Pgbouncer)

Pgbouncer runs in a stateless manner on each instance, preferentially connecting to PostgreSQL via local Unix Socket, used to absorb transient connections, stabilize sessions, and provide additional metrics. Pigsty routes production traffic (`5433/5434`) via Pgbouncer by default, with only default/offline services bypassing it to directly connect to PostgreSQL. Pgbouncer has no dependency on VIP and can scale independently with HAProxy and Patroni. When Pgbouncer stops, PostgreSQL can still provide direct connection services.

Pgbouncer's downstream consists of massive short-connection clients and the unified entry HAProxy. It allows dynamic user loading based on `auth_query` and can configure SSL as needed. Component is optional. When disabled via `pgbouncer_enabled`, default services will point directly to PostgreSQL, requiring corresponding adjustments to connection counts and session management strategies.

**Key Parameters**

- [`pgbouncer_enabled`](/docs/pgsql/param#pgbouncer_enabled): Determines whether to enable local connection pool.
- [`pgbouncer_port`](/docs/pgsql/param#pgbouncer_port): Listening port (default 6432).
- [`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode): Connection pool mode, controlling transaction or session-level reuse.
- [`pgbouncer_auth_query`](/docs/pgsql/param#pgbouncer_auth_query): Whether to dynamically pull credentials from PostgreSQL.
- [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode): SSL strategy from client to connection pool.
- [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest): Affects whether default service goes via Pgbouncer.

## Database Instance (PostgreSQL)

The PostgreSQL process is the core of the entire module, listening on `5432` by default and managed by Patroni. Installing the PGSQL module on multiple nodes with the same [`pg_cluster`](/docs/pgsql/param#pg_cluster) will automatically build a primary-replica topology based on physical streaming replication; `primary/replica/offline` roles are controlled by [`pg_role`](/docs/pgsql/param#pg_role), and multiple instances can run on the same node via `pg_instances` when necessary. Instances depend on local data disks, OS kernel tuning, and system services provided by the NODE module.

This component's downstream includes business read-write traffic, pgBackRest, pg_exporter, etc.; upstream includes Patroni, Ansible bootstrap scripts, and metadata in etcd. You can switch OLTP/OLAP configurations via `pg_conf` templates and define cascading replication via `pg_upstream`. If using citus/gpsql, further set `pg_shard` and `pg_group`. `pg_hba_rules` and `pg_default_hba_rules` determine access control policies.

**Key Parameters**

- [`pg_mode`](/docs/pgsql/param#pg_mode): Instance running mode (standard PG, Citus, MSSQL compatibility, etc.).
- [`pg_seq`](/docs/pgsql/param#pg_seq): Instance sequence number, used to lock replication topology and service weight.
- [`pg_role`](/docs/pgsql/param#pg_role): Defines instance role (primary/replica/offline).
- [`pg_instances`](/docs/pgsql/param#pg_instances): Mapping for deploying multiple instances on a single node.
- [`pg_upstream`](/docs/pgsql/param#pg_upstream): Cascading replica's replication source.
- [`pg_conf`](/docs/pgsql/param#pg_conf): Loaded configuration template, determining resources and connection limits.
- [`pg_hba_rules`](/docs/pgsql/param#pg_hba_rules) / [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules): Access control lists.

## High Availability Controller (Patroni + etcd)

Patroni listens on `8008`, taking over PostgreSQL's startup, configuration, and health status, writing leader and member information to etcd (namespace defined by [`pg_namespace`](/docs/pgsql/param#pg_namespace)). It is responsible for automatic failover, maintaining replication factor, coordinating parameters, and providing REST API for HAProxy, monitoring, and administrators to query. Patroni can enable watchdog to forcibly isolate the old primary to avoid split-brain.

Patroni's upstream includes etcd cluster and system services (systemd, Keepalive), and downstream includes vip-manager, HAProxy, Pgbackrest, and monitoring components. You can switch to pause/remove mode via `patroni_mode` for maintenance or cluster deletion. Disabling Patroni is only used when managing external PG instances.

**Key Parameters**

- [`patroni_enabled`](/docs/pgsql/param#patroni_enabled): Determines whether PostgreSQL is managed by Patroni.
- [`patroni_mode`](/docs/pgsql/param#patroni_mode): Sets running mode (default/pause/remove).
- [`patroni_port`](/docs/pgsql/param#patroni_port): REST API port.
- [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled): Whether to enable SSL for REST API.
- [`patroni_watchdog_mode`](/docs/pgsql/param#patroni_watchdog_mode): Watchdog strategy.
- [`patroni_username`](/docs/pgsql/param#patroni_username) / [`patroni_password`](/docs/pgsql/param#patroni_password): Credentials for accessing REST API.

## Backup Subsystem (pgBackRest)

pgBackRest creates local or remote repositories on the primary for full/incremental backups and WAL archiving. It cooperates with PostgreSQL to execute control commands, supports multiple targets like local disk (default) and MinIO, and can cover PITR, backup chain verification, and remote bootstrap. Upstream is the primary's data and archive stream, downstream is object storage or local backup disk, and observability provided by `pgbackrest_exporter`.

Component can run on-demand, usually initiating a full backup immediately after initialization completion; also supports disabling (experimental environments or external backup systems). When enabling `minio` repository, a reachable object storage service and credentials are needed. Recovery process integrates with Patroni, and replicas can be bootstrapped as new primary or replica via `pgbackrest` command.

**Key Parameters**

- [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled): Controls whether to install and activate backup subsystem.
- [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method): Repository type (local/minio/custom).
- [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo): Repository definition and access credentials.
- [`pgbackrest_init_backup`](/docs/pgsql/param#pgbackrest_init_backup): Whether to automatically execute full backup after initialization.
- [`pgbackrest_clean`](/docs/pgsql/param#pgbackrest_clean): Whether to clean old backup directories during initialization.
- [`pgbackrest_log_dir`](/docs/pgsql/param#pgbackrest_log_dir): Log output path.
- [`pg_fs_bkup`](/docs/pgsql/param#pg_fs_bkup): Local backup disk mount point.

## PostgreSQL Metrics (pg_exporter)

pg_exporter runs on PG nodes, logs in using local socket, exports metrics covering sessions, buffer hits, replication lag, transaction rate, etc., for Prometheus on infra nodes to scrape. It is tightly coupled with PostgreSQL, automatically reconnecting when PostgreSQL restarts, listening externally on `9630` (default). Exporter has no dependency on VIP and decouples from HA topology.

**Key Parameters**

- [`pg_exporter_enabled`](/docs/pgsql/param#pg_exporter_enabled): Enable or disable exporter.
- [`pg_exporter_port`](/docs/pgsql/param#pg_exporter_port): HTTP listening port.
- [`pg_exporter_config`](/docs/pgsql/param#pg_exporter_config): Collection configuration template.
- [`pg_exporter_cache_ttls`](/docs/pgsql/param#pg_exporter_cache_ttls): Cache TTL for each collector.

## Connection Pool Metrics (pgbouncer_exporter)

pgbouncer_exporter starts on nodes, reads Pgbouncer's statistics view, providing metrics for connection pool utilization, wait queue, and hit rate. It depends on Pgbouncer's admin user and exposes to Prometheus via independent port. If Pgbouncer is disabled, this component should also be disabled.

**Key Parameters**

- [`pgbouncer_exporter_enabled`](/docs/pgsql/param#pgbouncer_exporter_enabled): Controls whether to enable exporter.
- [`pgbouncer_exporter_port`](/docs/pgsql/param#pgbouncer_exporter_port): Listening port (default 9631).
- [`pgbouncer_exporter_url`](/docs/pgsql/param#pgbouncer_exporter_url): Overrides auto-generated DSN.
- [`pgbouncer_exporter_options`](/docs/pgsql/param#pgbouncer_exporter_options): Additional command-line parameters.

## Backup Metrics (pgbackrest_exporter)

pgbackrest_exporter parses pgBackRest status on this node, generating metrics for recent backup time, size, type, etc. Prometheus collects these metrics via `9854` (default), combined with alert policies to quickly detect backup expiration or failure. Component depends on pgBackRest metadata directory and should also be disabled when backup system is turned off.

**Key Parameters**

- [`pgbackrest_exporter_enabled`](/docs/pgsql/param#pgbackrest_exporter_enabled): Whether to collect backup metrics.
- [`pgbackrest_exporter_port`](/docs/pgsql/param#pgbackrest_exporter_port): HTTP listening port.
- [`pgbackrest_exporter_options`](/docs/pgsql/param#pgbackrest_exporter_options): Extra command-line parameters.

## Log Collection (Vector)

Vector resides on nodes, tracking log directories of PostgreSQL, Pgbouncer, Patroni, and pgBackRest.

**Key Parameters (located in [`NODE`](/docs/node) module's VECTOR component)**


[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)
