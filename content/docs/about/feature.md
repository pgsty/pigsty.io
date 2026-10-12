---
title: Features
weight: 10
description: Pigsty's value propositions and highlight features.
icon: fa-solid fa-wand-magic-sparkles
module: [PIGSTY]
categories: [Reference]
---

> "<strong>P</strong>ostgreSQL <strong>I</strong>n <strong>G</strong>reat <strong>STY</strong>le": <strong>P</strong>ostgres, <strong>I</strong>nfras, <strong>G</strong>raphics, <strong>S</strong>ervice, <strong>T</strong>oolbox, it's all <strong>Y</strong>ours.
>
> —— **Battery-included, local-first PostgreSQL distribution, open-source RDS alternative**


----------------

## Value Propositions

- [**Extensibility**](/img/pigsty/ecosystem.png): Powerful [**extensions**](/ext/list) out of the box: deep integration of **PostGIS**, **TimescaleDB**, **Citus**, **PGVector**, [**{{< param pgext_count >}}**](/ext/list/) plugins, and [**12 PG kernels**](/docs/pgsql/kernel).
- [**Reliability**](/img/pigsty/arch.png): Quickly create [**high-availability**](/docs/concept/ha/), self-healing [**PostgreSQL**](/docs/pgsql) clusters with built-in [**point-in-time recovery**](/docs/concept/pitr/), [**access control**](/docs/concept/sec/ac), a self-signed [**CA**](/docs/concept/sec/ca), and [**TLS**](/docs/concept/sec/ca).
- [**Observability**](/img/pigsty/dashboard.jpg): [**Prometheus**](/docs/infra#victoria-observability-suite) and [**Grafana**](/docs/infra#grafana) provide a modular monitoring stack that can operate independently. See the [**Gallery**](https://github.com/pgsty/pigsty/wiki/Gallery) and [**Demo**](https://demo.pigsty.io).
- [**Availability**](/img/pigsty/ha.png): Deliver stable, reliable, auto-routed, transaction-pooled, read-write separated high-performance database [**services**](/docs/pgsql/service#default-service), with flexible [**access**](/docs/pgsql/service#access-service) modes via HAProxy, Pgbouncer, and VIP.
- [**Maintainability**](/img/pigsty/iac.jpg): [**Easy to use**](/docs/setup/install), [**Infrastructure as Code**](/docs/pgsql/config), [**Management SOPs**](/docs/pgsql/admin/), auto-tuning, local software repository, [**Vagrant**](/docs/deploy/vagrant) [**sandbox**](/docs/deploy/sandbox) and [**OpenTofu**](/docs/deploy/terraform) templates, zero-downtime [**migration**](/docs/pgsql/migration) solutions.
- [**Composability**](/img/pigsty/sandbox.png): [**Modular**](/docs/concept/arch#modules) architecture design, reusable [**Infra**](/docs/infra), various optional [**modules**](/docs/ref/module/): [**Redis**](/docs/redis), [**Silo object storage**](/docs/minio), [**ETCD**](/docs/etcd), [**DuckDB**](/docs/pilot/duckdb/), [**Docker**](/docs/app/), [**Supabase**](https://github.com/pgsty/pigsty/tree/master/app/supabase).

![Pigsty feature overview](/img/pigsty/banner.png)


----------------

## Overview

Pigsty is a local, open-source alternative to PostgreSQL RDS:

- [Battery-Included RDS](#battery-included-rds): From kernel to RDS distribution, providing production-grade PG database services for versions 14-18 on EL/Debian/Ubuntu.
- [Rich Extensions](#rich-extensions): {{< param pgext_count >}} extensions provide distributed, time-series, geospatial, graph, vector, and multi-model capabilities.
- [Flexible Modular Architecture](#flexible-modular-architecture): Compose Redis, Etcd, and Silo object-storage modules with PostgreSQL modes such as Mongo; monitor existing RDS, hosts, and databases independently.
- [Stunning Observability](#stunning-observability): Monitor databases with the Prometheus/Grafana observability stack.
- [Battle-Tested Reliability](#battle-tested-reliability): Self-healing high-availability architecture: automatic failover on hardware failure, seamless traffic switching. With auto-configured PITR as safety net for accidental data deletion!
- [Easy to Use and Maintain](#easy-to-use-and-maintain): Declarative APIs, GitOps, Database/Infra-as-Code, and management SOPs simplify operations.
- [Solid Security Practices](#solid-security-practices): HBA, ACL, TLS, backup, logging, and host-firewall foundations, with explicit default boundaries and production hardening requirements.
- [Broad Application Scenarios](#broad-application-scenarios): Low-code data application development, or use preset Docker Compose templates to spin up massive software using PostgreSQL with one click!
- [Open-Source Free Software](#open-source-free-software): Own better database services at less than 1/10 the cost of cloud databases! Truly "own" your data and achieve autonomy!

PostgreSQL integrates ecosystem tools and best practices:

- Out-of-the-box [PostgreSQL](https://www.postgresql.org/) distribution, deeply integrating {{< param pgext_count >}} [packaged extensions](/ext/list/) for geospatial, time-series, distributed, graph, vector, search, and AI!
- Runs on bare operating systems without container support, supporting mainstream operating systems: EL 8/9/10, Ubuntu 22.04/24.04/26.04, and Debian 12/13.
- Based on [patroni](https://patroni.readthedocs.io/en/latest/), [haproxy](http://www.haproxy.org/), and [etcd](https://etcd.io/), creating a self-healing high-availability architecture: automatic failover on hardware failure, seamless traffic switching.
- Combines [pgBackRest](https://pgbackrest.org/) with optional [Silo object storage](/docs/minio/) to provide out-of-the-box point-in-time recovery (PITR), protecting against software defects and accidental data deletion.
- Based on [Ansible](https://www.ansible.com/) providing declarative APIs to abstract complexity, greatly simplifying daily operations management in a **Database-as-Code** manner.
- Pigsty has broad applications, can be used as complete application runtime, develop demo data/visualization applications, and massive software using PG can be spun up with [Docker](https://www.docker.com/) templates.
- Provides [Vagrant](https://www.vagrantup.com/)-based local development and testing sandbox environment, and [Terraform](https://www.terraform.io/)-based cloud auto-deployment solutions, keeping development, testing, and production environments consistent.
- Run PostgreSQL in [Mongo-compatible mode](/docs/conf/mongo/) with DocumentDB and the FerretDB Docker APP


----------------

## Battery-Included RDS

**Run production PostgreSQL services on your own infrastructure.**

PostgreSQL provides the database kernel. A database service also needs operational tools, which Pigsty integrates. These include extension installation, connection pooling, load balancing, service access, high availability, failover, logs, metrics, and alerts. Pigsty also provides backups, recovery, PITR, access control, tuning, encryption, certificates, NTP, and DNS. Configuration management, CMDB, and management playbooks complete the service infrastructure.


Pigsty supports PostgreSQL 14 ~ 18 and compatible forks on EL, Debian, Ubuntu, and [compatible distributions](/docs/ref/linux). It supports x86_64 and ARM64 without requiring containers. Alongside kernels and extensions, it supplies database infrastructure and runtime services. It includes automatic deployment for local sandboxes, production environments, and cloud IaaS.

Pigsty can initialize an environment from bare metal with one command. Developers and operations engineers can use it to manage production databases without dedicated database experts.

[![pigsty-arch.jpg](/img/pigsty/arch.png)](/docs/concept/arch#singleton-installation)




----------------

## Rich Extensions

**Combine multiple data models and database workloads in PostgreSQL.**

Pigsty integrates [**{{< param pgext_count >}} extensions**](/ext/list) from the PostgreSQL [**extension ecosystem**](/blog/pg/pg-eat-db-world). These provide ready-to-use support for multiple data models.

Extensions can [**work together**](https://pigsty.io/blog/pg/pg-eat-db-world#the-magic-of-ultimate-extensibility) to provide combined capabilities. Use [**PostGIS**](https://postgis.net/) for geospatial data and [**TimescaleDB**](https://www.timescale.com/) for time-series and event analysis. Add [**Citus**](https://www.citusdata.com/) for a distributed geospatial and temporal database. Use [**PGVector**](https://github.com/pgvector/pgvector) for embeddings and [**ParadeDB**](https://www.paradedb.com/) for ElasticSearch-level full-text search. Combine SQL, full-text, and approximate vector search for hybrid queries. [**pg_duckdb**](https://github.com/duckdb/pg_duckdb), [**pg_mooncake**](https://github.com/duckdb/pg_mooncake), and other extensions provide dedicated OLAP and data lakehouse analytical performance.

Using PostgreSQL in place of separate MySQL, Kafka, ElasticSearch, MongoDB, and big data analysis systems can simplify architecture. This approach improves development efficiency and agility. It can reduce software, hardware, development, and operations costs.

[![pigsty-ecosystem.jpg](/img/pigsty/ecosystem.jpg)](/ext/list/)



----------------

## Flexible Modular Architecture

**Flexible composition, free extension, multi-database support, monitor existing RDS/hosts/databases**

Pigsty components are independently deployable [**modules**](/docs/ref/module/). Combine them for your requirements. [**`INFRA`**](/docs/infra) provides monitoring; [**`NODE`**](/docs/node) configures and manages nodes. [**`PGSQL`**](/docs/pgsql) on multiple nodes forms a primary-replica HA cluster. [**`ETCD`**](/docs/etcd) provides its consensus and metadata storage.

Optional modules extend the four [core modules](/docs/ref/module#core-modules). [**`MINIO`**](/docs/minio) deploys Silo for local object storage and centralized database backups. [**`REDIS`**](/docs/redis/) provides standalone primary-replica, sentinel, and native cluster modes. [**`DOCKER`**](/docs/docker) runs stateless applications.

Pigsty supports compatible PostgreSQL kernels and derivatives. [**`Babelfish`**](/docs/pgsql/kernel/babelfish) provides MS SQL Server compatibility; [**`IvorySQL`**](/docs/pgsql/kernel/ivorysql) provides Oracle compatibility. [**`OpenHaloDB`**](/docs/pgsql/kernel/openhalo) provides MySQL compatibility. [**`OrioleDB`**](/docs/pgsql/kernel/orioledb) targets high OLTP performance.

Furthermore, you can use [**PostgreSQL Mongo mode**](/docs/conf/mongo/) for MongoDB compatibility, [**`Supabase`**](/docs/pgsql/kernel/supabase) for Firebase compatibility, and [**`PolarDB`**](/docs/pgsql/kernel/polardb) to meet domestic compliance requirements.
Message queues are covered by the [**`KAFKA`**](/docs/kafka/) module, which deploys Kafka 4.x dynamic KRaft clusters.
More professional/pilot modules will be continuously introduced to Pigsty, such as [**`GPSQL`**](/docs/pgsql/kernel/greenplum), [DUCKDB](/docs/pilot/duckdb/), [TIGERBEETLE](/docs/pilot/tigerbeetle/), [KUBERNETES](/docs/pilot/kube/), [CONSUL](/docs/pilot/consul/), [GREENPLUM](/docs/pgsql/kernel/greenplum/), [CLOUDBERRY](/docs/pgsql/kernel/cloudberry/), [MYSQL](/docs/mysql/), ...

[![pigsty-sandbox.jpg](/img/pigsty/sandbox.png)](/docs/ref/module/)





----------------

## Stunning Observability

**Monitor PostgreSQL with an integrated open-source observability stack.**

Pigsty [**monitoring**](/docs/pgsql/monitor) uses Grafana for visualization, VictoriaMetrics for metrics, and VictoriaLogs for log collection and queries. Alertmanager sends alerts, and Blackbox Exporter checks service availability. The INFRA module deploys this Grafana / Prometheus-compatible stack with one command.

Pigsty automatically monitors every managed component: host nodes, HAProxy load balancers, PostgreSQL databases, PgBouncer connection pools, Etcd metadata stores, Redis-compatible caches, Silo object storage, and the monitoring infrastructure itself. Grafana dashboards and preset alert rules provide immediate operational visibility. The same stack can also monitor applications, existing database instances, and cloud RDS services.

Monitoring supports failure analysis, slow query optimization, capacity assessment, and resource planning. More than three thousand metric types describe the system. Pigsty processes, aggregates, and presents them in dashboards. Views range from global summaries to CRUD details for tables, indexes, and functions. Navigate between levels and objects to examine current state and history and estimate future trends.

[![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)](https://github.com/pgsty/pigsty/wiki/Gallery)


The monitoring module can be [**used independently**](/docs/pgsql/monitor#monitor-rds) for existing hosts, database instances, and cloud RDS. One connection string and one command configure PostgreSQL monitoring.

Visit the [**Screenshot Gallery**](https://github.com/pgsty/pigsty/wiki/Gallery) and [**Online Demo**](https://demo.pigsty.io) for more details.




----------------

## Battle-Tested Reliability

**High availability and point-in-time recovery are included.**

For table/database drops caused by software defects or human error, Pigsty provides out-of-the-box [PITR](/docs/concept/pitr) point-in-time recovery capability, enabled by default without additional configuration. As long as storage space allows, base backups and WAL archiving based on `pgBackRest` let you quickly return to any point within the recovery window. You can use local directories/disks, Silo deployed by the MINIO module, or external S3-compatible object-storage services to retain longer recovery windows, according to your budget.

Pigsty provides a [high-availability self-healing architecture](/docs/concept/ha) based on Patroni, etcd, and HAProxy. When the node, network, quorum, and synchronous-replica assumptions hold, it can fail over the primary automatically. Actual RTO and RPO depend on replication mode, failure type, timeout settings, and client reconnection behavior.

HAProxy switches traffic automatically and supports client access through DNS, VIP, LVS, and other methods. Failover and switchover cause brief interruptions without requiring new connection strings or application restarts. Small maintenance windows support rolling cluster maintenance and upgrades without application coordination. Hardware repair can wait while redundant nodes provide service. Production users include large organizations and core institutions.

The largest deployment has 25K CPU cores and 200+ large PostgreSQL instances. It maintained availability above 99.999% over six to seven years despite dozens of hardware failures, other incidents, and several DBA changes.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha/)



----------------

## Easy to Use and Maintain

**Infra as Code, Database as Code, declarative APIs encapsulate database management complexity.**

Pigsty uses declarative inventories to describe the required database cluster. Its playbooks implement that state. This resembles Kubernetes CRDs and Operators, but applies to databases and infrastructure on containers, virtual machines, or physical machines.

To create or remove clusters, replicas, databases, users, services, extensions, or whitelist rules, edit the inventory and run the idempotent playbooks. Pigsty adjusts the system to the declared state. It tunes settings for the hardware. Users specify cluster names, instances, hosts, and a transaction, analytics, critical, or tiny template. Developers can manage these tasks themselves. Detailed parameters also support custom DBA requirements.

Pigsty can install with one command and prepackaged dependencies, without internet access. Vagrant or Terraform templates can provision the required machines. A complete local laptop or cloud VM deployment takes about ten minutes. A 1-core 2GB sandbox VM simulates production features for development, testing, demonstrations, and learning.

[![pigsty-iac.jpg](/img/pigsty/iac.jpg)](/docs/setup/config)



----------------

## Solid Security Practices

Pigsty provides the security foundations required for database deployment. Access controls include layered HBA, built-in roles and default privileges, and SCRAM-SHA-256. Other mechanisms include page checksums, a local CA, component certificates, backup, PITR, centralized logs, and firewall configuration.

The defaults target development, testing, and demonstrations on a trusted intranet. Production deployments must replace public credentials, review network boundaries, enforce TLS where required, configure server-certificate verification, and establish backup recovery, privilege review, and incident-response processes.

[**Security and Compliance**](/docs/concept/sec/) documents each mechanism's default state and boundary. [**Security Considerations**](/docs/deploy/security/) provides production hardening guidance, and [**Compliance**](/docs/concept/sec/compliance) maps relevant controls to MLPS and SOC 2. Whether a deployment meets a specific requirement depends on scope, organizational process, continuous evidence, and the auditor's conclusion.

[![pigsty-acl.jpg](/img/pigsty/acl.jpg)](/docs/concept/sec/)



----------------

## Broad Application Scenarios

**Deploy PostgreSQL applications with preset Docker templates.**

The database is often the most complex part of a data application. For example, a core difference between GitLab Enterprise and Community Edition is PostgreSQL monitoring and high availability. A local PostgreSQL RDS can replace paid application-specific database management components.

Pigsty supplies the [**Docker module**](/docs/docker) and ready-to-use [**Compose templates**](/docs/app). Use managed HA PostgreSQL, Redis, and Silo as backend storage for stateless applications. Examples include GitLab, Gitea, Wiki.js, NocoDB, Odoo, Jira, Confluence, Harbor, Mastodon, Discourse, KeyCloak, and Mattermost. Pigsty can simplify deployment when applications require reliable PostgreSQL.

Pigsty includes PGAdmin4, PGWeb, ByteBase, PostgREST, and Kong development tools. It also supports PostgreSQL-backed systems such as EdgeDB, FerretDB, and [**Supabase**](/docs/app/supabase). Use built-in Grafana and PostgreSQL to create interactive data applications with little code. ECharts panels provide additional interactive visualizations.

Pigsty provides a runtime for AI applications. Agents can use PostgreSQL and observability services to build data-driven applications.

[![pigsty-app.jpg](/img/pigsty/app.jpg)](/docs/docker/)



----------------

## Open-Source Free Software

**PostgreSQL community members develop Pigsty as free software under Apache-2.0.**

Pigsty is [**open-source and free**](/docs/about/license/). It provides enterprise PostgreSQL services near hardware cost without requiring database experts. Vendor enterprise services and public cloud RDS charge [**premiums**](/docs/about/compare/cost) of several to over ten times hardware cost.

Many users choose cloud databases because they cannot manage databases themselves or lack alternatives. Pigsty aims to provide a cloud-neutral, [**better**](/docs/about/compare) open-source RDS alternative. It follows upstream PostgreSQL without vendor lock-in, license fees, node limits, or data collection. Users retain control of their data.

Pigsty automates manual database operations, but rare cases still need expert help. [**Subscription services**](/docs/about/service/) provide this support for enterprise users. Consulting fees of tens of thousands are less than one-thirtieth of a top DBA's annual salary. For community users, we [**contribute support**](/docs/about/sponsor/) through free assistance and daily Q&A.

[![pigsty-price.jpg](/img/pigsty/price.jpg)](/docs/about/compare/cost)

<script>
window.OinkEchartsFunctions = window.OinkEchartsFunctions || {};
(function (registry) {
var fmtn = function(n) { return Number(n || 0).toLocaleString("en-US"); };
var yfmt = function(v) { return fmtn(v); };
var ttfmt = function(params) {
  if (!params || !params.length) return '';
  return ['<b>CPU: ' + params[0].axisValue + '</b>']
    .concat(params.map(function(p) { return p.marker + ' ' + p.seriesName + ': ' + fmtn(p.value); }))
    .join('<br/>');
};
registry["fmtn"] = fmtn;
registry["yfmt"] = yfmt;
registry["ttfmt"] = ttfmt;
})(window.OinkEchartsFunctions);
</script>

```echarts {height="560px"}
tooltip: { trigger: axis, formatter: $fn:ttfmt }
legend: { top: 4, itemGap: 16, data: [Oracle, Open-Source PG, Cloud RDS, Pigsty over IaaS, Pigsty over IDC ] }
grid: { left: 96, right: 36, bottom: 70, top: 50 }
xAxis:
  type: category
  name: CPU Cores
  nameLocation: middle
  nameGap: 36
  boundaryGap: false
  data: [2, 4, 8, 12, 16, 24, 32, 52, 64, 104, 128, 196, 256, 384, 512]
yAxis:
  type: log
  logBase: 10
  min: 10
  name: Monthly Cost (CNY)
  axisLabel: { formatter: $fn:yfmt }
  splitLine: { show: true, lineStyle: { type: dashed, opacity: 0.5 } }
series:
  - { name: Oracle, type: line, symbolSize: 7, lineStyle: { width: 3 }, itemStyle: { color: "#d62728" }, data: [45000, 65000, 105000, 145000, 185000, 265000, 345000, 545000, 665000, 1065000, 1305000, 1985000, 2585000, 3865000, 5145000] }
  - { name: Cloud RDS, type: line, symbolSize: 6, lineStyle: { width: 2 }, itemStyle: { color: "#ff7f0e" }, data: [800, 1600, 3200, 4800, 6400, 9600, 12800, 20800, 25600, 41600, 51200, 78400, 102400, 153600, 204800] }
  - { name: Pigsty over IaaS, type: line, symbolSize: 6, lineStyle: { width: 2 }, itemStyle: { color: "#2ca02c" }, data: [360, 720, 1440, 2160, 2880, 4320, 5760, 9360, 11520, 18720, 23040, 35280, 46080, 69120, 92160] }
  - { name: Pigsty over IDC, type: line, symbolSize: 6, lineStyle: { width: 2 }, itemStyle: { color: "#9467bd" }, data: [38, 76, 152, 228, 304, 456, 608, 988, 1216, 1976, 2432, 3724, 4864, 7296, 9728] }
```
