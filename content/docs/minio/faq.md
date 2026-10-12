---
title: FAQ
weight: 3680
description: Frequently asked questions about the Pigsty MINIO object storage module
icon: fa-solid fa-circle-question
module: [MINIO]
categories: [Reference]
---


----------------

## Which backend does the MINIO module deploy by default?

In v4.5.0, the current source deploys only Silo. The only valid `minio_type` value is `silo`. MINIO remains the module name for compatibility. This name does not indicate that the MinIO server is running.

- Explicitly set `minio_type: silo` for new clusters.
- Both `minio_type: minio` and `minio_type: rustfs` fail during identity validation.
- External MinIO, RustFS, or other S3 services can still serve as pgBackRest repositories. The current MINIO role does not manage them.
- Before upgrading a MinIO cluster managed by an older release, validate the MinIO-to-Silo data compatibility, backup, and rollback procedure.


----------------

## Why does the Pigsty repository still carry MinIO or RustFS packages?

Upstream MinIO [switched to source-only distribution on 2025-10-15](https://github.com/minio/minio/commit/9e49d5e). It [put the repository in maintenance mode on 2025-12-03](https://github.com/minio/minio/commit/27742d4) and [archived it on 2026-04-25](https://github.com/minio/minio).

Source-only distribution ended publication of all new prebuilt community binaries, including RPM and DEB packages.

Pigsty therefore previously maintained its own [MinIO fork](https://github.com/pgsty/minio) and packages. MinIO [**CVE-2025-62506**](https://nvd.nist.gov/vuln/detail/CVE-2025-62506) affects releases before `RELEASE.2025-10-15T17-29-55Z`. That release fixes the vulnerability. Both Pigsty's later MinIO fork and the current Silo code include the fix.

The Pigsty Infra repository still provides MinIO/RustFS RPM and DEB packages and their build scripts. However, the v4.5 MINIO module does not support those backends. The current role accepts only Silo. Deploy and maintain other services separately.


----------------

## Why is HTTPS enabled for object storage by default?

Pigsty's default pgBackRest `minio` repository configuration uses HTTPS to protect backup traffic. It verifies the certificate through `/etc/pki/ca.crt`.

pgBackRest also permits HTTP. If you explicitly select HTTP, update the TLS options in `pgbackrest_repo` and disable [`minio_https`](/docs/minio/param#minio_https). The server-side switch alone is insufficient.


----------------

## Getting an invalid certificate error when accessing Silo from containers?

Pigsty's private CA issues the default object-storage server certificate. The server certificate is not self-signed. Container images usually do not trust the private CA. Thus, clients such as `mcli`, rclone, and AWS CLI report an invalid certificate chain.

For a Node.js application, mount the Pigsty CA certificate in the container. Specify its path with `NODE_EXTRA_CA_CERTS`:

```yaml
    environment:
      NODE_EXTRA_CA_CERTS: /etc/pki/ca.crt
    volumes:
      - /etc/pki/ca.crt:/etc/pki/ca.crt:ro
```

If Silo does not serve as a pgBackRest repository, you can disable HTTPS and use HTTP. Assess the risk of cleartext transport.


----------------

## Can a Silo data path be a regular directory?

`minio_data` takes a directory path, not a raw disk device. `/data/minio` can be a regular subdirectory. For multiple nodes or drives, its backing storage must be an independent, persistent, non-root filesystem.

- If `/data` is mounted from a separate local disk, cloud volume, partition, or LVM logical volume, `/data/minio` is valid.
- If `/data/minio` resides on the root filesystem, distributed Silo identifies it as a root drive. It rejects the path with `drive is part of root drive, will not be used`.
- Every path in a single-node multi-drive deployment should map to a separate filesystem. Multiple directories on one drive do not emulate multiple drives.
- Only [single-node single-disk](/docs/minio/config#single-node-single-disk) may use a regular directory directly on the root filesystem, and only for development, testing, or non-critical use.

Inspect the backing mounts with:

```bash
findmnt -T /
findmnt -T /data/minio
```

See [Configuration: Storage Paths and Mounts](/docs/minio/config#storage-paths-and-mounts) for details and [Multi-Node Single-Disk](/docs/minio/config#multi-node-single-disk) for the three-node topology.



----------------

## How do I add new members to an existing Silo cluster?

> Plan Silo cluster capacity before deployment because adding a storage pool requires a global restart.

Scale the cluster by adding a group of server nodes as a new storage pool.

You cannot directly change the node or disk count of an existing storage pool. To expand, add a new pool.

For the procedure, see Pigsty's [**Expand Cluster**](/docs/minio/admin#expand-cluster) guide. The upstream [**Expand MinIO Deployment**](https://min.io/docs/minio/linux/operations/install-deploy-manage/expand-minio-deployment.html) reference describes the compatible interface that Silo retains.



----------------

## How do I remove a Silo cluster?

Starting with Pigsty v3.6, cluster removal uses the dedicated `minio-rm.yml` playbook:

```bash
./minio-rm.yml -l minio -e minio_type=silo
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_data=false
```

The removal role also defaults `minio_type` to `silo`. It rejects other values. The examples still spell it out so the operator can review it together with cluster identity and paths before deletion.

`minio_rm_data` defaults to `true`, and the removal role tolerates some cleanup errors. Before a real run, verify the exact `-l` target and a recent backup. After the run, inspect the service, data directories, DNS records, and monitoring targets. The playbook return status alone does not confirm cleanup.

If you have enabled [`minio_safeguard`](/docs/minio/param#minio_safeguard) protection, you need to explicitly override it to perform removal:

```bash
./minio-rm.yml -l minio -e minio_type=silo -e minio_safeguard=false
```



----------------

## What's the difference between mcli and mc commands?

Pigsty distributes the compatible MinIO client as the `mcli` command and package. Upstream uses `mc`. The Pigsty name avoids a conflict with the Midnight Commander file manager.

The `mcli` client retains the `mc` CLI. Its exact version can change with Pigsty packaging. See the [MinIO Client documentation](https://min.io/docs/minio/linux/reference/minio-mc.html) for the command reference.



----------------

## How do I monitor Silo cluster status?

Pigsty provides out-of-the-box monitoring for Silo. Dashboard and metric names retain MinIO-compatible naming:

- **Grafana Dashboards**: [MinIO Overview](https://demo.pigsty.io/d/minio-overview) and [MinIO Instance](https://demo.pigsty.io/d/minio-instance)
- **Alerting Rules**: MinIO-compatible server-down, node-offline, and disk-offline alerts
- **Silo Built-in Console**: Access via `https://<minio-ip>:9001`

For details, see [Monitoring](/docs/minio/monitor).
