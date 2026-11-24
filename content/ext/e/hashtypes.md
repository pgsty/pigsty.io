---
title: "hashtypes"
linkTitle: "hashtypes"
description: "sha1, md5 and other data types for PostgreSQL"
weight: 3770
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/adjust/hashtypes/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">adjust/hashtypes</div>
    <div class="ext-card__desc">https://github.com/adjust/hashtypes/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hashtypes-0.1.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hashtypes-0.1.5.tar.gz</div>
    <div class="ext-card__desc">hashtypes-0.1.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hashtypes`**](/ext/e/hashtypes) | `0.1.5` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3770  | [**`hashtypes`**](/ext/e/hashtypes) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgcrypto`](/ext/e/pgcrypto) [`md5hash`](/ext/e/md5hash) [`hashlib`](/ext/e/hashlib) [`xxhash`](/ext/e/xxhash) [`pgsodium`](/ext/e/pgsodium) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pguecc`](/ext/e/pguecc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "19,18,17,16,15" >}} | `hashtypes` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "19,18,17,16,15" >}} | `hashtypes_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.5` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-hashtypes` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 | AVAIL PIGSTY 0.1.5 1 |
@ el9.x86_64 19 hashtypes_19 hashtypes_19-0.1.5-1PGSTY.el9.x86_64.rpm pigsty 0.1.5 45.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hashtypes_19-0.1.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 hashtypes_19 hashtypes_19-0.1.5-1PGSTY.el9.aarch64.rpm pigsty 0.1.5 44.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hashtypes_19-0.1.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 hashtypes_19 hashtypes_19-0.1.5-1PGSTY.el10.x86_64.rpm pigsty 0.1.5 44.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hashtypes_19-0.1.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 hashtypes_19 hashtypes_19-0.1.5-1PGSTY.el10.aarch64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hashtypes_19-0.1.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb pigsty 0.1.5 35.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb pigsty 0.1.5 35.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~noble_amd64.deb pigsty 0.1.5 35.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~noble_arm64.deb pigsty 0.1.5 35.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb pigsty 0.1.5 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-hashtypes postgresql-19-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-19-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el8.x86_64.rpm pigsty 0.1.5 44.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hashtypes_18-0.1.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el8.aarch64.rpm pigsty 0.1.5 43.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hashtypes_18-0.1.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el9.x86_64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hashtypes_18-0.1.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el9.aarch64.rpm pigsty 0.1.5 44.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hashtypes_18-0.1.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el10.x86_64.rpm pigsty 0.1.5 44.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hashtypes_18-0.1.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 hashtypes_18 hashtypes_18-0.1.5-1PGSTY.el10.aarch64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hashtypes_18-0.1.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb pigsty 0.1.5 33.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb pigsty 0.1.5 35.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb pigsty 0.1.5 35.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~noble_amd64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~noble_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb pigsty 0.1.5 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-hashtypes postgresql-18-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-18-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el8.x86_64.rpm pigsty 0.1.5 44.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hashtypes_17-0.1.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el8.aarch64.rpm pigsty 0.1.5 43.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hashtypes_17-0.1.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el9.x86_64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hashtypes_17-0.1.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el9.aarch64.rpm pigsty 0.1.5 44.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hashtypes_17-0.1.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el10.x86_64.rpm pigsty 0.1.5 44.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hashtypes_17-0.1.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 hashtypes_17 hashtypes_17-0.1.5-1PGSTY.el10.aarch64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hashtypes_17-0.1.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb pigsty 0.1.5 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb pigsty 0.1.5 36.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~noble_amd64.deb pigsty 0.1.5 35.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~noble_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb pigsty 0.1.5 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-hashtypes postgresql-17-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-17-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el8.x86_64.rpm pigsty 0.1.5 44.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hashtypes_16-0.1.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el8.aarch64.rpm pigsty 0.1.5 43.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hashtypes_16-0.1.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el9.x86_64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hashtypes_16-0.1.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el9.aarch64.rpm pigsty 0.1.5 44.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hashtypes_16-0.1.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el10.x86_64.rpm pigsty 0.1.5 44.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hashtypes_16-0.1.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 hashtypes_16 hashtypes_16-0.1.5-1PGSTY.el10.aarch64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hashtypes_16-0.1.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb pigsty 0.1.5 33.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb pigsty 0.1.5 36.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb pigsty 0.1.5 36.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~noble_amd64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~noble_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb pigsty 0.1.5 35.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-hashtypes postgresql-16-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-16-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el8.x86_64.rpm pigsty 0.1.5 44.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hashtypes_15-0.1.5-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el8.aarch64.rpm pigsty 0.1.5 44.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hashtypes_15-0.1.5-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el9.x86_64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hashtypes_15-0.1.5-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el9.aarch64.rpm pigsty 0.1.5 44.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hashtypes_15-0.1.5-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el10.x86_64.rpm pigsty 0.1.5 44.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hashtypes_15-0.1.5-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 hashtypes_15 hashtypes_15-0.1.5-1PGSTY.el10.aarch64.rpm pigsty 0.1.5 45.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hashtypes_15-0.1.5-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb pigsty 0.1.5 33.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb pigsty 0.1.5 33.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb pigsty 0.1.5 33.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb pigsty 0.1.5 36.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb pigsty 0.1.5 36.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~noble_amd64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~noble_arm64.deb pigsty 0.1.5 35.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb pigsty 0.1.5 34.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-hashtypes postgresql-15-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb pigsty 0.1.5 35.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/h/hashtypes/postgresql-15-hashtypes_0.1.5-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `hashtypes` using `pig build`:

