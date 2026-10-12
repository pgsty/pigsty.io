---
title: "libx509pq"
linkTitle: "libx509pq"
description: "X.509 certificate parsing and inspection through OpenSSL"
weight: 7420
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/crtsh/libx509pq">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">crtsh/libx509pq</div>
    <div class="ext-card__desc">https://github.com/crtsh/libx509pq</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/libx509pq-1.3-bed05c6e87d7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">libx509pq-1.3-bed05c6e87d7.tar.gz</div>
    <div class="ext-card__desc">libx509pq-1.3-bed05c6e87d7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`libx509pq`**](/ext/e/libx509pq) | `1.3` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license gpl30orlater" href="/ext/license#gpl30orlater">GPL-3.0-or-later</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7420  | [**`libx509pq`**](/ext/e/libx509pq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`sslinfo`](/ext/e/sslinfo) [`sslutils`](/ext/e/sslutils) [`pg_snakeoil`](/ext/e/pg_snakeoil) [`pgcrypto`](/ext/e/pgcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires OpenSSL 1.1.1+; GPL-3.0-or-later is explicit in source headers. EL9 default crypto policy rejects a legacy SHA-1 test fixture; SHA-256 verification passed without changing policy.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `libx509pq` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `libx509pq_$v` | `openssl-libs` |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-libx509pq` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 | AVAIL PIGSTY 1.3 1 |
@ el8.x86_64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el8.x86_64.rpm pigsty 1.3 92.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/libx509pq_18-1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el8.aarch64.rpm pigsty 1.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/libx509pq_18-1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el9.x86_64.rpm pigsty 1.3 92.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/libx509pq_18-1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el9.aarch64.rpm pigsty 1.3 92.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/libx509pq_18-1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el10.x86_64.rpm pigsty 1.3 93.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/libx509pq_18-1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 libx509pq_18 libx509pq_18-1.3-1PGSTY.el10.aarch64.rpm pigsty 1.3 92.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/libx509pq_18-1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~bookworm_amd64.deb pigsty 1.3 76.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~bookworm_arm64.deb pigsty 1.3 75.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~trixie_amd64.deb pigsty 1.3 76.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~trixie_arm64.deb pigsty 1.3 75.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~jammy_amd64.deb pigsty 1.3 83.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~jammy_arm64.deb pigsty 1.3 82.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~noble_amd64.deb pigsty 1.3 80.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~noble_arm64.deb pigsty 1.3 80.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~resolute_amd64.deb pigsty 1.3 80.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-libx509pq postgresql-18-libx509pq_1.3-1PGSTY~resolute_arm64.deb pigsty 1.3 79.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-18-libx509pq_1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el8.x86_64.rpm pigsty 1.3 92.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/libx509pq_17-1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el8.aarch64.rpm pigsty 1.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/libx509pq_17-1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el9.x86_64.rpm pigsty 1.3 93.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/libx509pq_17-1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el9.aarch64.rpm pigsty 1.3 92.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/libx509pq_17-1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el10.x86_64.rpm pigsty 1.3 93.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/libx509pq_17-1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 libx509pq_17 libx509pq_17-1.3-1PGSTY.el10.aarch64.rpm pigsty 1.3 92.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/libx509pq_17-1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~bookworm_amd64.deb pigsty 1.3 76.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~bookworm_arm64.deb pigsty 1.3 75.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~trixie_amd64.deb pigsty 1.3 76.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~trixie_arm64.deb pigsty 1.3 75.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~jammy_amd64.deb pigsty 1.3 97.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~jammy_arm64.deb pigsty 1.3 96.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~noble_amd64.deb pigsty 1.3 80.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~noble_arm64.deb pigsty 1.3 80.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~resolute_amd64.deb pigsty 1.3 80.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-libx509pq postgresql-17-libx509pq_1.3-1PGSTY~resolute_arm64.deb pigsty 1.3 79.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-17-libx509pq_1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el8.x86_64.rpm pigsty 1.3 92.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/libx509pq_16-1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el8.aarch64.rpm pigsty 1.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/libx509pq_16-1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el9.x86_64.rpm pigsty 1.3 93.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/libx509pq_16-1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el9.aarch64.rpm pigsty 1.3 92.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/libx509pq_16-1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el10.x86_64.rpm pigsty 1.3 93.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/libx509pq_16-1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 libx509pq_16 libx509pq_16-1.3-1PGSTY.el10.aarch64.rpm pigsty 1.3 92.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/libx509pq_16-1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~bookworm_amd64.deb pigsty 1.3 76.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~bookworm_arm64.deb pigsty 1.3 75.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~trixie_amd64.deb pigsty 1.3 76.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~trixie_arm64.deb pigsty 1.3 75.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~jammy_amd64.deb pigsty 1.3 96.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~jammy_arm64.deb pigsty 1.3 95.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~noble_amd64.deb pigsty 1.3 80.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~noble_arm64.deb pigsty 1.3 80.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~resolute_amd64.deb pigsty 1.3 80.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-libx509pq postgresql-16-libx509pq_1.3-1PGSTY~resolute_arm64.deb pigsty 1.3 79.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-16-libx509pq_1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el8.x86_64.rpm pigsty 1.3 92.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/libx509pq_15-1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el8.aarch64.rpm pigsty 1.3 91.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/libx509pq_15-1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el9.x86_64.rpm pigsty 1.3 93.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/libx509pq_15-1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el9.aarch64.rpm pigsty 1.3 92.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/libx509pq_15-1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el10.x86_64.rpm pigsty 1.3 93.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/libx509pq_15-1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 libx509pq_15 libx509pq_15-1.3-1PGSTY.el10.aarch64.rpm pigsty 1.3 93.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/libx509pq_15-1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~bookworm_amd64.deb pigsty 1.3 77.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~bookworm_arm64.deb pigsty 1.3 76.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~trixie_amd64.deb pigsty 1.3 76.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~trixie_arm64.deb pigsty 1.3 75.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~jammy_amd64.deb pigsty 1.3 96.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~jammy_arm64.deb pigsty 1.3 96.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~noble_amd64.deb pigsty 1.3 81.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~noble_arm64.deb pigsty 1.3 81.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~resolute_amd64.deb pigsty 1.3 80.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-libx509pq postgresql-15-libx509pq_1.3-1PGSTY~resolute_arm64.deb pigsty 1.3 80.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-15-libx509pq_1.3-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el8.x86_64.rpm pigsty 1.3 92.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/libx509pq_14-1.3-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el8.aarch64.rpm pigsty 1.3 91.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/libx509pq_14-1.3-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el9.x86_64.rpm pigsty 1.3 93.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/libx509pq_14-1.3-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el9.aarch64.rpm pigsty 1.3 92.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/libx509pq_14-1.3-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el10.x86_64.rpm pigsty 1.3 93.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/libx509pq_14-1.3-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 libx509pq_14 libx509pq_14-1.3-1PGSTY.el10.aarch64.rpm pigsty 1.3 92.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/libx509pq_14-1.3-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~bookworm_amd64.deb pigsty 1.3 81.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~bookworm_arm64.deb pigsty 1.3 81.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~trixie_amd64.deb pigsty 1.3 81.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~trixie_arm64.deb pigsty 1.3 80.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~jammy_amd64.deb pigsty 1.3 99.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~jammy_arm64.deb pigsty 1.3 98.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~noble_amd64.deb pigsty 1.3 85.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~noble_arm64.deb pigsty 1.3 86.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~resolute_amd64.deb pigsty 1.3 85.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-libx509pq postgresql-14-libx509pq_1.3-1PGSTY~resolute_arm64.deb pigsty 1.3 85.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/libx/libx509pq/postgresql-14-libx509pq_1.3-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `libx509pq` using `pig build`:

