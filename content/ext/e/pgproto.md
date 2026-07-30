---
title: "pgproto"
linkTitle: "pgproto"
description: "Native Protobuf parsing, mutation, indexing, and JSON conversion support"
weight: 4130
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Apaezmx/pgproto">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Apaezmx/pgproto</div>
    <div class="ext-card__desc">https://github.com/Apaezmx/pgproto</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgproto-0.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgproto-0.5.0.tar.gz</div>
    <div class="ext-card__desc">pgproto-0.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgproto`**](/ext/e/pgproto) | `0.5.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4130  | [**`pgproto`**](/ext/e/pgproto) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_protobuf`](/ext/e/pg_protobuf) [`decoderbufs`](/ext/e/decoderbufs) [`wal2json`](/ext/e/wal2json) [`pgoutput`](/ext/e/pgoutput) [`test_decoding`](/ext/e/test_decoding) [`pgmqtt`](/ext/e/pgmqtt) [`kafka_fdw`](/ext/e/kafka_fdw) [`pgq`](/ext/e/pgq) [`pg_logicalinspect`](/ext/e/pg_logicalinspect) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> release 0.3.3; SQL v1.0


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pgproto` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pgproto_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgproto` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
@ el8.x86_64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_18-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_18-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_18-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_18-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 31.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_18-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgproto_18 pgproto_18-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 30.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_18-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 50.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 52.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 50.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 53.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 54.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 53.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgproto postgresql-18-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 53.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-18-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_17-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_17-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_17-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_17-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 31.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_17-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgproto_17 pgproto_17-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 30.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_17-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 50.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 52.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 50.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 57.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 56.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 53.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgproto postgresql-17-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 53.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-17-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_16-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_16-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_16-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_16-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 31.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_16-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgproto_16 pgproto_16-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 30.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_16-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 50.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 52.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 50.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 57.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 56.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 53.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgproto postgresql-16-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 53.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-16-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 32.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_15-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_15-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_15-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 30.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_15-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_15-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgproto_15 pgproto_15-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 30.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_15-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 52.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 50.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 51.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 57.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 56.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 53.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgproto postgresql-15-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 53.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-15-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 32.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgproto_14-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 31.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgproto_14-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 31.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgproto_14-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 30.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgproto_14-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 32.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgproto_14-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgproto_14 pgproto_14-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 30.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgproto_14-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 50.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 52.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 51.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 57.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 56.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 54.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 53.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 54.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgproto postgresql-14-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 53.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgproto/postgresql-14-pgproto_0.5.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgproto` using `pig build`:

```bash
pig build pkg pgproto         # build RPM / DEB packages
```


## Install

