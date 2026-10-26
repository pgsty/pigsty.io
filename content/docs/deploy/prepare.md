---
title: Prepare Resources for Serious Deployment
linkTitle: Preparation
weight: 360
description: Production deployment preparation including hardware, nodes, disks, network, VIP, domain, software, and filesystem requirements.
icon: fa-solid fa-server
module: [PIGSTY]
categories: [Tutorial]
---

Pigsty runs on nodes, which can be physical machines or virtual machines.
This document describes the planning and preparation for deployment.

## Node

Pigsty runs on the `Linux` kernel with `x86_64` or `aarch64` architecture.
A **node** supplies a bare Linux operating system that you can [access through SSH](/docs/deploy/admin#check-accessibility).
It can be a physical machine, virtual machine, or container with systemd support.
The node must have `systemd`, `sudo`, and `sshd`.

A deployment requires at least **1** node.
You can deploy to multiple nodes in one [playbook run](/docs/setup/playbook/#playbook-list), or add nodes later.
The minimum resources are `1C1G`; we recommend at least `1C2G`.
There is no upper resource limit.
Pigsty automatically tunes parameters for the available resources.

Select the node count for your requirements; see [Architecture Planning](/docs/deploy/planning).
A [single-node deployment](/docs/setup/install) with [external backups](/docs/pgsql/backup/repository) provides recovery protection.
For production, we recommend multiple nodes.
A working [HA deployment](/docs/deploy/planning#three-node-setup) requires at least **3** nodes.
A **2**-node deployment provides [Semi-HA](/docs/deploy/planning#two-node-setup).

## Disk

Pigsty uses **`/data`** as the default data directory.
If you have a dedicated data disk, mount it at `/data`.
Use `/data1`, `/data2`, and `/dataN` for additional disks.

To change a data directory, set the applicable parameter:

| Name                                                   | Description              | Default            |
|--------------------------------------------------------|--------------------------|--------------------|
| [**`node_data`**](/docs/node/param#node_data)          | Node main data directory | `/data`            |
| [**`pg_fs_main`**](/docs/pgsql/param#pg_fs_main)       | PG main data directory   | `/data/postgres`   |
| [**`pg_fs_backup`**](/docs/pgsql/param#pg_fs_backup)   | PG backup directory      | `/data/backups`    |
| [**`etcd_data`**](/docs/etcd/param#etcd_data)          | ETCD data directory      | `/data/etcd`       |
| [**`infra_data`**](/docs/infra/param#infra_data)       | Infra data directory     | `/data/infra`      |
| [**`nginx_data`**](/docs/infra/param#nginx_data)       | Nginx data directory     | `/data/nginx`      |
| [**`minio_data`**](/docs/minio/param#minio_data)       | Silo data directory      | `/data/minio`      |
| [**`redis_fs_main`**](/docs/redis/param#redis_fs_main) | Redis data directory     | `/data/redis`      |
| [**`kafka_data`**](/docs/kafka/param#kafka_data)       | Kafka data directory     | `/data/kafka`      |
{.full-width}

The native MySQL 8.4 pilot module always uses `/var/lib/mysql`.
It does not currently expose a data-directory parameter.

## Filesystem

You can use any supported Linux filesystem for data disks.
For production, we recommend **`xfs`**.

`xfs` is a standard Linux filesystem with good performance.
Its copy-on-write (CoW) support permits instant cloning of large database clusters.
Silo deployments with multiple drives require `xfs`.

`ext4` is another supported choice.
It has more data recovery tools but does not support CoW.
`zfs` supplies RAID and snapshots, but adds significant performance overhead and requires separate installation.

Select the filesystem for your requirements.
Avoid NFS for database services.

Pigsty expects `root:root` ownership and `755` permissions on `/data`.
Administrators can assign ownership to directories directly under `/data`.
Each application runs with a dedicated account in its own subdirectory.
See [FHS](/docs/ref/fhs) for the directory structure.

## Network

The default online installation requires outbound Internet access.
[Offline installation](/docs/setup/offline/) does not require Internet access.

Assign a fixed IPv4 address to each node for internal communication.
Pigsty uses this primary address on the main network interface as the unique node identifier.
If a [single-node deployment](/docs/setup/install) has no fixed IP address, use `127.0.0.1`.

> [!CAUTION] Use an internal node address
> Public IP addresses as node identifiers can cause security and connection problems.
> Always use internal IP addresses for node identifiers.

## VIP

Pigsty supports optional Layer 2 virtual IP addresses (L2 VIPs).
NODE clusters use `keepalived`; PGSQL clusters use `vip-manager`.

To use this feature, assign an L2 VIP address to each node or database cluster.
This is usually straightforward on your own hardware.
Public cloud networks can make this configuration difficult.

> [!WARNING] L2 VIP requires an L2 network
> For Node VIP or PG VIP, all participating nodes must use the same L2 network.

## CA

Pigsty creates a self-signed [certificate authority (CA)](/docs/concept/sec/ca/) for each deployment.
The CA issues the encryption certificates.

You can instead use an existing enterprise CA or self-signed CA to issue the required certificates.

## Domain

Pigsty uses the local static domain `i.pigsty` for the Web UI by default.
You can also use the node IP address.

For production, we recommend a domain name to enable HTTPS and encrypted data transfer.
Domain names also let multiple services share one port.

For Internet access, use a public DNS provider, such as Cloudflare or AWS Route53.
Point the domain to the node's public IP address.
For LAN or office access, use internal DNS with the node's internal IP address.

For local access, add this entry to `/etc/hosts` on each computer that accesses the Web UI:

```bash
10.10.10.10 i.pigsty    # Replace with your domain and Pigsty node IP
```

## Linux

Pigsty runs on **Linux**. Source platform definitions cover eight distribution major versions and two architectures, or **16** platforms. EL8 is in the compatibility transition range; the recommended baseline comprises the other seven major versions and 14 platforms.
See the [Compatible OS List](/docs/ref/linux/).

The recommended operating system versions are:

- **Rocky Linux 9.8 / 10.2**.
- **Debian 12.15 / 13.6**.
- **Ubuntu 22.04.5 / 24.04.4 / 26.04.0**.

On macOS or Windows, use a virtual machine or a Docker image with systemd.

We strongly recommend a fresh operating system installation.
If the server already runs Nginx, PostgreSQL, or similar services, consider a new node.

> [!WARNING] Use the same operating system on all nodes
> In a multi-node deployment, use the same Linux distribution, architecture, and version on every node.
> Mixed environments can work, but they are unsupported and can cause unpredictable problems.

## Locale

We recommend `en_US` as the primary operating system language so PostgreSQL writes logs in English.
At minimum, make sure that this locale is available.

Some distributions, including Debian, do not always supply `en_US` by default.
Use these commands to enable it:

```bash
localedef -i en_US -f UTF-8 en_US.UTF-8
localectl set-locale LANG=en_US.UTF-8
```

For PostgreSQL 17 and later, we strongly recommend the built-in `C.UTF-8` collation as the default.
The [configuration wizard](/docs/setup/config/) selects `C.UTF-8` when the PostgreSQL version and operating system support it.

## Ansible

Pigsty uses [Ansible](/docs/setup/playbook/) on the administration node to control all managed nodes.
See [Installing Ansible](/docs/setup/playbook#install-ansible).

By default, Pigsty installs Ansible on INFRA nodes.
These nodes can serve as administration nodes or backup administration nodes.
In a [single-node deployment](/docs/setup/install), one node has both roles.
It is the [administration node](/docs/concept/arch/node#admin-node) that runs Ansible and the [INFRA node](/docs/concept/arch/node#infra-node) that hosts infrastructure.

## Pigsty

Use one of these commands to [install](/docs/deploy/install#install) the current default Pigsty source:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/get | bash;
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/get | bash;
```

To [install](/docs/deploy/install#install) a specific version, supply **`-s <version>`**:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/get | bash -s <version>  # Install a specific version (current stable: {{< param stable_version >}})
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/get | bash -s <version>  # Install a specific version (current stable: {{< param stable_version >}})
```

To [install](/docs/deploy/install#install) the latest beta version, use one of these commands:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/beta | bash;
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/beta | bash;
```

For development, you can clone the repository directly:

```bash
git clone https://github.com/pgsty/pigsty.git;
cd pigsty; git checkout <tag>  # Use a released version (current stable tag: {{< param stable_version >}})
```

For an environment without Internet access, obtain the source tarball from [GitHub Releases](https://github.com/pgsty/pigsty/releases/) or a Pigsty repository:

```bash
wget https://repo.pigsty.io/src/pigsty-v<version>.tgz
wget https://repo.pigsty.cc/src/pigsty-v<version>.tgz
```
