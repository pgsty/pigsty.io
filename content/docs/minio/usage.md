---
title: Usage
weight: 3610
description: Quickly use Silo deployed by the MINIO module through mcli, rclone, and pgBackRest.
icon: fa-solid fa-bell-concierge
module: [MINIO]
categories: [Reference]
---

After you [configure](/docs/minio/config/) and deploy Silo with the [playbook](/docs/minio/playbook/), use this page to access it through the compatible S3 and `mcli` interfaces.



--------

## Deploy Cluster

First, define a single-node, single-disk object-storage cluster in the [config inventory](/docs/setup/config/) and explicitly pin its engine:

```yaml
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio, minio_type: silo } }
```

Then, run the [`minio.yml`](/docs/minio/playbook/) playbook provided by Pigsty against the defined group (here `minio`):

```bash
./minio.yml -l minio
```

Note that [`deploy.yml`](/docs/setup/playbook#deploy-playbook) automatically creates predefined Silo clusters, so you do not need to run the `minio.yml` playbook again manually.

For a production multi-node deployment, read Pigsty's [configuration documentation](/docs/minio/config/) and verify the operational constraints of the Silo version you deploy.



--------

## Access Cluster

Production environments should access object storage through a domain name and HTTPS, which is also the default configuration. If you explicitly set [`minio_https`](/docs/minio/param#minio_https) to `false`, HTTP is available instead. In either case, ensure that the object-storage service domain (default `sss.pigsty`) points to the service node or load balancer.

1. You can add static resolution records in [`node_etc_hosts`](/docs/node/param#node_etc_hosts), or manually modify the `/etc/hosts` file
2. You can add a record on the internal DNS server if you already have an existing DNS service
3. If you have enabled the DNS server on Infra nodes, you can add records in [`dns_records`](/docs/infra/param#dns_records)

For production, we recommend the first method—static DNS records—so object storage does not depend on dynamic DNS.

Point the S3 service domain to the IP address and service port of a Silo node or load balancer.
Pigsty uses `sss.pigsty` as the default S3 service domain and serves it on port `9000`. The role does not automatically create a global DNS record for `minio_domain`; configure resolution explicitly as described above.

Some examples deploy HAProxy on the Silo cluster to expose the service; those templates use port `9002` as the unified service port.







--------

## Adding Alias

To access the Silo cluster with the `mcli` client, first configure a server alias:

```bash
mcli alias ls  # list minio alias (default is sss)
mcli alias set sss https://sss.pigsty:9000 minioadmin S3User.MinIO            # root user
mcli alias set sss https://sss.pigsty:9002 minioadmin S3User.MinIO            # root user, using load balancer port 9002

mcli alias set pgbackrest https://sss.pigsty:9000 pgbackrest S3User.Backup    # use backup user
```

After a full `minio.yml` run with `minio_provision` enabled, the role configures the default alias for the Ansible execution user on every Infra node and every actual object-storage member discovered by `minio_cluster`. A host in both sets is configured only once.

For the full `mcli` command reference, see the upstream [MinIO Client documentation](https://min.io/docs/minio/linux/reference/minio-mc.html).

> [!WARNING] Note: Use Your Actual Password
> The password `S3User.MinIO` in the above examples is the Pigsty default. If you modified [`minio_secret_key`](/docs/minio/param#minio_secret_key) during deployment, please use your actual configured password.



----------------

## User Management

You can manage Silo application users with `mcli`. Default provisioning already creates `pgbackrest`, `s3user_meta`, and `s3user_data`; the example below creates one additional user and attaches the generated policy for the default `data` bucket:

```bash
mcli admin user list sss
set +o history
mcli admin user add sss appuser 'Replace.With.Strong.Password'
mcli admin policy attach sss data --user=appuser
set -o history
```


----------------

## Bucket Management

**You can perform CRUD operations on buckets in Silo**:

```bash
mcli ls sss/                         # list all buckets on alias 'sss'
mcli mb --ignore-existing sss/hello  # create a bucket named 'hello'
mcli rb --force sss/hello            # force delete the 'hello' bucket
```


----------------

## Object Management

**You can also perform CRUD operations on objects within buckets**. For details, please refer to the official documentation: [Object Management](https://min.io/docs/minio/linux/administration/object-management.html)

```bash
mcli cp /www/pigsty/* sss/data/      # upload local repo content to the default data bucket
mcli cp sss/data/plugins.tgz /tmp/   # download file from Silo
mcli ls sss/data                     # list all files in the data bucket
mcli rm sss/data/plugins.tgz         # delete a specific file in the data bucket
mcli cat sss/data/repo_complete      # view file content in the data bucket
```


----------------

## Using rclone

The Pigsty repository provides [rclone](https://rclone.org/), a convenient multi-cloud object-storage client that can access Silo.

```bash
yum install rclone;  # EL-compatible systems
apt install rclone;  # Debian/Ubuntu systems

mkdir -p ~/.config/rclone/;
tee ~/.config/rclone/rclone.conf > /dev/null <<EOF
[sss]
type = s3
access_key_id = minioadmin
secret_access_key = S3User.MinIO
endpoint = https://sss.pigsty:9000
EOF

rclone ls sss:/
```

> [!WARNING] Note: HTTPS and Certificate Trust
> If Silo uses HTTPS (the default), ensure that the client trusts Pigsty's CA certificate (`/etc/pki/ca.crt`), or add `no_check_certificate = true` to the rclone configuration to skip certificate verification (not recommended for production).


----------------

## Configure Backup Repository

In Pigsty, the MINIO module's primary use case is as an S3 backup repository for pgBackRest.
When you set [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method) to `minio`, the PGSQL module uses the S3-compatible repository preset with that name. Silo deployed by the MINIO module works directly with this preset.

```yaml
pgbackrest_method: local          # pgbackrest repo method: local,minio,[user-defined...]
pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
  local:                          # default pgbackrest repo with local posix fs
    path: /pg/backup              # local backup directory, `/pg/backup` by default
    retention_full_type: count    # retention full backups by count
    retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
  minio:                          # optional minio repo for pgbackrest
    type: s3                      # Silo uses the S3-compatible repository type
    s3_endpoint: sss.pigsty       # Silo endpoint domain, `sss.pigsty` by default
    s3_region: us-east-1          # compatibility region, `us-east-1` by default
    s3_bucket: pgsql              # backup bucket, `pgsql` by default
    s3_key: pgbackrest            # pgBackRest access key
    s3_key_secret: S3User.Backup  # pgBackRest secret key
    s3_uri_style: path            # use path-style rather than host-style URIs
    path: /pgbackrest             # backup path, `/pgbackrest` by default
    storage_port: 9000            # Silo service port, 9000 by default
    storage_ca_file: /pg/cert/ca.crt  # CA path, `/pg/cert/ca.crt` by default
    bundle: y                     # bundle small files into a single file
    cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
    cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
    retention_full_type: time     # retain full backups by time on the remote repository
    retention_full: 14            # keep full backup for last 14 days
```

If you use a multi-node Silo cluster behind a load balancer, adjust `s3_endpoint` and `storage_port` accordingly.

<br>

--------

<br>
