---
title: "uri"
linkTitle: "uri"
description: "URI Data type for PostgreSQL"
weight: 3840
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/petere/pguri">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">petere/pguri</div>
    <div class="ext-card__desc">https://github.com/petere/pguri</div>
  </a>
  <a class="ext-card ext-card--source" href="pguri-1.20251029.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pguri-1.20251029.tar.gz</div>
    <div class="ext-card__desc">pguri-1.20251029.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_uri`**](/ext/e/uri) | `1.20251029` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3840  | [**`uri`**](/ext/e/uri) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> +int flag


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.20251029` | {{< pgvers "18,17,16,15,14" >}} | `pg_uri` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.20251029` | {{< pgvers "18,17,16,15,14" >}} | `pg_uri_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.20251029` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-uri` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| el8.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| el9.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| el9.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| el10.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| el10.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| d12.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| d12.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| d13.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| d13.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| u22.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| u22.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| u24.x86_64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
| u24.aarch64 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 | AVAIL PIGSTY 1.20251029 1 |
@ el8.x86_64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el8.x86_64.rpm pigsty 1.20251029 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uri_18-1.20251029-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el8.aarch64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uri_18-1.20251029-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el9.x86_64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uri_18-1.20251029-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el9.aarch64.rpm pigsty 1.20251029 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uri_18-1.20251029-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el10.x86_64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uri_18-1.20251029-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_uri_18 pg_uri_18-1.20251029-1PIGSTY.el10.aarch64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uri_18-1.20251029-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb pigsty 1.20251029 21.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb pigsty 1.20251029 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb pigsty 1.20251029 21.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb pigsty 1.20251029 22.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb pigsty 1.20251029 22.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb pigsty 1.20251029 22.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-uri postgresql-18-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb pigsty 1.20251029 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-18-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el8.x86_64.rpm pigsty 1.20251029 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uri_17-1.20251029-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el8.aarch64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uri_17-1.20251029-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el9.x86_64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uri_17-1.20251029-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el9.aarch64.rpm pigsty 1.20251029 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uri_17-1.20251029-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el10.x86_64.rpm pigsty 1.20251029 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uri_17-1.20251029-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_uri_17 pg_uri_17-1.20251029-1PIGSTY.el10.aarch64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uri_17-1.20251029-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb pigsty 1.20251029 21.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb pigsty 1.20251029 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb pigsty 1.20251029 21.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb pigsty 1.20251029 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb pigsty 1.20251029 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb pigsty 1.20251029 22.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-uri postgresql-17-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb pigsty 1.20251029 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-17-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el8.x86_64.rpm pigsty 1.20251029 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uri_16-1.20251029-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el8.aarch64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uri_16-1.20251029-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el9.x86_64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uri_16-1.20251029-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el9.aarch64.rpm pigsty 1.20251029 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uri_16-1.20251029-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el10.x86_64.rpm pigsty 1.20251029 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uri_16-1.20251029-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_uri_16 pg_uri_16-1.20251029-1PIGSTY.el10.aarch64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uri_16-1.20251029-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb pigsty 1.20251029 21.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb pigsty 1.20251029 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb pigsty 1.20251029 21.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb pigsty 1.20251029 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb pigsty 1.20251029 23.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb pigsty 1.20251029 22.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-uri postgresql-16-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb pigsty 1.20251029 22.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-16-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el8.x86_64.rpm pigsty 1.20251029 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uri_15-1.20251029-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el8.aarch64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uri_15-1.20251029-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el9.x86_64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uri_15-1.20251029-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el9.aarch64.rpm pigsty 1.20251029 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uri_15-1.20251029-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el10.x86_64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uri_15-1.20251029-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_uri_15 pg_uri_15-1.20251029-1PIGSTY.el10.aarch64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uri_15-1.20251029-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb pigsty 1.20251029 21.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb pigsty 1.20251029 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb pigsty 1.20251029 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb pigsty 1.20251029 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb pigsty 1.20251029 23.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb pigsty 1.20251029 22.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-uri postgresql-15-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb pigsty 1.20251029 22.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-15-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el8.x86_64.rpm pigsty 1.20251029 19.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_uri_14-1.20251029-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el8.aarch64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_uri_14-1.20251029-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el9.x86_64.rpm pigsty 1.20251029 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_uri_14-1.20251029-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el9.aarch64.rpm pigsty 1.20251029 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_uri_14-1.20251029-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el10.x86_64.rpm pigsty 1.20251029 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_uri_14-1.20251029-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_uri_14 pg_uri_14-1.20251029-1PIGSTY.el10.aarch64.rpm pigsty 1.20251029 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_uri_14-1.20251029-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb pigsty 1.20251029 21.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb pigsty 1.20251029 21.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb pigsty 1.20251029 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb pigsty 1.20251029 23.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb pigsty 1.20251029 22.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb pigsty 1.20251029 22.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-uri postgresql-14-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb pigsty 1.20251029 22.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-uri/postgresql-14-pg-uri_1.20251029-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_uri` using `pig build`:

```bash
pig build pkg pg_uri         # build RPM / DEB packages
```


## Install

You can install `pg_uri` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_uri;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_uri -v 18  # PG 18
pig ext install -y pg_uri -v 17  # PG 17
pig ext install -y pg_uri -v 16  # PG 16
pig ext install -y pg_uri -v 15  # PG 15
pig ext install -y pg_uri -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_uri_18       # PG 18
dnf install -y pg_uri_17       # PG 17
dnf install -y pg_uri_16       # PG 16
dnf install -y pg_uri_15       # PG 15
dnf install -y pg_uri_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-uri   # PG 18
apt install -y postgresql-17-pg-uri   # PG 17
apt install -y postgresql-16-pg-uri   # PG 16
apt install -y postgresql-15-pg-uri   # PG 15
apt install -y postgresql-14-pg-uri   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION uri;
```



## Usage

> [uri: URI data type with validation and component extraction](https://github.com/petere/pguri)

The `uri` extension provides a data type for storing URIs with syntax validation per RFC 3986, component extraction functions, and human-friendly sorting.

```sql
CREATE EXTENSION uri;

CREATE TABLE links (
    id   int PRIMARY KEY,
    link uri
);

INSERT INTO links VALUES (1, 'https://github.com/petere/pguri');
```

### Component Extraction Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `uri_scheme(uri)` | `text` | Scheme (http, ftp, mailto) |
| `uri_userinfo(uri)` | `text` | User info; NULL if absent |
| `uri_host(uri)` | `text` | Hostname or IP address |
| `uri_host_inet(uri)` | `inet` | IP host as inet; NULL if not IP |
| `uri_port(uri)` | `integer` | Port number; NULL if unspecified |
| `uri_path(uri)` | `text` | Path component (never NULL) |
| `uri_path_array(uri)` | `text[]` | Path split by `/` |
| `uri_query(uri)` | `text` | Query string; NULL if absent |
| `uri_fragment(uri)` | `text` | Fragment; NULL if absent |

### Utility Functions

```sql
-- Normalize URI per RFC 3986
SELECT uri_normalize('HTTP://Example.COM/foo/../bar');

-- Percent-encode text
SELECT uri_escape('hello world', true, false);  -- hello+world

-- Decode percent-encoded text
SELECT uri_unescape('hello+world', true, false);  -- hello world
```

### Example

```sql
SELECT uri_scheme(link), uri_host(link), uri_path(link)
FROM links
WHERE uri_host(link) = 'github.com';
```
