---
title: Nodes
linkTitle: Nodes
weight: 161
description: A node is an abstraction of hardware/OS resources—physical machines, bare metal, VMs, or containers/pods.
icon: fa-solid fa-server
categories: [Concept]
---


A **node** represents hardware resources and an operating system. It can be a physical server, virtual machine, container, or pod.

A node needs a [**Linux OS**](/docs/ref/linux), systemd, and standard CPU, memory, disk, and network resources.

Install [**modules**](/docs/ref/module) on nodes. The installed modules determine the node type:

|            Type            | Description                                                     |
|:--------------------------:|:----------------------------------------------------------------|
|  [**Regular Node**](#regular-node)   | A node managed by Pigsty                                        |
|   [**ADMIN Node**](#admin-node)    | The node that runs Ansible to issue management commands         |
|   [**INFRA Node**](#infra-node)    | Nodes with the [**INFRA**](/docs/infra/) module installed       |
|    [**ETCD Node**](#etcd-node)     | Nodes with the [**ETCD**](/docs/etcd/) module for DCS           |
|   [**MINIO Node**](#minio-node)    | Nodes with the [**MINIO**](/docs/minio/) module for object storage |
|   [**PGSQL Node**](#pgsql-node)    | Nodes with the [**PGSQL**](/docs/pgsql/) module installed       |
|            ...             | Nodes with other modules...                                     |
{.full-width}

In a [**single-node deployment**](/docs/setup/install), one node has all roles: regular, administration, infrastructure, ETCD, and database.


------

## Regular Node

Use [**`node.yml`**](/docs/node/playbook#nodeyml) to configure managed nodes to the target state. A regular node can run these services:

|          Component          |  Port  | Description                         | Status      |
|:---------------------------:|:------:|-------------------------------------|-------------|
|    **`node_exporter`**      | `9100` | Host metrics exporter               | Enabled     |
|       **`haproxy`**         | `9101` | HAProxy load balancer (admin port)  | Enabled     |
|       **`vector`**          | `9598` | Log collection agent                | Enabled     |
|       **`docker`**          | `9323` | Container runtime support           | Optional    |
|     **`keepalived`**        | `n/a`  | L2 VIP for node cluster             | Optional    |
| **`keepalived_exporter`**   | `9650` | Keepalived status monitor           | Optional    |
{.full-width}

`node_exporter`, `vector`, and `haproxy` are enabled by default. They export host metrics, collect logs, and balance traffic. [**Docker**](/docs/docker), `keepalived`, and `keepalived_exporter` are optional.


------

## ADMIN Node

A deployment has exactly **one administration node** that runs Ansible playbooks and issues deployment or management commands.

This node has `ssh/sudo` access to every other node. Restrict access carefully. See [**Security Model: Trust Boundaries**](/docs/concept/sec/level#trust-boundaries) for its trusted access and critical assets.

During [**single-node installation**](/docs/setup/install) and [**configuration**](/docs/concept/iac/configure), the current node becomes the administration node. A laptop with Ansible and SSH access to all managed nodes can also serve this role. This is not recommended for production.

For example, a laptop managing a cloud Pigsty VM is the administration node.

Production installations usually reserve 1–2 DBA machines for administration. With limited resources, [**INFRA nodes**](#infra-node) can also perform administration. All infrastructure nodes have Ansible by default.


----------------

## INFRA Node

A Pigsty deployment may have **1** or more INFRA nodes; large production environments typically have **2-3**.

The **`infra`** group in the [**inventory**](/docs/concept/iac/inventory) defines which nodes are INFRA nodes. These nodes run the [**INFRA**](/docs/infra/) module with these components:

|       Component       |    Port    | Description                         |
|:---------------------:|:----------:|-------------------------------------|
|       `nginx`         | `80/443`   | Web UI, local software repository   |
|      `grafana`        |  `3000`    | Visualization platform              |
|  `victoriaMetrics`    |  `8428`    | Time-series database (metrics)      |
|   `victoriaLogs`      |  `9428`    | Log collection server               |
|  `victoriaTraces`     | `10428`    | Trace collection server             |
|      `vmalert`        |  `8880`    | Alerting and derived metrics        |
|   `alertmanager`      |  `9059`    | Alert aggregation and routing       |
| `blackbox_exporter`   |  `9115`    | Blackbox probing (ping nodes/VIPs)  |
|      `dnsmasq`        |   `53`     | Internal DNS resolution             |
|      `chronyd`        |  `123`     | NTP time server                     |
|      `ansible`        |   `-`      | Playbook execution                  |
{.full-width}

Nginx provides the module Web UI and software repository. Services on multiple infrastructure nodes are independent. Each Grafana can access all monitoring data sources.

Pigsty is licensed under [**Apache-2.0**](/docs/about/license), though embedded Grafana component uses AGPLv3.


----------------

## ETCD Node

The [**ETCD**](/docs/etcd) module provides Distributed Consensus Service (DCS) for PostgreSQL high availability.

The **`etcd`** group in the [**inventory**](/docs/concept/iac/inventory) defines ETCD nodes. These nodes run etcd servers on two ports:

|  Component  |  Port  | Description                        |
|:-----------:|:------:|-----------------------------------|
|   `etcd`    | `2379` | ETCD key-value store (client port) |
|   `etcd`    | `2380` | ETCD cluster peer communication    |
{.full-width}


----------------

## MINIO Node

The [**MINIO**](/docs/minio) module provides optional [**backup storage**](/docs/pgsql/backup/repository) for PostgreSQL.

The **`minio`** inventory group defines MINIO module nodes. In v4.5.0, these nodes run Silo servers on:

|  Component  |  Port  | Description                |
|:-----------:|:------:|----------------------------|
|  `silo`     | `9000` | S3 API endpoint            |
|  `silo`     | `9001` | Silo admin console         |
{.full-width}



----------------

## PGSQL Node

A [**PGSQL node**](/docs/pgsql/) has the PGSQL module. Each node runs one PostgreSQL instance, giving a 1:1 mapping.

[`node_id_from_pg`](/docs/node/param/#node_id_from_pg) lets a PGSQL node use its PostgreSQL instance name. The default is `true`.

PGSQL nodes run these additional components beyond [**regular node**](#regular-node) services:

|             Component              |  Port  | Description                                    | Status      |
|:----------------------------------:|:------:|------------------------------------------------|-------------|
|          **`postgres`**            | `5432` | PostgreSQL database server                     | Enabled     |
|         **`pgbouncer`**            | `6432` | PgBouncer connection pool                      | Enabled     |
|          **`patroni`**             | `8008` | Patroni HA management                          | Enabled     |
|        **`pg_exporter`**           | `9630` | PostgreSQL metrics exporter                    | Enabled     |
|     **`pgbouncer_exporter`**       | `9631` | PgBouncer metrics exporter                     | Enabled     |
|    **`pgbackrest_exporter`**       | `9854` | pgBackRest metrics exporter                    | Enabled     |
|        **`vip-manager`**           | `n/a`  | Binds L2 VIP to cluster primary                | Optional    |
|  **`{{ pg_cluster }}-primary`**    | `5433` | HAProxy service: pooled read/write             | Enabled     |
|  **`{{ pg_cluster }}-replica`**    | `5434` | HAProxy service: pooled read-only              | Enabled     |
|  **`{{ pg_cluster }}-default`**    | `5436` | HAProxy service: primary direct connection     | Enabled     |
|  **`{{ pg_cluster }}-offline`**    | `5438` | HAProxy service: offline read                  | Enabled     |
| **`{{ pg_cluster }}-<service>`**   | `543x` | HAProxy service: custom PostgreSQL services    | Custom      |
{.full-width}

`vip-manager` runs only when a **PG VIP** is configured. Define [**custom services**](/docs/pgsql/service#defining-services) through [**`pg_services`**](/docs/pgsql/service). `haproxy` exposes them on additional ports.



----------------

## Node Relationships

Regular nodes normally select an [**INFRA node**](#infra-node) with [**`admin_ip`**](/docs/infra/param/#admin_ip). For example, global `admin_ip = 10.10.10.10` directs nodes to services at that address.

Parameters that reference `${admin_ip}`:

| Parameter                                                                |            Module            | Default Value                       | Description             |
|:-------------------------------------------------------------------------|:----------------------------:|------------------------------------|------------------------|
| [**`repo_endpoint`**](/docs/infra/param/#repo_endpoint)                  | [**`INFRA`**](/docs/infra)   | `http://${admin_ip}:80`            | Software repo URL      |
| [**`repo_upstream`**](/docs/infra/param/#repo_upstream)`.baseurl`        | [**`INFRA`**](/docs/infra)   | `http://${admin_ip}/pigsty`        | Local repo baseurl     |
| [**`infra_portal`**](/docs/infra/param/#infra_portal)`.endpoint`         | [**`INFRA`**](/docs/infra)   | `${admin_ip}:<port>`               | Nginx proxy backend    |
| [**`dns_records`**](/docs/infra/param/#dns_records)                      | [**`INFRA`**](/docs/infra)   | `["${admin_ip} i.pigsty", ...]`    | DNS records            |
| [**`node_default_etc_hosts`**](/docs/node/param/#node_default_etc_hosts) |  [**`NODE`**](/docs/node)    | `["${admin_ip} i.pigsty"]`         | Default static DNS     |
| [**`node_etc_hosts`**](/docs/node/param/#node_etc_hosts)                 |  [**`NODE`**](/docs/node)    | -                                  | Custom static DNS      |
| [**`node_dns_servers`**](/docs/node/param/#node_dns_servers)             |  [**`NODE`**](/docs/node)    | `["${admin_ip}"]`                  | Dynamic DNS servers    |
| [**`node_ntp_servers`**](/docs/node/param/#node_ntp_servers)             |  [**`NODE`**](/docs/node)    | -                                  | NTP servers (optional) |

{.full-width}

The administration node usually also provides infrastructure. With multiple infrastructure nodes, the first usually administers the environment and others provide backups.

Large deployments can separate administration from infrastructure. For example, use 1–2 small DBA-managed administration hosts and 2–3 high-capacity physical monitoring servers.

Typical node counts by deployment scale:

| Scale       | ADMIN | INFRA | ETCD | MINIO | PGSQL |
|:-----------:|:-----:|:-----:|:----:|:-----:|:-----:|
| Single-node |   1   |   1   |  1   |   0   |   1   |
| 3-node      |   1   |   3   |  3   |   0   |   3   |
| Small prod  |   1   |   2   |  3   |   0   |   N   |
| Large prod  |   2   |   3   |  5   |  4+   |   N   |
{.full-width}
