---
title: "pgs3"
linkTitle: "pgs3"
description: "S3-compatible object storage endpoint implemented inside PostgreSQL"
weight: 9430
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgsty/pgs3">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgsty/pgs3</div>
    <div class="ext-card__desc">https://github.com/pgsty/pgs3</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgs3-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgs3-0.1.1.tar.gz</div>
    <div class="ext-card__desc">pgs3-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgs3`**](/ext/e/pgs3) | `0.1.1` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9430  | [**`pgs3`**](/ext/e/pgs3) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgs3` |
{.ext-table}

| **Related** | [`aws_s3`](/ext/e/aws_s3) [`pg_lake`](/ext/e/pg_lake) [`pg_parquet`](/ext/e/pg_parquet) [`pg_ducklake`](/ext/e/pg_ducklake) [`omni_aws`](/ext/e/omni_aws) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Early alpha; PG17-18; endpoint startup requires preload or pgs3.start(); TLS terminates externally; small-object and 100,000-object Fork performance gates remain unmet.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17" >}} | `pgs3` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17" >}} | `pgs3_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17" >}} | `postgresql-$v-pgs3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 919.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgs3_18-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 740.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgs3_18-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 892.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgs3_18-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 795.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgs3_18-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 892.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgs3_18-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgs3_18 pgs3_18-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 796.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgs3_18-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 796.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 655.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 796.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 657.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 863.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 767.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 858.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 762.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 856.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgs3 postgresql-18-pgs3_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 760.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgs3/postgresql-18-pgs3_0.1.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 919.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgs3_17-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 740.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgs3_17-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 892.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgs3_17-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 796.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgs3_17-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 892.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgs3_17-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgs3_17 pgs3_17-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 794.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgs3_17-0.1.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~bookworm_amd64.deb pigsty 0.1.1 796.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~bookworm_arm64.deb pigsty 0.1.1 654.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~trixie_amd64.deb pigsty 0.1.1 796.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~trixie_arm64.deb pigsty 0.1.1 654.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~jammy_amd64.deb pigsty 0.1.1 862.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~jammy_arm64.deb pigsty 0.1.1 767.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~noble_amd64.deb pigsty 0.1.1 858.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~noble_arm64.deb pigsty 0.1.1 762.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~resolute_amd64.deb pigsty 0.1.1 856.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgs3 postgresql-17-pgs3_0.1.1-1PGSTY~resolute_arm64.deb pigsty 0.1.1 759.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgs3/postgresql-17-pgs3_0.1.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgs3` using `pig build`:

```bash
pig build pkg pgs3         # build RPM / DEB packages
```


## Install

You can install `pgs3` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgs3;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgs3 -v 18  # PG 18
pig ext install -y pgs3 -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgs3_18       # PG 18
dnf install -y pgs3_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgs3   # PG 18
apt install -y postgresql-17-pgs3   # PG 17
```


**Preload**:

```bash
shared_preload_libraries = 'pgs3';
```


**Create Extension**:

```sql
CREATE EXTENSION pgs3;
```

## Usage

Sources:

- [Official release v0.1.1](https://github.com/pgsty/pgs3/releases/tag/v0.1.1)
- [Official README v0.1.1](https://github.com/pgsty/pgs3/blob/v0.1.1/README.md)
- [Extension control file](https://github.com/pgsty/pgs3/blob/v0.1.1/pgs3.control)
- [Configuration reference](https://github.com/pgsty/pgs3/blob/v0.1.1/docs/guc.md)
- [Operations guide](https://github.com/pgsty/pgs3/blob/v0.1.1/docs/operations.md)
- [Known limitations](https://github.com/pgsty/pgs3/blob/v0.1.1/docs/known-limitations.md)

`pgs3` 0.1.1 turns one PostgreSQL database into a path-style S3-compatible endpoint. PostgreSQL background workers authenticate SigV4 requests and execute versioned object operations against ordinary SQL tables, so object metadata, payloads, authorization, WAL, physical backup, and recovery remain inside PostgreSQL. It targets PostgreSQL 17 and 18 and remains early-alpha software.

### Core Workflow

Install the extension in the database that will own the object store, create a restricted tenant role and credential, then start the worker pool:

```sql
CREATE EXTENSION pgs3;

CREATE ROLE tenant_app
  NOLOGIN NOINHERIT NOSUPERUSER NOCREATEDB NOCREATEROLE
  NOREPLICATION NOBYPASSRLS;

SELECT pgs3.create_credential(
  'tenant-access-key', 'replace-with-a-secret', 'tenant_app'::name, true
);

SELECT pgs3.start();
TABLE pgs3.worker_state;
TABLE pgs3.stats;
```

For automatic startup, preload the library and configure the target database before restarting PostgreSQL:

```conf
shared_preload_libraries = 'pgs3'
pgs3.enabled = on
pgs3.target_database = 'artifacts'
pgs3.listen_addr = '127.0.0.1'
pgs3.port = 9000
pgs3.workers = 4
```

Adding or removing `shared_preload_libraries`, or changing `pgs3.target_database`, requires a PostgreSQL restart. Other documented settings use SIGHUP semantics, but operational readiness must be checked through `pgs3.worker_state` and logs rather than only an open TCP port. A manually started pool can be stopped with `pgs3.stop()`.

### Client and Storage Behavior

Clients must use path-style addressing and an explicit endpoint:

```bash
export PGS3_ENDPOINT='https://s3.example.com'
export AWS_ACCESS_KEY_ID='<access-key>'
export AWS_SECRET_ACCESS_KEY='<secret-key>'
export AWS_DEFAULT_REGION='us-east-1'

aws --endpoint-url "$PGS3_ENDPOINT" s3api list-buckets
```

Always pass `--endpoint-url`; otherwise an AWS client can silently send a request to AWS. The supported client paths include AWS CLI, boto3, rclone, s3fs, and DuckDB `httpfs`. Bucket and object operations include range and conditional reads/writes, ListObjectsV2, permanent version history, delete markers, CopyObject, and multipart upload.

The canonical payload lives in `pgs3.blob`. Object versions, CopyObject, SQL Restore, and metadata-only Fork operations can share the same blob rather than duplicating bytes. One endpoint serves one configured database.

### Operations and Security

Credential access keys map to PostgreSQL tenant roles. Keep those roles `NOLOGIN`, `NOINHERIT`, and `NOBYPASSRLS`; do not use `pgs3.server_role` as an application identity. Row-level security is the tenant-isolation boundary, while credential-management and worker-control functions remain operator-only.

SigV4 requires reversibly stored secrets, so database backups and replicas contain credential material and must be encrypted and access-controlled. `pgs3` serves cleartext HTTP; production deployments need an external TLS proxy that preserves the signed path, host, and headers. Use physical backups: logical dump/restore is not supported for the extension-owned object state.

### Compatibility and Limitations

The packaged and upstream-supported paths are PostgreSQL 17 and 18 with pgrx 0.19.2. Version 0.1.1 includes the tested `0.1.0 -> 0.1.1` extension upgrade edge.

`pgs3` is not a general-purpose production S3 replacement. Virtual-host addressing, built-in TLS, IAM or bucket-policy languages, ACLs, lifecycle rules, and cross-database routing are not implemented. Small-object GET/PUT targets and the 100,000-object Fork target are not met, and full-object GET currently materializes the response in memory. Set a deployment-specific object-size limit and review the upstream limitations before exposing an endpoint.
