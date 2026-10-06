# Module: MINIO

> Deploy Silo S3-compatible object storage with Pigsty's MINIO compatibility module and use it as a PostgreSQL backup repository.

---

LLMS index: [llms.txt](/llms.txt)

---

`MINIO` is Pigsty's compatibility module name for S3-compatible object storage. The current role deploys [**Silo**](https://github.com/pgsty/silo), and [`minio_type`](/docs/minio/param#minio_type) accepts only `silo`.

Silo preserves the MinIO S3/Admin APIs, `MINIO_*` environment variables, disk format, and `mcli` client interface, and can serve as a PostgreSQL [**pgBackRest backup repository**](/docs/pgsql/backup/repository/). The module name, parameter prefix, and monitoring `job` retain the `MINIO` / `minio_*` namespace for compatibility with existing inventories and operational entry points.

> [!IMPORTANT]
> `minio` and `rustfs` are no longer valid `minio_type` values and fail during identity validation. Before upgrading a MinIO cluster managed by an older release, complete a backup, validate MinIO-to-Silo compatibility, and rehearse rollback. Do not treat package replacement as an already-accepted data migration. External MinIO, RustFS, or other S3 services can still serve as pgBackRest repositories, but the current MINIO role does not manage them.

MINIO is an [**optional module**](/docs/ref/module). When using it as a pgBackRest S3 repository, deploy it before the [`PGSQL`](/docs/pgsql) module. TLS certificates and the host baseline come from the [`NODE`](/docs/node) / CA capabilities.


--------

## Quick Start

The following inventory explicitly defines a single-node Silo cluster. Both `minio_cluster` and `minio_seq` are required identity parameters; production inventories should explicitly set `minio_type: silo`.

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
  vars:
    minio_cluster: minio
    minio_type: silo
```

```bash
./minio.yml -l minio    # Deploy Silo on the minio group
```

The inventory group name may differ from `minio_cluster`. Roles calculate actual membership from each host's `minio_cluster` identity. Do not define `minio_cluster` in `all.vars`, or every host will be treated as an object-storage member.

After deployment, use these entry points:

- **S3 API**: `https://sss.pigsty:9000` (configure DNS or `/etc/hosts` explicitly for the domain)
- **Administration UI**: `https://<node-ip>:9001`
- **Command line**: `mcli ls sss/` (a preconfigured alias is written on the admin node and cluster members)

The default administrator credentials are `minioadmin` / `S3User.MinIO`. They are for demos only and must be changed before production deployment.


--------

## Deployment Modes

Silo uses the following Pigsty inventory deployment modes:

| Mode | Description | Use Cases |
|:---|:---|:---|
| [**Single-Node Single-Disk**](/docs/minio/config#single-node-single-disk) (SNSD) | Single node, one data directory | Development, testing, demos |
| [**Single-Node Multi-Disk**](/docs/minio/config#single-node-multi-disk) (SNMD) | Single node, multiple disks | Resource-constrained small deployments |
| [**Multi-Node Single-Disk**](/docs/minio/config#multi-node-single-disk) (MNSD) | Multiple nodes, one data drive per node | Compact HA deployments |
| [**Multi-Node Multi-Disk**](/docs/minio/config#multi-node-multi-disk) (MNMD) | Multiple nodes with multiple disks per node | **Recommended for production** |
{.full-width}

`minio_data` is always a directory path. Distributed and multi-drive deployments require these paths to reside on non-root, persistent filesystems. For example, `/data/minio` may be a subdirectory of a separately mounted `/data` filesystem, but not merely a directory on the root filesystem.

The multi-pool expansion semantics of `minio_volumes` come from the MinIO-compatible interface retained by Silo. Validate operations and rollback against the actual Silo version before production scaling.


--------

## Core Capabilities

- **Compatible interface**: Silo retains `minio_*` parameters, the S3 port, TLS, and the `mcli` provisioning flow
- **HA topologies**: Supports single-node, multi-node single-drive, and multi-node multi-drive deployments, with multiple independent clusters in one inventory
- **Backup repository**: Can serve as a remote pgBackRest S3 repository
- **Security baseline**: Enables HTTPS by default and uses the Pigsty CA to issue a certificate for every instance
- **Observability**: Scrapes Silo metrics through `/minio/metrics/v3` and provides Grafana dashboards and alerts
- **Operational compatibility**: Module name, target directories, monitoring labels, and client aliases retain the MINIO namespace

---

Section pages:

- [Usage](/docs/minio/usage/): Quickly use Silo deployed by the MINIO module through mcli, rclone, and pgBackRest.
- [Configuration](/docs/minio/config/): Deploy Silo with the MINIO module and configure reliable S3 access in single-node, multi-drive, or multi-node modes.
- [Parameters](/docs/minio/param/): The MINIO module exposes 22 parameters for deploying, configuring, and removing Silo object-storage clusters.
- [Playbook](/docs/minio/playbook/): Deploy or remove Silo object-storage clusters with the built-in Ansible playbooks.
- [Administration](/docs/minio/admin/): Create, remove, upgrade, expand, shrink, and recover Silo object-storage clusters.
- [Monitoring and Alerting](/docs/minio/monitor/): How Pigsty monitors Silo, including its Metrics V3 endpoint, Grafana dashboards, and alert rules.
- [Metrics](/docs/minio/metric/): The Metrics V3 interface, key metrics, and stable labels used by the Pigsty MINIO module to monitor Silo.
- [FAQ](/docs/minio/faq/): Frequently asked questions about the Pigsty MINIO object storage module
