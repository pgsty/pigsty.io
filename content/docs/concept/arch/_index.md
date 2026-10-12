---
title: Architecture
weight: 160
description: Pigsty's modular architecture—declarative composition, on-demand customization, flexible deployment.
icon: fa-solid fa-archway
module: [PIGSTY]
categories: [Concept]
---

Pigsty uses a **modular architecture** and **declarative interface**. [**Combine modules**](/docs/deploy/planning#common-solutions) to meet your requirements.

* Use one or more modules from the [**modular design**](/docs/deploy/planning).
* Describe the environment with a [**configuration inventory**](/docs/concept/iac/inventory) and [**parameters**](/docs/concept/iac/parameter). Apply it with [**Ansible playbooks**](/docs/setup/playbook).
* Run Pigsty on physical or virtual [**nodes**](/docs/concept/arch/node) with a [**compatible OS**](/docs/ref/linux).


----------------

## Modules

Pigsty uses a modular design with six main default modules: [`PGSQL`](/docs/pgsql), [`INFRA`](/docs/infra), [`NODE`](/docs/node), [`ETCD`](/docs/etcd), [`REDIS`](/docs/redis), and [`MINIO`](/docs/minio).

* [`PGSQL`](/docs/pgsql): Self-healing HA Postgres clusters powered by Patroni, Pgbouncer, HAproxy, PgBackrest, and more.
* [`INFRA`](/docs/infra): Local software repo, Nginx, Grafana, Victoria, AlertManager, Blackbox Exporter—the complete observability stack.
* [`NODE`](/docs/node): Tune nodes to desired state—hostname, timezone, NTP, ssh, sudo, haproxy, docker, vector, keepalived.
* [`ETCD`](/docs/etcd): Distributed key-value store as DCS for HA Postgres clusters: consensus leader election/config management/service discovery.
* [`REDIS`](/docs/redis): Redis servers supporting standalone primary-replica, sentinel, and cluster modes with full monitoring.
* [`MINIO`](/docs/minio): S3-compatible simple object storage that can serve as an optional backup destination for PG databases.

Combine modules through declarative configuration. For host monitoring, install [`INFRA`](/docs/infra) on infrastructure nodes and [`NODE`](/docs/node) on managed nodes. Install [`ETCD`](/docs/etcd) and [`PGSQL`](/docs/pgsql) across multiple nodes to form an HA PostgreSQL cluster automatically. You can reuse Pigsty infrastructure for custom modules; see [`REDIS`](/docs/redis) and [`MINIO`](/docs/minio) as examples. Compatibility modes, such as [PostgreSQL Mongo mode](/docs/conf/mongo/), combine standard PGSQL and Docker APP workflows.

Every module requires `NODE`. Install it first on managed nodes. By default, `NODE` uses the local software repository and thus has a weak dependency on `INFRA`. The [`deploy.yml`](/docs/setup/playbook) playbook bootstraps administration/infrastructure nodes with `INFRA` to resolve this circular dependency.


[![pigsty-sandbox](/img/pigsty/sandbox.png)](/docs/deploy/sandbox)



----------------

## Standalone Installation

By default, Pigsty installs on one physical or virtual **node**. [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml) installs [`INFRA`](/docs/infra), [`ETCD`](/docs/etcd), [`PGSQL`](/docs/pgsql), and optional [`MINIO`](/docs/minio) on the **current** node. Monitoring includes VictoriaMetrics, VictoriaLogs, VictoriaTraces, Grafana, Alertmanager, and Blackbox Exporter. A standalone PostgreSQL instance serves as the CMDB: cluster `pg-meta`, database `meta`.

This node has monitoring, visualization, and PostgreSQL with automatic PITR configuration. One node cannot provide HA. Use it for development, tests, demonstrations, and data visualization or analysis. It can also serve as an administration node for additional nodes.

[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)



----------------

## Monitoring

Use the [standalone meta node](#standalone-installation) as an **administration node** and **monitoring center** for additional nodes and database servers.

You can use Pigsty monitoring independently. It configures VictoriaMetrics/Grafana with dashboards for [host nodes](https://demo.pigsty.io/d/node-overview) and [PostgreSQL databases](https://demo.pigsty.io/d/pgsql-overview). A small configuration enables production monitoring and alerts for existing hosts and databases, including those managed outside Pigsty.

[![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)](/docs/pgsql/monitor/)



----------------

## HA PostgreSQL Clusters

Pigsty lets you operate your own production HA PostgreSQL RDS service in your chosen environment.

To create an HA cluster, describe it in configuration and run the playbook:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars: { pg_cluster: pg-test }
```

```bash
$ bin/pgsql-add pg-test  # Initialize cluster 'pg-test'
```

In less than 10 minutes, the cluster has service access, monitoring, backup PITR, and HA configured.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

Patroni, etcd, and HAProxy provide automatic recovery from hardware failure. By default, primary failover completes within 45 seconds. HAProxy uses Patroni health checks to route read/write traffic to the new primary and avoid split brain. Clients need no configuration change or application restart. Replica failures and planned switchovers cause only a brief interruption to the current query.

pgBackRest and optional [Silo](/docs/minio) provide local and cloud PITR for software failures, human errors, and datacenter disasters. They also support cross-region replication and disaster recovery after datacenter failure.