```bash
pig build pkg hashtypes         # build RPM / DEB packages
```


## Install

You can install `hashtypes` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install hashtypes;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y hashtypes -v 19  # PG 19
pig ext install -y hashtypes -v 18  # PG 18
pig ext install -y hashtypes -v 17  # PG 17
pig ext install -y hashtypes -v 16  # PG 16
pig ext install -y hashtypes -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y hashtypes_19       # PG 19
dnf install -y hashtypes_18       # PG 18
dnf install -y hashtypes_17       # PG 17
dnf install -y hashtypes_16       # PG 16
dnf install -y hashtypes_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-hashtypes   # PG 19
apt install -y postgresql-18-hashtypes   # PG 18
apt install -y postgresql-17-hashtypes   # PG 17
apt install -y postgresql-16-hashtypes   # PG 16
apt install -y postgresql-15-hashtypes   # PG 15
```


**Create Extension**:

```sql
CREATE EXTENSION hashtypes;
```




## Usage

> [hashtypes: hash and checksum data types (SHA, CRC32)](https://github.com/adjust/hashtypes/)

The `hashtypes` extension provides native data types for storing hash values and checksums in their binary representation, saving storage compared to text.

```sql
CREATE EXTENSION hashtypes;
```

### Data Types

| Type | Storage | Description |
|------|---------|-------------|
| `sha1` | 20 bytes | SHA-1 hash (160-bit) |
| `sha224` | 28 bytes | SHA-224 hash (224-bit) |
| `sha256` | 32 bytes | SHA-256 hash (256-bit) |
| `sha384` | 48 bytes | SHA-384 hash (384-bit) |
| `sha512` | 64 bytes | SHA-512 hash (512-bit) |
| `crc32` | 4 bytes | CRC-32 checksum |

### Usage

```sql
CREATE TABLE objects (
    hash sha256 PRIMARY KEY,
    data bytea
);

INSERT INTO objects VALUES (
    'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    '\x'
);

SELECT * FROM objects WHERE hash = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855';
```

### Operators

All types support comparison operators: `=`, `<>`, `<`, `>`, `<=`, `>=`.

### Index Support

Btree and hash index operator classes are provided for all types.

### Casts

All types support bidirectional casts to/from `text` and `bytea`.
