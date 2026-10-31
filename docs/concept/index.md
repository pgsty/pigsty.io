# Concepts

> Understand Pigsty's core concepts, architecture design, learn how high availability, backup recovery, iac, security works

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty is a portable, extensible, open-source PostgreSQL distribution. It uses declarative configuration and automation to build production database services in local environments. Its tools, scripts, and operating practices support PostgreSQL services at enterprise RDS levels.

Pigsty means <strong>P</strong>ostgreSQL <strong>I</strong>n <strong>G</strong>reat <strong>STY</strong>le. It also means <strong>P</strong>ostgres, <strong>I</strong>nfras, <strong>G</strong>raphics, <strong>S</strong>ervice, <strong>T</strong>oolbox, it's all <strong>Y</strong>ours. It provides self-hosted PostgreSQL with graphical monitoring. Find source code on [**GitHub**](https://github.com/pgsty/pigsty) and information in the [**official documentation**](https://pigsty.io). Try the [**Web UI**](/docs/setup/webui) in the [**online demo**](https://demo.pigsty.io).

[![pigsty-banner](/img/pigsty/banner.png)](/docs/deploy/sandbox)

----------------

## Why Pigsty? What Can It Do?

PostgreSQL provides the database engine. Production service also requires high availability, backup and recovery, monitoring and alerts, access control, tuning, extensions, connection pools, and load balancing.

Pigsty automates this operational work.

Pigsty provides:

- **Ready-to-Use PostgreSQL Distribution**

  Pigsty integrates [**600 extensions**](/ext/list) for distributed, time-series, geographic, spatial, graph, vector, search, and other multi-modal workloads. It provides production database services for PostgreSQL 14–18 on EL, Debian, and Ubuntu.

- **Self-Healing High Availability Architecture**

  The [**high availability architecture**](/docs/concept/ha) uses Patroni, Etcd, and HAProxy for automatic hardware failover and traffic routing. Primary failure recovery has RTO < 45s and RPO ≈ 0. Cluster maintenance and upgrades can proceed in sequence without application coordination.

- **Complete Point-in-Time Recovery Capability**

  pgBackRest and an optional Silo object-storage cluster provide [**point-in-time recovery (PITR)**](/docs/concept/pitr). Recover quickly to a selected time after software defects or accidental data deletion.

- **Flexible Service Access and Traffic Management**

  HAProxy, Pgbouncer, and VIP provide [**service access**](/docs/pgsql/misc/svc) with read/write separation, connection pools, and automatic routing. These components provide stable, high-performance database access with transaction pooling.

