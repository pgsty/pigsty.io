---
title: MINIO Cluster Model
linkTitle: Object Storage Cluster
weight: 50
description: The cluster, instance, and node identity model used when Pigsty's MINIO module deploys Silo.
icon: fa-solid fa-boxes-stacked
module: [MINIO]
categories: [Concept]
---


MINIO is the compatibility module name for object storage. Pigsty v4.5.0 deploys Silo with [`minio_type: silo`](/docs/minio/param#minio_type). It groups object storage **instances** into a **cluster**.

Each cluster is an **autonomous** S3-compatible object store with at least one instance. It exposes services through the S3 API port.

There are three core entities in Pigsty's MINIO module:

- **Cluster**: An autonomous object storage service unit and the top-level namespace for other entities.
- **Instance**: One Silo server process on a node, managing local disks.
- **Node**: An implicitly declared hardware resource that runs Linux and Systemd.

Silo also retains the [**Storage Pool**](/docs/minio/config#multi-pool) concept for expansion.


----------------

## Deployment Modes

Silo supports Pigsty's three inventory deployment modes:

|                   Mode                    |   Code   | Description                              | Use Case           |
|:-----------------------------------------:|:--------:|:-----------------------------------------|:-------------------|
| [**Single-Node Single-Drive**](/docs/minio/config#single-node-single-disk) | **SNSD** | Single node, single data directory or disk | Dev, test, demo    |
| [**Single-Node Multi-Drive**](/docs/minio/config#single-node-multi-disk)  | **SNMD** | Single node, multiple disks, typically 4+ | Resource-constrained small deployments |
| [**Multi-Node Multi-Drive**](/docs/minio/config#multi-node-multi-disk)   | **MNMD** | Multiple nodes, multiple disks per node   | **Production recommended** |
{.full-width}

For a quick SNSD experiment, you can use a regular directory. For multiple drives, use real disk mount points. Otherwise, Silo refuses to start.


----------------

## Examples

This example explicitly selects Silo, the current default backend, and defines a four-node cluster with multiple drives:

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
    10.10.10.11: { minio_seq: 2 }
    10.10.10.12: { minio_seq: 3 }
    10.10.10.13: { minio_seq: 4 }
  vars:
    minio_cluster: minio
    minio_type: silo
    minio_data: '/data{1...4}'
    minio_node: '${minio_cluster}-${minio_seq}.pigsty'
```

The configuration defines four Silo nodes with four disks each. Instance identifiers retain MINIO compatibility names:

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                  **`minio`**                    | Silo 4-node HA cluster                              |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|                 **`minio-1`**                   | Object-storage instance #1, managing 4 disks        |
|                 **`minio-2`**                   | Object-storage instance #2, managing 4 disks        |
|                 **`minio-3`**                   | Object-storage instance #3, managing 4 disks        |
|                 **`minio-4`**                   | Object-storage instance #4, managing 4 disks        |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|               **`10.10.10.10`**                 | Node #1, hosts `minio-1` instance                   |
|               **`10.10.10.11`**                 | Node #2, hosts `minio-2` instance                   |
|               **`10.10.10.12`**                 | Node #3, hosts `minio-3` instance                   |
|               **`10.10.10.13`**                 | Node #4, hosts `minio-4` instance                   |
{.full-width}


----------------

## Identity Parameters

The [**`MINIO`**](/docs/minio/param#minio) parameter group assigns deterministic identities to MINIO entities. Two parameters are required:

| Parameter                                                  |   Type   | Level | Description                     | Format                                           |
|:-----------------------------------------------------------|:--------:|:-----:|:--------------------------------|:-------------------------------------------------|
| [**`minio_cluster`**](/docs/minio/param#minio_cluster)     | `string` | Cluster | Object-storage cluster name, required | Valid non-empty name, no default                 |
| [**`minio_seq`**](/docs/minio/param#minio_seq)             |  `int`   | Instance | Object-storage instance number, required | Natural number, starting from 1, unique within cluster |
{.full-width}

Set the cluster name at cluster level and the instance number at instance level. Pigsty generates unique identifiers with these rules:

| Entity       | Generation Rule                       | Example                                 |
|--------------|:--------------------------------------|:----------------------------------------|
| **Instance** | `{{ minio_cluster }}-{{ minio_seq }}` | `minio-1`, `minio-2`, `minio-3`, `minio-4` |
{.full-width}

MINIO uses the existing hostname or IP address as the host node identity. It does not assign another identity. [**`minio_node`**](/docs/minio/param#minio_node) generates internal Silo node names for cluster discovery in `/etc/hosts`. These names do not identify the host node.

Roles find members throughout the inventory by `minio_cluster`. The Ansible group name can differ from the cluster name. The retained backend selector `minio_type` currently must be `silo`.


----------------

## Core Configuration Parameters

These parameters are also critical for Silo cluster configuration:

| Parameter                                                |   Type   | Description                           |
|:---------------------------------------------------------|:--------:|:--------------------------------------|
| [**`minio_type`**](/docs/minio/param#minio_type)         |  `enum`  | Retained selector; currently only `silo` |
| [**`minio_data`**](/docs/minio/param#minio_data)         |  `path`  | Data directory, use `{x...y}` for multi-drive |
| [**`minio_node`**](/docs/minio/param#minio_node)         | `string` | Node name pattern for multi-node deployment |
| [**`minio_domain`**](/docs/minio/param#minio_domain)     | `string` | Service domain, defaults to `sss.pigsty` |
{.full-width}

These parameters determine `minio_volumes`, which the role writes to Silo's `MINIO_VOLUMES`:

- **SNSD**: Direct `minio_data` value, e.g., `/data/minio`
- **SNMD**: Expanded `minio_data` directories, e.g., `/data{1...4}`
- **MNMD**: Combined `minio_node` and `minio_data`, e.g., `https://minio-{1...4}.pigsty:9000/data{1...4}`


----------------

## Ports & Services

Each object-storage instance listens on the following ports:

| Port  | Parameter                                                        | Purpose              |
|:------|:-----------------------------------------------------------------|:---------------------|
| 9000  | [**`minio_port`**](/docs/minio/param#minio_port)                 | S3 API service port  |
| 9001  | [**`minio_admin_port`**](/docs/minio/param#minio_admin_port)     | Web admin console port |
{.full-width}

MINIO enables HTTPS by default through [**`minio_https`**](/docs/minio/param#minio_https). For the default pgBackRest S3 repository configuration, keep HTTPS enabled and install the Pigsty CA correctly.

Clients can reach a multi-node Silo cluster through **any member**. For a stable entry point, use a load balancer such as HAProxy with a VIP.


----------------

## Resource Provisioning

After deployment, Pigsty creates these Silo resources. [**`minio_provision`**](/docs/minio/param#minio_provision) controls this step:

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

These public [**default credentials**](/docs/concept/sec/compliance#default-credentials-checklist) are only for demonstrations and local development. Replace them before production deployment.

`pgbackrest` serves PostgreSQL cluster backups. The reserved users `s3user_meta` and `s3user_data` are not actively used.


----------------

## Monitoring Label System

Pigsty uses these [**identity parameters**](#identity-parameters) to identify object storage entities. This example shows a Silo availability series:

```text
minio_up{cls="minio", ins="minio-1", ip="10.10.10.10", job="minio"}
minio_up{cls="minio", ins="minio-2", ip="10.10.10.11", job="minio"}
minio_up{cls="minio", ins="minio-3", ip="10.10.10.12", job="minio"}
minio_up{cls="minio", ins="minio-4", ip="10.10.10.13", job="minio"}
```

`cls`, `ins`, and `ip` identify the cluster name, instance name, and node IP. For monitoring compatibility, `job="minio"` remains unchanged. The current backend label is `flavor=silo`. See the [**metric list**](/docs/minio/metric) for details.
