---
title: "pguecc"
linkTitle: "pguecc"
description: "uECC bindings for Postgres"
weight: 4460
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ameensol/pg-ecdsa">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ameensol/pg-ecdsa</div>
    <div class="ext-card__desc">https://github.com/ameensol/pg-ecdsa</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-ecdsa-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-ecdsa-1.0.tar.gz</div>
    <div class="ext-card__desc">pg-ecdsa-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ecdsa`**](/ext/e/pguecc) | `1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4460  | [**`pguecc`**](/ext/e/pguecc) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgsodium`](/ext/e/pgsodium) [`pgcrypto`](/ext/e/pgcrypto) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pgcryptokey`](/ext/e/pgcryptokey) [`pgsmcrypto`](/ext/e/pgsmcrypto) [`pg_oidc_validator`](/ext/e/pg_oidc_validator) [`sslutils`](/ext/e/sslutils) [`sslinfo`](/ext/e/sslinfo) [`hashlib`](/ext/e/hashlib) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_ecdsa` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_ecdsa_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-ecdsa` | - |
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
@ el8.x86_64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ecdsa_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 27.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ecdsa_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ecdsa_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ecdsa_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 25.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ecdsa_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_ecdsa_18 pg_ecdsa_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ecdsa_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 64.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 63.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 65.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 66.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 66.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 64.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-ecdsa postgresql-18-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-18-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ecdsa_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 27.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ecdsa_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ecdsa_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ecdsa_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 25.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ecdsa_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_ecdsa_17 pg_ecdsa_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ecdsa_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 63.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 65.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 63.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 69.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 68.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 66.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-ecdsa postgresql-17-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-17-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ecdsa_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 27.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ecdsa_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 25.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ecdsa_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ecdsa_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 25.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ecdsa_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_ecdsa_16 pg_ecdsa_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 25.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ecdsa_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 64.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 63.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 65.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 69.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 68.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 66.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 64.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-ecdsa postgresql-16-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 64.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-16-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ecdsa_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ecdsa_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 27.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ecdsa_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ecdsa_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ecdsa_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_ecdsa_15 pg_ecdsa_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ecdsa_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 63.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 65.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 64.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 71.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 70.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 68.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 67.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-ecdsa postgresql-15-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 66.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-15-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 28.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_ecdsa_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_ecdsa_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 27.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_ecdsa_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 27.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_ecdsa_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 28.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_ecdsa_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_ecdsa_14 pg_ecdsa_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 27.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_ecdsa_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 65.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 63.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 65.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 64.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 71.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 70.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 68.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 67.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb pigsty 1.0 67.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-ecdsa postgresql-14-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb pigsty 1.0 66.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-ecdsa/postgresql-14-pg-ecdsa_1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_ecdsa` using `pig build`:

```bash
pig build pkg pg_ecdsa         # build RPM / DEB packages
```


## Install

You can install `pg_ecdsa` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_ecdsa;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_ecdsa -v 18  # PG 18
pig ext install -y pg_ecdsa -v 17  # PG 17
pig ext install -y pg_ecdsa -v 16  # PG 16
pig ext install -y pg_ecdsa -v 15  # PG 15
pig ext install -y pg_ecdsa -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_ecdsa_18       # PG 18
dnf install -y pg_ecdsa_17       # PG 17
dnf install -y pg_ecdsa_16       # PG 16
dnf install -y pg_ecdsa_15       # PG 15
dnf install -y pg_ecdsa_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-ecdsa   # PG 18
apt install -y postgresql-17-pg-ecdsa   # PG 17
apt install -y postgresql-16-pg-ecdsa   # PG 16
apt install -y postgresql-15-pg-ecdsa   # PG 15
apt install -y postgresql-14-pg-ecdsa   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pguecc;
```




## Usage

> [pguecc: Elliptic curve cryptography (micro-ecc bindings) for PostgreSQL](https://github.com/ameensol/pg-ecdsa)

Requires the `pgcrypto` extension.

### Generate Key Pair

```sql
SELECT ecdsa_make_key('secp256k1');
-- (public_key_hex, private_key_hex)
```

### Sign Data

```sql
SELECT ecdsa_sign(
    '000000000000000000000000000000000000000000',  -- private key (hex)
    '1234',                                          -- data to sign
    'sha256',                                        -- hash function
    'secp160r1'                                      -- curve name
);
```

### Verify Signature

```sql
SELECT ecdsa_verify(
    '<public_key_hex>',
    'hello, world',
    '<signature_hex>',
    'sha256',
    'secp256k1'
);
-- t
```

### Key Validation

```sql
SELECT ecdsa_is_valid_public_key('<public_key_hex>', 'secp256k1');
SELECT ecdsa_is_valid_private_key('<private_key_hex>', 'secp256k1');
SELECT ecdsa_is_valid_curve('secp256k1');  -- true
```

### Supported Curves

`secp160r1`, `secp192r1`, `secp224r1`, `secp256r1`, `secp256k1`

### Raw API

For direct signing without hashing (use with caution):

```sql
SELECT ecdsa_sign_raw(private_key_bytea, hash_bytea, 'secp256k1');
SELECT ecdsa_verify_raw(public_key_bytea, hash_bytea, signature_bytea, 'secp256k1');
```
