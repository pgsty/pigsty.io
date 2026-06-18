---
title: "pg_smtp_client"
linkTitle: "pg_smtp_client"
description: "PostgreSQL extension to send email using SMTP"
weight: 4170
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/brianpursley/pg_smtp_client">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">brianpursley/pg_smtp_client</div>
    <div class="ext-card__desc">https://github.com/brianpursley/pg_smtp_client</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_smtp_client-0.2.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_smtp_client-0.2.1.tar.gz</div>
    <div class="ext-card__desc">pg_smtp_client-0.2.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_smtp_client`**](/ext/e/pg_smtp_client) | `0.2.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4170  | [**`pg_smtp_client`**](/ext/e/pg_smtp_client) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `smtp_client` |
{.ext-table}

| **Related** | [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_html5_email_address`](/ext/e/pg_html5_email_address) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_smtp_client` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_smtp_client_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-smtp-client` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 | AVAIL PIGSTY 0.2.1 1 |
@ el8.x86_64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el8.x86_64.rpm pigsty 0.2.1 533.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_smtp_client_18-0.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el8.aarch64.rpm pigsty 0.2.1 408.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_smtp_client_18-0.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el9.x86_64.rpm pigsty 0.2.1 553.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_smtp_client_18-0.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el9.aarch64.rpm pigsty 0.2.1 434.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_smtp_client_18-0.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el10.x86_64.rpm pigsty 0.2.1 554.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_smtp_client_18-0.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_smtp_client_18 pg_smtp_client_18-0.2.1-1PIGSTY.el10.aarch64.rpm pigsty 0.2.1 434.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_smtp_client_18-0.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb pigsty 0.2.1 439.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb pigsty 0.2.1 319.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb pigsty 0.2.1 440.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb pigsty 0.2.1 319.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb pigsty 0.2.1 492.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb pigsty 0.2.1 374.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb pigsty 0.2.1 489.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb pigsty 0.2.1 370.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb pigsty 0.2.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-smtp-client postgresql-18-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb pigsty 0.2.1 999.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-18-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el8.x86_64.rpm pigsty 0.2.1 533.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_smtp_client_17-0.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el8.aarch64.rpm pigsty 0.2.1 408.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_smtp_client_17-0.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el9.x86_64.rpm pigsty 0.2.1 553.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_smtp_client_17-0.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el9.aarch64.rpm pigsty 0.2.1 434.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_smtp_client_17-0.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el10.x86_64.rpm pigsty 0.2.1 554.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_smtp_client_17-0.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_smtp_client_17 pg_smtp_client_17-0.2.1-1PIGSTY.el10.aarch64.rpm pigsty 0.2.1 434.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_smtp_client_17-0.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb pigsty 0.2.1 439.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb pigsty 0.2.1 319.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb pigsty 0.2.1 440.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb pigsty 0.2.1 319.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb pigsty 0.2.1 492.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb pigsty 0.2.1 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb pigsty 0.2.1 489.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb pigsty 0.2.1 369.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb pigsty 0.2.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-smtp-client postgresql-17-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb pigsty 0.2.1 997.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-17-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el8.x86_64.rpm pigsty 0.2.1 533.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_smtp_client_16-0.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el8.aarch64.rpm pigsty 0.2.1 408.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_smtp_client_16-0.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el9.x86_64.rpm pigsty 0.2.1 553.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_smtp_client_16-0.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el9.aarch64.rpm pigsty 0.2.1 434.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_smtp_client_16-0.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el10.x86_64.rpm pigsty 0.2.1 554.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_smtp_client_16-0.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_smtp_client_16 pg_smtp_client_16-0.2.1-1PIGSTY.el10.aarch64.rpm pigsty 0.2.1 434.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_smtp_client_16-0.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb pigsty 0.2.1 439.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb pigsty 0.2.1 319.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb pigsty 0.2.1 439.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb pigsty 0.2.1 319.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb pigsty 0.2.1 492.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb pigsty 0.2.1 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb pigsty 0.2.1 489.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb pigsty 0.2.1 370.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb pigsty 0.2.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-smtp-client postgresql-16-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb pigsty 0.2.1 996.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-16-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el8.x86_64.rpm pigsty 0.2.1 533.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_smtp_client_15-0.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el8.aarch64.rpm pigsty 0.2.1 408.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_smtp_client_15-0.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el9.x86_64.rpm pigsty 0.2.1 552.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_smtp_client_15-0.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el9.aarch64.rpm pigsty 0.2.1 434.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_smtp_client_15-0.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el10.x86_64.rpm pigsty 0.2.1 553.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_smtp_client_15-0.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_smtp_client_15 pg_smtp_client_15-0.2.1-1PIGSTY.el10.aarch64.rpm pigsty 0.2.1 434.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_smtp_client_15-0.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb pigsty 0.2.1 439.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb pigsty 0.2.1 319.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb pigsty 0.2.1 439.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb pigsty 0.2.1 319.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb pigsty 0.2.1 492.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb pigsty 0.2.1 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb pigsty 0.2.1 488.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb pigsty 0.2.1 370.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb pigsty 0.2.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-smtp-client postgresql-15-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb pigsty 0.2.1 990.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-15-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el8.x86_64.rpm pigsty 0.2.1 533.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_smtp_client_14-0.2.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el8.aarch64.rpm pigsty 0.2.1 408.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_smtp_client_14-0.2.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el9.x86_64.rpm pigsty 0.2.1 553.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_smtp_client_14-0.2.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el9.aarch64.rpm pigsty 0.2.1 434.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_smtp_client_14-0.2.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el10.x86_64.rpm pigsty 0.2.1 553.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_smtp_client_14-0.2.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_smtp_client_14 pg_smtp_client_14-0.2.1-1PIGSTY.el10.aarch64.rpm pigsty 0.2.1 434.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_smtp_client_14-0.2.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb pigsty 0.2.1 439.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb pigsty 0.2.1 319.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb pigsty 0.2.1 440.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb pigsty 0.2.1 319.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb pigsty 0.2.1 492.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb pigsty 0.2.1 374.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb pigsty 0.2.1 488.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb pigsty 0.2.1 370.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb pigsty 0.2.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-smtp-client postgresql-14-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb pigsty 0.2.1 987.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-smtp-client/postgresql-14-pg-smtp-client_0.2.1-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_smtp_client` using `pig build`:

```bash
pig build pkg pg_smtp_client         # build RPM / DEB packages
```


## Install

You can install `pg_smtp_client` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_smtp_client;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_smtp_client -v 18  # PG 18
pig ext install -y pg_smtp_client -v 17  # PG 17
pig ext install -y pg_smtp_client -v 16  # PG 16
pig ext install -y pg_smtp_client -v 15  # PG 15
pig ext install -y pg_smtp_client -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_smtp_client_18       # PG 18
dnf install -y pg_smtp_client_17       # PG 17
dnf install -y pg_smtp_client_16       # PG 16
dnf install -y pg_smtp_client_15       # PG 15
dnf install -y pg_smtp_client_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-smtp-client   # PG 18
apt install -y postgresql-17-pg-smtp-client   # PG 17
apt install -y postgresql-16-pg-smtp-client   # PG 16
apt install -y postgresql-15-pg-smtp-client   # PG 15
apt install -y postgresql-14-pg-smtp-client   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_smtp_client;
```


## Usage

### Enabling the extension

Connect to postgres and run the following command.

```sql
CREATE EXTENSION IF NOT EXISTS pg_smtp_client CASCADE;
```

Use the `smtp_client.send_email()` function to send an email.

### Function Parameters

| Parameter     | Type    | Description                                           | System Configuration (Optional) |
|---------------|---------|-------------------------------------------------------|---------------------------------|
| subject       | text    | The subject of the email                              |                                 |
| body          | text    | The body of the email                                 |                                 |
| html          | boolean | Whether the body is HTML (true) or plain text (false) |                                 |
| from_address  | text    | The from email address                                | `smtp_client.from_address`      |
| recipients    | text[]  | The email addresses of the recipients                 |                                 |
| ccs           | text[]  | The email addresses to CCs                            |                                 |
| bccs          | text[]  | The email addresses to BCCs                           |                                 |
| smtp_server   | text    | The SMTP server to use                                | `smtp_client.server`            |
| smtp_port     | integer | The port of the SMTP server                           | `smtp_client.port`              |
| smtp_tls      | boolean | Whether to use TLS                                    | `smtp_client.tls`               |
| smtp_username | text    | The username for the SMTP server                      | `smtp_client.username`          |
| smtp_password | text    | The password for the SMTP server                      | `smtp_client.password`          |

### Default Configuration

You can configure the following system-wide default values for some of the parameters (as indiciated in the table above) like this:

```
ALTER SYSTEM SET smtp_client.server TO 'smtp.example.com';
ALTER SYSTEM SET smtp_client.port TO 587;
ALTER SYSTEM SET smtp_client.tls TO true;
ALTER SYSTEM SET smtp_client.username TO 'MySmtpUsername';
ALTER SYSTEM SET smtp_client.password TO 'MySmtpPassword';
ALTER SYSTEM SET smtp_client.from_address TO 'from@example.com';
SELECT pg_reload_conf();
```

### Usage Examples

Send an email:
```sql
SELECT smtp_client.send_email('test subject', 'test body', false, 'from@example.com', array['to@example.com'], null, null, 'smtp.example.com', 587, true, 'username', 'password');
```

Send an email using configured default values:
```sql
SELECT smtp_client.send_email('test subject', 'test body', false, null, array['to@example.com']);
```

Or, using named arguments:
```sql
SELECT smtp_client.send_email('test subject', 'test body', recipients => array['to@example.com']);
```