- **Monitoring and Diagnostics**

  VictoriaMetrics and Grafana provide [**monitoring practices**](/docs/concept/monitor) through 67 dashboards, 773 recording rules, and 92 alert rules covering databases, hosts, and infrastructure. See [Monitoring Scale and Counting Method](/docs/concept/monitor#monitoring-scale-and-counting-method) for definitions.

- **Declarative Configuration Management**

  Pigsty follows [**Infrastructure as Code**](/docs/concept/iac). Describe the required environment in declarative configuration. The system applies the changes needed to reach that state.

- **Modular Architecture Design**

  The modular [**architecture**](/docs/concept/arch) supports different deployments. Combine the core PostgreSQL module with optional Redis, MINIO (Silo), and Etcd modules. Pigsty also supports PG-compatible kernels and operating modes.

- [**Solid Security Best Practices**](/docs/concept/sec/)

  Security features include a [**self-signed CA**](/docs/concept/sec/ca), encrypted communication, AES-encrypted backups, and SCRAM-SHA-256 password hashes. Pigsty also supplies an [**ACL model**](/docs/concept/sec/ac) and [**HBA rules**](/docs/concept/sec/auth) that use least privilege.

- **Simple and Easy Deployment**

  Prepackaged dependencies support one-step installation without Internet access. Local sandboxes can run on VMs with 1 core and 2GB RAM, with the same functions as production environments. Use Vagrant for local sandboxes or Terraform for cloud deployments.


----------------

## What Pigsty Is Not

Pigsty is not a complete PaaS (Platform as a Service) system.

- **Supply your own hardware resources.** Pigsty runs on physical servers, VMs, or cloud instances that you provide. It does not create or manage them. Terraform templates help prepare cloud resources.

- **Pigsty runs on the operating system.** It does not require Kubernetes or Docker, but can coexist with them. Its Docker module runs stateless applications.

- **Pigsty focuses on PostgreSQL.** It also supports components such as Redis, Etcd, and Silo, but PostgreSQL remains its core.

- **Pigsty avoids vendor lock-in.** It uses open-source components, preserves the PostgreSQL kernel, and adds no proprietary protocols. You can continue to use managed PostgreSQL clusters after removing Pigsty.

You can choose how to build and operate your database services:

- Override any default parameter or configuration template.
- Use the declarative API or manage components directly with Ansible, Patroni, pgBackRest, and other tools.
- Manage the full database lifecycle, or use monitoring alone for existing instances and RDS.

Pigsty operates at the database service layer. It combines existing tools to deliver PostgreSQL services on your hardware.


----------------

## Evolution of PostgreSQL Deployment

The following comparison explains the PostgreSQL deployment approaches that Pigsty addresses.

### Manual Deployment Era

Traditional deployment requires DBAs to install PostgreSQL, configure replication and monitoring, and handle failures manually. This has several costs:

- **Repeated work**: Each instance needs manual operations, which can introduce errors.
- **Inconsistent configuration**: Different DBA practices make maintenance harder.
- **Longer recovery**: Manual failure handling takes time and can introduce human errors.
- **Limited monitoring**: Separate monitoring systems make detection and diagnosis harder.

### Managed Database Era

Cloud providers offer managed databases (RDS) to reduce this work. These services also have constraints:

- **Cost**: Service fees typically range from several times to dozens of times the hardware cost.
- **Vendor lock-in**: Dependence on one cloud platform complicates migration.
- **Feature limits**: Advanced features, extensions, and parameter changes can be restricted.
- **Data control**: Cloud storage reduces direct control over data.

### Local RDS Era

Pigsty provides a third option: local database services with capabilities comparable to or greater than cloud RDS.

This approach combines:

- **Automation**: One-step deployment, automatic configuration, and automatic failure recovery provide convenience comparable to cloud RDS.
- **Control**: Run on your infrastructure and retain control of your data.
- **Cost**: Operate enterprise database services at costs close to the hardware cost.
- **Features**: Use PostgreSQL capabilities and ecosystem extensions without imposed restrictions.
- **Portability**: Open-source components allow migration without vendor lock-in.

This approach is particularly suitable for:

- **Private and hybrid clouds**: Enterprises needing to run databases in local environments.
- **Cost-sensitive users**: Organizations looking to reduce database TCO.
- **High-security scenarios**: Critical data requiring complete autonomy and control.
- **PostgreSQL power users**: Scenarios requiring advanced features and rich extensions.
- **Development and testing**: Quickly setting up databases locally that match production environments.


----------------

## What's Next

Continue with these topics:

- Read [**System Architecture**](/docs/concept/arch) for the modular design.
- Read [**Cluster Model**](/docs/concept/model) for database cluster organization.
- Read [**High Availability**](/docs/concept/ha) for automatic failure recovery.
- Read [**Point-in-Time Recovery**](/docs/concept/pitr) for recovery after data deletion.
- Read [**Service Access**](/docs/pgsql/misc/svc) for stable database connections.
- Read [**Infrastructure as Code**](/docs/concept/iac) for declarative configuration.
- Follow [**Quick Start**](/docs/setup/install) to deploy your first environment in minutes.

---

Section pages:

- [Architecture](/docs/concept/arch/): Pigsty's modular architecture—declarative composition, on-demand customization, flexible deployment.
- [ER Model](/docs/concept/model/): How Pigsty abstracts different functionality into modules, and the E-R diagrams for these modules.
- [Infra as Code](/docs/concept/iac/): Pigsty uses Infrastructure as Code (IaC) philosophy to manage all components, providing declarative management for large-scale clusters.
- [High Availability](/docs/concept/ha/): Pigsty uses Patroni to implement PostgreSQL high availability, ensuring automatic failover when the primary becomes unavailable.
- [Point-in-Time Recovery — A Time Machine for PostgreSQL](/docs/concept/pitr/): High availability handles machine failure; point-in-time recovery handles incorrect data. Pigsty uses pgBackRest to provide PITR out of the box, allowing a cluster to return to any recoverable point covered by its backup and WAL history.
- [Monitoring System](/docs/concept/monitor/): How Pigsty's monitoring system is architected and how monitored targets are automatically managed.
- [Security and Compliance](/docs/concept/sec/): Pigsty manages authentication, authorization, encryption, audit, backup, and recovery as code, with a clear path from the default baseline to production hardening.
