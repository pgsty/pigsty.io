---
title: Features
weight: 105
description: Pigsty's value propositions and highlight features.
icon: fa-solid fa-wand-magic-sparkles
module: [PIGSTY]
categories: [Reference]
---

> "**P**ostgreSQL **I**n **G**reat **STY**le": **P**ostgres, **I**nfras, **G**raphics, **S**ervice, **T**oolbox, it's all **Y**ours.
>
> —— **Battery-included, local-first PostgreSQL distribution, open-source RDS alternative**


----------------

## Value Propositions

- [**Extensibility**](/img/pigsty/extension.png): Powerful [**extensions**](/docs/ref/extension) out-of-the-box: deep integration of **PostGIS**, **TimescaleDB**, **Citus**, **PGVector** and [**440+**](https://pgext.cloud/list) plugins with Oracle / SQL Server [**compatible kernels**](/docs/pgsql/kernel).
- [**Reliability**](/img/pigsty/arch.png): Quickly create [**high-availability**](/docs/concept/ha/), self-healing [**PostgreSQL**](/docs/pgsql) clusters with auto-configured [**point-in-time recovery**](/docs/concept/pitr/), [**access control**](/docs/pgsql/security/), self-signed [**CA**](/docs/concept/sec/ca) and [**SSL**](/docs/setup/security/), ensuring rock-solid data.
- [**Observability**](/img/pigsty/dashboard.jpg): Based on [**Prometheus**](/docs/infra#prometheus) & [**Grafana**](/docs/infra#grafana) modern observability stack, providing stunning monitoring best practices. Modular design, can be used independently: [**Gallery**](https://github.com/pgsty/pigsty/wiki/Gallery) & [**Demo**](https://demo.pigsty.io).
- [**Availability**](/img/pigsty/ha.png): Deliver stable, reliable, auto-routed, transaction-pooled, read-write separated high-performance database [**services**](/docs/pgsql/service/#default-services), with flexible [**access**](/docs/pgsql/service/#access-services) modes via HAProxy, Pgbouncer, and VIP.
- [**Maintainability**](/img/pigsty/iac.jpg): [**Easy to use**](/docs/setup/install), [**Infrastructure as Code**](/docs/pgsql/config), [**Management SOPs**](/docs/pgsql/admin/), auto-tuning, local software repository, [**Vagrant**](/docs/deploy/vagrant) [**sandbox**](/docs/deploy/sandbox) and [**Terraform**](/docs/deploy/terraform) templates, zero-downtime [**migration**](/docs/pgsql/migration) solutions.
- [**Composability**](/img/pigsty/sandbox.png): [**Modular**](/docs/concept/arch#modules) architecture design, reusable [**Infra**](/docs/infra), various optional [**modules**](/docs/ref/module/): [**Redis**](/docs/redis), [**MinIO**](/docs/minio), [**ETCD**](/docs/etcd), [**FerretDB**](/docs/ferret), [**DuckDB**](https://github.com/pgsty/pigsty/tree/master/app/duckdb), [**Docker**](/docs/docker/), [**Supabase**](https://github.com/pgsty/pigsty/tree/master/app/supabase).

![](/img/pigsty/banner.png)


----------------

## Overview

Pigsty is a better local open-source RDS for PostgreSQL alternative:

- [Battery-Included RDS](#battery-included-rds): From kernel to RDS distribution, providing production-grade PG database services for versions 13-18 on EL/Debian/Ubuntu.
- [Rich Extensions](#rich-extensions): Providing unparalleled 440+ extensions with out-of-the-box distributed, time-series, geospatial, graph, vector, multi-modal database capabilities.
- [Flexible Modular Architecture](#flexible-modular-architecture): Flexible composition, free extension: Redis/Etcd/MinIO/Mongo; can be used independently to monitor existing RDS/hosts/databases.
- [Stunning Observability](#stunning-observability): Based on modern observability stack Prometheus/Grafana, providing stunning, unparalleled database observability capabilities.
- [Battle-Tested Reliability](#battle-tested-reliability): Self-healing high-availability architecture: automatic failover on hardware failure, seamless traffic switching. With auto-configured PITR as safety net for accidental data deletion!
- [Easy to Use and Maintain](#easy-to-use-and-maintain): Declarative API, GitOps ready, foolproof operation, Database/Infra-as-Code and management SOPs encapsulating management complexity!
- [Solid Security Practices](#solid-security-practices): Encryption and backup all included, with built-in basic ACL best practices. As long as hardware and keys are secure, you don't need to worry about database security!
- [Broad Application Scenarios](#broad-application-scenarios): Low-code data application development, or use preset Docker Compose templates to spin up massive software using PostgreSQL with one click!
- [Open-Source Free Software](#open-source-free-software): Own better database services at less than 1/10 the cost of cloud databases! Truly "own" your data and achieve autonomy!

PostgreSQL integrates ecosystem tools and best practices:

- Out-of-the-box [PostgreSQL](https://www.postgresql.org/) distribution, deeply integrating 440+ [extension plugins](/docs/ref/extension) for geospatial, time-series, distributed, graph, vector, search, and AI!
- Runs on bare operating systems without container support, supporting mainstream operating systems: EL 8/9/10, Ubuntu 22.04/24.04, and Debian 12/13.
- Based on [patroni](https://patroni.readthedocs.io/en/latest/), [haproxy](http://www.haproxy.org/), and [etcd](https://etcd.io/), creating a self-healing high-availability architecture: automatic failover on hardware failure, seamless traffic switching.
- Based on [pgBackRest](https://pgbackrest.org/) and optional [MinIO](https://min.io/) clusters providing out-of-the-box PITR point-in-time recovery, serving as a safety net for software defects and accidental data deletion.
- Based on [Ansible](https://www.ansible.com/) providing declarative APIs to abstract complexity, greatly simplifying daily operations management in a **Database-as-Code** manner.
- Pigsty has broad applications, can be used as complete application runtime, develop demo data/visualization applications, and massive software using PG can be spun up with [Docker](https://www.docker.com/) templates.
- Provides [Vagrant](https://www.vagrantup.com/)-based local development and testing sandbox environment, and [Terraform](https://www.terraform.io/)-based cloud auto-deployment solutions, keeping development, testing, and production environments consistent.
- Deploy and monitor dedicated [Redis](https://redis.io/) (primary-replica, sentinel, cluster), MinIO, Etcd, Haproxy, MongoDB ([FerretDB](https://www.ferretdb.io/)) clusters


----------------

## Battery-Included RDS

**Get production-grade PostgreSQL database services locally immediately!**

PostgreSQL is a near-perfect database kernel, but it needs more tools and systems to become a good enough database service (RDS). Pigsty helps PostgreSQL make this leap.
Pigsty solves various challenges you'll encounter when using PostgreSQL: kernel extension installation, connection pooling, load balancing, service access, high availability / automatic failover, log collection, metrics monitoring, alerting, backup recovery, PITR, access control, parameter tuning, security encryption, certificate issuance, NTP, DNS, parameter tuning, configuration management, CMDB, management playbooks... You no longer need to worry about these details!


Pigsty supports PostgreSQL 13 ~ 18 mainline kernels and other compatible forks, running on EL / Debian / Ubuntu and [compatible OS distributions](/docs/ref/linux), available on x86_64 and ARM64 chip architectures, without container support required.
Besides database kernels and many out-of-the-box extension plugins, Pigsty also provides complete infrastructure and runtime required for database services, as well as local sandbox / production environment / cloud IaaS auto-deployment solutions.

Pigsty can bootstrap an entire environment from bare metal with one click, reaching the last mile of software delivery. Ordinary developers and operations engineers can quickly get started and manage databases part-time, building enterprise-grade RDS services without database experts!

[![pigsty-arch.jpg](/img/pigsty/arch.jpg)](/docs/concept/arch#singleton-installation)




----------------

## Rich Extensions

**Hyper-converged multi-modal, use PostgreSQL for everything, one PG to replace all databases!**

PostgreSQL's soul lies in its rich [**extension ecosystem**](/blog/pg/pg-eat-db-world), and Pigsty uniquely deeply integrates [**440+ extensions**](https://pgext.cloud/list) from the PostgreSQL ecosystem, providing you with an out-of-the-box hyper-converged multi-modal database!

Extensions can create [**synergistic effects**](https://pigsty.io/blog/pg/pg-eat-db-world#the-magic-of-ultimate-extensibility), producing 1+1 far greater than 2 results.
You can use [**PostGIS**](https://postgis.net/) for geospatial data, [**TimescaleDB**](https://www.timescale.com/) for time-series/event stream data analysis, and [**Citus**](https://www.citusdata.com/) to upgrade it in-place to a distributed geospatial-temporal database;
You can use [**PGVector**](https://github.com/pgvector/pgvector) to store and search AI embeddings, [**ParadeDB**](https://www.paradedb.com/) for ElasticSearch-level full-text search, and simultaneously use precise SQL, full-text search, and fuzzy vector for hybrid search.
You can also achieve dedicated OLAP database/data lakehouse analytical performance through [**Hydra**](https://www.hydra.so/), [**duckdb_fdw**](https://github.com/alitrack/duckdb_fdw), [**pg_analytics**](https://blog.paradedb.com/pages/introducing_analytics), [**pg_duckdb**](https://github.com/duckdb/pg_duckdb) and other analytical extensions.

Using PostgreSQL as a single component to replace MySQL, Kafka, ElasticSearch, MongoDB, and big data analytics stacks has become a best practice — a single database choice can significantly reduce system complexity, greatly improve development efficiency and agility, achieving remarkable software/hardware and development/operations cost reduction and efficiency improvement.

[![pigsty-ecosystem.jpg](/img/pigsty/ecosystem.jpg)](/docs/ref/extension/)



----------------

## Flexible Modular Architecture

**Flexible composition, free extension, multi-database support, monitor existing RDS/hosts/databases**

Components in Pigsty are abstracted as independently deployable [**modules**](/docs/ref/module/), which can be freely combined to address varying requirements. The [**`INFRA`**](/docs/infra) module comes with a complete modern monitoring stack, while the [**`NODE`**](/docs/node) module tunes nodes to desired state and brings them under management.
Installing the [**`PGSQL`**](/docs/pgsql) module on multiple nodes automatically forms a high-availability database cluster based on primary-replica replication, while the [**`ETCD`**](/docs/etcd) module provides consensus and metadata storage for database high availability.

Beyond these four [core modules](/docs/ref/module#core-modules), Pigsty also provides a series of optional feature modules: The [**`MINIO`**](/docs/minio) module can provide local object storage capability and serve as a centralized database backup repository.
The [**`REDIS`**](/docs/redis/) module can provide auxiliary services for databases in standalone primary-replica, sentinel, or native cluster modes. The [**`DOCKER`**](/docs/docker) module can be used to spin up stateless application software.

Additionally, Pigsty provides PG-compatible / derivative kernel support. You can use [**`Babelfish`**](/docs/pgsql/kernel/babelfish) for MS SQL Server compatibility, [**`IvorySQL`**](/docs/pgsql/kernel/ivorysql) for Oracle compatibility,
[**`OpenHaloDB`**](/docs/pgsql/kernel/openhalo) for MySQL compatibility, and [**`OrioleDB`**](/docs/pgsql/kernel/orioledb) for ultimate OLTP performance.

Furthermore, you can use [**`FerretDB`**](/docs/ferret/) for MongoDB compatibility, [**`Supabase`**](/docs/pgsql/kernel/supabase) for Firebase compatibility, and [**`PolarDB`**](/docs/pgsql/kernel/polardb) to meet domestic compliance requirements.
More professional/pilot modules will be continuously introduced to Pigsty, such as [**`GPSQL`**](/docs/pgsql/kernel/greenplum), [KAFKA](/docs/pilot/kafka/), [DUCKDB](/docs/pilot/duckdb/), [VICTORIA](/docs/pilot/victoria/), [TIGERBEETLE](/docs/pilot/tigerbeetle/), [KUBERNETES](/docs/pilot/kube/), [CONSUL](/docs/pilot/consul/), [JUPYTER](/docs/pilot/jupyter/), [GREENPLUM](/docs/pgsql/kernel/greenplum/), [CLOUDBERRY](/docs/pgsql/kernel/cloudberry/), [MYSQL](/docs/pilot/mysql/), ...

[![pigsty-sandbox.jpg](/img/pigsty/sandbox.jpg)](/docs/ref/module/)





----------------

## Stunning Observability

**Using modern open-source observability stack, providing unparalleled monitoring best practices!**

Pigsty provides best practices for [**monitoring**](/docs/pgsql/monitor) based on the open-source Grafana / Prometheus modern observability stack: Grafana for visualization, VictoriaMetrics for metrics collection, VictoriaLogs for log collection and querying, Alertmanager for alert notifications. Blackbox Exporter for checking service availability. The entire system is also designed for one-click deployment as the out-of-the-box INFRA module.

Any component managed by Pigsty is automatically brought under monitoring, including host nodes, load balancer HAProxy, database Postgres, connection pool Pgbouncer, metadata store ETCD, KV cache Redis, object storage MinIO, ..., and the entire monitoring infrastructure itself. Numerous Grafana monitoring dashboards and preset alert rules will qualitatively improve your system observability capabilities. Of course, this system can also be reused for your application monitoring infrastructure, or for monitoring existing database instances or RDS.

Whether for failure analysis or slow query optimization, capacity assessment or resource planning, Pigsty provides comprehensive data support, truly achieving data-driven operations. In Pigsty, over three thousand types of monitoring metrics are used to describe all aspects of the entire system, and are further processed, aggregated, analyzed, refined, and presented in intuitive visualization modes. From global overview dashboards to CRUD details of individual objects (tables, indexes, functions) in a database instance, everything is visible at a glance. You can drill down, roll up, or jump horizontally freely, browsing current system status and historical trends, and predicting future evolution.

[![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)](https://github.com/Vonng/pigsty/wiki/Gallery)


Additionally, Pigsty's monitoring system module can be [**used independently**](/docs/pgsql/monitor/#monitoring-rds) — to monitor existing host nodes and database instances, or cloud RDS services. With just one connection string and one command, you can get the ultimate PostgreSQL observability experience.

Visit the [**Screenshot Gallery**](https://github.com/Vonng/pigsty/wiki/Gallery) and [**Online Demo**](https://demo.pigsty.io) for more details.




----------------

## Battle-Tested Reliability

**Out-of-the-box high availability and point-in-time recovery capabilities ensure your database is rock-solid!**

For table/database drops caused by software defects or human error, Pigsty provides out-of-the-box [PITR](/docs/concept/pitr) point-in-time recovery capability, enabled by default without additional configuration. As long as storage space allows, base backups and WAL archiving based on `pgBackRest` give you the ability to quickly return to any point in the past. You can use local directories/disks, or dedicated MinIO clusters or S3 object storage services to retain longer recovery windows, according to your budget.

More importantly, Pigsty makes high availability and self-healing the standard for PostgreSQL clusters. The [high-availability self-healing architecture](/docs/concept/ha) based on `patroni`, `etcd`, and `haproxy` lets you handle hardware failures with ease: RTO < 30s for primary failure automatic failover (configurable), with zero data loss RPO = 0 in consistency-first mode. As long as any instance in the cluster survives, the cluster can provide complete service, and clients only need to connect to any node in the cluster to get full service.

Pigsty includes built-in HAProxy load balancers for automatic traffic switching, providing DNS/VIP/LVS and other access methods for clients. Failover and active switchover are almost imperceptible to the business side except for brief interruptions, and applications don't need to modify connection strings or restart. The minimal maintenance window requirements bring great flexibility and convenience: you can perform rolling maintenance and upgrades on the entire cluster without application coordination. The feature that hardware failures can wait until the next day to handle lets developers, operations, and DBAs sleep well.
Many large organizations and core institutions have been using Pigsty in production for extended periods. The largest deployment has 25K CPU cores and 200+ PostgreSQL ultra-large instances; in this deployment case, dozens of hardware failures and various incidents occurred over six to seven years, DBAs changed several times, but still maintained availability higher than 99.999%.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha/)



----------------

## Easy to Use and Maintain

**Infra as Code, Database as Code, declarative APIs encapsulate database management complexity.**

Pigsty provides services through declarative interfaces, elevating system controllability to a new level: users tell Pigsty "what kind of database cluster I want" through configuration inventories, without worrying about how to do it. In effect, this is similar to CRDs and Operators in K8S, but Pigsty can be used for databases and infrastructure on any node: whether containers, virtual machines, or physical machines.

Whether creating/destroying clusters, adding/removing replicas, or creating new databases/users/services/extensions/whitelist rules, you only need to modify the configuration inventory and run the idempotent playbooks provided by Pigsty, and Pigsty adjusts the system to your desired state.
Users don't need to worry about configuration details — Pigsty automatically tunes based on machine hardware configuration. You only need to care about basics like cluster name, how many instances on which machines, what configuration template to use: transaction/analytics/critical/tiny — developers can also self-serve. But if you're willing to dive into the rabbit hole, Pigsty also provides rich and fine-grained control parameters to meet the demanding customization needs of the most meticulous DBAs.

Beyond that, Pigsty's own installation and deployment is also one-click foolproof, with all dependencies pre-packaged, requiring no internet access during installation. The machine resources needed for installation can also be automatically obtained through Vagrant or Terraform templates, allowing you to spin up a complete Pigsty deployment from scratch on a local laptop or cloud VM in about ten minutes. The local sandbox environment can run on a 1-core 2GB micro VM, providing the same functional simulation as production environments, usable for development, testing, demos, and learning.

[![pigsty-iac.jpg](/img/pigsty/iac.jpg)](/docs/setup/config)



----------------

## Solid Security Practices

**Encryption and backup all included. As long as hardware and keys are secure, you don't need to worry about database security.**

**Pigsty is designed for high-standard, demanding enterprise scenarios**, adopting industry-leading [security best practices](/docs/setup/security) to protect your data security (confidentiality/integrity/availability). The default configuration's security is sufficient to meet compliance requirements for most scenarios.

Pigsty creates self-signed CAs (or uses your provided CA) to issue certificates and encrypt network communication. Sensitive management pages and API endpoints that need protection are password-protected.
Database backups use AES encryption, database passwords use scram-sha-256 encryption, and plugins are provided to enforce password strength policies.
Pigsty provides an out-of-the-box, easy-to-use, easily extensible [**ACL**](/docs/pgsql/security/) model, providing read/write/admin/ETL permission distinctions, with [**HBA**](/docs/pgsql/config/hba) rule sets following the principle of least privilege, ensuring system confidentiality through multiple layers of protection.

Pigsty enables database checksums by default to avoid silent data corruption, with replicas providing bad block fallback. Provides CRIT zero-data-loss configuration templates, using watchdog to ensure HA fencing as a fallback.
You can audit database operations through the audit plugin, with all system and database logs collected for reference to meet compliance requirements.

Pigsty correctly configures SELinux and firewall settings, and follows the principle of least privilege in designing OS user groups and file permissions, ensuring system security baselines meet compliance requirements.
Security is also uncompromised for auxiliary optional components like Etcd and MinIO — both use RBAC models and TLS encrypted communication, ensuring overall system security.

A properly configured system easily passes Level 3 security certification. As long as you follow security best practices, deploy on internal networks with properly configured security groups and firewalls, database security will no longer be your pain point.

[![pigsty-acl.jpg](/img/pigsty/acl.jpg)](/docs/setup/security)



----------------

## Broad Application Scenarios

**Use preset Docker templates to spin up massive software using PostgreSQL with one click!**

In various data-intensive applications, the database is often the trickiest part. For example, the core difference between GitLab Enterprise and Community Edition is the underlying PostgreSQL database monitoring and high availability. If you already have a good enough local PG RDS, you can refuse to pay for software's homemade database components.

Pigsty provides the Docker module and many out-of-the-box Compose templates. You can use Pigsty-managed high-availability PostgreSQL (as well as Redis and MinIO) as backend storage, spinning up these software in stateless mode with one click:
GitLab, Gitea, Wiki.js, NocoDB, Odoo, Jira, Confluence, Harbor, Mastodon, Discourse, KeyCloak, etc. If your application needs a reliable PostgreSQL database, Pigsty is perhaps the simplest way to get one.

Pigsty also provides application development toolsets closely related to PostgreSQL: PGAdmin4, PGWeb, ByteBase, PostgREST, Kong, as well as EdgeDB, FerretDB, Supabase — these "upper-layer databases" using PostgreSQL as storage.
More wonderfully, you can build interactive data applications quickly in a low-code manner based on the Grafana and Postgres built into Pigsty, and even use Pigsty's built-in ECharts panels to create more expressive interactive visualization works.

Pigsty provides a powerful runtime for your AI applications. Your agents can leverage PostgreSQL and the powerful capabilities of the observability world in this environment to quickly build data-driven intelligent agents.

[![pigsty-app.jpg](/img/pigsty/app.jpg)](/docs/docker/)



----------------

## Open-Source Free Software

**Pigsty is free software open-sourced under AGPLv3, watered by the passion of PostgreSQL-loving community members**

Pigsty is completely [**open-source and free**](/docs/about/license/) software, allowing you to run enterprise-grade PostgreSQL database services at nearly pure hardware cost without database experts.
For comparison, database vendors' "enterprise database services" and public cloud vendors' RDS charge [**premiums**](/docs/about/compare/cost) several to over ten times the underlying hardware resources as "service fees."

Many users choose the cloud precisely because they can't handle databases themselves; many users use RDS because there's no other choice.
We will break cloud vendors' monopoly, providing users with a cloud-neutral, [**better**](/docs/about/compare) open-source RDS alternative:
Pigsty follows PostgreSQL upstream closely, with no vendor lock-in, no annoying "licensing fees," no node count limits, and no data collection. All your core assets — data — can be "autonomously controlled," in your own hands.

Pigsty itself aims to replace tedious manual database operations with database autopilot software, but even the best software can't solve all problems.
There will always be some rare, low-frequency edge cases requiring expert intervention. This is why we also provide professional [**subscription services**](/docs/about/service/) to provide safety nets for enterprise users who need them.
Subscription consulting fees of tens of thousands are less than one-thirtieth of a top DBA's annual salary, completely eliminating your concerns and putting costs where they really matter. For community users, we also [**contribute with love**](/docs/about/sponsor/), providing free support and daily Q&A.

[![pigsty-price.jpg](/img/pigsty/price.jpg)](/docs/about/compare/cost)
