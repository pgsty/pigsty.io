---
title: Usage
weight: 3610
description: 'Getting started: how to use MinIO? How to reliably access MinIO? How
  to use mc / rclone client tools?'
icon: fa-solid fa-bell-concierge
module: [MINIO]
categories: [Reference]
---

After you [configure](config) and deploy the MinIO cluster with the [playbook](playbook), you can start using and accessing the MinIO cluster by following the instructions here.



--------

## Deploy Cluster

Deploying an out-of-the-box single-node single-disk MinIO instance in Pigsty is straightforward. First, define a MinIO cluster in the [config inventory](/docs/setup/config#config-inventory):

```yaml
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }
```

Then, run the [`minio.yml`](playbook) playbook provided by Pigsty against the defined group (here `minio`):

```bash
./minio.yml -l minio
```

Note that in [`deploy.yml`](/docs/setup/playbook#installyml), pre-defined MinIO clusters will be automatically created, so you don't need to manually run the `minio.yml` playbook again.

If you plan to deploy a production-grade large-scale multi-node MinIO cluster, we strongly recommend reading the Pigsty MinIO [configuration documentation](config) and the MinIO [official documentation](https://min.io/docs/minio/linux/operations/concepts.html) before proceeding.



--------

## Access Cluster

Note: MinIO services must be accessed via domain name and HTTPS, so make sure the MinIO service domain (default `sss.pigsty`) correctly points to the MinIO server node.

1. You can add static resolution records in [`node_etc_hosts`](/docs/node/param#node_etc_hosts), or manually modify the `/etc/hosts` file
2. You can add a record on the internal DNS server if you already have an existing DNS service
3. If you have enabled the DNS server on Infra nodes, you can add records in [`dns_records`](/docs/infra/param#dns_records)

For production environment access to MinIO, we recommend using the first method: static DNS resolution records, to avoid MinIO's additional dependency on DNS.

You should point the MinIO service domain to the IP address and service port of the MinIO server node, or the IP address and service port of the load balancer.
Pigsty uses the default MinIO service domain `sss.pigsty`, which defaults to localhost for single-node deployment, serving on port `9000`.

In some examples, HAProxy instances are also deployed on the MinIO cluster to expose services. In this case, `9002` is the service port used in the templates.







--------

## Adding Alias

To access the MinIO server cluster using the `mcli` client, you need to first configure the server alias:

```bash
mcli alias ls  # list minio alias (default is sss)
mcli alias set sss https://sss.pigsty:9000 minioadmin S3User.MinIO            # root user
mcli alias set sss https://sss.pigsty:9002 minioadmin S3User.MinIO            # root user, using load balancer port 9002

mcli alias set pgbackrest https://sss.pigsty:9000 pgbackrest S3User.Backup    # use backup user
```

On the admin user of the admin node, a MinIO alias named `sss` is pre-configured and can be used directly.

For the full functionality reference of the MinIO client tool `mcli`, please refer to the documentation: [MinIO Client](https://min.io/docs/minio/linux/reference/minio-mc.html).

{{% alert title="Note: Use Your Actual Password" color="warning" %}}
The password `S3User.MinIO` in the above examples is the Pigsty default. If you modified [`minio_secret_key`](/docs/minio/param#minio_secret_key) during deployment, please use your actual configured password.
{{% /alert %}}



----------------

## User Management

You can manage business users in MinIO using `mcli`. For example, here we can create two business users using the command line:

```bash
mcli admin user list sss     # list all users on sss
set +o history # hide password in history and create minio users
mcli admin user add sss dba S3User.DBA
mcli admin user add sss pgbackrest S3User.Backup
set -o history
```


----------------

## Bucket Management

**You can perform CRUD operations on buckets in MinIO**:

```bash
mcli ls sss/                         # list all buckets on alias 'sss'
mcli mb --ignore-existing sss/hello  # create a bucket named 'hello'
mcli rb --force sss/hello            # force delete the 'hello' bucket
```


----------------

## Object Management

**You can also perform CRUD operations on objects within buckets**. For details, please refer to the official documentation: [Object Management](https://min.io/docs/minio/linux/administration/object-management.html)

```bash
mcli cp /www/pigsty/* sss/infra/     # upload local repo content to MinIO infra bucket
mcli cp sss/infra/plugins.tgz /tmp/  # download file from minio to local
mcli ls sss/infra                    # list all files in the infra bucket
mcli rm sss/infra/plugins.tgz        # delete specific file in infra bucket
mcli cat sss/infra/repo_complete     # view file content in infra bucket
```


----------------

## Using rclone

Pigsty repository provides [rclone](https://rclone.org/), a convenient multi-cloud object storage client that you can use to access MinIO services.

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

{{% alert title="Note: HTTPS and Certificate Trust" color="warning" %}}
If MinIO uses HTTPS (default configuration), you need to ensure the client trusts Pigsty's CA certificate (`/etc/pki/ca.crt`), or add `no_check_certificate = true` in the rclone configuration to skip certificate verification (not recommended for production).
{{% /alert %}}


----------------

## Configure Backup Repository

In Pigsty, the default use case for MinIO is as a backup storage repository for pgBackRest.
When you modify [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method) to `minio`, the PGSQL module will automatically switch the backup repository to MinIO.

```yaml
pgbackrest_method: local          # pgbackrest repo method: local,minio,[user-defined...]
pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
  local:                          # default pgbackrest repo with local posix fs
    path: /pg/backup              # local backup directory, `/pg/backup` by default
    retention_full_type: count    # retention full backups by count
    retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
  minio:                          # optional minio repo for pgbackrest
    type: s3                      # minio is s3-compatible, so s3 is used
    s3_endpoint: sss.pigsty       # minio endpoint domain name, `sss.pigsty` by default
    s3_region: us-east-1          # minio region, us-east-1 by default, useless for minio
    s3_bucket: pgsql              # minio bucket name, `pgsql` by default
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
    s3_uri_style: path            # use path style uri for minio rather than host style
    path: /pgbackrest             # minio backup path, default is `/pgbackrest`
    storage_port: 9000            # minio port, 9000 by default
    storage_ca_file: /pg/cert/ca.crt  # minio ca file path, `/pg/cert/ca.crt` by default
    bundle: y                     # bundle small files into a single file
    cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
    cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
    retention_full_type: time     # retention full backup by time on minio repo
    retention_full: 14            # keep full backup for last 14 days
```

Note that if you are using a multi-node MinIO cluster and exposing services through a load balancer, you need to modify the `s3_endpoint` and `storage_port` parameters accordingly.

<br>

--------

<br>
