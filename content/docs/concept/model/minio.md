---
title: MinIO Cluster Model
weight: 1103
description: Entity-Relationship model for MinIO clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.
icon: fa-solid fa-boxes-stacked
module: [MINIO]
categories: [Concept]
---


The MinIO module organizes MinIO in production as **clusters**—**logical entities** composed of a group of distributed MinIO **instances**, collectively providing highly available object storage services.

Each cluster is an **autonomous** S3-compatible object storage unit consisting of at least one **MinIO instance**, exposing service capabilities through the S3 API port.

There are three core entities in Pigsty's MinIO module:

- **Cluster**: An autonomous MinIO service unit serving as the top-level namespace for other entities.
- **Instance**: A single MinIO server process running on a node, managing local disk storage.
- **Node**: A hardware resource abstraction running Linux + Systemd environment, implicitly declared.

Additionally, MinIO has the concept of [**Storage Pool**](/docs/minio/config#multi-pool-deployment), used for smooth cluster scaling.
A cluster can contain multiple storage pools, each composed of a group of nodes and disks.


----------------

## Deployment Modes

MinIO supports three main deployment modes for different scenarios:

|                   Mode                    |   Code   | Description                              | Use Case           |
|:-----------------------------------------:|:--------:|:-----------------------------------------|:-------------------|
| [**Single-Node Single-Drive**](/docs/minio/config#single-node-single-drive) | **SNSD** | Single node, single data directory or disk | Dev, test, demo    |
| [**Single-Node Multi-Drive**](/docs/minio/config#single-node-multi-drive)  | **SNMD** | Single node, multiple disks, typically 4+ | Resource-constrained small deployments |
| [**Multi-Node Multi-Drive**](/docs/minio/config#multi-node-multi-drive)   | **MNMD** | Multiple nodes, multiple disks per node   | **Production recommended** |
{.full-width}

SNSD mode can use any directory as storage for quick experimentation; SNMD and MNMD modes require real disk mount points, otherwise startup is refused.


----------------

## Examples

Let's look at a concrete multi-node multi-drive example with a four-node MinIO cluster:

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
    10.10.10.11: { minio_seq: 2 }
    10.10.10.12: { minio_seq: 3 }
    10.10.10.13: { minio_seq: 4 }
  vars:
    minio_cluster: minio
    minio_data: '/data{1...4}'
    minio_node: '${minio_cluster}-${minio_seq}.pigsty'
```

The above config fragment defines a four-node MinIO cluster with four disks per node:

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                  **`minio`**                    | MinIO 4-node HA cluster                             |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|                 **`minio-1`**                   | MinIO instance #1, managing 4 disks                 |
|                 **`minio-2`**                   | MinIO instance #2, managing 4 disks                 |
|                 **`minio-3`**                   | MinIO instance #3, managing 4 disks                 |
|                 **`minio-4`**                   | MinIO instance #4, managing 4 disks                 |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|               **`10.10.10.10`**                 | Node #1, hosts `minio-1` instance                   |
|               **`10.10.10.11`**                 | Node #2, hosts `minio-2` instance                   |
|               **`10.10.10.12`**                 | Node #3, hosts `minio-3` instance                   |
|               **`10.10.10.13`**                 | Node #4, hosts `minio-4` instance                   |
{.full-width}


----------------

## Identity Parameters

Pigsty uses the [**`MINIO`**](/docs/minio/param#minio) parameter group to assign deterministic identities to each MinIO module entity. Two parameters are required:

| Parameter                                                  |   Type   | Level | Description                     | Format                                           |
|:-----------------------------------------------------------|:--------:|:-----:|:--------------------------------|:-------------------------------------------------|
| [**`minio_cluster`**](/docs/minio/param#minio_cluster)     | `string` | Cluster | MinIO cluster name, required   | Valid DNS name, defaults to `minio`              |
| [**`minio_seq`**](/docs/minio/param#minio_seq)             |  `int`   | Instance | MinIO instance number, required | Natural number, starting from 1, unique within cluster |
{.full-width}

With cluster name defined at cluster level and instance number assigned at instance level, Pigsty automatically generates unique identifiers for each entity based on rules:

| Entity       | Generation Rule                       | Example                                 |
|--------------|:--------------------------------------|:----------------------------------------|
| **Instance** | `{{ minio_cluster }}-{{ minio_seq }}` | `minio-1`, `minio-2`, `minio-3`, `minio-4` |
{.full-width}

The MinIO module does not assign additional identity to host nodes; nodes are identified by their existing hostname or IP address.
The [**`minio_node`**](/docs/minio/param#minio_node) parameter generates node names for MinIO cluster internal use (written to `/etc/hosts` for cluster discovery), not host node identity.


----------------

## Core Configuration Parameters

Beyond identity parameters, the following parameters are critical for MinIO cluster configuration:

| Parameter                                                |   Type   | Description                           |
|:---------------------------------------------------------|:--------:|:--------------------------------------|
| [**`minio_data`**](/docs/minio/param#minio_data)         |  `path`  | Data directory, use `{x...y}` for multi-drive |
| [**`minio_node`**](/docs/minio/param#minio_node)         | `string` | Node name pattern for multi-node deployment |
| [**`minio_domain`**](/docs/minio/param#minio_domain)     | `string` | Service domain, defaults to `sss.pigsty` |
{.full-width}

These parameters together determine MinIO's core config `MINIO_VOLUMES`:

- **SNSD**: Direct `minio_data` value, e.g., `/data/minio`
- **SNMD**: Expanded `minio_data` directories, e.g., `/data{1...4}`
- **MNMD**: Combined `minio_node` and `minio_data`, e.g., `https://minio-{1...4}.pigsty:9000/data{1...4}`


----------------

## Ports & Services

Each MinIO instance listens on the following ports:

| Port  | Parameter                                                        | Purpose              |
|:------|:-----------------------------------------------------------------|:---------------------|
| 9000  | [**`minio_port`**](/docs/minio/param#minio_port)                 | S3 API service port  |
| 9001  | [**`minio_admin_port`**](/docs/minio/param#minio_admin_port)     | Web admin console port |
{.full-width}

MinIO enables HTTPS encrypted communication by default (controlled by [**`minio_https`**](/docs/minio/param#minio_https)). This is required for backup tools like pgBackREST to access MinIO.

Multi-node MinIO clusters can be accessed through **any node**. Best practice is to use a load balancer (e.g., HAProxy + VIP) for unified access point.


----------------

## Resource Provisioning

After MinIO cluster deployment, Pigsty automatically creates the following resources (controlled by [**`minio_provision`**](/docs/minio/param#minio_provision)):

**Default Buckets** (defined by [**`minio_buckets`**](/docs/minio/param#minio_buckets)):

| Bucket  | Purpose                             |
|:--------|:------------------------------------|
| `pgsql` | PostgreSQL pgBackREST backup storage |
| `meta`  | Metadata storage, versioning enabled |
| `data`  | General data storage                 |
{.full-width}

**Default Users** (defined by [**`minio_users`**](/docs/minio/param#minio_users)):

| User          | Default Password   | Policy  | Purpose                    |
|:--------------|:-------------------|:--------|:---------------------------|
| `pgbackrest`  | `S3User.Backup`    | `pgsql` | PostgreSQL backup dedicated user |
| `s3user_meta` | `S3User.Meta`      | `meta`  | Access `meta` bucket       |
| `s3user_data` | `S3User.Data`      | `data`  | Access `data` bucket       |
{.full-width}

`pgbackrest` is used for PostgreSQL cluster backups; `s3user_meta` and `s3user_data` are reserved users not actively used.


----------------

## Monitoring Label System

Pigsty provides an out-of-box monitoring system that uses the above [**identity parameters**](#identity-parameters) to identify various MinIO entities.

```text
minio_up{cls="minio", ins="minio-1", ip="10.10.10.10", job="minio"}
minio_up{cls="minio", ins="minio-2", ip="10.10.10.11", job="minio"}
minio_up{cls="minio", ins="minio-3", ip="10.10.10.12", job="minio"}
minio_up{cls="minio", ins="minio-4", ip="10.10.10.13", job="minio"}
```

For example, the `cls`, `ins`, `ip` labels correspond to cluster name, instance name, and node IP—the identifiers for these three core entities.
They appear along with the `job` label in **all** MinIO monitoring metrics collected by [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics).
The `job` name for collecting MinIO metrics is fixed as `minio`.


