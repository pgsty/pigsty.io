---
title: Pigsty Docs v4.5
linkTitle: Docs
icon: fa-solid fa-book
sidebar_root_for: self
weight: 10
module: [PIGSTY]
categories: [Reference]
no_list: true
hide_feedback: true
footer_style: slim
outputs:
  - HTML
  - RSS
  - print
  - markdown
cascade:
  params:
    footer_style: slim
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

## Getting Started

Learn the project, understand the concepts, get hands-on on a single node, then go to production — four steps to master Pigsty:

{{< nav-cards cols="2" >}}
{{< nav-card title="About" link="/docs/about/" icon="fa-solid fa-circle-info" desc="Everything about the Pigsty project itself: features, history, license, privacy policy, and community news." >}}
[Features](/docs/about/feature) [History](/docs/about/history) [Events](/docs/about/event) [Community](/docs/about/community) [License](/docs/about/license) [Subscription](/docs/about/service)
{{< /nav-card >}}
{{< nav-card title="Concept" link="/docs/concept/" icon="fa-solid fa-compass" desc="Understand Pigsty's architecture and design philosophy: high availability, backup & recovery, security and compliance." >}}
[Architecture](/docs/concept/arch) [Cluster Model](/docs/concept/model) [Monitoring](/docs/concept/monitor) [IaC](/docs/concept/iac) [HA](/docs/concept/ha) [PITR](/docs/concept/pitr) [Service Access](/docs/pgsql/misc/svc) [Security](/docs/concept/sec)
{{< /nav-card >}}
{{< nav-card title="Setup" link="/docs/setup/" icon="fa-solid fa-rocket" desc="Spin up a single-node Pigsty on your laptop or cloud server, and access database services and the web UI." >}}
[Install](/docs/setup/install) [Offline Install](/docs/setup/offline) [Configuration](/docs/setup/config) [Playbooks](/docs/setup/playbook) [Web UI](/docs/setup/webui) [FAQ](/docs/pgsql/faq)
{{< /nav-card >}}
{{< nav-card title="Deploy" link="/docs/deploy/" icon="fa-solid fa-download" desc="Plan, prepare, and roll out multi-node, high-availability Pigsty deployments in production environments." >}}
[Planning](/docs/deploy/planning) [Preparation](/docs/deploy/prepare) [Production](/docs/deploy/install) [Sandbox](/docs/deploy/sandbox) [Vagrant](/docs/deploy/vagrant) [Terraform](/docs/deploy/terraform)
{{< /nav-card >}}
{{< /nav-cards >}}

[**Get Started**](/docs/setup/install): [**Prepare**](/docs/deploy/prepare) a node with a fresh [**Linux**](/docs/ref/linux) installation, and run as a user with passwordless `ssh` and `sudo` privileges:

```bash {filename="Terminal" copy="all" label="Pigsty Quick Install"}
curl -fsSL https://repo.pigsty.io/get | bash -s {{< param stable_version >}}   # download the public stable source
cd ~/pigsty      # enter source dir
./configure      # generate config
./deploy.yml     # run installation
```

