---
title: "chkpass"
linkTitle: "chkpass"
description: "data type for auto-encrypted passwords"
weight: 3920
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/lacanoid/chkpass">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">lacanoid/chkpass</div>
    <div class="ext-card__desc">https://github.com/lacanoid/chkpass</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/chkpass-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">chkpass-1.0.tar.gz</div>
    <div class="ext-card__desc">chkpass-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`chkpass`**](/ext/e/chkpass) | `1.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3920  | [**`chkpass`**](/ext/e/chkpass) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `chkpass` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `chkpass_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-chkpass` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/chkpass_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/chkpass_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/chkpass_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/chkpass_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/chkpass_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 chkpass_18 chkpass_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/chkpass_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-chkpass postgresql-18-chkpass_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 11.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-18-chkpass_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/chkpass_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/chkpass_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/chkpass_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/chkpass_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/chkpass_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 chkpass_17 chkpass_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/chkpass_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-chkpass postgresql-17-chkpass_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-17-chkpass_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/chkpass_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/chkpass_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/chkpass_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/chkpass_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/chkpass_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 chkpass_16 chkpass_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/chkpass_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-chkpass postgresql-16-chkpass_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-16-chkpass_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/chkpass_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/chkpass_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/chkpass_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/chkpass_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/chkpass_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 chkpass_15 chkpass_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/chkpass_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-chkpass postgresql-15-chkpass_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-15-chkpass_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/chkpass_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/chkpass_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/chkpass_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/chkpass_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 13.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/chkpass_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 chkpass_14 chkpass_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/chkpass_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 11.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 11.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 11.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 11.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-chkpass postgresql-14-chkpass_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 11.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/chkpass/postgresql-14-chkpass_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `chkpass` using `pig build`:

```bash
pig build pkg chkpass         # build RPM / DEB packages
```


## Install

You can install `chkpass` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install chkpass;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y chkpass -v 18  # PG 18
pig ext install -y chkpass -v 17  # PG 17
pig ext install -y chkpass -v 16  # PG 16
pig ext install -y chkpass -v 15  # PG 15
pig ext install -y chkpass -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y chkpass_18       # PG 18
dnf install -y chkpass_17       # PG 17
dnf install -y chkpass_16       # PG 16
dnf install -y chkpass_15       # PG 15
dnf install -y chkpass_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-chkpass   # PG 18
apt install -y postgresql-17-chkpass   # PG 17
apt install -y postgresql-16-chkpass   # PG 16
apt install -y postgresql-15-chkpass   # PG 15
apt install -y postgresql-14-chkpass   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION chkpass;
```



## Usage

> [chkpass: auto-encrypted password data type](https://github.com/lacanoid/chkpass)

The `chkpass` extension provides a data type for storing encrypted passwords. Originally bundled with PostgreSQL (removed in PG 11), this is a standalone version for modern PostgreSQL.

```sql
CREATE EXTENSION chkpass;
```

### Data Type

The `chkpass` type automatically encrypts passwords using Unix `crypt()` on input and stores only the encrypted form.

```sql
CREATE TABLE accounts (
    username text PRIMARY KEY,
    password chkpass
);

INSERT INTO accounts VALUES ('admin', 'mysecretpassword');
```

### Operators

The `=` operator checks a plaintext password against the stored encrypted value:

```sql
SELECT * FROM accounts WHERE password = 'mysecretpassword';
-- Returns the matching row if the password is correct
```

### Behavior

- Passwords are automatically encrypted on input -- the plaintext is never stored
- Output displays the encrypted hash, not the original password
- Comparison with `=` encrypts the right-hand operand and compares hashes
- Uses the standard Unix `crypt()` function for encryption
