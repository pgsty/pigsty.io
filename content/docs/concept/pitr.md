---
title: Point-in-Time Recovery
linkTitle: PITR
weight: 210
description: Pigsty uses pgBackRest to implement PostgreSQL point-in-time recovery,
  allowing users to roll back to any point in time within the backup policy window.
icon: fa-solid fa-clock-rotate-left
module: [PGSQL]
categories: [Task, Concept]
tags: [PITR]
---



----------------

## Overview

> You can restore and roll back your cluster to any point in the past, avoiding data loss caused by software defects and human errors.

Pigsty's PostgreSQL clusters come with auto-configured Point-in-Time Recovery (PITR) capability, powered by the backup component [**pgBackRest**](https://pgbackrest.org/) and optional object storage repository [**MinIO**](https://min.io/).

[**High availability solutions**](/docs/concept/ha) can address hardware failures but are powerless against data deletion/overwriting/database drops caused by software defects and human errors.
For such situations, Pigsty provides out-of-the-box **Point-in-Time Recovery** (PITR) capability, enabled by default without additional configuration.

Pigsty provides default configurations for base backups and WAL archiving. You can use local directories and disks, or dedicated MinIO clusters or S3 object storage services to store backups and achieve geo-redundant disaster recovery.
When using local disks, the default capability to recover to any point within the past day is retained. When using MinIO or S3, the default capability to recover to any point within the past week is retained.
As long as storage space permits, you can retain any arbitrarily long recoverable time window, as your budget allows.

--------------

**What problems does PITR solve?**

* Enhanced disaster recovery: **RPO** drops from ∞ to tens of MB, **RTO** drops from ∞ to hours/minutes.
* Ensures data security: **Data integrity** in C/I/A: avoids data consistency issues caused by accidental deletion.
* Ensures data security: **Data availability** in C/I/A: provides fallback for "permanently unavailable" disaster scenarios

| Standalone Configuration Strategy | Event | RTO | RPO |
|------|:--:|-----------------|:-----|
| <i class="fa-solid fa-music text-danger"></i> Nothing | Crash | <i class="fas fa-circle-xmark text-danger"></i> **Permanently lost** | <i class="fas fa-circle-xmark text-danger"></i> **All lost** |
| <i class="fa-solid fa-copy text-secondary"></i> Base Backup | Crash | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Depends on backup size and bandwidth (hours) | <i class="fa-solid fa-triangle-exclamation text-secondary"></i> Lose data since last backup (hours to days) |
| <i class="fa-solid fa-copy text-primary"></i> Base Backup + <i class="fa-solid fa-clock-rotate-left text-primary"></i> WAL Archive | Crash | <i class="fa-solid fa-triangle-exclamation text-primary"></i> Depends on backup size and bandwidth (hours) | <i class="fa-solid fa-triangle-exclamation text-primary"></i> Lose unarchived data (tens of MB) |


**What are the costs of PITR?**

* Reduces C in data security: **Confidentiality**, creates additional leak points, requires additional backup protection.
* Extra resource consumption: Local storage or network traffic/bandwidth overhead, usually not a concern.
* Increased complexity: Users need to pay backup management costs.

**Limitations of PITR**

If only PITR is used for failure recovery, RTO and RPO metrics are inferior compared to [**high availability solutions**](/docs/concept/ha/), and typically both should be used together.

* **RTO**: With only standalone + PITR, recovery time depends on backup size and network/disk bandwidth, ranging from tens of minutes to hours or days.
* **RPO**: With only standalone + PITR, some data may be lost during crashes - one or several WAL segment files may not yet be archived, losing 16 MB to tens of MB of data.

