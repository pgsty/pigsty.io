---
title: Concepts
weight: 150
description: Understand Pigsty's core concepts, architecture design, and principles. Master high availability, backup recovery, security compliance, and other key capabilities.
icon: fa-solid fa-compass
module: [PIGSTY]
categories: [Concept]
main_menu: True
---

Pigsty is a portable, extensible open-source PostgreSQL distribution for building production-grade database services in local environments with declarative configuration and automation. It has a vast ecosystem providing a complete set of tools, scripts, and best practices to bring PostgreSQL to enterprise-grade RDS service levels.

Pigsty's name comes from **P**ostgreSQL **I**n **G**reat **STY**le, also understood as **P**ostgres, **I**nfras, **G**raphics, **S**ervice, **T**oolbox, it's all **Y**ours—a self-hosted PostgreSQL solution with graphical monitoring that's all yours. You can find the source code on [**GitHub**](https://github.com/pgsty/pigsty), visit the [**official documentation**](https://pigsty.io) for more information, or experience the [**Web UI**](/docs/setup/webui) in the [**online demo**](https://demo.pigsty.io).

[![pigsty-banner](/img/pigsty/banner.png)](/docs/deploy/sandbox)

----------------

## Why Pigsty? What Can It Do?

PostgreSQL is a sufficiently perfect database kernel, but it needs more tools and systems to become a truly excellent database service. In production environments, you need to manage every aspect of your database: high availability, backup recovery, monitoring alerts, access control, parameter tuning, extension installation, connection pooling, load balancing...

Wouldn't it be easier if all this complex operational work could be automated? This is precisely why Pigsty was created.

Pigsty provides:

