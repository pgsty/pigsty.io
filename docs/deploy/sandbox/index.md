# Sandbox

> 4-node sandbox environment for learning, testing, and demonstration

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty supplies a standard 4-node sandbox for learning, testing, and feature demonstrations.
It uses fixed IP addresses and predefined identity values to make the demonstrations repeatable.

## Description

The default sandbox has 4 nodes and uses the [`ha/full.yml` template](https://github.com/pgsty/pigsty/blob/main/conf/ha/full.yml).

| ID |   IP Address   |   Node   | PostgreSQL  |   INFRA   |   ETCD   |   MINIO   |
|:--:|:--------------:|:--------:|:-----------:|:---------:|:--------:|:---------:|
| 1  | `10.10.10.10`  |  `meta`  | `pg-meta-1` | `infra-1` | `etcd-1` | `minio-1` |
| 2  | `10.10.10.11`  | `node-1` | `pg-test-1` |           |          |           |
| 3  | `10.10.10.12`  | `node-2` | `pg-test-2` |           |          |           |
| 4  | `10.10.10.13`  | `node-3` | `pg-test-3` |           |          |           |

This example shows the sandbox configuration:

```yaml
all:
  children:
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq:  1 } }, vars: { etcd_cluster: etcd } }
    minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }

    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:  { pg_cluster: pg-meta }

    pg-test:
      hosts:
        10.10.10.11: { pg_seq: 1, pg_role: primary }
        10.10.10.12: { pg_seq: 2, pg_role: replica }
        10.10.10.13: { pg_seq: 3, pg_role: replica }
      vars: { pg_cluster: pg-test }

  vars:
    version: v4.5.0
    admin_ip: 10.10.10.10
    region: default
    pg_version: 18
```

![pigsty-sandbox](/img/pigsty/sandbox.png)

### PostgreSQL Clusters

The `meta` node has a PostgreSQL cluster named `pg-meta` with one instance:

```bash
10.10.10.10 meta pg-meta-1
10.10.10.2  pg-meta          # Optional L2 VIP
```

The other three nodes host the `pg-test` HA cluster with 3 instances:

```bash
10.10.10.11 node-1 pg-test-1
10.10.10.12 node-2 pg-test-2
10.10.10.13 node-3 pg-test-3
10.10.10.3  pg-test          # Optional L2 VIP
```

The sandbox has two optional L2 VIPs.
Each VIP binds to the primary instance of its cluster, `pg-meta` or `pg-test`.

### Infrastructure

The `meta` node also hosts these services:

- A single-node `etcd` cluster that supplies the distributed configuration store (DCS) for PostgreSQL HA.
- A single-node Silo `minio` cluster that supplies S3-compatible object storage through the MINIO module.

```bash
10.10.10.10 etcd-1
10.10.10.10 minio-1
```

The `ha/full.yml` template also defines three Redis example topologies and enables Docker on the INFRA node.
The standard `deploy.yml` playbook does not deploy Redis or Docker.
When required, run `./redis.yml` and `./docker.yml` separately.

## Creating Sandbox

Use [Vagrant](/docs/deploy/vagrant/) to create a local sandbox from the supplied templates.
Use [OpenTofu](/docs/deploy/terraform/) to create a cloud sandbox.

### Local Sandbox (Vagrant)

The local sandbox uses VirtualBox or libvirt to create virtual machines on your Mac or PC.
It has no cloud resource charges.
For the complete 4-node sandbox, provide at least **4 CPU cores** and **8GB memory**.

```bash
cd ~/pigsty/vagrant
make full       # Create 4-node sandbox with default Ubuntu 24.04 image
make full9      # Create 4-node sandbox with RockyLinux 9
make full12     # Create 4-node sandbox with Debian 12
make full24     # Create 4-node sandbox with Ubuntu 24.04
make full26     # Create 4-node sandbox with Ubuntu 26.04
```

The current Vagrant configuration uses `cloud-image/*` boxes from [Vagrant Cloud](https://portal.cloud.hashicorp.com/vagrant/discover/cloud-image).
See [Supported Images](/docs/deploy/vagrant/#supported-images) for available images, pinned versions, and architectures.
If the source does not pin a box version, Vagrant selects its currently available version.

### Cloud Sandbox (OpenTofu)

The cloud sandbox uses public cloud APIs to create virtual machines.
You can create and remove these resources for short tests and pay for their use.

Use [`spec/aliyun-full.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-full.tf) to create a 4-node sandbox on Alibaba Cloud:

```bash
cd ~/pigsty/terraform
cp spec/aliyun-full.tf terraform.tf
tofu init
tofu plan
tofu apply
```

See the [OpenTofu guide](/docs/deploy/terraform/) for details.

These steps use OpenTofu directly. Before using `make` or `./ssh`, check whether the helper scripts invoke `tofu` or `terraform`. See [OpenTofu Quick Start](/docs/deploy/terraform/#quick-start).

## Other Specs

Pigsty also supplies other environment specifications.
Run these Makefile shortcuts from `~/pigsty/vagrant`:

```bash
cd ~/pigsty/vagrant
```

### Single Node Devbox (meta)

Use the 1-node environment for the quick start, development, and testing:

```bash
make meta       # Create single-node devbox
```

### Two Node Environment (dual)

Use the 2-node environment to test replication between a primary and a replica:

```bash
make dual       # Create 2-node environment
```

### Three Node Environment (trio)

Use the 3-node environment to test basic high availability:

```bash
make trio       # Create 3-node environment
```

### Production Simulation (simu)

Use the 20-node simulation to test a complete production environment:

```bash
make simu       # Create 20-node production simulation environment
```

This environment includes these nodes:

- 3 infrastructure nodes: `meta1`, `meta2`, and `meta3`.
- 2 HAProxy proxy nodes.
- 4 MINIO (Silo) nodes.
- 5 ETCD nodes.
- 6 PostgreSQL nodes in 2 clusters with 3 nodes each.
