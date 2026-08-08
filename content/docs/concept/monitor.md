---
title: Monitoring System
weight: 220
description: How Pigsty's monitoring system is architected and how monitored targets
  are automatically managed.
toc_hide: true
hide_summary: true
icon: fa-solid fa-binoculars
module: [INFRA]
categories: [Concept]
---

Pigsty's monitoring system has three pillars—metrics, logs, and alerting—and is available out of the box. Logs and alerts are also important inputs for [**audit and traceability**](/docs/concept/sec/data#audit-and-traceability).
It can monitor clusters managed by Pigsty, existing PostgreSQL clusters, and external RDS services.


--------

## Monitoring Targets

Pigsty monitoring covers these core targets:

- PostgreSQL clusters and instances (SQL performance, connections, replication, transactions, checkpoints, WAL)
- Infrastructure components (Grafana, VictoriaMetrics, Alertmanager, Nginx, etc.)
- Host nodes (CPU, memory, disk, network, kernel)
- Key middleware (ETCD, MINIO, REDIS, JUICE, VIBE, etc.)


--------

## Technology Stack

| Component | Purpose |
|:----------|:--------|
| [**Grafana**](/docs/infra/admin/grafana/) | Visualization dashboards, unified entry point, alert views |
| [**VictoriaMetrics**](/docs/infra/) | Time-series metric ingestion, storage, and query |
| [**VictoriaLogs**](/docs/infra/) | Structured log ingestion, indexing, and search |
| [**VMAlert + Alertmanager**](/docs/infra/monitor/) | Alert rule evaluation and notification delivery |
| [**Exporter / Agent**](/docs/pgsql/monitor/) | Database/system metric exposure and log forwarding |
{.full-width}


--------

## Onboarding Modes

Pigsty supports three monitoring onboarding modes:

| Mode | Use Case | Entry |
|:-----|:---------|:------|
| `FULL` | Database is deployed and managed directly by Pigsty | [PGSQL Monitoring System](/docs/pgsql/monitor/) |
| `MANAGED` | Existing PostgreSQL cluster with SSH-manageable nodes | [Monitor Existing Cluster](/docs/pgsql/monitor/#monitor-existing-cluster) |
| `RDS` | Cloud database accessible only by connection string | [Monitor RDS](/docs/pgsql/monitor/#monitor-rds) |
{.full-width}


--------

## Continue Reading

- [**PGSQL Monitoring System**](/docs/pgsql/monitor/): Database metrics, logs, alerting, and dashboards
- [**INFRA Monitoring & Alerting**](/docs/infra/monitor/): Health of the monitoring stack itself
- [**NODE Monitoring & Alerting**](/docs/node/monitor/): Host resource and system health
- [**ETCD Monitoring & Alerting**](/docs/etcd/monitor/): Consistency and availability monitoring
- [**MINIO Monitoring & Alerting**](/docs/minio/monitor/): Object storage cluster monitoring
- [**REDIS Monitoring & Alerting**](/docs/redis/monitor/): Cache cluster runtime monitoring