- **Out-of-the-Box PostgreSQL Distribution**

  Pigsty deeply integrates [**440+ extensions**](https://pgext.cloud/zh/list) from the PostgreSQL ecosystem, providing out-of-the-box distributed, time-series, geographic, spatial, graph, vector, search, and other multi-modal database capabilities. From kernel to RDS distribution, providing production-grade database services for versions 13-18 on EL/Debian/Ubuntu.

- **Self-Healing High Availability Architecture**

  A [**high availability architecture**](/docs/concept/ha) built on Patroni, Etcd, and HAProxy enables automatic failover for hardware failures with seamless traffic handoff. Primary failure recovery time RTO < 30s, data recovery point RPO ≈ 0. You can perform rolling maintenance and upgrades on the entire cluster without application coordination.

- **Complete Point-in-Time Recovery Capability**

  Based on pgBackRest and optional MinIO cluster, providing out-of-the-box [**PITR point-in-time recovery**](/docs/concept/pitr) capability. Giving you the ability to quickly return to any point in time, protecting against software defects and accidental data deletion.

- **Flexible Service Access and Traffic Management**

  Through HAProxy, Pgbouncer, and VIP, providing flexible [**service access**](/docs/pgsql/misc/svc) patterns for read-write separation, connection pooling, and automatic routing. Delivering stable, reliable, auto-routing, transaction-pooled high-performance database services.

- **Stunning Observability**

  A modern observability stack based on Prometheus and Grafana provides unparalleled [**monitoring best practices**](/docs/concept/monitor). Over three thousand types of monitoring metrics describe every aspect of the system, from global dashboards to CRUD operations on individual objects.

- **Declarative Configuration Management**

  Following the [**Infrastructure as Code**](/docs/concept/iac) philosophy, using declarative configuration to describe the entire environment. You just tell Pigsty "what kind of database cluster you want" without worrying about how to implement it—the system automatically adjusts to the desired state.

- **Modular Architecture Design**

  A modular [**architecture**](/docs/concept/arch) design that can be freely combined to suit different scenarios. Beyond the core PostgreSQL module, it also provides optional modules for Redis, MinIO, Etcd, FerretDB, and support for various PG-compatible kernels.

- **Solid Security Best Practices**

  Industry-leading security best practices: self-signed CA certificate encryption, AES encrypted backups, scram-sha-256 encrypted passwords, out-of-the-box ACL model, HBA rule sets following the principle of least privilege, ensuring data security.

- **Simple and Easy Deployment**

  All dependencies are pre-packaged for one-click installation in environments without internet access. Local sandbox environments can run on micro VMs with 1 core and 2GB RAM, providing functionality identical to production environments. Provides Vagrant-based local sandboxes and Terraform-based cloud deployments.


----------------

## What Pigsty Is Not

Pigsty is not a traditional, all-encompassing PaaS (Platform as a Service) system.

- **Pigsty doesn't provide basic hardware resources**. It runs on nodes you provide, whether bare metal, VMs, or cloud instances, but it doesn't create or manage these resources itself (though it provides Terraform templates to simplify cloud resource preparation).

- **Pigsty is not a container orchestration system**. It runs directly on the operating system, not requiring Kubernetes or Docker as infrastructure. Of course, it can coexist with these systems and provides a Docker module for running stateless applications.

- **Pigsty is not a general database management tool**. It focuses on PostgreSQL and its ecosystem. While it also supports peripheral components like Redis, Etcd, and MinIO, the core is always built around PostgreSQL.

- **Pigsty won't lock you in**. It's built on open-source components, doesn't modify the PostgreSQL kernel, and introduces no proprietary protocols. You can continue using your well-managed PostgreSQL clusters anytime without Pigsty.

Pigsty doesn't restrict how you should or shouldn't build your database services. For example:

- Pigsty provides good parameter defaults and configuration templates, but you can override any parameter.
- Pigsty provides a declarative API, but you can still use underlying tools (Ansible, Patroni, pgBackRest, etc.) for manual management.
- Pigsty can manage the complete lifecycle, or you can use only its monitoring system to observe existing database instances or RDS.

Pigsty provides a different level of abstraction than the hardware layer—it works at the database service layer, focusing on how to deliver PostgreSQL at its best, rather than reinventing the wheel.


----------------

## Evolution of PostgreSQL Deployment

To understand Pigsty's value, let's review the evolution of PostgreSQL deployment approaches.

### Manual Deployment Era

In traditional deployment, DBAs needed to manually install and configure PostgreSQL, manually set up replication, manually configure monitoring, and manually handle failures. The problems with this approach are obvious:

- **Low efficiency**: Each instance requires repeating many manual operations, prone to errors.
- **Lack of standardization**: Databases configured by different DBAs can vary greatly, making maintenance difficult.
- **Poor reliability**: Failure handling depends on manual intervention, with long recovery times and susceptibility to human error.
- **Weak observability**: Lack of unified monitoring, making problem discovery and diagnosis difficult.

### Managed Database Era

To solve these problems, cloud providers offer managed database services (RDS). Cloud RDS does solve some operational issues, but also brings new challenges:

- **High cost**: Managed services typically charge multiples to dozens of times hardware cost as "service fees."
- **Vendor lock-in**: Migration is difficult, tied to specific cloud platforms.
- **Limited functionality**: Cannot use certain advanced features, extensions are restricted, parameter tuning is limited.
- **Data sovereignty**: Data stored in the cloud, reducing autonomy and control.

### Local RDS Era

Pigsty represents a third approach: building database services in local environments that match or exceed cloud RDS.

Pigsty combines the advantages of both approaches:

- **High automation**: One-click deployment, automatic configuration, self-healing failures—as convenient as cloud RDS.
- **Complete autonomy**: Runs on your own infrastructure, data completely in your own hands.
- **Extremely low cost**: Run enterprise-grade database services at near-pure-hardware costs.
- **Complete functionality**: Unlimited use of PostgreSQL's full capabilities and ecosystem extensions.
- **Open architecture**: Based on open-source components, no vendor lock-in, free to migrate anytime.

This approach is particularly suitable for:

- **Private and hybrid clouds**: Enterprises needing to run databases in local environments.
- **Cost-sensitive users**: Organizations looking to reduce database TCO.
- **High-security scenarios**: Critical data requiring complete autonomy and control.
- **PostgreSQL power users**: Scenarios requiring advanced features and rich extensions.
- **Development and testing**: Quickly setting up databases locally that match production environments.


----------------

## What's Next

Now that you understand Pigsty's basic concepts, you can:

- View [**System Architecture**](/docs/concept/arch) to understand Pigsty's modular design
- Learn about [**Cluster Model**](/docs/concept/model) to understand how Pigsty organizes database clusters
- Study [**High Availability**](/docs/concept/ha) mechanisms to master self-healing principles
- Explore [**Point-in-Time Recovery**](/docs/concept/pitr) to learn how to handle data deletion
- Research [**Service Access**](/docs/pgsql/misc/svc) to understand stable database service delivery
- Experience [**Infrastructure as Code**](/docs/concept/iac) to feel the magic of declarative configuration
- Or directly start [**Quick Start**](/docs/setup/install) to deploy your first Pigsty environment in minutes

