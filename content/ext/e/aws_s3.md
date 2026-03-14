---
title: "aws_s3"
linkTitle: "aws_s3"
description: "aws_s3 postgres extension to import/export data from/to s3"
weight: 8800
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/chimpler/postgres-aws-s3">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">chimpler/postgres-aws-s3</div>
    <div class="ext-card__desc">https://github.com/chimpler/postgres-aws-s3</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/aws_s3-0.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">aws_s3-0.0.1.tar.gz</div>
    <div class="ext-card__desc">aws_s3-0.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`aws_s3`**](/ext/e/aws_s3) | `0.0.1` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8800  | [**`aws_s3`**](/ext/e/aws_s3) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_parquet`](/ext/e/pg_parquet) [`hdfs_fdw`](/ext/e/hdfs_fdw) [`file_fdw`](/ext/e/file_fdw) [`duckdb_fdw`](/ext/e/duckdb_fdw) [`wrappers`](/ext/e/wrappers) [`pg_bulkload`](/ext/e/pg_bulkload) [`columnar`](/ext/e/columnar) [`pg_analytics`](/ext/e/pg_analytics) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `aws_s3` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `aws_s3_$v` | - |
| [**DEB**](/ext/deb#fdw) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-aws-s3` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 | AVAIL PIGSTY 0.0.1 1 |
@ el8.x86_64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aws_s3_18-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aws_s3_18-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aws_s3_18-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aws_s3_18-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aws_s3_18-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 aws_s3_18 aws_s3_18-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aws_s3_18-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-aws-s3 postgresql-18-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-18-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aws_s3_17-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aws_s3_17-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aws_s3_17-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aws_s3_17-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aws_s3_17-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 aws_s3_17 aws_s3_17-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aws_s3_17-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-aws-s3 postgresql-17-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-17-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aws_s3_16-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aws_s3_16-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aws_s3_16-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aws_s3_16-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aws_s3_16-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 aws_s3_16 aws_s3_16-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aws_s3_16-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-aws-s3 postgresql-16-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-16-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aws_s3_15-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aws_s3_15-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aws_s3_15-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aws_s3_15-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aws_s3_15-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 aws_s3_15 aws_s3_15-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aws_s3_15-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-aws-s3 postgresql-15-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-15-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/aws_s3_14-0.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/aws_s3_14-0.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/aws_s3_14-0.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/aws_s3_14-0.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.0.1 9.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/aws_s3_14-0.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 aws_s3_14 aws_s3_14-0.0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.0.1 9.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/aws_s3_14-0.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb pigsty 0.0.1 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-aws-s3 postgresql-14-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb pigsty 0.0.1 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/aws-s3/postgresql-14-aws-s3_0.0.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `aws_s3` using `pig build`:

```bash
pig build pkg aws_s3         # build RPM / DEB packages
```


## Install

You can install `aws_s3` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install aws_s3;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y aws_s3 -v 18  # PG 18
pig ext install -y aws_s3 -v 17  # PG 17
pig ext install -y aws_s3 -v 16  # PG 16
pig ext install -y aws_s3 -v 15  # PG 15
pig ext install -y aws_s3 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y aws_s3_18       # PG 18
dnf install -y aws_s3_17       # PG 17
dnf install -y aws_s3_16       # PG 16
dnf install -y aws_s3_15       # PG 15
dnf install -y aws_s3_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-aws-s3   # PG 18
apt install -y postgresql-17-aws-s3   # PG 17
apt install -y postgresql-16-aws-s3   # PG 16
apt install -y postgresql-15-aws-s3   # PG 15
apt install -y postgresql-14-aws-s3   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION aws_s3;
```




## Usage

> [aws_s3: PostgreSQL extension to import/export data from/to S3](https://github.com/chimpler/postgres-aws-s3)

### Setup Credentials

Configure AWS credentials via PostgreSQL session variables:

```sql
SET aws_s3.access_key_id TO 'your_access_key';
SET aws_s3.secret_key TO 'your_secret_key';
SET aws_s3.session_token TO 'optional_session_token';  -- if using temporary credentials
```

For local development with LocalStack:

```sql
SET aws_s3.endpoint_url TO 'http://localhost:4566';
```

### Import Data from S3

```sql
CREATE EXTENSION aws_s3;

CREATE TABLE animals (
  name text,
  age int
);

SELECT aws_s3.table_import_from_s3(
  'animals',
  '',
  '(FORMAT CSV, DELIMITER '','', HEADER true)',
  'my-bucket',
  'animals.csv',
  'us-east-1'
);

SELECT * FROM animals;
```

**Parameters:** table name, column list (empty string for all), COPY options, S3 bucket, S3 key, AWS region.

### Export Data to S3

```sql
SELECT * FROM aws_s3.query_export_to_s3(
  'SELECT * FROM animals',
  'my-bucket',
  'export/animals.csv',
  'us-east-1',
  options := 'FORMAT CSV, HEADER true'
);
```

**Parameters:** SQL query, S3 bucket, S3 key, AWS region, COPY options.

### Features

- Files with `Content-Encoding=gzip` metadata are automatically decompressed during import
- Credentials can be passed directly as function arguments or via session variables
- Uses the same COPY format options as PostgreSQL (CSV, TEXT, BINARY, with all related settings like DELIMITER, HEADER, NULL, etc.)
