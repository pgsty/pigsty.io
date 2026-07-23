---
title: "pg_render"
linkTitle: "pg_render"
description: "Render HTML in SQL"
weight: 4290
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/mkaski/pg_render">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">mkaski/pg_render</div>
    <div class="ext-card__desc">https://github.com/mkaski/pg_render</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_render-0.1.3.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_render-0.1.3.tar.gz</div>
    <div class="ext-card__desc">pg_render-0.1.3.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_render`**](/ext/e/pg_render) | `0.1.3` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4290  | [**`pg_render`**](/ext/e/pg_render) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_html5_email_address`](/ext/e/pg_html5_email_address) [`pg_readme`](/ext/e/pg_readme) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_render` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_render_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-render` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 | AVAIL PIGSTY 0.1.3 1 |
@ el8.x86_64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el8.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_render_18-0.1.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el8.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_render_18-0.1.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el9.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_render_18-0.1.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el9.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_render_18-0.1.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el10.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_render_18-0.1.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_render_18 pg_render_18-0.1.3-3PIGSTY.el10.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_render_18-0.1.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~noble_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~noble_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-render postgresql-18-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-18-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el8.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_render_17-0.1.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el8.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_render_17-0.1.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el9.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_render_17-0.1.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el9.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_render_17-0.1.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el10.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_render_17-0.1.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_render_17 pg_render_17-0.1.3-3PIGSTY.el10.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_render_17-0.1.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~noble_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~noble_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-render postgresql-17-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-17-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el8.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_render_16-0.1.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el8.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_render_16-0.1.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el9.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_render_16-0.1.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el9.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_render_16-0.1.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el10.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_render_16-0.1.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_render_16 pg_render_16-0.1.3-3PIGSTY.el10.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_render_16-0.1.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~noble_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~noble_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-render postgresql-16-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-16-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el8.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_render_15-0.1.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el8.aarch64.rpm pigsty 0.1.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_render_15-0.1.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el9.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_render_15-0.1.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el9.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_render_15-0.1.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el10.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_render_15-0.1.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_render_15 pg_render_15-0.1.3-3PIGSTY.el10.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_render_15-0.1.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~noble_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~noble_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-render postgresql-15-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-15-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el8.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_render_14-0.1.3-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el8.aarch64.rpm pigsty 0.1.3 1.5MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_render_14-0.1.3-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el9.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_render_14-0.1.3-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el9.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_render_14-0.1.3-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el10.x86_64.rpm pigsty 0.1.3 1.7MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_render_14-0.1.3-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_render_14 pg_render_14-0.1.3-3PIGSTY.el10.aarch64.rpm pigsty 0.1.3 1.6MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_render_14-0.1.3-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb pigsty 0.1.3 1.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb pigsty 0.1.3 1.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~noble_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~noble_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb pigsty 0.1.3 1.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-render postgresql-14-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb pigsty 0.1.3 1.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-render/postgresql-14-pg-render_0.1.3-3PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_render` using `pig build`:

```bash
pig build pkg pg_render         # build RPM / DEB packages
```


## Install

You can install `pg_render` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_render;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_render -v 18  # PG 18
pig ext install -y pg_render -v 17  # PG 17
pig ext install -y pg_render -v 16  # PG 16
pig ext install -y pg_render -v 15  # PG 15
pig ext install -y pg_render -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_render_18       # PG 18
dnf install -y pg_render_17       # PG 17
dnf install -y pg_render_16       # PG 16
dnf install -y pg_render_15       # PG 15
dnf install -y pg_render_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-render   # PG 18
apt install -y postgresql-17-pg-render   # PG 17
apt install -y postgresql-16-pg-render   # PG 16
apt install -y postgresql-15-pg-render   # PG 15
apt install -y postgresql-14-pg-render   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_render;
```




## Usage

> [pg_render: Liquid template rendering for PostgreSQL](https://github.com/mkaski/pg_render)

### `render(template text, input json|array|value)`

Render a template with query results using [Liquid](https://shopify.github.io/liquid/) syntax:

```sql
-- Single value
SELECT render('Total: {{ value }}', (SELECT count(*) FROM posts));

-- Multiple columns from one row
SELECT render(
    '<h1>{{ title }}</h1><p>{{ text }}</p>',
    (SELECT to_json(r) FROM (SELECT title, text FROM posts WHERE id = 1) r)
);

-- Loop over an array
SELECT render(
    '{% for v in values %} {{ v }} {% endfor %}',
    (SELECT array(SELECT title FROM posts))
);

-- Loop over multiple rows with multiple columns
SELECT render(
    '{% for row in rows %} {{ row.title }} - {{ row.author }} {% endfor %}',
    json_agg(to_json(posts.*))
) FROM posts;
```

### `render_agg(template text, input record|json|value)`

Aggregate render function -- renders a template for each row:

```sql
-- Render each row from a derived table
SELECT render_agg('{{ title }} {{ text }}', props)
FROM (SELECT title, text FROM posts) AS props;

-- Render using json_build_object
SELECT render_agg(
    '<article><h1>{{ title }}</h1></article>',
    json_build_object('title', title)
) FROM posts;
```

### Using Stored Templates

```sql
SELECT render(
    (SELECT template FROM templates WHERE id = 'my_tpl'),
    (SELECT to_json(r) FROM (SELECT title, text FROM posts WHERE id = 1) r)
);
```

### PostgREST Integration

```sql
CREATE FUNCTION api.index() RETURNS "text/html" AS $$
SELECT render(
    '<html><body><h1>{{ title }}</h1></body></html>',
    (SELECT to_json(r) FROM (SELECT title FROM posts WHERE id = 1) r)
) $$;
```