You can install `pgproto` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgproto;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgproto -v 18  # PG 18
pig ext install -y pgproto -v 17  # PG 17
pig ext install -y pgproto -v 16  # PG 16
pig ext install -y pgproto -v 15  # PG 15
pig ext install -y pgproto -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgproto_18       # PG 18
dnf install -y pgproto_17       # PG 17
dnf install -y pgproto_16       # PG 16
dnf install -y pgproto_15       # PG 15
dnf install -y pgproto_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgproto   # PG 18
apt install -y postgresql-17-pgproto   # PG 17
apt install -y postgresql-16-pgproto   # PG 16
apt install -y postgresql-15-pgproto   # PG 15
apt install -y postgresql-14-pgproto   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgproto;
```




## Usage

Sources: [README](https://github.com/Apaezmx/pgproto/blob/v0.5.0/README.md), [release 0.5.0](https://github.com/Apaezmx/pgproto/releases/tag/v0.5.0), [PGXN 0.5.0](https://pgxn.org/dist/pgproto/0.5.0/), [SQL definitions](https://github.com/Apaezmx/pgproto/blob/v0.5.0/sql/pgproto--1.0.sql), [Makefile](https://github.com/Apaezmx/pgproto/blob/v0.5.0/Makefile), [pgproto.control](https://github.com/Apaezmx/pgproto/blob/v0.5.0/pgproto.control)

`pgproto` stores Protocol Buffers `proto3` payloads in PostgreSQL as a native `protobuf` type, with schema-aware extraction, update helpers, containment/index support, and text/integer path operators. The upstream package version is `0.5.0`; the extension SQL/control default version remains `1.0`.

The current upstream source is a C/PGXS extension: the official `Makefile` sets `MODULE_big = pgproto`, builds C objects from `src/*.o`, and includes `$(PGXS)`. The README describes the implementation as pure C with no external Protobuf library dependency.

```sql
CREATE EXTENSION pgproto;
```

### Schema Registry and Storage

`pgproto` needs runtime protobuf descriptors before name/path-based extraction can interpret a binary payload. Register a serialized `FileDescriptorSet` in `pb_schemas`, or call the SQL registration helper when that fits your workflow:

```sql
INSERT INTO pb_schemas (name, data)
VALUES ('MySchema', '\x...');

SELECT pb_register_schema('MySchema', '\x...');
```

Store serialized protobuf bytes in a `protobuf` column:

```sql
CREATE TABLE items (
  id serial PRIMARY KEY,
  data protobuf
);

INSERT INTO items (data) VALUES ('\x0a02082a');
```

The 0.5.0 SQL also installs a convenience cast from `protobuf` to `bytea`, so byte-oriented functions such as `length(data::bytea)` can be used when needed.

### Querying

Use the path operators for nested, repeated, and map fields:

```sql
-- Integer accessor: returns int4
SELECT data #> '{Outer, inner, id}'::text[] FROM items;

-- Text accessor: returns text
SELECT data #>> '{Outer, tags, mykey}'::text[] FROM items;

-- Array index lookup
SELECT data #> '{Outer, scores, 0}'::text[] FROM items;
```

Other user-facing extraction helpers and operators defined by the extension include:

- `pb_get_int32(protobuf, int4)` for tag-based `int4` extraction.
- `pb_get_int32_by_name(protobuf, text, text)` and `pb_get_int32_by_name_dot(protobuf, text)` for name-based integer extraction.
- `->` as shorthand for dot-path integer lookup through `pb_get_int32_by_name_dot`.
- `pb_get_int32_by_path(protobuf, text[])` behind `#>`.
- `pb_get_text_by_path(protobuf, text[])` behind `#>>`.
- `pb_to_json(protobuf, text)` for text JSON conversion when a message name is supplied.

### Updates and Merge

`pb_set`, `pb_insert`, and `pb_delete` are pure functions: they return a new `protobuf` value, so persist changes with `UPDATE ... SET`. Upstream 0.5.0 documents automatic compaction for these mutations to remove stale tags.

```sql
UPDATE items
SET data = pb_set(data, ARRAY['Outer', 'a'], '42');

UPDATE items
SET data = pb_insert(data, ARRAY['Outer', 'scores', '0'], '100');

UPDATE items
SET data = pb_insert(data, ARRAY['Outer', 'tags', 'key1'], 'value1');

UPDATE items
SET data = pb_delete(data, ARRAY['Outer', 'a']);
```

Merge two protobuf values with the `||` operator, which calls `pb_merge`:

```sql
UPDATE items
SET data = data || other.data
FROM other
WHERE items.id = other.id;
```

### Indexing and Containment

Use ordinary expression indexes on extracted fields:

```sql
CREATE INDEX idx_items_pb_id
ON items ((data #> '{Outer, inner, id}'::text[]));

SELECT *
FROM items
WHERE (data #> '{Outer, inner, id}'::text[]) = 42;
```

The SQL definitions also expose protobuf containment with `@>` and a default `protobuf_gin_ops` operator class for GIN indexes:

```sql
CREATE INDEX idx_items_data_gin
ON items USING gin (data protobuf_gin_ops);

SELECT * FROM items WHERE data @> '\x0a02082a'::protobuf;
```

### Schema Evolution

The README frames schema evolution as a normal use case: added fields read as `NULL` from older messages, deprecated or unknown fields are skipped during traversal, enums are read as standard varints, and unset `oneof` fields return `NULL`.

### Caveats

- Runtime schemas are required for schema-aware path navigation; without registered descriptors, the extension cannot resolve message field names.
- `#>` returns `int4` and `#>>` returns `text`; choose the operator/function that matches the expected field type.
- Mutator helpers do not update rows in place; the returned value must be assigned back to the column.
- The README benchmark numbers are upstream project benchmarks, not independent performance guarantees.
