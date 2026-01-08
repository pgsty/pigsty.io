---
title: Planning Architecture and Nodes
linkTitle: Arch Planning
weight: 365
description: How many nodes? Which modules need HA? How to plan based on available resources and requirements?
icon: fa-solid fa-table-list
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty uses a [**modular architecture**](/docs/concept/arch). You can combine modules like building blocks and express your intent through [**declarative configuration**](/docs/concept/iac).


## Common Patterns

Here are common deployment patterns for reference. Customize based on your requirements:

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
| Three-node ([**`trio`**](/docs/conf/trio)) |             3             |            3            |             3             |                          | Standard HA, tolerates any one failure   |
| Four-node ([**`full`**](/docs/conf/full))  |             1             |            1            |            1+3            |                          | Demo setup, single INFRA/ETCD            |
| Production ([**`simu`**](/docs/conf/simu)) |             2             |            3            |             n             |            n             | 2 INFRA, 3 ETCD                          |
|            Large-scale (custom)            |             3             |            5            |             n             |            n             | 3 INFRA, 5 ETCD                          |
{.full-width}

Your architecture choice depends on reliability requirements and available resources.
Serious production deployments require at least **3** nodes for [**HA configuration**](#three-node-setup).
With only **2** nodes, use [**Semi-HA configuration**](#two-node-setup).

{{% alert title="Expert Consulting: Architecture Planning" color="info" %}}
We offer [**Architecture Consulting Services**](/price) to help plan your Pigsty configuration.
{{% /alert %}}


--------

## Trade-offs

- Pigsty monitoring requires at least **1** INFRA node. Production typically uses **2**; large-scale deployments use **3**.
- PostgreSQL HA requires at least **1** ETCD node. Production typically uses **3**; large-scale uses **5**. Must be odd numbers.
- Object storage (MinIO) requires at least **1** [**MINIO node**](/docs/minio/config#single-node-single-drive). Production typically uses 4+ nodes in [**MNMD**](/docs/minio/config#multi-node-multi-drive) clusters.
- Production PG clusters typically use at least two-node primary-replica configuration; serious deployments use 3 nodes; high read loads can have dozens of replicas.
- For PostgreSQL, you can also use advanced configurations: offline instances, sync instances, standby clusters, delayed clusters, etc.



--------

## Single-Node Setup

The simplest configuration with everything on a single node. Installs four essential modules by default. Typically used for demos, devbox, or testing.

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
{.full-width}

With an external S3/MinIO [**backup repository**](/docs/pgsql/backup/) providing RTO/RPO guarantees, this configuration works for standard production environments.

Single-node variants:

- **Rich** ([**`rich`**](/docs/conf/rich)): Production single-node template with local MinIO object storage, local software repo, and all PG extensions.
- **Slim** ([**`slim`**](/docs/conf/slim)): Installs only [**PGSQL**](/docs/pgsql/) and [**ETCD**](/docs/etcd/), no monitoring infra. [**Slim installation**](/docs/setup/slim) can expand to [**multi-node HA deployment**](/docs/setup/slim#ha-cluster).
- **Infra-only** ([**`infra`**](/docs/conf/infra)): Opposite of slim—installs only [**INFRA**](/docs/infra/) monitoring infrastructure, no database services, for monitoring other instances.
- **Alternative kernels**: Replace vanilla PG with derivatives: [**`pgsql`**](/docs/conf/pgsql/), [**`citus`**](/docs/conf/citus/), [**`mssql`**](/docs/conf/mssql/), [**`polar`**](/docs/conf/polar/), [**`ivory`**](/docs/conf/ivory/), [**`mysql`**](/docs/conf/mysql/), [**`pgtde`**](/docs/conf/pgtde/), [**`oriole`**](/docs/conf/oriole/), [**`supabase`**](/docs/conf/supabase/).


--------

## Two-Node Setup

[**Two-node configuration**](/docs/conf/dual) enables database replication and **Semi-HA** capability with better data redundancy and limited failover support:

| ID | [NODE](/docs/node/) |  [PGSQL](/docs/pgsql/)  | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:-----------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       | `pg-meta-1` (`replica`) |       `infra-1`       |        `etcd-1`         |
| 2  |      `node-2`       | `pg-meta-2` (`primary`) |                       |                         |
{.full-width}

Two-node HA auto-failover has limitations. This "Semi-HA" setup only auto-recovers from specific node failures:
- If `node-1` fails: No automatic failover—requires manual promotion of `node-2`
- If `node-2` fails: Automatic failover works—`node-1` auto-promoted

--------

## Three-Node Setup

[**Three-node template**](/docs/conf/trio) provides true baseline HA configuration, tolerating any single node failure with automatic recovery.

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
| 2  |      `node-2`       |      `pg-meta-2`      |       `infra-2`       |        `etcd-2`         |
| 3  |      `node-3`       |      `pg-meta-3`      |       `infra-3`       |        `etcd-3`         |
{.full-width}

--------

## Four-Node Setup

Pigsty [**Sandbox**](/docs/deploy/sandbox/) uses the [**standard four-node configuration**](/docs/conf/full).

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |
| 2  |      `node-2`       |      `pg-test-1`      |                       |                         |
| 3  |      `node-3`       |      `pg-test-2`      |                       |                         |
| 4  |      `node-4`       |      `pg-test-3`      |                       |                         |
{.full-width}

For demo purposes, [**INFRA**](/docs/infra) / [**ETCD**](/docs/etcd) modules aren't configured for HA. You can adjust further:

| ID | [NODE](/docs/node/) | [PGSQL](/docs/pgsql/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**MINIO**](/docs/minio/) |
|:--:|:-------------------:|:---------------------:|:---------------------:|:-----------------------:|:-------------------------:|
| 1  |      `node-1`       |      `pg-meta-1`      |       `infra-1`       |        `etcd-1`         |         `minio-1`         |
| 2  |      `node-2`       |      `pg-test-1`      |       `infra-2`       |        `etcd-2`         |                           |
| 3  |      `node-3`       |      `pg-test-2`      |                       |        `etcd-3`         |                           |
| 4  |      `node-4`       |      `pg-test-3`      |                       |                         |                           |
{.full-width}


--------

## More Nodes

With proper virtualization infrastructure or abundant resources, you can [**use more nodes**](/docs/conf/simu) for **dedicated deployment** of each module, achieving optimal reliability, observability, and performance.

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [**MINIO**](/docs/minio/) | [PGSQL](/docs/pgsql/) |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:-------------------------:|:---------------------:|
| 1  |    `10.10.10.10`    |       `infra-1`       |                         |                           |      `pg-meta-1`      |
| 2  |    `10.10.10.11`    |       `infra-2`       |                         |                           |      `pg-meta-2`      |
| 3  |    `10.10.10.21`    |                       |        `etcd-1`         |                           |                       |
| 4  |    `10.10.10.22`    |                       |        `etcd-2`         |                           |                       |
| 5  |    `10.10.10.23`    |                       |        `etcd-3`         |                           |                       |
| 6  |    `10.10.10.31`    |                       |                         |         `minio-1`         |                       |
| 7  |    `10.10.10.32`    |                       |                         |         `minio-2`         |                       |
| 8  |    `10.10.10.33`    |                       |                         |         `minio-3`         |                       |
| 9  |    `10.10.10.34`    |                       |                         |         `minio-4`         |                       |
| 10 |    `10.10.10.40`    |                       |                         |                           |      `pg-src-1`       |
| 11 |    `10.10.10.41`    |                       |                         |                           |      `pg-src-2`       |
| 12 |    `10.10.10.42`    |                       |                         |                           |      `pg-src-3`       |
| 13 |    `10.10.10.50`    |                       |                         |                           |      `pg-test-1`      |
| 14 |    `10.10.10.51`    |                       |                         |                           |      `pg-test-2`      |
| 15 |    `10.10.10.52`    |                       |                         |                           |      `pg-test-3`      |
| 16 |       ......        |                       |                         |                           |                       |
{.full-width}


