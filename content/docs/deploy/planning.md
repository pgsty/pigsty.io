---
title: Planning Architecture and Nodes
linkTitle: Arch Planning
weight: 365
description: How many nodes? Which modules need HA? How to plan based on available resources and requirements?
icon: fa-solid fa-table-list
module: [PIGSTY]
categories: [Tutorial]
---

Pigsty uses a [modular architecture](/docs/concept/arch).
Select the modules for your requirements and define the deployment through [declarative configuration](/docs/concept/iac).

## Common Patterns

Use these common deployment patterns as a starting point.
Adjust the configuration for your requirements:

|                       Pattern                        | [**INFRA**](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**PGSQL**](/docs/pgsql/) | [**MINIO**](/docs/minio) | Description                                                   |
|:----------------------------------------------------:|:-------------------------:|:-----------------------:|:-------------------------:|:------------------------:|---------------------------------------------------------------|
|  Single-node ([**`meta`**](/docs/conf/meta))         |             1             |            1            |             1             |                          | [**Single-node deployment**](/docs/setup/install) default     |
|     Slim deploy ([**`slim`**](/docs/conf/slim))      |                           |            1            |             1             |                          | Database only, no monitoring infra                            |
|  Infra-only ([**`infra`**](/docs/conf/infra))        |             1             |                         |                           |                          | Monitoring infrastructure only                                |
|  Rich deploy ([**`rich`**](/docs/conf/rich))         |             1             |            1            |             1             |            1             | Single-node + object storage + local repo with all extensions |
{.full-width}
|             Multi-node Pattern             | [**INFRA**](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**PGSQL**](/docs/pgsql/) | [**MINIO**](/docs/minio) | Description                              |
|:------------------------------------------:|:-------------------------:|:-----------------------:|:-------------------------:|:------------------------:|------------------------------------------|
|  Two-node ([**`dual`**](/docs/conf/dual))  |             1             |            1            |             2             |                          | Semi-HA, tolerates specific node failure |
| Three-node ([**`trio`**](/docs/conf/trio)) | 3 | 3 | 3 | 3 | Three-node HA, Silo EC:1 |
| Four-node ([**`full`**](/docs/conf/full))  |             1             |            1            |            1+3            |                          | Demo setup, single INFRA/ETCD            |
| Production simulation ([**`simu`**](/docs/conf/simu)) | 3 | 5 | 9 | 4 | 20 nodes, including 2 additional proxies |
|            Large-scale (custom)            |             3             |            5            |             n             |            n             | 3 INFRA, 5 ETCD                          |
{.full-width}