```bash
pig build pkg libx509pq         # build RPM / DEB packages
```


## Install

You can install `libx509pq` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install libx509pq;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y libx509pq -v 18  # PG 18
pig ext install -y libx509pq -v 17  # PG 17
pig ext install -y libx509pq -v 16  # PG 16
pig ext install -y libx509pq -v 15  # PG 15
pig ext install -y libx509pq -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y libx509pq_18       # PG 18
dnf install -y libx509pq_17       # PG 17
dnf install -y libx509pq_16       # PG 16
dnf install -y libx509pq_15       # PG 15
dnf install -y libx509pq_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-libx509pq   # PG 18
apt install -y postgresql-17-libx509pq   # PG 17
apt install -y postgresql-16-libx509pq   # PG 16
apt install -y postgresql-15-libx509pq   # PG 15
apt install -y postgresql-14-libx509pq   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION libx509pq;
```

## Usage

Sources:

- [Upstream README at the reviewed commit](https://github.com/crtsh/libx509pq/blob/bed05c6e87d79a98d79e42a1fac16386eead0c13/README.md)
- [Version 1.3 SQL objects](https://github.com/crtsh/libx509pq/blob/bed05c6e87d79a98d79e42a1fac16386eead0c13/libx509pq--1.3.sql)
- [OpenSSL-backed implementation](https://github.com/crtsh/libx509pq/blob/bed05c6e87d79a98d79e42a1fac16386eead0c13/libx509pq.c)

`libx509pq` exposes OpenSSL X.509 certificate parsing to SQL. It accepts DER certificates as `bytea` and extracts subject, issuer, validity, serial number, key and signature information, extensions, alternate names, fingerprints, and related fields.

```sql
CREATE EXTENSION libx509pq;
SELECT x509_commonName(der),
       x509_issuerName(der),
       x509_notBefore(der),
       x509_notAfter(der),
       x509_keyAlgorithm(der),
       x509_keySize(der)
FROM certificate_store;
```

For multiple basic fields, `x509_basic_info(der)` avoids parsing the same certificate repeatedly. Other APIs enumerate extensions and names, expose public keys, identify selected weak-key patterns, and verify one certificate signature against a supplied key.

Parsing or signature verification is not full PKIX path validation: it does not by itself establish trust, hostname validity, revocation status, policy, or current acceptability. Malformed DER reaches native OpenSSL code; cap input size, fuzz and regression-test untrusted corpora, and keep PostgreSQL and OpenSSL patched. Pin the OpenSSL ABI used at build and runtime, review sentinel-versus-null error behavior, restrict expensive functions, and benchmark bulk parsing.