[**Download**](/docs/setup/install#install), [**Configure**](/docs/setup/install#configure) and [**Deploy**](/docs/setup/install#deploy) — Pigsty completes installation in minutes! You can [**add more nodes**](/docs/deploy/install) and database clusters later.

Next, explore the [**Web UI**](/docs/setup/webui), access [**PostgreSQL services**](/docs/pgsql/service/) on port `5432`, and Grafana dashboards on port `3000` (username / password: `admin` / `pigsty`).

You can also wrap PostgreSQL [**kernel**](/docs/pgsql/kernel/) flavors as RDS services: [**Citus**](/docs/pgsql/kernel/citus), [**WiltonDB**](/docs/pgsql/kernel/babelfish), [**IvorySQL**](/docs/pgsql/kernel/ivorysql), [**OpenHalo**](/docs/pgsql/kernel/openhalo), [**Percona**](/docs/pgsql/kernel/percona), [**OrioleDB**](/docs/pgsql/kernel/orioledb), [**PolarDB**](/docs/pgsql/kernel/polardb), and [**Supabase**](/docs/pgsql/kernel/supabase).


## Modules

Pigsty is composed of [**modules**](/docs/ref/module). Among them, `PGSQL` / `INFRA` / `NODE` / `ETCD` (the PINE stack) are **required** for self-hosting PostgreSQL RDS services:

{{< nav-cards cols="2" >}}
{{< nav-card title="PGSQL" link="/docs/pgsql/" icon="fa-brands fa-postgresql" accent="copper" badge="REQUIRED" desc="Self-healing HA PostgreSQL clusters: HA, PITR, IaC, ACL, and monitoring included, with massive extension support out of the box." >}}
[Configuration](/docs/pgsql/config/) [Administration](/docs/pgsql/admin/) [Backup & PITR](/docs/pgsql/backup/) [Services](/docs/pgsql/service/) [Kernels](/docs/pgsql/kernel/) [Parameters](/docs/pgsql/param/)
{{< /nav-card >}}
{{< nav-card title="INFRA" link="/docs/infra/" icon="fa-solid fa-bank" accent="copper" badge="REQUIRED" desc="Nginx, local software repo, DNS, NTP, and the VictoriaMetrics & Grafana observability stack." >}}
[Config](/docs/infra/config) [Admin](/docs/infra/admin/) [Playbooks](/docs/infra/playbook) [Monitoring](/docs/infra/monitor) [Parameters](/docs/infra/param)
{{< /nav-card >}}
{{< nav-card title="NODE" link="/docs/node/" icon="fa-solid fa-server" accent="copper" badge="REQUIRED" desc="Manage host nodes into the desired state: node monitoring, log collection, VIP, and HAProxy load balancing." >}}
[Config](/docs/node/config) [Admin](/docs/node/admin) [Playbooks](/docs/node/playbook) [Monitoring](/docs/node/monitor) [Parameters](/docs/node/param)
{{< /nav-card >}}
{{< nav-card title="ETCD" link="/docs/etcd/" icon="fa-solid fa-gears" accent="copper" badge="REQUIRED" desc="Reliable distributed consensus storage (DCS), providing cluster metadata for PostgreSQL high availability." >}}
[Config](/docs/etcd/config) [Admin](/docs/etcd/admin) [Playbooks](/docs/etcd/playbook) [Monitoring](/docs/etcd/monitor) [Parameters](/docs/etcd/param)
{{< /nav-card >}}
{{< /nav-cards >}}

There are also **optional** modules that work well alongside PostgreSQL, bringing extra value to your data infrastructure:

{{< nav-cards cols="3" >}}
{{< nav-card title="MINIO" link="/docs/minio/" icon="fa-solid fa-boxes-stacked" accent="gray" badge="OPTIONAL" desc="S3-compatible object storage, an optional centralized repository for database backups." />}}
{{< nav-card title="REDIS" link="/docs/redis/" icon="fa-solid fa-layer-group" accent="gray" badge="OPTIONAL" desc="High-performance in-memory data structure server with standalone, cluster, and sentinel modes." />}}
{{< nav-card title="DOCKER" link="/docs/docker/" icon="fa-brands fa-docker" accent="gray" badge="OPTIONAL" desc="Container runtime for launching containerized, stateless software and application templates." />}}
{{< nav-card title="JUICE" link="/docs/juice/" icon="fa-solid fa-folder-tree" accent="gray" badge="OPTIONAL" desc="JuiceFS distributed file system with PostgreSQL as the metadata engine, providing shared POSIX storage." />}}
{{< nav-card title="VIBE" link="/docs/vibe/" icon="fa-solid fa-laptop-code" accent="gray" badge="OPTIONAL" desc="AI coding sandbox: Code-Server, JupyterLab, Claude Code, and Codex CLI." />}}
{{< nav-card title="KAFKA" link="/docs/kafka/" icon="fa-solid fa-share-nodes" accent="gray" badge="OPTIONAL" desc="Apache Kafka 4.x dynamic KRaft message queue clusters with security and monitoring included." />}}
{{< nav-card title="MYSQL" link="/docs/mysql/" icon="fa-solid fa-fish" accent="gray" badge="OPTIONAL" desc="Native MySQL 8.4 LTS as a standalone instance or a three-node InnoDB Cluster." />}}
{{< nav-card title="PILOT" link="/docs/pilot/" icon="fa-solid fa-flask-vial" accent="gray" badge="PILOT" desc="Experimental module family: Kubernetes, DuckDB, TigerBeetle, and more for early adopters." />}}
{{< /nav-cards >}}


## Reference

Comprehensive references, the extension catalog, ready-to-use templates, and companion tool manuals:

{{< nav-cards cols="2" >}}
{{< nav-card title="Reference Manual" link="/docs/ref/" icon="fa-solid fa-map" desc="Detailed reference lists: operating systems, file hierarchy, ports, metrics, and product comparisons." >}}
[Linux Support](/docs/ref/linux) [Modules](/docs/ref/module) [File Hierarchy](/docs/ref/fhs) [Ports](/docs/ref/port) [Comparison](/docs/about/compare) [Cost Reference](/docs/about/compare/cost) [SOP](/docs/sop/)
{{< /nav-card >}}
{{< nav-card title="Packaged Extensions" link="/ext/" icon="fa-solid fa-puzzle-piece" desc="A catalog of {pgext_count} packaged PostgreSQL ecosystem extensions: metadata, docs, downloads, and support matrix." >}}
[Extension List](/ext/list) [OS Support](/ext/os) [Software Repo](/docs/repo/)
{{< /nav-card >}}
{{< nav-card title="Templates" link="/docs/conf/" icon="fa-solid fa-cubes" desc="Ready-to-use cluster configuration templates, plus containerized software and application templates." >}}
[Config Templates](/docs/conf/) [App Templates](/docs/app/)
{{< /nav-card >}}
{{< nav-card title="Component Manuals" link="/docs/pig/" icon="fa-solid fa-toolbox" desc="Manuals for the companion tools Pigsty builds upon: packaging, HA, connection pooling, backup, and monitoring." >}}
[pig](/docs/pig/) [piglet](/docs/piglet/) [patroni](/docs/patroni/) [pgbouncer](/docs/pgbouncer/) [pgbackrest](/docs/pgbackrest/) [pg_exporter](/docs/pg_exporter/)
{{< /nav-card >}}
{{< /nav-cards >}}