Besides [**PITR**](/docs/pgsql/backup), you can also use [**delayed clusters**](/docs/pgsql/config#delayed-cluster) in Pigsty to address data deletion/modification caused by human errors or software defects.




----------------

## How It Works

Point-in-time recovery allows you to restore and roll back your cluster to "any point" in the past, avoiding data loss caused by software defects and human errors. To achieve this, two preparations are needed: [**Base Backup**](#base-backup) and [**WAL Archiving**](#wal-archiving).
Having a **base backup** allows users to restore the database to its state at backup time, while having **WAL archives** starting from a base backup allows users to restore the database to any point after the base backup time.

![fig-10-02.png](/img/blog/kernel/fig-10-02.png)

For specific operations, refer to [**PGSQL Admin: Backup and Recovery**](/docs/pgsql/backup).

### Base Backup

Pigsty uses pgBackRest to manage PostgreSQL backups. pgBackRest initializes empty repositories on all cluster instances but only actually uses the repository on the cluster primary.

pgBackRest supports three backup modes: **full backup**, **incremental backup**, and differential backup, with the first two being most commonly used.
Full backup takes a complete physical snapshot of the database cluster at the current moment; incremental backup records the differences between the current database cluster and the previous full backup.

Pigsty provides a wrapper command for backups: `/pg/bin/pg-backup [full|incr]`. You can schedule regular base backups as needed through Crontab or any other task scheduling system.


### WAL Archiving

Pigsty enables WAL archiving on the cluster primary by default and uses the `pgbackrest` command-line tool to continuously push WAL segment files to the backup repository.

pgBackRest automatically manages required WAL files and timely cleans up expired backups and their corresponding WAL archive files based on the backup retention policy.

If you don't need PITR functionality, you can disable WAL archiving by [**configuring the cluster**](/docs/pgsql/admin#configure-cluster): `archive_mode: off` and remove [`node_crontab`](/docs/node/param#node_crontab) to stop scheduled backup tasks.




----------------

## Implementation

By default, Pigsty provides two preset [backup strategies](/docs/pgsql/backup#backup-strategy): The default uses local filesystem backup repository, performing one full backup daily to ensure users can roll back to any point within the past day. The alternative strategy uses dedicated MinIO clusters or S3 storage for backups, with weekly full backups, daily incremental backups, and two weeks of backup and WAL archive retention by default.

Pigsty uses pgBackRest to manage backups, receive WAL archives, and perform PITR. Backup repositories can be flexibly configured ([`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo)): defaults to primary's local filesystem (`local`), but can also use other disk paths, or the included optional [MinIO](/docs/minio) service (`minio`) and cloud S3 services.

```yaml
pgbackrest_enabled: true          # enable pgBackRest on pgsql host?
pgbackrest_clean: true            # remove pg backup data during init?
pgbackrest_log_dir: /pg/log/pgbackrest # pgbackrest log dir, `/pg/log/pgbackrest` by default
pgbackrest_method: local          # pgbackrest repo method: local, minio, [user-defined...]
pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
  local:                          # default pgbackrest repo with local posix fs
    path: /pg/backup              # local backup directory, `/pg/backup` by default
    retention_full_type: count    # retention full backup by count
    retention_full: 2             # keep at most 3 full backup, at least 2, when using local fs repo
  minio:                          # optional minio repo for pgbackrest
    type: s3                      # minio is s3-compatible, so use s3
    s3_endpoint: sss.pigsty       # minio endpoint domain name, `sss.pigsty` by default
    s3_region: us-east-1          # minio region, us-east-1 by default, not used for minio
    s3_bucket: pgsql              # minio bucket name, `pgsql` by default
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
    s3_uri_style: path            # use path style uri for minio rather than host style
    path: /pgbackrest             # minio backup path, `/pgbackrest` by default
    storage_port: 9000            # minio port, 9000 by default
    storage_ca_file: /etc/pki/ca.crt  # minio ca file path, `/etc/pki/ca.crt` by default
    bundle: y                     # bundle small files into a single file
    cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
    cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
    retention_full_type: time     # retention full backup by time on minio repo
    retention_full: 14            # keep full backup for last 14 days
  # You can also add other optional backup repos, such as S3, for geo-redundant disaster recovery
```

Pigsty parameter [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo) target repositories are converted to repository definitions in the `/etc/pgbackrest/pgbackrest.conf` configuration file.
For example, if you define a US West S3 repository for storing cold backups, you can use the following reference configuration.

```yaml
s3:    # ------> /etc/pgbackrest/pgbackrest.conf
  repo1-type: s3                                   # ----> repo1-type=s3
  repo1-s3-region: us-west-1                       # ----> repo1-s3-region=us-west-1
  repo1-s3-endpoint: s3-us-west-1.amazonaws.com    # ----> repo1-s3-endpoint=s3-us-west-1.amazonaws.com
  repo1-s3-key: '<your_access_key>'                # ----> repo1-s3-key=<your_access_key>
  repo1-s3-key-secret: '<your_secret_key>'         # ----> repo1-s3-key-secret=<your_secret_key>
  repo1-s3-bucket: pgsql                           # ----> repo1-s3-bucket=pgsql
  repo1-s3-uri-style: host                         # ----> repo1-s3-uri-style=host
  repo1-path: /pgbackrest                          # ----> repo1-path=/pgbackrest
  repo1-bundle: y                                  # ----> repo1-bundle=y
  repo1-cipher-type: aes-256-cbc                   # ----> repo1-cipher-type=aes-256-cbc
  repo1-cipher-pass: pgBackRest                    # ----> repo1-cipher-pass=pgBackRest
  repo1-retention-full-type: time                  # ----> repo1-retention-full-type=time
  repo1-retention-full: 90                         # ----> repo1-retention-full=90
```


----------------

## Recovery

You can directly use the following wrapper commands for PostgreSQL database cluster [point-in-time recovery](https://pgbackrest.org/command.html#command-restore).

Pigsty uses incremental differential parallel recovery by default, allowing you to recover to a specified point in time at maximum speed.

```bash
pg-pitr                                 # Restore to the end of WAL archive stream (e.g., for entire datacenter failure)
pg-pitr -i                              # Restore to the most recent backup completion time (rarely used)
pg-pitr --time="2022-12-30 14:44:44+08" # Restore to a specified point in time (for database or table drops)
pg-pitr --name="my-restore-point"       # Restore to a named restore point created with pg_create_restore_point
pg-pitr --lsn="0/7C82CB8" -X            # Restore to immediately before the LSN
pg-pitr --xid="1234567" -X -P           # Restore to immediately before the specified transaction ID, then promote cluster to primary
pg-pitr --backup=latest                 # Restore to the latest backup set
pg-pitr --backup=20221108-105325        # Restore to a specific backup set, backup sets can be listed with pgbackrest info

pg-pitr                                 # pgbackrest --stanza=pg-meta restore
pg-pitr -i                              # pgbackrest --stanza=pg-meta --type=immediate restore
pg-pitr -t "2022-12-30 14:44:44+08"     # pgbackrest --stanza=pg-meta --type=time --target="2022-12-30 14:44:44+08" restore
pg-pitr -n "my-restore-point"           # pgbackrest --stanza=pg-meta --type=name --target=my-restore-point restore
pg-pitr -b 20221108-105325F             # pgbackrest --stanza=pg-meta --type=name --set=20221230-120101F restore
pg-pitr -l "0/7C82CB8" -X               # pgbackrest --stanza=pg-meta --type=lsn --target="0/7C82CB8" --target-exclusive restore
pg-pitr -x 1234567 -X -P                # pgbackrest --stanza=pg-meta --type=xid --target="0/7C82CB8" --target-exclusive --target-action=promote restore
```

When performing PITR, you can use Pigsty's monitoring system to observe the cluster LSN position status and determine whether recovery to the specified point in time, transaction point, LSN position, or other point was successful.

![pitr](/img/docs/concept/pitr.png)



<br>

-----------

<br>

