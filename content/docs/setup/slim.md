---
title: Slim Installation
linkTitle: Slim
weight: 285
description: Install only HA PostgreSQL clusters with minimal dependencies
icon: fa-solid fa-minimize
module: [PIGSTY]
categories: [Tutorial]
---


If you only want HA PostgreSQL database cluster itself without monitoring, infra, etc., consider **Slim Installation**.

Slim installation has no [**`INFRA`**](/docs/infra/) module, no monitoring, no [**local repo**](/docs/setup/offline/)—just [**`ETCD`**](/docs/etcd/) and [**`PGSQL`**](/docs/pgsql/) and partial [**`NODE`**](/docs/node/) functionality.

{{% alert title="Slim installation is suitable for:" color="success" %}}
- Only needing PostgreSQL database itself, no observability infra required.
- Extremely resource-constrained envs unwilling to bear infra overhead (~0.2 vCPU / 500MB on single node).
- Already having external monitoring system, wanting to use your own unified monitoring framework.
- Not wanting to introduce the AGPLv3-licensed Grafana visualization dashboard component.
  {{% /alert %}}

{{% alert title="Limitations of slim installation:" color="warning" %}}
- No [**INFRA**](/docs/infra) module, cannot use WebUI and local software repo features.
- [**Offline Install**](/docs/setup/offline) is limited to single-node mode; multi-node slim install can only be done online.
  {{% /alert %}}


--------

## Overview

To use slim installation, you need to:

1. Use the [**`slim.yml`**](/docs/conf/slim) slim install config template (`configure -c slim`)
2. Run the `slim.yml` playbook instead of the default `deploy.yml`

```bash
curl https://repo.pigsty.io/get | bash
./configure -g -c slim
./slim.yml
```

{{< asciinema file="demo/install-slim.cast" markers="3:Install,13:Configure,22:Deploy" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}


--------

## Description

Slim installation only installs/configures these components:

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

You can disable all optional components via configuration, keeping only the required `patroni` and `etcd`.

Because there's no INFRA module's Nginx providing local repo service, [**offline installation**](/docs/setup/offline/) only works in single-node mode.


--------

## Configuration

Slim installation config file example: [**`conf/slim.yml`**](https://github.com/pgsty/pigsty/blob/main/conf/slim.yml):

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |    `10.10.10.10`    |      `pg-meta-1`      |     **No INFRA module**  |        `etcd-1`         |
{.full-width}


{{< readfile file="/docs/conf/yaml/slim.yml" code="true" lang="yaml" >}}


--------

## Deployment

Slim installation uses the [`slim.yml`](https://github.com/pgsty/pigsty/blob/main/slim.yml) playbook instead of [`deploy.yml`](https://github.com/pgsty/pigsty/blob/main/deploy.yml):

```bash
./slim.yml
```


--------

## HA Cluster

Slim installation can also deploy HA clusters—just add more nodes to the `etcd` and `pg-meta` groups. A three-node deployment example:

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
        node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # make a full backup every 1am
  vars:
    # omitted ……
```
