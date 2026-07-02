---
title: "md5hash"
linkTitle: "md5hash"
description: "type for storing 128-bit binary data inline"
weight: 3610
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/tvondra/md5hash">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">tvondra/md5hash</div>
    <div class="ext-card__desc">https://github.com/tvondra/md5hash</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/md5hash-1.0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">md5hash-1.0.1.tar.gz</div>
    <div class="ext-card__desc">md5hash-1.0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`md5hash`**](/ext/e/md5hash) | `1.0.1` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3610  | [**`md5hash`**](/ext/e/md5hash) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hashlib`](/ext/e/hashlib) [`xxhash`](/ext/e/xxhash) [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `md5hash` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `md5hash_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-md5hash` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 | AVAIL PIGSTY 1.0.1 1 |
@ el8.x86_64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/md5hash_18-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/md5hash_18-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/md5hash_18-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/md5hash_18-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/md5hash_18-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 md5hash_18 md5hash_18-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/md5hash_18-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-md5hash postgresql-18-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-18-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/md5hash_17-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/md5hash_17-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/md5hash_17-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/md5hash_17-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/md5hash_17-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 md5hash_17 md5hash_17-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/md5hash_17-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-md5hash postgresql-17-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-17-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/md5hash_16-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/md5hash_16-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/md5hash_16-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/md5hash_16-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/md5hash_16-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 md5hash_16 md5hash_16-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/md5hash_16-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-md5hash postgresql-16-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-16-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/md5hash_15-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/md5hash_15-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/md5hash_15-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/md5hash_15-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/md5hash_15-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 md5hash_15 md5hash_15-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 15.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/md5hash_15-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-md5hash postgresql-15-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-15-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el8.x86_64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/md5hash_14-1.0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el8.aarch64.rpm pigsty 1.0.1 15.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/md5hash_14-1.0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el9.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/md5hash_14-1.0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el9.aarch64.rpm pigsty 1.0.1 14.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/md5hash_14-1.0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el10.x86_64.rpm pigsty 1.0.1 14.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/md5hash_14-1.0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 md5hash_14 md5hash_14-1.0.1-1PIGSTY.el10.aarch64.rpm pigsty 1.0.1 14.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/md5hash_14-1.0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb pigsty 1.0.1 13.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb pigsty 1.0.1 13.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb pigsty 1.0.1 14.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb pigsty 1.0.1 14.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~noble_amd64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~noble_arm64.deb pigsty 1.0.1 14.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb pigsty 1.0.1 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-md5hash postgresql-14-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb pigsty 1.0.1 14.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/md5hash/postgresql-14-md5hash_1.0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `md5hash` using `pig build`:

```bash
pig build pkg md5hash         # build RPM / DEB packages
```


## Install

You can install `md5hash` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install md5hash;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y md5hash -v 18  # PG 18
pig ext install -y md5hash -v 17  # PG 17
pig ext install -y md5hash -v 16  # PG 16
pig ext install -y md5hash -v 15  # PG 15
pig ext install -y md5hash -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y md5hash_18       # PG 18
dnf install -y md5hash_17       # PG 17
dnf install -y md5hash_16       # PG 16
dnf install -y md5hash_15       # PG 15
dnf install -y md5hash_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-md5hash   # PG 18
apt install -y postgresql-17-md5hash   # PG 17
apt install -y postgresql-16-md5hash   # PG 16
apt install -y postgresql-15-md5hash   # PG 15
apt install -y postgresql-14-md5hash   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION md5hash;
```




## Usage

> [md5hash: native MD5 hash data type for PostgreSQL](https://github.com/tvondra/md5hash)

The `md5hash` extension provides an efficient 128-bit data type for storing MD5 hashes in binary format (16 bytes) instead of text (32+ bytes).

```sql
CREATE EXTENSION md5hash;

CREATE TABLE test_table (
    id md5hash PRIMARY KEY
);

INSERT INTO test_table VALUES ('c4ca4238a0b923820dcc509a6f75849b');

SELECT * FROM test_table
WHERE id = 'c4ca4238a0b923820dcc509a6f75849b';
```

### Operators

Standard comparison operators are supported: `=`, `<>`, `<`, `>`, `<=`, `>=`.

### Index Support

Btree index operator class is included, enabling efficient lookups and primary key constraints on `md5hash` columns.

### Storage Benefits

Compared to storing MD5 as `text`, the `md5hash` type uses approximately 60% of the storage space and provides faster indexed lookups.
