---
title: FAQ
weight: 3680
description: Frequently asked questions about the Pigsty MINIO object storage module
icon: fa-solid fa-circle-question
module: [MINIO]
categories: [Reference]
---


----------------

## What version of MinIO does Pigsty use?

MinIO announced entering **maintenance mode** on 2025-12-03, no longer releasing new feature versions, only security patches and maintenance versions, and stopped releasing binary RPM/DEB on 2025-10-15.
So Pigsty forked its own [MinIO](https://github.com/pgsty/minio) and used [`minio/pkger`](https://github.com/minio/pkger) to create the latest 2025-12-03 version.

This version fixes the MinIO [**CVE-2025-62506**](https://nvd.nist.gov/vuln/detail/CVE-2025-62506) security vulnerability, ensuring Pigsty users' MinIO deployments are safe and reliable.
You can find the RPM/DEB packages and build scripts in the Pigsty Infra repository.


----------------

## Why does MinIO require HTTPS?

When pgBackRest uses object storage as a backup repository, HTTPS is mandatory to ensure data transmission security.
If your MinIO is not used for pgBackRest backup, you can still choose to use HTTP protocol.
You can disable HTTPS by modifying the parameter [`minio_https`](/docs/minio/param#minio_https).


----------------

## Getting invalid certificate error when accessing MinIO from containers?

Unless you use certificates issued by a real enterprise CA, MinIO uses self-signed certificates by default, which causes client tools inside containers (such as mc / rclone / awscli, etc.) to be unable to verify the identity of the MinIO server, resulting in invalid certificate errors.

For example, for Node.js applications, you can mount the MinIO server's CA certificate into the container and specify the CA certificate path via the environment variable `NODE_EXTRA_CA_CERTS`:

```yaml
    environment:
      NODE_EXTRA_CA_CERTS: /etc/pki/ca.crt
    volumes:
      - /etc/pki/ca.crt:/etc/pki/ca.crt:ro
```

Of course, if your MinIO is not used as a pgBackRest backup repository, you can also choose to disable MinIO's HTTPS support and use HTTP protocol instead.


----------------

## What if multi-node/multi-disk MinIO cluster fails to start?

In [**Single-Node Multi-Disk**](/docs/minio/config#single-node-multi-disk) or [**Multi-Node Multi-Disk**](/docs/minio/config#multi-node-multi-disk) mode, if the data directory is not a valid disk mount point, MinIO will refuse to start.
Please use mounted disks as MinIO's data directory instead of regular directories. You can only use regular directories as MinIO's data directory in [**Single-Node Single-Disk**](/docs/minio/config#single-node-single-disk) mode, which is only suitable for development testing or non-critical scenarios.



----------------

## How to add new members to an existing MinIO cluster?

> Before deployment, you should plan MinIO cluster capacity, as adding new members requires a global restart.

You can scale MinIO by adding new server nodes to the existing cluster to create a new storage pool.

Note that once MinIO is deployed, you cannot modify the number of nodes and disks in the existing cluster! You can only scale by adding new storage pools.

For detailed steps, please refer to the Pigsty documentation: [**Expand Cluster**](/docs/minio/admin#expand-cluster), and the MinIO official documentation: [**Expand MinIO Deployment**](https://min.io/docs/minio/linux/operations/install-deploy-manage/expand-minio-deployment.html)



----------------

## How to remove a MinIO cluster?

Starting from Pigsty v3.6, removing a MinIO cluster requires using the dedicated `minio-rm.yml` playbook:

```bash
./minio-rm.yml -l minio                   # Remove MinIO cluster
./minio-rm.yml -l minio -e minio_rm_data=false  # Remove cluster but keep data
```

If you have enabled [`minio_safeguard`](/docs/minio/param#minio_safeguard) protection, you need to explicitly override it to perform removal:

```bash
./minio-rm.yml -l minio -e minio_safeguard=false
```



----------------

## What's the difference between mcli and mc commands?

`mcli` is a renamed version of the official MinIO client `mc`. In Pigsty, we use `mcli` instead of `mc` to avoid conflicts with Midnight Commander (a common file manager that also uses the `mc` command).

Both have identical functionality, just with different command names. You can find the complete command reference in the [MinIO Client documentation](https://min.io/docs/minio/linux/reference/minio-mc.html).



----------------

## How to monitor MinIO cluster status?

Pigsty provides out-of-the-box monitoring capabilities for MinIO:

- **Grafana Dashboards**: [MinIO Overview](https://demo.pigsty.io/d/minio-overview) and [MinIO Instance](https://demo.pigsty.io/d/minio-instance)
- **Alerting Rules**: Including MinIO down, node offline, disk offline alerts
- **MinIO Built-in Console**: Access via `https://<minio-ip>:9001`

For details, please refer to the [Monitoring](/docs/minio/monitor) documentation


