---
title: "hdfs_fdw"
linkTitle: "hdfs_fdw"
description: "foreign-data wrapper for remote hdfs servers"
weight: 8740
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/EnterpriseDB/hdfs_fdw">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">EnterpriseDB/hdfs_fdw</div>
    <div class="ext-card__desc">https://github.com/EnterpriseDB/hdfs_fdw</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hdfs_fdw`**](/ext/e/hdfs_fdw) | `2.3.3` | <a class="ext-badge ext-badge--cate fdw" href="/ext/cate/fdw">FDW</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 8740  | [**`hdfs_fdw`**](/ext/e/hdfs_fdw) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_parquet`](/ext/e/pg_parquet) [`mongo_fdw`](/ext/e/mongo_fdw) [`kafka_fdw`](/ext/e/kafka_fdw) [`wrappers`](/ext/e/wrappers) [`multicorn`](/ext/e/multicorn) [`jdbc_fdw`](/ext/e/jdbc_fdw) [`aws_s3`](/ext/e/aws_s3) [`duckdb_fdw`](/ext/e/duckdb_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.3.3` | {{< pgvers "18,17,16,15,14" >}} | `hdfs_fdw` | - |
| [**RPM**](/ext/rpm#fdw) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.3.3` | {{< pgvers "18,17,16,15,14" >}} | `hdfs_fdw_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 5 | AVAIL PGDG 2.3.3 7 |
| el8.aarch64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 4 | AVAIL PGDG 2.3.3 4 |
| el9.x86_64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 5 | AVAIL PGDG 2.3.3 6 |
| el9.aarch64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 5 | AVAIL PGDG 2.3.3 5 |
| el10.x86_64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 |
| el10.aarch64 | AVAIL PGDG 2.3.3 1 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 | AVAIL PGDG 2.3.3 2 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel8.x86_64.rpm pgdg 2.3.3 116.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/hdfs_fdw_18-2.3.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel8.aarch64.rpm pgdg 2.3.3 113.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/hdfs_fdw_18-2.3.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel9.x86_64.rpm pgdg 2.3.3 116.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/hdfs_fdw_18-2.3.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel9.aarch64.rpm pgdg 2.3.3 114.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/hdfs_fdw_18-2.3.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel10.x86_64.rpm pgdg 2.3.3 116.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/hdfs_fdw_18-2.3.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 hdfs_fdw_18 hdfs_fdw_18-2.3.3-1PGDG.rhel10.aarch64.rpm pgdg 2.3.3 115.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/hdfs_fdw_18-2.3.3-1PGDG.rhel10.aarch64.rpm
@ el8.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel8.x86_64.rpm pgdg 2.3.3 116.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hdfs_fdw_17-2.3.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-3PGDG.rhel8.x86_64.rpm pgdg 2.3.2 117.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/hdfs_fdw_17-2.3.2-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel8.aarch64.rpm pgdg 2.3.3 113.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hdfs_fdw_17-2.3.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-3PGDG.rhel8.aarch64.rpm pgdg 2.3.2 115.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/hdfs_fdw_17-2.3.2-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel9.x86_64.rpm pgdg 2.3.3 116.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hdfs_fdw_17-2.3.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-3PGDG.rhel9.x86_64.rpm pgdg 2.3.2 118.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/hdfs_fdw_17-2.3.2-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel9.aarch64.rpm pgdg 2.3.3 113.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hdfs_fdw_17-2.3.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-3PGDG.rhel9.aarch64.rpm pgdg 2.3.2 116.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/hdfs_fdw_17-2.3.2-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel10.x86_64.rpm pgdg 2.3.3 116.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hdfs_fdw_17-2.3.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-5PGDG.rhel10.x86_64.rpm pgdg 2.3.2 116.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/hdfs_fdw_17-2.3.2-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.3-1PGDG.rhel10.aarch64.rpm pgdg 2.3.3 115.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hdfs_fdw_17-2.3.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 hdfs_fdw_17 hdfs_fdw_17-2.3.2-5PGDG.rhel10.aarch64.rpm pgdg 2.3.2 114.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/hdfs_fdw_17-2.3.2-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel8.x86_64.rpm pgdg 2.3.3 116.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hdfs_fdw_16-2.3.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.1-1PGDG.rhel8.x86_64.rpm pgdg 2.3.1 129.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/hdfs_fdw_16-2.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel8.aarch64.rpm pgdg 2.3.3 113.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hdfs_fdw_16-2.3.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.1-1PGDG.rhel8.aarch64.rpm pgdg 2.3.1 126.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/hdfs_fdw_16-2.3.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel9.x86_64.rpm pgdg 2.3.3 116.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hdfs_fdw_16-2.3.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.1-1PGDG.rhel9.x86_64.rpm pgdg 2.3.1 130.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/hdfs_fdw_16-2.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel9.aarch64.rpm pgdg 2.3.3 114.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hdfs_fdw_16-2.3.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.1-1PGDG.rhel9.aarch64.rpm pgdg 2.3.1 128.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/hdfs_fdw_16-2.3.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel10.x86_64.rpm pgdg 2.3.3 116.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hdfs_fdw_16-2.3.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.2-5PGDG.rhel10.x86_64.rpm pgdg 2.3.2 115.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/hdfs_fdw_16-2.3.2-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.3-1PGDG.rhel10.aarch64.rpm pgdg 2.3.3 115.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hdfs_fdw_16-2.3.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 hdfs_fdw_16 hdfs_fdw_16-2.3.2-5PGDG.rhel10.aarch64.rpm pgdg 2.3.2 114.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/hdfs_fdw_16-2.3.2-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel8.x86_64.rpm pgdg 2.3.3 115.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hdfs_fdw_15-2.3.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-1PGDG.rhel8.x86_64.rpm pgdg 2.3.2 117.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hdfs_fdw_15-2.3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.1-1PGDG.rhel8.x86_64.rpm pgdg 2.3.1 129.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hdfs_fdw_15-2.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.0-1.rhel8.x86_64.rpm pgdg 2.3.0 127.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hdfs_fdw_15-2.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.2.0-1.rhel8.x86_64.rpm pgdg 2.2.0 117.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/hdfs_fdw_15-2.2.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel8.aarch64.rpm pgdg 2.3.3 112.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hdfs_fdw_15-2.3.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-1PGDG.rhel8.aarch64.rpm pgdg 2.3.2 114.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hdfs_fdw_15-2.3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.1-1PGDG.rhel8.aarch64.rpm pgdg 2.3.1 113.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hdfs_fdw_15-2.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.0-1.rhel8.aarch64.rpm pgdg 2.3.0 124.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/hdfs_fdw_15-2.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel9.x86_64.rpm pgdg 2.3.3 116.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hdfs_fdw_15-2.3.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-1PGDG.rhel9.x86_64.rpm pgdg 2.3.2 119.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hdfs_fdw_15-2.3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.1-1PGDG.rhel9.x86_64.rpm pgdg 2.3.1 130.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hdfs_fdw_15-2.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.0-1.rhel9.x86_64.rpm pgdg 2.3.0 130.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hdfs_fdw_15-2.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.2.0-1.rhel9.x86_64.rpm pgdg 2.2.0 119.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/hdfs_fdw_15-2.2.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel9.aarch64.rpm pgdg 2.3.3 114.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hdfs_fdw_15-2.3.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-1PGDG.rhel9.aarch64.rpm pgdg 2.3.2 116.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hdfs_fdw_15-2.3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.1-1PGDG.rhel9.aarch64.rpm pgdg 2.3.1 115.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hdfs_fdw_15-2.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.0-1.rhel9.aarch64.rpm pgdg 2.3.0 127.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hdfs_fdw_15-2.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.2.0-1.rhel9.aarch64.rpm pgdg 2.2.0 117.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/hdfs_fdw_15-2.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel10.x86_64.rpm pgdg 2.3.3 117.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hdfs_fdw_15-2.3.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-5PGDG.rhel10.x86_64.rpm pgdg 2.3.2 115.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/hdfs_fdw_15-2.3.2-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.3-1PGDG.rhel10.aarch64.rpm pgdg 2.3.3 115.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hdfs_fdw_15-2.3.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 hdfs_fdw_15 hdfs_fdw_15-2.3.2-5PGDG.rhel10.aarch64.rpm pgdg 2.3.2 114.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/hdfs_fdw_15-2.3.2-5PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel8.x86_64.rpm pgdg 2.3.3 115.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.3.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-1PGDG.rhel8.x86_64.rpm pgdg 2.3.2 117.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.3.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.1-1PGDG.rhel8.x86_64.rpm pgdg 2.3.1 128.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.3.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.0-1.rhel8.x86_64.rpm pgdg 2.3.0 127.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.2.0-1.rhel8.x86_64.rpm pgdg 2.2.0 117.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.2.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.1.0-1.rhel8.x86_64.rpm pgdg 2.1.0 112.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.1.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.0.9-2.rhel8.x86_64.rpm pgdg 2.0.9 94.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/hdfs_fdw_14-2.0.9-2.rhel8.x86_64.rpm
@ el8.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel8.aarch64.rpm pgdg 2.3.3 112.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hdfs_fdw_14-2.3.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-1PGDG.rhel8.aarch64.rpm pgdg 2.3.2 114.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hdfs_fdw_14-2.3.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.1-1PGDG.rhel8.aarch64.rpm pgdg 2.3.1 113.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hdfs_fdw_14-2.3.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.0-1.rhel8.aarch64.rpm pgdg 2.3.0 124.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/hdfs_fdw_14-2.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel9.x86_64.rpm pgdg 2.3.3 116.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.3.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-1PGDG.rhel9.x86_64.rpm pgdg 2.3.2 119.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.3.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.1-1PGDG.rhel9.x86_64.rpm pgdg 2.3.1 130.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.3.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.0-1.rhel9.x86_64.rpm pgdg 2.3.0 129.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.3.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.2.0-1.rhel9.x86_64.rpm pgdg 2.2.0 119.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.2.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.1.0-1.rhel9.x86_64.rpm pgdg 2.1.0 114.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/hdfs_fdw_14-2.1.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel9.aarch64.rpm pgdg 2.3.3 114.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hdfs_fdw_14-2.3.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-1PGDG.rhel9.aarch64.rpm pgdg 2.3.2 116.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hdfs_fdw_14-2.3.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.1-1PGDG.rhel9.aarch64.rpm pgdg 2.3.1 115.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hdfs_fdw_14-2.3.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.0-1.rhel9.aarch64.rpm pgdg 2.3.0 127.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hdfs_fdw_14-2.3.0-1.rhel9.aarch64.rpm
@ el9.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.2.0-1.rhel9.aarch64.rpm pgdg 2.2.0 117.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/hdfs_fdw_14-2.2.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel10.x86_64.rpm pgdg 2.3.3 117.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hdfs_fdw_14-2.3.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-5PGDG.rhel10.x86_64.rpm pgdg 2.3.2 115.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/hdfs_fdw_14-2.3.2-5PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.3-1PGDG.rhel10.aarch64.rpm pgdg 2.3.3 115.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hdfs_fdw_14-2.3.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 hdfs_fdw_14 hdfs_fdw_14-2.3.2-5PGDG.rhel10.aarch64.rpm pgdg 2.3.2 114.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/hdfs_fdw_14-2.3.2-5PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `hdfs_fdw` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install hdfs_fdw;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y hdfs_fdw -v 18  # PG 18
pig ext install -y hdfs_fdw -v 17  # PG 17
pig ext install -y hdfs_fdw -v 16  # PG 16
pig ext install -y hdfs_fdw -v 15  # PG 15
pig ext install -y hdfs_fdw -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y hdfs_fdw_18       # PG 18
dnf install -y hdfs_fdw_17       # PG 17
dnf install -y hdfs_fdw_16       # PG 16
dnf install -y hdfs_fdw_15       # PG 15
dnf install -y hdfs_fdw_14       # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION hdfs_fdw;
```




## Usage

> [hdfs_fdw: Foreign data wrapper for remote HDFS servers](https://github.com/EnterpriseDB/hdfs_fdw)

### Create Server

```sql
CREATE EXTENSION hdfs_fdw;

CREATE SERVER hdfs_server FOREIGN DATA WRAPPER hdfs_fdw
  OPTIONS (host '127.0.0.1', port '10000', client_type 'hiveserver2');
```

**Server Options:** `host` (default `localhost`), `port` (default `10000`), `client_type` (`hiveserver2` or `spark`, default `hiveserver2`), `auth_type` (`NOSASL` or `LDAP`), `connect_timeout` (default 300), `fetch_size` (default 10000), `log_remote_sql` (default `false`), `use_remote_estimate` (default `false`), `enable_join_pushdown` (default `true`), `enable_aggregate_pushdown` (default `true`), `enable_order_by_pushdown` (default `true`).

### Create User Mapping

```sql
CREATE USER MAPPING FOR postgres SERVER hdfs_server
  OPTIONS (username 'hive_user', password 'hive_password');
```

For NOSASL authentication, omit the OPTIONS clause entirely.

### Create Foreign Table

```sql
CREATE FOREIGN TABLE weblogs (
  client_ip text,
  http_status_code text,
  uri text,
  request_count bigint
)
SERVER hdfs_server
OPTIONS (dbname 'default', table_name 'weblogs');
```

**Table Options:** `dbname` (default `default`), `table_name` (defaults to foreign table name), `enable_join_pushdown`, `enable_aggregate_pushdown`, `enable_order_by_pushdown`.

### Query

```sql
SELECT client_ip, count(*) FROM weblogs GROUP BY client_ip ORDER BY count(*) DESC LIMIT 10;
```

### Spark Example

```sql
CREATE SERVER spark_server FOREIGN DATA WRAPPER hdfs_fdw
  OPTIONS (host '127.0.0.1', port '10000', client_type 'spark');

CREATE USER MAPPING FOR postgres SERVER spark_server
  OPTIONS (username 'spark_user', password 'spark_pass');

CREATE FOREIGN TABLE spark_table (
  id int,
  name text,
  value double precision
)
SERVER spark_server
OPTIONS (dbname 'default', table_name 'my_table');
```

### Pushdown Features

hdfs_fdw pushes down WHERE clauses, JOINs, aggregate functions, ORDER BY, and LIMIT/OFFSET to the remote Hive/Spark server. Control pushdown at the session level:

```sql
SET hdfs_fdw.enable_join_pushdown = on;
SET hdfs_fdw.enable_aggregate_pushdown = on;
SET hdfs_fdw.enable_order_by_pushdown = on;
SET hdfs_fdw.enable_limit_pushdown = on;
```
