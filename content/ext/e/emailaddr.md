---
title: "emailaddr"
linkTitle: "emailaddr"
description: "Email address type for PostgreSQL"
weight: 3800
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/petere/pgemailaddr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">petere/pgemailaddr</div>
    <div class="ext-card__desc">https://github.com/petere/pgemailaddr</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgemailaddr-0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgemailaddr-0.tar.gz</div>
    <div class="ext-card__desc">pgemailaddr-0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_emailaddr`**](/ext/e/emailaddr) | `0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3800  | [**`emailaddr`**](/ext/e/emailaddr) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_html5_email_address`](/ext/e/pg_html5_email_address) [`uri`](/ext/e/uri) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`pg_smtp_client`](/ext/e/pg_smtp_client) [`omni_email`](/ext/e/omni_email) [`ip4r`](/ext/e/ip4r) [`url_encode`](/ext/e/url_encode) [`prefix`](/ext/e/prefix) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> +varatt.h


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0` | {{< pgvers "18,17,16,15,14" >}} | `pg_emailaddr` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0` | {{< pgvers "18,17,16,15,14" >}} | `pg_emailaddr_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-emailaddr` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| el8.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| el9.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| el9.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| el10.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| el10.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| d12.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| d12.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| d13.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| d13.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u22.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u22.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u24.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u24.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u26.x86_64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
| u26.aarch64 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 | AVAIL PIGSTY 0 1 |
@ el8.x86_64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el8.x86_64.rpm pigsty 0 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_emailaddr_18-0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el8.aarch64.rpm pigsty 0 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_emailaddr_18-0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el9.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_emailaddr_18-0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el9.aarch64.rpm pigsty 0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_emailaddr_18-0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el10.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_emailaddr_18-0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_emailaddr_18 pg_emailaddr_18-0-1PIGSTY.el10.aarch64.rpm pigsty 0 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_emailaddr_18-0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb pigsty 0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb pigsty 0 12.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb pigsty 0 12.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~noble_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~noble_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-emailaddr postgresql-18-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb pigsty 0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-18-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el8.x86_64.rpm pigsty 0 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_emailaddr_17-0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el8.aarch64.rpm pigsty 0 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_emailaddr_17-0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el9.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_emailaddr_17-0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el9.aarch64.rpm pigsty 0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_emailaddr_17-0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el10.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_emailaddr_17-0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_emailaddr_17 pg_emailaddr_17-0-1PIGSTY.el10.aarch64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_emailaddr_17-0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb pigsty 0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb pigsty 0 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~noble_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~noble_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-emailaddr postgresql-17-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb pigsty 0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-17-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el8.x86_64.rpm pigsty 0 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_emailaddr_16-0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el8.aarch64.rpm pigsty 0 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_emailaddr_16-0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el9.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_emailaddr_16-0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el9.aarch64.rpm pigsty 0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_emailaddr_16-0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el10.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_emailaddr_16-0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_emailaddr_16 pg_emailaddr_16-0-1PIGSTY.el10.aarch64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_emailaddr_16-0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb pigsty 0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb pigsty 0 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~noble_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~noble_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-emailaddr postgresql-16-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb pigsty 0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-16-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el8.x86_64.rpm pigsty 0 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_emailaddr_15-0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el8.aarch64.rpm pigsty 0 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_emailaddr_15-0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el9.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_emailaddr_15-0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el9.aarch64.rpm pigsty 0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_emailaddr_15-0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el10.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_emailaddr_15-0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_emailaddr_15 pg_emailaddr_15-0-1PIGSTY.el10.aarch64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_emailaddr_15-0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb pigsty 0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb pigsty 0 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~noble_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~noble_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-emailaddr postgresql-15-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb pigsty 0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-15-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el8.x86_64.rpm pigsty 0 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_emailaddr_14-0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el8.aarch64.rpm pigsty 0 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_emailaddr_14-0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el9.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_emailaddr_14-0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el9.aarch64.rpm pigsty 0 13.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_emailaddr_14-0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el10.x86_64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_emailaddr_14-0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_emailaddr_14 pg_emailaddr_14-0-1PIGSTY.el10.aarch64.rpm pigsty 0 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_emailaddr_14-0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb pigsty 0 12.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb pigsty 0 12.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb pigsty 0 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~noble_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~noble_arm64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb pigsty 0 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-emailaddr postgresql-14-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb pigsty 0 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-emailaddr/postgresql-14-pg-emailaddr_0-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_emailaddr` using `pig build`:

```bash
pig build pkg pg_emailaddr         # build RPM / DEB packages
```


## Install

You can install `pg_emailaddr` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_emailaddr;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_emailaddr -v 18  # PG 18
pig ext install -y pg_emailaddr -v 17  # PG 17
pig ext install -y pg_emailaddr -v 16  # PG 16
pig ext install -y pg_emailaddr -v 15  # PG 15
pig ext install -y pg_emailaddr -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_emailaddr_18       # PG 18
dnf install -y pg_emailaddr_17       # PG 17
dnf install -y pg_emailaddr_16       # PG 16
dnf install -y pg_emailaddr_15       # PG 15
dnf install -y pg_emailaddr_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-emailaddr   # PG 18
apt install -y postgresql-17-pg-emailaddr   # PG 17
apt install -y postgresql-16-pg-emailaddr   # PG 16
apt install -y postgresql-15-pg-emailaddr   # PG 15
apt install -y postgresql-14-pg-emailaddr   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION emailaddr;
```




## Usage

> [emailaddr: email address data type for PostgreSQL](https://github.com/petere/pgemailaddr)

The `emailaddr` extension provides a data type for storing and validating email addresses conforming to the `addr-spec` format defined in RFC 5322.

```sql
CREATE EXTENSION emailaddr;

CREATE TABLE accounts (
    id    int PRIMARY KEY,
    name  text,
    email emailaddr
);

INSERT INTO accounts VALUES (1, 'Peter Eisentraut', 'peter@eisentraut.org');
```

### Data Type

The `emailaddr` type validates email addresses on input according to RFC 5322 `addr-spec` rules. Simple formats like `user@domain.com` are accepted. Display name syntax such as `"User Name" <user@domain.com>` is not supported.

### Operators

Standard comparison operators are supported: `=`, `<>`, `<`, `>`, `<=`, `>=`.

### Index Support

Btree indexes are available for efficient lookups and sorting on `emailaddr` columns.
