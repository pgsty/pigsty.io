---
title: Nodes
linkTitle: Nodes
weight: 161
description: A node is an abstraction of hardware/OS resources—physical machines, bare metal, VMs, or containers/pods.
icon: fa-solid fa-server
categories: [Concept]
---


A **node** is an abstraction of hardware resources and operating systems. It can be a physical machine, bare metal, virtual machine, or container/pod.

Any machine running a [**Linux OS**](/docs/ref/linux) (with systemd daemon) and standard CPU/memory/disk/network resources can be treated as a node.

Nodes can have [**modules**](/docs/ref/module) installed. Pigsty has several node types, distinguished by which modules are deployed:

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

In a [**singleton**](/docs/setup/install) Pigsty deployment, multiple roles converge on one node: it serves as the regular node, admin node, infra node, ETCD node, and database node simultaneously.


------

## Regular Node

Nodes managed by Pigsty can have modules installed. The [**`node.yml`**](/docs/node/playbook#nodeyml) playbook configures nodes to the desired state.
A regular node may run the following services:

|          Component          |  Port  | Description                         | Status      |
|:---------------------------:|:------:|-------------------------------------|-------------|
|    **`node_exporter`**      | `9100` | Host metrics exporter               | Enabled     |
|       **`haproxy`**         | `9101` | HAProxy load balancer (admin port)  | Enabled     |
|       **`vector`**          | `9598` | Log collection agent                | Enabled     |
|       **`docker`**          | `9323` | Container runtime support           | Optional    |
|     **`keepalived`**        | `n/a`  | L2 VIP for node cluster             | Optional    |
| **`keepalived_exporter`**   | `9650` | Keepalived status monitor           | Optional    |
{.full-width}

Here, `node_exporter` exposes host metrics, `vector` sends logs to the collection system, and `haproxy` provides load balancing. These three are enabled by default.
[**Docker**](/docs/docker), `keepalived`, and `keepalived_exporter` are optional and can be enabled as needed.


------

## ADMIN Node

A Pigsty deployment has exactly **one admin node**—the node that runs Ansible playbooks and issues control/deployment commands.

This node has `ssh/sudo` access to all other nodes. Admin node security is critical; ensure access is strictly controlled.

During [**single-node installation**](/docs/setup/install) and [**configuration**](/docs/concept/iac/configure), the current node becomes the admin node.
However, alternatives exist. For example, if your laptop can SSH to all managed nodes and has Ansible installed, it can serve as the admin node—though this isn't recommended for production.

For instance, you might use your laptop to manage a Pigsty VM in the cloud. In this case, your laptop is the admin node.

In serious production environments, the admin node is typically 1-2 dedicated DBA machines. In resource-constrained setups, [**INFRA nodes**](#infra-node) often double as admin nodes since all INFRA nodes have Ansible installed by default.


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

Nginx serves as the module's entry point, providing the web UI and local software repository.
With multiple INFRA nodes, services on each are independent, but you can access all monitoring data sources from any INFRA node's Grafana.

Note: The [**INFRA**](/docs/infra) module is licensed under [**AGPLv3**](/docs/about/license#pigsty-special-module) due to Grafana.
As an exception, if you only use Nginx/Victoria components without Grafana, you're effectively under [**Apache-2.0**](/docs/about/license#pigsty-license).


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

The **`minio`** group in the inventory defines MinIO nodes. These nodes run MinIO servers on:

|  Component  |  Port  | Description                |
|:-----------:|:------:|----------------------------|
|  `minio`    | `9000` | MinIO S3 API endpoint      |
|  `minio`    | `9001` | MinIO admin console        |
{.full-width}



----------------

## PGSQL Node

Nodes with the [**PGSQL**](/docs/pgsql/) module are called PGSQL nodes. Node and PostgreSQL instance have a 1:1 deployment—one PG instance per node.

PGSQL nodes can borrow **identity** from their PostgreSQL instance—controlled by [`node_id_from_pg`](/docs/node/param/#node_id_from_pg), defaulting to `true`, meaning the node name is set to the PG instance name.

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

The `vip-manager` is only enabled when users configure a **PG VIP**.
Additional [**custom services**](/docs/pgsql/service#defining-services) can be defined in [**`pg_services`**](/docs/pgsql/service), exposed via `haproxy` using additional service ports.



----------------

## Node Relationships

Regular nodes typically reference an [**INFRA node**](#infra-node) via the [**`admin_ip`**](/docs/infra/param/#admin_ip) parameter as their infrastructure provider.
For example, with global `admin_ip = 10.10.10.10`, all nodes use infrastructure services at this IP.

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

Typically the admin node and INFRA node coincide. With multiple INFRA nodes, the admin node is usually the first one; others serve as backups.

In large-scale production deployments, you might separate the Ansible admin node from INFRA module nodes.
For example, use 1-2 small dedicated hosts under the DBA team as the control hub (ADMIN nodes), and 2-3 high-spec physical machines as monitoring infrastructure (INFRA nodes).

Typical node counts by deployment scale:

| Scale       | ADMIN | INFRA | ETCD | MINIO | PGSQL |
|:-----------:|:-----:|:-----:|:----:|:-----:|:-----:|
| Single-node |   1   |   1   |  1   |   0   |   1   |
| 3-node      |   1   |   3   |  3   |   0   |   3   |
| Small prod  |   1   |   2   |  3   |   0   |   N   |
| Large prod  |   2   |   3   |  5   |  4+   |   N   |
{.full-width}

