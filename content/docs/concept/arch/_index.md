---
title: Architecture
weight: 160
description: Pigsty's modular architecture—declarative composition, on-demand customization, flexible deployment.
icon: fa-solid fa-archway
module: [PIGSTY]
categories: [Concept]
---

Pigsty uses a **modular architecture** with a **declarative interface**. You can [**freely combine modules like building blocks**](/docs/deploy/planning#common-solutions) as needed.

* Pigsty adopts a [**modular design**](/docs/deploy/planning) that can be freely combined and used on demand (use one or all) to suit different scenarios.
* Pigsty uses [**config inventory**](/docs/concept/iac/inventory) and [**config parameters**](/docs/concept/iac/parameter) to describe the entire deployment environment, implemented via [**Ansible playbooks**](/docs/setup/playbook).
* Pigsty can run on any [**node**](/docs/concept/arch/node)—physical or virtual—as long as the OS is [**compatible**](/docs/ref/linux).


----------------

## Modules

Pigsty uses a modular design with six main default modules: [`PGSQL`](/docs/pgsql), [`INFRA`](/docs/infra), [`NODE`](/docs/node), [`ETCD`](/docs/etcd), [`REDIS`](/docs/redis), and [`MINIO`](/docs/minio).

* [`PGSQL`](/docs/pgsql): Self-healing HA Postgres clusters powered by Patroni, Pgbouncer, HAproxy, PgBackrest, and more.
* [`INFRA`](/docs/infra): Local software repo, Nginx, Grafana, Victoria, AlertManager, Blackbox Exporter—the complete observability stack.
* [`NODE`](/docs/node): Tune nodes to desired state—hostname, timezone, NTP, ssh, sudo, haproxy, docker, vector, keepalived.
* [`ETCD`](/docs/etcd): Distributed key-value store as DCS for HA Postgres clusters: consensus leader election/config management/service discovery.
* [`REDIS`](/docs/redis): Redis servers supporting standalone primary-replica, sentinel, and cluster modes with full monitoring.
* [`MINIO`](/docs/minio): S3-compatible simple object storage that can serve as an optional backup destination for PG databases.

You can declaratively compose them freely. If you only want host monitoring, installing the [`INFRA`](/docs/infra) module on infrastructure nodes and the [`NODE`](/docs/node) module on managed nodes is sufficient.
The [`ETCD`](/docs/etcd) and [`PGSQL`](/docs/pgsql) modules are used to build HA PG clusters—installing these modules on multiple nodes automatically forms a high-availability database cluster.
You can reuse Pigsty infrastructure and develop your own modules; [`REDIS`](/docs/redis) and [`MINIO`](/docs/minio) can serve as examples. More modules will be added—preliminary support for Mongo and MySQL is already on the roadmap.

Note that all modules depend strongly on the `NODE` module: in Pigsty, nodes must first have the `NODE` module installed to be managed before deploying other modules.
When nodes (by default) use the local software repo for installation, the `NODE` module has a weak dependency on the `INFRA` module. Therefore, the admin/infrastructure nodes with the `INFRA` module complete the bootstrap process in the [`deploy.yml`](/docs/setup/playbook) playbook, resolving the circular dependency.


[![pigsty-sandbox](/img/pigsty/sandbox.png)](/docs/deploy/sandbox)



----------------

## Standalone Installation

By default, Pigsty installs on a single **node** (physical/virtual machine). The [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml) playbook installs [`INFRA`](/docs/infra), [`ETCD`](/docs/etcd), [`PGSQL`](/docs/pgsql), and optionally [`MINIO`](/docs/minio) modules on the **current** node,
giving you a fully-featured observability stack (Prometheus, Grafana, Loki, AlertManager, PushGateway, BlackboxExporter, etc.), plus a built-in PostgreSQL standalone instance as a CMDB, ready to use out of the box (cluster name `pg-meta`, database name `meta`).

This node now has a complete self-monitoring system, visualization tools, and a Postgres database with PITR auto-configured (HA unavailable since you only have one node). You can use this node as a devbox, for testing, running demos, and data visualization/analysis. Or, use this node as an admin node to deploy and manage more nodes!

[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)



----------------

## Monitoring

The installed [standalone meta node](#standalone-installation) can serve as an **admin node** and **monitoring center** to bring more nodes and database servers under its supervision and control.

Pigsty's monitoring system can be used independently. If you want to install the Prometheus/Grafana observability stack, Pigsty provides best practices!
It offers rich dashboards for [host nodes](https://demo.pigsty.io/d/node-overview) and [PostgreSQL databases](https://demo.pigsty.io/d/pgsql-overview).
Whether or not these nodes or PostgreSQL servers are managed by Pigsty, with simple configuration, you immediately have a production-grade monitoring and alerting system, bringing existing hosts and PostgreSQL under management.

[![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)](/docs/pgsql/monitor/dashboard)



----------------

## HA PostgreSQL Clusters

Pigsty helps you **own** your own production-grade HA PostgreSQL RDS service anywhere.

To create such an HA PostgreSQL cluster/RDS service, you simply describe it with a short config and run the playbook to create it:

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

In less than 10 minutes, you'll have a PostgreSQL database cluster with service access, monitoring, backup PITR, and HA fully configured.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

Hardware failures are covered by the self-healing HA architecture provided by patroni, etcd, and haproxy—in case of primary failure, automatic failover executes within 30 seconds by default.
Clients don't need to modify config or restart applications: Haproxy uses patroni health checks for traffic distribution, and read-write requests are automatically routed to the new cluster primary, avoiding split-brain issues.
This process is seamless—for example, in case of replica failure or planned switchover, clients experience only a momentary flash of the current query.

Software failures, human errors, and datacenter-level disasters are covered by pgbackrest and the optional [MinIO](/docs/minio) cluster. This provides local/cloud PITR capabilities and, in case of datacenter failure, offers cross-region replication and disaster recovery.

