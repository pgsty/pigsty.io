---
title: MINIO Cluster Model
linkTitle: Object Storage Cluster
weight: 50
description: The cluster, instance, and node identity model used when Pigsty's MINIO module deploys Silo.
icon: fa-solid fa-boxes-stacked
module: [MINIO]
categories: [Concept]
---


MINIO is Pigsty's compatibility module name for object storage. The current v4.5.0 source deploys Silo through [`minio_type: silo`](/docs/minio/param#minio_type) and organizes a group of object-storage **instances** into a **cluster**.

Each cluster is an **autonomous** S3-compatible object-storage unit consisting of at least one instance and exposing service through the S3 API port.

There are three core entities in Pigsty's MINIO module:

- **Cluster**: An autonomous object-storage service unit serving as the top-level namespace for other entities.
- **Instance**: A single Silo server process running on a node and managing local disks.
- **Node**: A hardware resource abstraction running Linux + Systemd environment, implicitly declared.

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

SNSD mode can use a regular directory for quick experimentation. Multi-drive Silo deployments should use real disk mount points or the service will refuse to start.


----------------

## Examples

The following example explicitly selects the current default Silo backend and defines a four-node multi-drive cluster:

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

This config fragment defines a four-node Silo cluster with four disks per node. Instance identifiers retain the MINIO module's compatibility naming:

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

Pigsty uses the [**`MINIO`**](/docs/minio/param#minio) parameter group to assign deterministic identities to each MinIO module entity. Two parameters are required:

| Parameter                                                  |   Type   | Level | Description                     | Format                                           |
|:-----------------------------------------------------------|:--------:|:-----:|:--------------------------------|:-------------------------------------------------|
| [**`minio_cluster`**](/docs/minio/param#minio_cluster)     | `string` | Cluster | Object-storage cluster name, required | Valid non-empty name, no default                 |
| [**`minio_seq`**](/docs/minio/param#minio_seq)             |  `int`   | Instance | Object-storage instance number, required | Natural number, starting from 1, unique within cluster |
{.full-width}

With cluster name defined at cluster level and instance number assigned at instance level, Pigsty automatically generates unique identifiers for each entity based on rules:

| Entity       | Generation Rule                       | Example                                 |
|--------------|:--------------------------------------|:----------------------------------------|
| **Instance** | `{{ minio_cluster }}-{{ minio_seq }}` | `minio-1`, `minio-2`, `minio-3`, `minio-4` |
{.full-width}

The MINIO module does not assign additional identity to host nodes; nodes are identified by their existing hostname or IP address.
The [**`minio_node`**](/docs/minio/param#minio_node) parameter generates node names for internal Silo cluster use (written to `/etc/hosts` for cluster discovery), not host-node identity.

Roles locate actual members across the entire inventory by `minio_cluster`; the Ansible group name does not need to match the cluster name. `minio_type` is a retained backend selector and currently must be `silo`.


----------------

## Core Configuration Parameters

Beyond identity parameters, the following parameters are critical for Silo cluster configuration:

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

The MINIO module enables HTTPS by default, controlled by [**`minio_https`**](/docs/minio/param#minio_https). Keep HTTPS enabled with the default pgBackRest S3 repository configuration and install the Pigsty CA correctly.

Clients can reach a multi-node Silo cluster through **any member**. For a stable entry point, use a load balancer such as HAProxy with a VIP.


----------------

## Resource Provisioning

After Silo cluster deployment, Pigsty automatically creates the following resources (controlled by [**`minio_provision`**](/docs/minio/param#minio_provision)):

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

These passwords are publicly documented [**default credentials**](/docs/concept/sec/compliance#default-credentials-checklist), intended only for demonstrations and local development. Replace them before production deployment.

`pgbackrest` is used for PostgreSQL cluster backups; `s3user_meta` and `s3user_data` are reserved users not actively used.


----------------

## Monitoring Label System

Pigsty uses the [**identity parameters**](#identity-parameters) above to identify object-storage entities. A Silo availability series looks like this:

```text
minio_up{cls="minio", ins="minio-1", ip="10.10.10.10", job="minio"}
minio_up{cls="minio", ins="minio-2", ip="10.10.10.11", job="minio"}
minio_up{cls="minio", ins="minio-3", ip="10.10.10.12", job="minio"}
minio_up{cls="minio", ins="minio-4", ip="10.10.10.13", job="minio"}
```

Here `cls`, `ins`, and `ip` identify the cluster name, instance name, and node IP. Compatible monitoring naming keeps `job="minio"`, while the current backend label is `flavor=silo`. See the [**metric list**](/docs/minio/metric) for details.
