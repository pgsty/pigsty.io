---
title: Prepare Resources for Serious Deployment
linkTitle: Preparation
weight: 360
description: Production deployment preparation including hardware, nodes, disks, network, VIP, domain, software, and filesystem requirements.
icon: fa-solid fa-server
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty runs on nodes (physical machines or VMs). This document covers the planning and preparation required for deployment.


----------------

## Node

Pigsty currently runs on `Linux` kernel with `x86_64` / `aarch64` architecture.
A "**node**" refers to an SSH [**accessible**](/docs/deploy/admin#check-accessibility) resource that provides a bare Linux OS environment.
It can be a physical machine, virtual machine, or a systemd-enabled container equipped with `systemd`, `sudo`, and `sshd`.

Deploying Pigsty requires at least **1** node. You can prepare more and deploy everything in one pass via [**playbooks**](/docs/setup/playbook#playbooks), or add nodes later.
The minimum spec requirement is `1C1G`, but at least `1C2G` is recommended. Higher is better—no upper limit. **Parameters are auto-tuned based on available resources**.

The number of nodes you need depends on your requirements. See [**Architecture Planning**](/docs/deploy/planning) for details.
Although a [**single-node deployment**](/docs/setup/install) with [**external backup**](/docs/pgsql/backup/repository) provides reasonable recovery guarantees,
we recommend multiple nodes for production. A functioning [**HA setup**](/docs/deploy/planning#three-node-setup) requires at least **3** nodes; **2** nodes provide [**Semi-HA**](/docs/deploy/planning#two-node-setup).



--------

## Disk

Pigsty uses **`/data`** as the default data directory. If you have a dedicated data disk, mount it there.
Use `/data1`, `/data2`, `/dataN` for additional disk drives.

To use a different data directory, configure these parameters:

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

The native MySQL 8.4 pilot module does not currently expose a data-directory parameter and always uses `/var/lib/mysql`.

--------

## Filesystem

You can use any supported Linux filesystem for data disks. For production, we recommend **`xfs`**.

`xfs` is a Linux standard with excellent performance and CoW capabilities for instant large database cluster cloning. Multi-drive Silo deployments require `xfs`.
`ext4` is another viable option with a richer data recovery tool ecosystem, but lacks CoW.
`zfs` provides RAID and snapshot features but with significant performance overhead and requires separate installation.

Choose among these three based on your needs. Avoid NFS for database services.

Pigsty assumes `/data` is owned by `root:root` with `755` permissions.
Admins can assign ownership for first-level directories; each application runs with a dedicated user in its subdirectory.
See [**FHS**](/docs/ref/fhs) for the directory structure reference.



----------------

## Network

Pigsty defaults to online installation mode, requiring outbound Internet access.
[**Offline installation**](/docs/setup/offline/) eliminates the Internet requirement.

Internally, Pigsty requires a **static network**. Assign a **fixed** IPv4 address to each node.

The IP address serves as the node's **unique identifier**—the primary IP bound to the main network interface for **internal** communications.

For [**single-node deployment**](/docs/setup/install) without a fixed IP, use the loopback address `127.0.0.1` as a workaround.

> [!CAUTION] Never use Public IP as identifier
> Using public IP addresses as node identifiers can cause security and connectivity issues. Always use internal IP addresses.



----------------

## VIP

Pigsty supports optional L2 VIP for NODE clusters (`keepalived`) and PGSQL clusters (`vip-manager`).

To use L2 VIP, you must explicitly assign an L2 VIP address for each node/database cluster.
This is straightforward on your own hardware but may be challenging in public cloud environments.

> [!WARNING] L2 VIP requires L2 Networking
> To use optional Node VIP and PG VIP features, ensure all nodes are on the same L2 network.


----------------

## CA

Pigsty generates a self-signed [**CA infrastructure**](/docs/concept/sec/ca/) for each deployment, issuing all encryption certificates.

If you have an existing enterprise CA or self-signed CA, you can use it to issue the certificates Pigsty requires.


----------------

## Domain

Pigsty uses a local static domain `i.pigsty` by default for WebUI access. This is optional—IP addresses work too.

For production, domain names are recommended to enable HTTPS and encrypted data transmission.
Domains also allow multiple services on the same port, differentiated by domain name.

For **Internet-facing** deployments, use public DNS providers (Cloudflare, AWS Route53, etc.) to manage resolution.
Point your domain to the Pigsty node's **public IP address**.
For **LAN/office network** deployments, use internal DNS servers with the node's **internal IP address**.

For local-only access, add the following to `/etc/hosts` on machines accessing the Pigsty WebUI:

```bash
10.10.10.10 i.pigsty    # Replace with your domain and Pigsty node IP
```



--------

## Linux

Pigsty runs on **Linux**. It currently targets **16** platform combinations: eight distribution major versions across two architectures. See the [**Compatible OS List**](/docs/ref/linux/).

We recommend **Rocky Linux 9.8 / 10.2**, **Debian 12.15 / 13.6**, or **Ubuntu 22.04.5 / 24.04.4 / 26.04.0** as default options.

On macOS and Windows, use VM software or Docker systemd images to run Pigsty.

We **strongly recommend** a fresh OS installation. If your server already runs Nginx, PostgreSQL, or similar services, consider deploying on new nodes.

> [!WARNING] Use the same OS version on all nodes
> For multi-node deployments, ensure all nodes use the same Linux distribution, architecture, and version. Heterogeneous deployments may work but are unsupported and may cause unpredictable issues.

--------

## Locale

We recommend setting `en_US` as the primary OS language, or **at minimum ensuring this locale is available**, so PostgreSQL logs are in English.

Some distributions (e.g., Debian) may not provide the `en_US` locale by default. Enable it with:

```bash
localedef -i en_US -f UTF-8 en_US.UTF-8
localectl set-locale LANG=en_US.UTF-8
```

For PostgreSQL, we strongly recommend using the built-in `C.UTF-8` collation (PG 17+) as the default.

The [**configuration wizard**](/docs/setup/playbook#configure) automatically sets `C.UTF-8` as the collation when PG version and OS support are detected.




----------------

## Ansible

Pigsty uses [**Ansible**](/docs/setup/playbook/) to control all managed nodes from the admin node.
See [**Installing Ansible**](/docs/setup/playbook#install-ansible) for details.

Pigsty installs Ansible on Infra nodes by default, making them usable as admin nodes (or backup admin nodes).
For [**single-node deployment**](/docs/setup/install), the installation node serves as both the [**admin node**](/docs/concept/arch/node#admin-node) running Ansible and the [**INFRA node**](/docs/concept/arch/node#infra-node) hosting infrastructure.



----------------

## Pigsty

You can [**install**](/docs/deploy/install#install) the current default Pigsty source with:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/get | bash;
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/get | bash;
```

To [**install**](/docs/deploy/install#install) a specific version, use the **`-s <version>`** parameter:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/get | bash -s <version>  # Install a specific version (current stable: {{< param stable_version >}})
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/get | bash -s <version>  # Install a specific version (current stable: {{< param stable_version >}})
```

To [**install**](/docs/deploy/install#install) the latest beta version:

```bash {tab="pigsty.io (Global)" group="pigstyio-global-pigstycc-china" value="pigstyio-global"}
curl -fsSL https://repo.pigsty.io/beta | bash;
```

```bash {tab="pigsty.cc (China)" value="pigstycc-china"}
curl -fsSL https://repo.pigsty.cc/beta | bash;
```

For developers or the latest development version, clone the repository directly:

```bash
git clone https://github.com/pgsty/pigsty.git;
cd pigsty; git checkout <tag>  # Use a released version (current stable tag: {{< param stable_version >}})
```

If your environment lacks Internet access, download the source tarball from [**GitHub Releases**](https://github.com/pgsty/pigsty/releases/) or the Pigsty repository:

```bash
wget https://repo.pigsty.io/src/pigsty-v<version>.tgz
wget https://repo.pigsty.cc/src/pigsty-v<version>.tgz
```
