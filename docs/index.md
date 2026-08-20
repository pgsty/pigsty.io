# Pigsty Docs v4.5

LLMS index: [llms.txt](/llms.txt)

---

"<strong>P</strong>ostgreSQL <strong>I</strong>n <strong>G</strong>reat <strong>STY</strong>le": <strong>P</strong>ostgres, <strong>I</strong>nfras, <strong>G</strong>raphics, <strong>S</strong>ervice, <strong>T</strong>oolbox, it's all <strong>Y</strong>ours.

—— Battery-Included, Local-First **PostgreSQL** Distribution as a Free & Open-Source **RDS** Alternative

**Free \& Open Source** **Local First** **Production Ready**

> [GitHub](https://github.com/pgsty/pigsty) | [Demo](https://demo.pigsty.io) | [Blog](/blog) | [Discuss](https://github.com/pgsty/pigsty/discussions) | [Discord](https://discord.gg/j5pG8qfKxU) | [DeepWiki](https://deepwiki.com/pgsty/pigsty) | [Roadmap](https://github.com/users/Vonng/projects/2/views/3) | [Chinese Docs](https://pigsty.cc/docs/)

Press ⌘ + K on macOS, or Ctrl + K, to open local search and the command palette from anywhere.

## Getting Started

Learn the project, understand the concepts, get hands-on on a single node, then go to production — four steps to master Pigsty:


- [About](/docs/about/) — Everything about the Pigsty project itself: features, history, license, privacy policy, and community news. [Features](/docs/about/feature) [History](/docs/about/history) [Events](/docs/about/event) [Community](/docs/about/community) [License](/docs/about/license) [Subscription](/docs/about/service)
- [Concept](/docs/concept/) — Understand Pigsty's architecture and design philosophy: high availability, backup & recovery, security and compliance. [Architecture](/docs/concept/arch) [Cluster Model](/docs/concept/model) [Monitoring](/docs/concept/monitor) [IaC](/docs/concept/iac) [HA](/docs/concept/ha) [PITR](/docs/concept/pitr) [Service Access](/docs/pgsql/misc/svc) [Security](/docs/concept/sec)
- [Setup](/docs/setup/) — Spin up a single-node Pigsty on your laptop or cloud server, and access database services and the web UI. [Install](/docs/setup/install) [Offline Install](/docs/setup/offline) [Configuration](/docs/setup/config) [Playbooks](/docs/setup/playbook) [Web UI](/docs/setup/webui) [FAQ](/docs/pgsql/faq)
- [Deploy](/docs/deploy/) — Plan, prepare, and roll out multi-node, high-availability Pigsty deployments in production environments. [Planning](/docs/deploy/planning) [Preparation](/docs/deploy/prepare) [Production](/docs/deploy/install) [Sandbox](/docs/deploy/sandbox) [Vagrant](/docs/deploy/vagrant) [Terraform](/docs/deploy/terraform)


[**Get Started**](/docs/setup/install): [**Prepare**](/docs/deploy/prepare) a node with a fresh [**Linux**](/docs/ref/linux) installation, and run as a user with passwordless `ssh` and `sudo` privileges:

```bash {title="Terminal" copy="all" label="Pigsty Quick Install"}
curl -fsSL https://repo.pigsty.io/get | bash -s v4.5.0   # download the public stable source
cd ~/pigsty      # enter source dir
./configure      # generate config
./deploy.yml     # run installation
```

[**Download**](/docs/setup/install#install), [**Configure**](/docs/setup/install#configure) and [**Deploy**](/docs/setup/install#deploy) — Pigsty completes installation in minutes! You can [**add more nodes**](/docs/deploy/install) and database clusters later.

Next, explore the [**Web UI**](/docs/setup/webui), access [**PostgreSQL services**](/docs/pgsql/service/) on port `5432`, and Grafana dashboards on port `3000` (username / password: `admin` / `pigsty`).

You can also wrap PostgreSQL [**kernel**](/docs/pgsql/kernel/) flavors as RDS services: [**Citus**](/docs/pgsql/kernel/citus), [**WiltonDB**](/docs/pgsql/kernel/babelfish), [**IvorySQL**](/docs/pgsql/kernel/ivorysql), [**OpenHalo**](/docs/pgsql/kernel/openhalo), [**Percona**](/docs/pgsql/kernel/percona), [**OrioleDB**](/docs/pgsql/kernel/orioledb), [**PolarDB**](/docs/pgsql/kernel/polardb), and [**Supabase**](/docs/pgsql/kernel/supabase).


## Modules

Pigsty is composed of [**modules**](/docs/ref/module). Among them, `PGSQL` / `INFRA` / `NODE` / `ETCD` (the PINE stack) are **required** for self-hosting PostgreSQL RDS services:


- [PGSQL](/docs/pgsql/) (REQUIRED) — Self-healing HA PostgreSQL clusters: HA, PITR, IaC, ACL, and monitoring included, with massive extension support out of the box. [Configuration](/docs/pgsql/config/) [Administration](/docs/pgsql/admin/) [Backup & PITR](/docs/pgsql/backup/) [Services](/docs/pgsql/service/) [Kernels](/docs/pgsql/kernel/) [Parameters](/docs/pgsql/param/)
- [INFRA](/docs/infra/) (REQUIRED) — Nginx, local software repo, DNS, NTP, and the VictoriaMetrics & Grafana observability stack. [Config](/docs/infra/config) [Admin](/docs/infra/admin/) [Playbooks](/docs/infra/playbook) [Monitoring](/docs/infra/monitor) [Parameters](/docs/infra/param)
- [NODE](/docs/node/) (REQUIRED) — Manage host nodes into the desired state: node monitoring, log collection, VIP, and HAProxy load balancing. [Config](/docs/node/config) [Admin](/docs/node/admin) [Playbooks](/docs/node/playbook) [Monitoring](/docs/node/monitor) [Parameters](/docs/node/param)
- [ETCD](/docs/etcd/) (REQUIRED) — Reliable distributed consensus storage (DCS), providing cluster metadata for PostgreSQL high availability. [Config](/docs/etcd/config) [Admin](/docs/etcd/admin) [Playbooks](/docs/etcd/playbook) [Monitoring](/docs/etcd/monitor) [Parameters](/docs/etcd/param)


There are also **optional** modules that work well alongside PostgreSQL, bringing extra value to your data infrastructure:


- [MINIO](/docs/minio/) (OPTIONAL) — S3-compatible object storage, an optional centralized repository for database backups.
- [REDIS](/docs/redis/) (OPTIONAL) — High-performance in-memory data structure server with standalone, cluster, and sentinel modes.
- [DOCKER](/docs/docker/) (OPTIONAL) — Container runtime for launching containerized, stateless software and application templates.
- [JUICE](/docs/juice/) (OPTIONAL) — JuiceFS distributed file system with PostgreSQL as the metadata engine, providing shared POSIX storage.
- [VIBE](/docs/vibe/) (OPTIONAL) — AI coding sandbox: Code-Server, JupyterLab, Claude Code, and Codex CLI.
- [KAFKA](/docs/kafka/) (OPTIONAL) — Apache Kafka 4.x dynamic KRaft message queue clusters with security and monitoring included.
- [MYSQL](/docs/mysql/) (OPTIONAL) — Native MySQL 8.4 LTS as a standalone instance or a three-node InnoDB Cluster.
- [PILOT](/docs/pilot/) (PILOT) — Experimental module family: Kubernetes, DuckDB, TigerBeetle, and more for early adopters.



## Reference

Comprehensive references, the extension catalog, ready-to-use templates, and companion tool manuals:


- [Reference Manual](/docs/ref/) — Detailed reference lists: operating systems, file hierarchy, ports, metrics, and product comparisons. [Linux Support](/docs/ref/linux) [Modules](/docs/ref/module) [File Hierarchy](/docs/ref/fhs) [Ports](/docs/ref/port) [Comparison](/docs/about/compare) [Cost Reference](/docs/about/compare/cost) [SOP](/docs/sop/)
- [Packaged Extensions](/ext/) — A catalog of 576 packaged PostgreSQL ecosystem extensions: metadata, docs, downloads, and support matrix. [Extension List](/ext/list) [OS Support](/ext/os) [Software Repo](/docs/repo/)
- [Templates](/docs/conf/) — Ready-to-use cluster configuration templates, plus containerized software and application templates. [Config Templates](/docs/conf/) [App Templates](/docs/app/)
- [Component Manuals](/docs/pig/) — Manuals for the companion tools Pigsty builds upon: packaging, HA, connection pooling, backup, and monitoring. [pig](/docs/pig/) [piglet](/docs/piglet/) [patroni](/docs/patroni/) [pgbouncer](/docs/pgbouncer/) [pgbackrest](/docs/pgbackrest/) [pg_exporter](/docs/pg_exporter/)

---

Section pages:

- [PIGSTY](/docs/_div_pigsty/)
- [Get Started](/docs/setup/): Deploy Pigsty single-node version on your laptop/cloud server, access DB and Web UI
- [Deployment](/docs/deploy/): Multi-node, high-availability Pigsty deployment for production environments.
- [Concepts](/docs/concept/): Understand Pigsty's core concepts, architecture design, learn how high availability, backup recovery, iac, security works
- [About](/docs/about/): Learn about Pigsty itself in every aspect - features, history, license, privacy policy, community, and news.
- [Reference](/docs/_div_ref/)
- [References](/docs/ref/): Detailed reference information and lists, supported Linux distros, available modules, metrics, extensions, and more.
- [Applications](/docs/app/): Pigsty application templates and data applets: run stateless apps with Docker Compose and host state in external PostgreSQL and S3-compatible storage.
- [Configuration Templates](/docs/conf/): Batteries-included configuration templates for specific scenarios, with detailed explanations.
- [Linux Repository](/docs/repo/): The APT / DNF repository to deliver PostgreSQL Kernel, Extensions and Infra packages.
- [Operations SOP Index](/docs/sop/): Pigsty and PostgreSQL operations documentation index for new users: find the right page by common task.
- [Modules](/docs/_div_module/)
- [Module: PGSQL](/docs/pgsql/): Declare, deploy, expose, observe, back up, and manage PostgreSQL clusters with Pigsty v4.5.
- [Module: INFRA](/docs/infra/): Optional standalone infrastructure that provides NTP, DNS, observability and other foundational services for PostgreSQL.
- [Module: NODE](/docs/node/): Tune nodes into the desired state and monitor it, manage node, VIP, HAProxy, and exporters.
- [Module: ETCD](/docs/etcd/): Pigsty deploys etcd as DCS for reliable distributed config storage, supporting PostgreSQL HA.
- [Module: MINIO](/docs/minio/): Deploy Silo S3-compatible object storage with Pigsty's MINIO compatibility module and use it as a PostgreSQL backup repository.
- [Module: REDIS](/docs/redis/): Deploy Redis or Valkey through one REDIS module, with standalone replication, native cluster, and Sentinel modes.
- [Module: DOCKER](/docs/docker/): Docker daemon service that enables one-click deployment of containerized stateless software templates and additional functionality.
- [Module: JUICE](/docs/juice/): Use JuiceFS distributed filesystem with PostgreSQL metadata to provide shared POSIX storage.
- [Module: VIBE](/docs/vibe/): Deploy an AI coding sandbox with Pigsty: Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.
- [Module: KAFKA](/docs/kafka/): Deploy, secure, and monitor Apache Kafka 4.1+ dynamic KRaft clusters with Pigsty.
- [Module: MYSQL](/docs/mysql/): Deploy native MySQL 8.4 LTS as a standalone instance or a three-node InnoDB Cluster, with TLS, daily backups, and full observability.
- [Module: PILOT](/docs/pilot/): Extra modules in pilot development.
- [Miscellaneous](/docs/_div_misc/)
- [PIG 1.8 Documentation](/docs/pig/): PostgreSQL Extension Ecosystem Package Manager
- [Piglet Runtime: AI Runtime Sandbox](/docs/piglet/): Pigsty Lightweight Runtime, AI Coding sandbox, spin up your cloud coding environment with one click
- [Patroni 4.1.4 Documentation](/docs/patroni/): Overview of Patroni high-availability documentation for PostgreSQL.
- [pgBouncer 1.25 Documentation](/docs/pgbouncer/): PgBouncer - Lightweight connection pooler for PostgreSQL
- [pgBackRest 2.59 Documentation](/docs/pgbackrest/): Reliable PostgreSQL Backup & Restore — pgBackRest documentation and reference.
- [PG Exporter 1.4 Documentation](/docs/pg_exporter/): Advanced PostgreSQL & pgBouncer Metrics Exporter for Prometheus