Select the architecture for your reliability requirements and available resources.
Production deployments with full [high availability](#three-node-setup) require at least **3** nodes.
With **2** nodes, use the [Semi-HA configuration](#two-node-setup).

> [!NOTE] Architecture planning service
> [Architecture Consulting Services](/price) can help you plan the Pigsty configuration.

## Trade-offs

- Monitoring requires at least **1** INFRA node. Production typically uses **2** nodes; large deployments use **3**.
- PostgreSQL HA requires at least **1** ETCD node. Production typically uses **3** nodes; large deployments use **5**.
  An even-member ETCD cluster tolerates no more failures than an odd-member cluster with one fewer member.
  Prefer an odd number of members.
- Silo object storage requires at least **1** [MINIO node](/docs/minio/config#single-node-single-disk).
  Production typically uses 4 or more nodes in an [MNMD cluster](/docs/minio/config#multi-node-multi-disk).
- Production PostgreSQL clusters typically have at least two nodes: a primary and a replica.
  More demanding deployments use 3 nodes.
  Deployments with high read loads can have dozens of replicas.
- Advanced PostgreSQL configurations include offline instances, synchronous instances, standby clusters, and delayed clusters.

## Single-Node Setup

The single-node configuration puts all components on one node.
It installs four core modules by default.
Use it for demonstrations, development, or testing.

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
{.full-width}

An external S3/MinIO [backup repository](/docs/pgsql/backup/) can supply the required recovery time and recovery point objectives (RTO/RPO).
With this protection, a single-node configuration can serve standard production environments.

These single-node variants are available:

- **Rich** ([`rich`](/docs/conf/rich)) is a production template with local Silo storage, a local software repository, and all PostgreSQL extensions.
- **Slim** ([`slim`](/docs/conf/slim)) installs [PGSQL](/docs/pgsql/) and [ETCD](/docs/etcd/) without the monitoring infrastructure.
  [Slim Installation](/docs/setup/slim) can expand to [multiple nodes with HA](/docs/setup/slim#ha-cluster).
- **Infra-only** ([`infra`](/docs/conf/infra)) installs only [INFRA](/docs/infra/) to monitor other instances.
  It does not install database services.
- **Alternative kernels** replace the standard PostgreSQL kernel with a derivative.
  Templates include [`pgsql`](/docs/conf/pgsql/), [`mssql`](/docs/conf/mssql/), [`polar`](/docs/conf/polar/), [`ivory`](/docs/conf/ivory/), and [`mysql`](/docs/conf/mysql/).
  Other templates include [`pgtde`](/docs/conf/pgtde/), [`oriole`](/docs/conf/oriole/), [`agens`](/docs/conf/agens/), and [`pgedge`](/docs/conf/pgedge/).

## Two-Node Setup

The [two-node configuration](/docs/conf/dual) enables database replication and Semi-HA.
It improves data redundancy and supplies limited automatic failover:

| ID | [NODE](/docs/node/) |  [PGSQL](/docs/pgsql/)  | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       | `pg-meta-1` (`replica`) |       `infra-1`       |        `etcd-1`         |
| 2  |      `node-2`       | `pg-meta-2` (`primary`) |                       |                         |
{.full-width}

Automatic recovery depends on which node fails:

- If `node-1` fails, manually promote `node-2`. Automatic failover is unavailable.
- If `node-2` fails, `node-1` is automatically promoted.

## Three-Node Setup

The [three-node template](/docs/conf/trio) deploys INFRA, ETCD, PGSQL, and MINIO (Silo) on every node. It tolerates one node failure when the remaining two can communicate and replica state permits failover. Silo uses a three-node, single-drive-per-node EC:1 pool. An existing single-node object store cannot be expanded directly into this topology; create a new pool and migrate objects.

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**MINIO**](/docs/minio/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|:---:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         | `minio-1` |
| 2  |      `node-2`       |      `pg-meta-2`      |       `infra-2`       |        `etcd-2`         | `minio-2` |
| 3  |      `node-3`       |      `pg-meta-3`      |       `infra-3`       |        `etcd-3`         | `minio-3` |
{.full-width}


## Four-Node Setup

The Pigsty [Sandbox](/docs/deploy/sandbox/) uses the [standard four-node configuration](/docs/conf/full).

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
| 2  |      `node-2`       |      `pg-test-1`      |                       |                         |
| 3  |      `node-3`       |      `pg-test-2`      |                       |                         |
| 4  |      `node-4`       |      `pg-test-3`      |                       |                         |
{.full-width}

In the demonstration configuration, [INFRA](/docs/infra) and [ETCD](/docs/etcd) do not have HA.
You can extend the configuration as follows:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**MINIO**](/docs/minio/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|:-------------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |         `minio-1`         |
| 2  |      `node-2`       |      `pg-test-1`      |       `infra-2`       |        `etcd-2`         |                           |
| 3  |      `node-3`       |      `pg-test-2`      |                       |        `etcd-3`         |                           |
| 4  |      `node-4`       |      `pg-test-3`      |                       |                         |                           |
{.full-width}

## More Nodes

The [`ha/simu` simulation template](/docs/conf/simu) and `vagrant/spec/simu.rb` currently use 20 nodes, separating key services into groups:

| Node Group | IP Range | Count | Main Role |
|:-----------|:---------|:------|:----------|
| `infra` / `pg-meta` | `10.10.10.10` to `10.10.10.12` | 3 | INFRA and metadata database cluster |
| `proxy` | `10.10.10.18` to `10.10.10.19` | 2 | HAProxy / VIP access |
| `minio` | `10.10.10.21` to `10.10.10.24` | 4 | Silo, four data disks per node |
| `etcd` | `10.10.10.25` to `10.10.10.29` | 5 | ETCD, also used as Redis Sentinel test nodes |
| `pg-src` | `10.10.10.31` to `10.10.10.33` | 3 | Source PostgreSQL cluster |
| `pg-dst` | `10.10.10.41` to `10.10.10.43` | 3 | Destination PostgreSQL cluster |
{.full-width}

This template simulates functionality and production topology. Size real production deployments and choose service placement according to capacity, failure domains, and dependencies.
