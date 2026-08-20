---
title: "pg_html5_email_address"
linkTitle: "pg_html5_email_address"
description: "PostgreSQL email validation that is consistent with the HTML5 spec"
weight: 4180
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_html5_email_address">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_html5_email_address</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_html5_email_address</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_html5_email_address-1.2.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_html5_email_address-1.2.3.tar.gz</div>
    <div class="ext-card__desc">pg_html5_email_address-1.2.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_html5_email_address`**](/ext/e/pg_html5_email_address) | `1.2.3` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4180  | [**`pg_html5_email_address`**](/ext/e/pg_html5_email_address) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`emailaddr`](/ext/e/emailaddr) [`uri`](/ext/e/uri) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`pg_smtp_client`](/ext/e/pg_smtp_client) [`omni_email`](/ext/e/omni_email) [`url_encode`](/ext/e/url_encode) [`ip4r`](/ext/e/ip4r) [`prefix`](/ext/e/prefix) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_html5_email_address` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_html5_email_address_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-html5-email-address` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 | AVAIL PIGSTY 1.2.3 1 |
@ el8.x86_64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_html5_email_address_18-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_html5_email_address_18-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_html5_email_address_18-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_html5_email_address_18-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_html5_email_address_18-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_html5_email_address_18 pg_html5_email_address_18-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_html5_email_address_18-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-html5-email-address postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-18-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_html5_email_address_17-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_html5_email_address_17-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_html5_email_address_17-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_html5_email_address_17-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_html5_email_address_17-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_html5_email_address_17 pg_html5_email_address_17-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_html5_email_address_17-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-html5-email-address postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-17-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_html5_email_address_16-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_html5_email_address_16-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_html5_email_address_16-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_html5_email_address_16-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_html5_email_address_16-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_html5_email_address_16 pg_html5_email_address_16-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_html5_email_address_16-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-html5-email-address postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-16-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_html5_email_address_15-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_html5_email_address_15-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_html5_email_address_15-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_html5_email_address_15-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_html5_email_address_15-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_html5_email_address_15 pg_html5_email_address_15-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_html5_email_address_15-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-html5-email-address postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-15-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el8.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_html5_email_address_14-1.2.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el8.aarch64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_html5_email_address_14-1.2.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el9.x86_64.rpm pigsty 1.2.3 15.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_html5_email_address_14-1.2.3-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el9.aarch64.rpm pigsty 1.2.3 15.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_html5_email_address_14-1.2.3-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el10.x86_64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_html5_email_address_14-1.2.3-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_html5_email_address_14 pg_html5_email_address_14-1.2.3-1PIGSTY.el10.aarch64.rpm pigsty 1.2.3 15.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_html5_email_address_14-1.2.3-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb pigsty 1.2.3 12.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-html5-email-address postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb pigsty 1.2.3 12.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-html5-email-address/postgresql-14-pg-html5-email-address_1.2.3-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_html5_email_address` using `pig build`:

```bash
pig build pkg pg_html5_email_address         # build RPM / DEB packages
```


## Install

You can install `pg_html5_email_address` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_html5_email_address;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_html5_email_address -v 18  # PG 18
pig ext install -y pg_html5_email_address -v 17  # PG 17
pig ext install -y pg_html5_email_address -v 16  # PG 16
pig ext install -y pg_html5_email_address -v 15  # PG 15
pig ext install -y pg_html5_email_address -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_html5_email_address_18       # PG 18
dnf install -y pg_html5_email_address_17       # PG 17
dnf install -y pg_html5_email_address_16       # PG 16
dnf install -y pg_html5_email_address_15       # PG 15
dnf install -y pg_html5_email_address_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-html5-email-address   # PG 18
apt install -y postgresql-17-pg-html5-email-address   # PG 17
apt install -y postgresql-16-pg-html5-email-address   # PG 16
apt install -y postgresql-15-pg-html5-email-address   # PG 15
apt install -y postgresql-14-pg-html5-email-address   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_html5_email_address;
```




## Usage

> [pg_html5_email_address: HTML5 email address validation for PostgreSQL](https://github.com/bigsmoke/pg_html5_email_address)

Provides email address validation consistent with the HTML5 `<input type="email">` specification.

### Domain Type: `html5_email`

A domain type that enforces HTML5 email validation rules with case-insensitive comparison:

```sql
SELECT 'user@example.com'::html5_email;

-- Case-insensitive equality:
SELECT 'User@Example.com'::html5_email = 'user@example.com'::html5_email;
-- t

-- Invalid emails raise check_violation:
SELECT 'user @example.com'::html5_email;
-- ERROR: check_violation
```

### Function: `html5_email_regexp()`

Returns a regex matching valid HTML5 email addresses:

```sql
-- Check if a string is a valid HTML5 email
SELECT 'user@example.com' ~ html5_email_regexp();
-- t

SELECT 'user @example.com' ~ html5_email_regexp();
-- f
```

With optional capturing groups for local and domain parts:

```sql
SELECT (regexp_matches('user@example.com', html5_email_regexp(true)))[1];
-- 'user'
SELECT (regexp_matches('user@example.com', html5_email_regexp(true)))[2];
-- 'example.com'
```

### Validation Rules

- Spaces are not allowed
- Non-ASCII characters are not allowed (neither in local nor domain part)
- There must be something after the `@`
- Special characters like `!#$%&'*+/=?^_`{|}~-` are allowed in the local part
