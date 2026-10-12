---
title: Slim Installation
linkTitle: Slim
weight: 285
description: Install PostgreSQL clusters without the monitoring infrastructure.
icon: fa-solid fa-minimize
module: [PIGSTY]
categories: [Tutorial]
---

Use Slim Installation to deploy PostgreSQL without the monitoring infrastructure.
It installs [ETCD](/docs/etcd/), [PGSQL](/docs/pgsql/), and part of [NODE](/docs/node/).
It does not install [INFRA](/docs/infra/), monitoring services, or a [local software repository](/docs/setup/offline/).

> [!TIP] When to use Slim Installation
> - You only need PostgreSQL.
> - You have limited CPU or memory resources.
> - You already have an external monitoring system.
> - You do not need Grafana dashboards.
>
> On one node, the omitted infrastructure uses approximately `0.2` vCPU and `500 MB` of memory.

> [!WARNING] Installation limits
> The Web UI and local software repository require INFRA.
> Slim Installation does not supply these features.
> [Offline installation](/docs/setup/offline/) supports only one node in this mode.
> For multiple nodes, Slim Installation requires online package access.

## Overview

1. Download Pigsty and enter the source directory.
2. Select the [`slim` configuration template](/docs/conf/slim/) with `./configure -g -c slim`.
3. Run `./slim.yml` instead of `./deploy.yml`.

```bash
curl https://repo.pigsty.io/get | bash
cd ~/pigsty
./configure -g -c slim
./slim.yml
```

{{< asciinema file="demo/install-slim.cast" markers="3:Install,13:Configure,22:Deploy" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}

## Description

Slim Installation configures these components:

|     Component     |  Required   | Description                                                                 |
|:-----------------:|:-----------:|:----------------------------------------------------------------------------|
|   **`patroni`**   | ⚠️ Required | Bootstrap HA PostgreSQL cluster                                             |
|    **`etcd`**     | ⚠️ Required | Meta database dependency (DCS) for Patroni                                  |
|  **`pgbouncer`**  | ✔️ Optional | PostgreSQL connection pooler                                                |
| **`vip-manager`** | ✔️ Optional | L2 VIP binding to PostgreSQL cluster primary                                |
|   **`haproxy`**   | ✔️ Optional | Auto-routing [**services**](/docs/pgsql/service/) via Patroni health checks |
|   **`chronyd`**   | ✔️ Optional | Time synchronization with NTP server                                        |
|    **`tuned`**    | ✔️ Optional | Node tuning template and kernel parameter management                        |
{.full-width}

You can disable all optional components through the configuration.
Patroni and etcd remain required.

Without INFRA, Nginx does not serve a local software repository to other nodes.
Thus, offline Slim Installation supports only one node.

## Configuration

The [`conf/slim.yml` template](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml) defines this single-node deployment:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |     **No INFRA module**  |        `etcd-1`         |
{.full-width}

{{< include file="/docs/conf/yaml/slim.yml" code=true lang="yaml" >}}

## Deployment

Use the [`slim.yml` playbook](https://github.com/pgsty/pigsty/blob/main/slim.yml) for deployment.
Run it from the Pigsty source directory:

```bash
./slim.yml
```

## HA Cluster

To deploy an HA cluster, add nodes to both the `etcd` and `pg-meta` groups.
This example uses three nodes:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |     **No INFRA module**  |        `etcd-1`         |
| 2  |    `10.10.10.11`    |      `pg-meta-2`      |     **No INFRA module**  |        `etcd-2`         |
| 3  |    `10.10.10.12`    |      `pg-meta-3`      |     **No INFRA module**  |        `etcd-3`         |
{.full-width}

```yaml
all:
  children:
    etcd:
      hosts:
        10.10.10.10: { etcd_seq: 1 }
        10.10.10.11: { etcd_seq: 2 }  # <-- New
        10.10.10.12: { etcd_seq: 3 }  # <-- New

    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        10.10.10.11: { pg_seq: 2, pg_role: replica } # <-- New
        10.10.10.12: { pg_seq: 3, pg_role: replica } # <-- New
      vars:
        pg_cluster: pg-meta
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }
        pg_databases:
          - { name: meta, baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [ vector ]}
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # full backup daily at 1am
  vars:
    # omitted ……
```
