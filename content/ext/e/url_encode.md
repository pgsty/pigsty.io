---
title: "url_encode"
linkTitle: "url_encode"
description: "url_encode, url_decode functions"
weight: 4190
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/okbob/url_encode">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">okbob/url_encode</div>
    <div class="ext-card__desc">https://github.com/okbob/url_encode</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/url_encode-1.2.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">url_encode-1.2.5.tar.gz</div>
    <div class="ext-card__desc">url_encode-1.2.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`url_encode`**](/ext/e/url_encode) | `1.2.5` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4190  | [**`url_encode`**](/ext/e/url_encode) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`uri`](/ext/e/uri) [`pg_curl`](/ext/e/pg_curl) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`emailaddr`](/ext/e/emailaddr) [`pg_html5_email_address`](/ext/e/pg_html5_email_address) [`pg_smtp_client`](/ext/e/pg_smtp_client) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.5` | {{< pgvers "18,17,16,15,14" >}} | `url_encode` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.5` | {{< pgvers "18,17,16,15,14" >}} | `url_encode_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.2.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-url-encode` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| el8.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| el9.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| el9.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| el10.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| el10.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| d12.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| d12.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| d13.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| d13.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u22.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u22.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u24.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u24.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u26.x86_64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
| u26.aarch64 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 | AVAIL PIGSTY 1.2.5 1 |
@ el8.x86_64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el8.x86_64.rpm pigsty 1.2.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/url_encode_18-1.2.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el8.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/url_encode_18-1.2.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el9.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/url_encode_18-1.2.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el9.aarch64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/url_encode_18-1.2.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el10.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/url_encode_18-1.2.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 url_encode_18 url_encode_18-1.2.5-1PIGSTY.el10.aarch64.rpm pigsty 1.2.5 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/url_encode_18-1.2.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~noble_amd64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~noble_arm64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-url-encode postgresql-18-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb pigsty 1.2.5 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-18-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el8.x86_64.rpm pigsty 1.2.5 13.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/url_encode_17-1.2.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el8.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/url_encode_17-1.2.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el9.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/url_encode_17-1.2.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el9.aarch64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/url_encode_17-1.2.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el10.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/url_encode_17-1.2.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 url_encode_17 url_encode_17-1.2.5-1PIGSTY.el10.aarch64.rpm pigsty 1.2.5 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/url_encode_17-1.2.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb pigsty 1.2.5 13.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~noble_amd64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~noble_arm64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb pigsty 1.2.5 13.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-url-encode postgresql-17-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb pigsty 1.2.5 13.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-17-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el8.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/url_encode_16-1.2.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el8.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/url_encode_16-1.2.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el9.x86_64.rpm pigsty 1.2.5 13.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/url_encode_16-1.2.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el9.aarch64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/url_encode_16-1.2.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el10.x86_64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/url_encode_16-1.2.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 url_encode_16 url_encode_16-1.2.5-1PIGSTY.el10.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/url_encode_16-1.2.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb pigsty 1.2.5 12.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb pigsty 1.2.5 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb pigsty 1.2.5 12.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~noble_amd64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~noble_arm64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-url-encode postgresql-16-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-16-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el8.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/url_encode_15-1.2.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el8.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/url_encode_15-1.2.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el9.x86_64.rpm pigsty 1.2.5 13.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/url_encode_15-1.2.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el9.aarch64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/url_encode_15-1.2.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el10.x86_64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/url_encode_15-1.2.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 url_encode_15 url_encode_15-1.2.5-1PIGSTY.el10.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/url_encode_15-1.2.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb pigsty 1.2.5 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb pigsty 1.2.5 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb pigsty 1.2.5 12.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~noble_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~noble_arm64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-url-encode postgresql-15-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-15-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el8.x86_64.rpm pigsty 1.2.5 13.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/url_encode_14-1.2.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el8.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/url_encode_14-1.2.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el9.x86_64.rpm pigsty 1.2.5 13.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/url_encode_14-1.2.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el9.aarch64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/url_encode_14-1.2.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el10.x86_64.rpm pigsty 1.2.5 13.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/url_encode_14-1.2.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 url_encode_14 url_encode_14-1.2.5-1PIGSTY.el10.aarch64.rpm pigsty 1.2.5 13.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/url_encode_14-1.2.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb pigsty 1.2.5 12.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb pigsty 1.2.5 12.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb pigsty 1.2.5 12.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb pigsty 1.2.5 12.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~noble_amd64.deb pigsty 1.2.5 12.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~noble_arm64.deb pigsty 1.2.5 12.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-url-encode postgresql-14-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb pigsty 1.2.5 13.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/u/url-encode/postgresql-14-url-encode_1.2.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `url_encode` using `pig build`:

```bash
pig build pkg url_encode         # build RPM / DEB packages
```


## Install

You can install `url_encode` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install url_encode;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y url_encode -v 18  # PG 18
pig ext install -y url_encode -v 17  # PG 17
pig ext install -y url_encode -v 16  # PG 16
pig ext install -y url_encode -v 15  # PG 15
pig ext install -y url_encode -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y url_encode_18       # PG 18
dnf install -y url_encode_17       # PG 17
dnf install -y url_encode_16       # PG 16
dnf install -y url_encode_15       # PG 15
dnf install -y url_encode_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-url-encode   # PG 18
apt install -y postgresql-17-url-encode   # PG 17
apt install -y postgresql-16-url-encode   # PG 16
apt install -y postgresql-15-url-encode   # PG 15
apt install -y postgresql-14-url-encode   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION url_encode;
```




## Usage

> [url_encode: URL encoding and decoding functions for PostgreSQL](https://github.com/okbob/url_encode)

### Functions

#### `url_encode(text) returns text`

Percent-encode a string for use in URLs:

```sql
SELECT url_encode('Hello World');
-- Hello%20World

SELECT url_encode('Ahoj Svetе');
-- Ahoj%20Sv%C4%9Bte
```

#### `url_decode(text) returns text`

Decode a percent-encoded string:

```sql
SELECT url_decode('Hello%20World');
-- Hello World

SELECT url_decode('Ahoj%20Sv%C4%9Bte');
-- Ahoj Svetе
```

#### `uri_encode(text) returns text`

Encode a full URI (preserves scheme, slashes, etc.):

```sql
SELECT uri_encode('http://hu.wikipedia.org/wiki/Sao_Paulo');
-- http://hu.wikipedia.org/wiki/S%C3%A3o_Paulo
```

#### `uri_decode(text) returns text`

Decode an encoded URI:

```sql
SELECT uri_decode('http://hu.wikipedia.org/wiki/S%C3%A3o_Paulo');
-- http://hu.wikipedia.org/wiki/Sao_Paulo
```
