---
title: Pigsty Docs v4.6
linkTitle: Docs
icon: fa-solid fa-book
sidebar_root_for: self
weight: 10
module: [PIGSTY]
categories: [Reference]
no_list: true
feedback: false
footer_style: fat
outputs:
  - HTML
  - RSS
  - print
  - markdown
cascade:
  params:
    footer_style: fat
  outputs:
    - HTML
    - print
    - markdown
---

"<strong>P</strong>ostgreSQL <strong>I</strong>n <strong>G</strong>reat <strong>STY</strong>le": <strong>P</strong>ostgres, <strong>I</strong>nfras, <strong>G</strong>raphics, <strong>S</strong>ervice, <strong>T</strong>oolbox, it's all <strong>Y</strong>ours.

—— Battery-Included, Local-First **PostgreSQL** Distribution as a Free & Open-Source **RDS** Alternative

{{< badge text="Free & Open Source" tone="success" >}} {{< badge text="Local First" tone="info" >}} {{< badge text="Production Ready" tone="warning" >}}

> [GitHub](https://github.com/pgsty/pigsty) | [Demo](https://demo.pigsty.io) | [Blog](/blog) | [Discuss](https://github.com/pgsty/pigsty/discussions) | [Discord](https://discord.gg/j5pG8qfKxU) | [DeepWiki](https://deepwiki.com/pgsty/pigsty) | [Roadmap](https://github.com/users/Vonng/projects/2/views/3) | [Chinese Docs](https://pigsty.cc/docs/)

Press {{< kbd "⌘" "K" >}} on macOS, or {{< kbd "Ctrl" "K" >}}, to open local search and the command palette from anywhere.

## Version Scope

The current documentation and quick installation entry point target the public stable release **{{< param stable_version >}}**. See the [**release notes**](/docs/about/release/#v460) for features, upgrade guidance, and verification information.

## Getting Started

Learn Pigsty in four steps: read about the project, understand the concepts, try a single-node installation, and deploy to production.

{{< cards >}}
{{< card title="About" link="/docs/about/" icon="fa-solid fa-circle-info" >}}
Everything about the Pigsty project itself: features, history, license, privacy policy, and community news.

[Features](/docs/about/feature) [History](/docs/about/history) [Events](/docs/about/event) [Community](/docs/about/community) [License](/docs/about/license) [Subscription](/docs/about/service)
{{< /card >}}
{{< card title="Concept" link="/docs/concept/" icon="fa-solid fa-compass" >}}
Understand Pigsty's architecture and design philosophy: high availability, backup & recovery, security and compliance.

[Architecture](/docs/concept/arch) [Cluster Model](/docs/concept/model) [Monitoring](/docs/concept/monitor) [IaC](/docs/concept/iac) [HA](/docs/concept/ha) [PITR](/docs/concept/pitr) [Service Access](/docs/pgsql/misc/svc) [Security](/docs/concept/sec)
{{< /card >}}
{{< card title="Setup" link="/docs/setup/" icon="fa-solid fa-rocket" >}}
Install Pigsty on one node on your laptop or cloud server. Then access the database services and web UI.

[Install](/docs/setup/install) [Offline Install](/docs/setup/offline) [Configuration](/docs/setup/config) [Playbooks](/docs/setup/playbook) [Web UI](/docs/setup/webui) [FAQ](/docs/pgsql/faq)
{{< /card >}}
{{< card title="Deploy" link="/docs/deploy/" icon="fa-solid fa-download" >}}
Plan and prepare a multi-node, high-availability Pigsty deployment. Then deploy it to production.

[Planning](/docs/deploy/planning) [Preparation](/docs/deploy/prepare) [Production](/docs/deploy/install) [Sandbox](/docs/deploy/sandbox) [Vagrant](/docs/deploy/vagrant) [OpenTofu](/docs/deploy/terraform)
{{< /card >}}
{{< /cards >}}

[**Get Started**](/docs/setup/install): [**Prepare**](/docs/deploy/prepare) a node with a fresh [**Linux**](/docs/ref/linux) installation. Run these commands as a user with passwordless `ssh` and `sudo` privileges:

```bash {title="Terminal" copy="all" label="Pigsty Quick Install"}
curl -fsSL https://repo.pigsty.io/get | bash -s {{< param stable_version >}}   # download the public stable source
cd ~/pigsty      # enter source dir
./configure      # generate config
./deploy.yml     # run installation
```

[**Download**](/docs/setup/install#install), [**Configure**](/docs/setup/install#configure), and [**Deploy**](/docs/setup/install#deploy) Pigsty. Installation takes minutes. You can [**add more nodes**](/docs/deploy/install) and database clusters later.

Next, explore the [**Web UI**](/docs/setup/webui). Access [**PostgreSQL services**](/docs/pgsql/service/) on port `5432` and Grafana dashboards on port `3000`. The Grafana username and password are `admin` and `pigsty`.

You can also run various [**PostgreSQL kernels and solutions**](/docs/pgsql/kernel/) as RDS services: [**Supabase**](/docs/pgsql/kernel/supabase), [**Citus**](/docs/pgsql/kernel/citus), [**WiltonDB**](/docs/pgsql/kernel/babelfish), [**IvorySQL**](/docs/pgsql/kernel/ivorysql), [**OpenHalo**](/docs/pgsql/kernel/openhalo), [**DocumentDB**](/docs/pgsql/kernel/documentdb), [**OrioleDB**](/docs/pgsql/kernel/orioledb), [**pgEdge**](/docs/pgsql/kernel/pgedge), [**Percona**](/docs/pgsql/kernel/percona), [**PolarDB**](/docs/pgsql/kernel/polardb), [**AgensGraph**](/docs/pgsql/kernel/agensgraph), and [**Cloudberry**](/docs/pgsql/kernel/cloudberry).

## Modules

Pigsty consists of [**modules**](/docs/ref/module). The `PGSQL`, `INFRA`, `NODE`, and `ETCD` modules form the PINE stack. These modules are **required** to self-host complete PostgreSQL RDS services:

{{< cards >}}
{{< card title="PGSQL" link="/docs/pgsql/" icon="fa-brands fa-postgresql" badge="REQUIRED" >}}
PostgreSQL clusters with automatic failure recovery. Includes HA, PITR, IaC, ACL, monitoring, and a large selection of extensions.

[Configuration](/docs/pgsql/config/) [Administration](/docs/pgsql/admin/) [Backup & PITR](/docs/pgsql/backup/) [Services](/docs/pgsql/service/) [Kernels](/docs/pgsql/kernel/) [Parameters](/docs/pgsql/param/)
{{< /card >}}
{{< card title="INFRA" link="/docs/infra/" icon="fa-solid fa-bank" badge="REQUIRED" >}}
Nginx, local software repo, DNS, NTP, and the VictoriaMetrics & Grafana observability stack.

[Config](/docs/infra/config) [Admin](/docs/infra/admin/) [Playbooks](/docs/infra/playbook) [Monitoring](/docs/infra/monitor) [Parameters](/docs/infra/param)
{{< /card >}}
{{< card title="NODE" link="/docs/node/" icon="fa-solid fa-server" badge="REQUIRED" >}}
Configure host nodes to the required state. Includes node monitoring, log collection, VIP, and HAProxy load balancing.

[Config](/docs/node/config) [Admin](/docs/node/admin) [Playbooks](/docs/node/playbook) [Monitoring](/docs/node/monitor) [Parameters](/docs/node/param)
{{< /card >}}
{{< card title="ETCD" link="/docs/etcd/" icon="fa-solid fa-gears" badge="REQUIRED" >}}
Reliable distributed consensus storage (DCS), providing cluster metadata for PostgreSQL high availability.

[Config](/docs/etcd/config) [Admin](/docs/etcd/admin) [Playbooks](/docs/etcd/playbook) [Monitoring](/docs/etcd/monitor) [Parameters](/docs/etcd/param)
{{< /card >}}
{{< /cards >}}

**Optional** modules provide additional functions for your PostgreSQL data infrastructure:

{{< cards >}}
{{< card title="MINIO" link="/docs/minio/" icon="fa-solid fa-boxes-stacked" badge="OPTIONAL" >}}
S3-compatible object storage, an optional centralized repository for database backups.
{{< /card >}}
{{< card title="REDIS" link="/docs/redis/" icon="fa-solid fa-layer-group" badge="OPTIONAL" >}}
High-performance in-memory data structure server with standalone, cluster, and sentinel modes.
{{< /card >}}
{{< card title="DOCKER" link="/docs/docker/" icon="fa-brands fa-docker" badge="OPTIONAL" >}}
Container runtime for launching containerized, stateless software and application templates.
{{< /card >}}
{{< card title="JUICE" link="/docs/juice/" icon="fa-solid fa-folder-tree" badge="OPTIONAL" >}}
JuiceFS distributed file system with PostgreSQL as the metadata engine, providing shared POSIX storage.
{{< /card >}}
{{< card title="VIBE" link="/docs/vibe/" icon="fa-solid fa-laptop-code" badge="OPTIONAL" >}}
AI coding sandbox: Code-Server, JupyterLab, Claude Code, and Codex CLI.
{{< /card >}}
{{< card title="KAFKA" link="/docs/kafka/" icon="fa-solid fa-share-nodes" badge="OPTIONAL" >}}
Apache Kafka 4.x dynamic KRaft message queue clusters with security and monitoring included.
{{< /card >}}
{{< card title="MYSQL" link="/docs/mysql/" icon="fa-solid fa-fish" badge="OPTIONAL" >}}
Native MySQL 8.4 LTS, standalone or as a three-node InnoDB Cluster, with TLS, backups, and monitoring.
{{< /card >}}
{{< card title="VAULT" link="/docs/vault/" icon="fa-solid fa-vault" badge="Optional" >}}
An OpenBao secrets management cluster with centralized KMS, auto-unseal, TLS, and snapshot backups.
{{< /card >}}
{{< card title="PILOT" link="/docs/pilot/" icon="fa-solid fa-flask-vial" badge="PILOT" >}}
Pilot modules: Kubernetes, DuckDB, TigerBeetle, and more to explore.
{{< /card >}}
{{< /cards >}}

## Reference

Comprehensive references, the extension catalog, ready-to-use templates, and companion tool manuals:

{{< cards >}}
{{< card title="Reference Manual" link="/docs/ref/" icon="fa-solid fa-map" >}}
Detailed reference lists: operating systems, file hierarchy, ports, metrics, and product comparisons.

[Linux Support](/docs/ref/linux) [Modules](/docs/ref/module) [File Hierarchy](/docs/ref/fhs) [Ports](/docs/ref/port) [Comparison](/docs/about/compare) [Cost Reference](/docs/about/compare/cost) [SOP](/docs/sop/)
{{< /card >}}
{{< card title="Packaged Extensions" link="/ext/" icon="fa-solid fa-puzzle-piece" >}}
{{< param pgext_count >}} packaged PostgreSQL extensions: metadata, documentation, downloads, and support matrices.

[Extension List](/ext/list) [OS Support](/ext/os) [Software Repo](/docs/repo/)
{{< /card >}}
{{< card title="Templates" link="/docs/conf/" icon="fa-solid fa-cubes" >}}
Ready-to-use cluster configuration templates, plus containerized software and application templates.

[Config Templates](/docs/conf/) [App Templates](/docs/app/)
{{< /card >}}
{{< card title="Component Manuals" link="/docs/pig/" icon="fa-solid fa-toolbox" >}}
Manuals for the companion tools Pigsty builds upon: packaging, HA, connection pooling, backup, and monitoring.

[pig](/docs/pig/) [piglet](/docs/piglet/) [patroni](/docs/patroni/) [pgbouncer](/docs/pgbouncer/) [pgbackrest](/docs/pgbackrest/) [pg_exporter](/docs/pg_exporter/)
{{< /card >}}
{{< /cards >}}
