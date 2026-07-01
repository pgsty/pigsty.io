---
title: "pg_session_jwt"
linkTitle: "pg_session_jwt"
description: "Manage authentication sessions using JWTs"
weight: 7060
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/neondatabase/pg_session_jwt">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">neondatabase/pg_session_jwt</div>
    <div class="ext-card__desc">https://github.com/neondatabase/pg_session_jwt</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_session_jwt-0.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_session_jwt-0.5.0.tar.gz</div>
    <div class="ext-card__desc">pg_session_jwt-0.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_session_jwt`**](/ext/e/pg_session_jwt) | `0.5.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7060  | [**`pg_session_jwt`**](/ext/e/pg_session_jwt) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `auth` |
{.ext-table}

| **Related** | [`pgjwt`](/ext/e/pgjwt) [`pgaudit`](/ext/e/pgaudit) [`pgsodium`](/ext/e/pgsodium) [`supabase_vault`](/ext/e/supabase_vault) [`anon`](/ext/e/anon) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_session_jwt` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_session_jwt_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-session-jwt` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 | AVAIL PIGSTY 0.5.0 1 |
@ el8.x86_64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 1001.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_session_jwt_18-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 923.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_session_jwt_18-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 1014.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_session_jwt_18-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 981.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_session_jwt_18-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 1012.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_session_jwt_18-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_session_jwt_18 pg_session_jwt_18-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 960.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_session_jwt_18-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 797.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 684.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 796.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 685.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 893.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 812.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 888.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 802.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 879.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-session-jwt postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 801.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-18-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 997.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_session_jwt_17-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 919.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_session_jwt_17-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 1016.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_session_jwt_17-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 978.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_session_jwt_17-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 1012.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_session_jwt_17-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_session_jwt_17 pg_session_jwt_17-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 958.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_session_jwt_17-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 796.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 683.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 797.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 684.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 890.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 810.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 887.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 802.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 877.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-session-jwt postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 800.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-17-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 996.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_session_jwt_16-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 918.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_session_jwt_16-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 1007.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_session_jwt_16-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 976.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_session_jwt_16-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 1009.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_session_jwt_16-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_session_jwt_16 pg_session_jwt_16-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 958.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_session_jwt_16-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 794.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 683.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 796.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 683.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 888.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 809.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 880.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 800.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 876.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-session-jwt postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 798.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-16-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 988.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_session_jwt_15-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 910.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_session_jwt_15-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 1001.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_session_jwt_15-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 966.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_session_jwt_15-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 1001.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_session_jwt_15-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_session_jwt_15 pg_session_jwt_15-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 955.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_session_jwt_15-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 790.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 677.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 789.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 678.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 884.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 806.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 874.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 794.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 870.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-session-jwt postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 792.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-15-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el8.x86_64.rpm pigsty 0.5.0 983.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_session_jwt_14-0.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el8.aarch64.rpm pigsty 0.5.0 905.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_session_jwt_14-0.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el9.x86_64.rpm pigsty 0.5.0 995.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_session_jwt_14-0.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el9.aarch64.rpm pigsty 0.5.0 961.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_session_jwt_14-0.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el10.x86_64.rpm pigsty 0.5.0 996.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_session_jwt_14-0.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_session_jwt_14 pg_session_jwt_14-0.5.0-1PIGSTY.el10.aarch64.rpm pigsty 0.5.0 950.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_session_jwt_14-0.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb pigsty 0.5.0 786.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb pigsty 0.5.0 673.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb pigsty 0.5.0 786.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb pigsty 0.5.0 674.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb pigsty 0.5.0 879.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb pigsty 0.5.0 799.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb pigsty 0.5.0 871.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb pigsty 0.5.0 789.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb pigsty 0.5.0 866.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-session-jwt postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb pigsty 0.5.0 787.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-session-jwt/postgresql-14-pg-session-jwt_0.5.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_session_jwt` using `pig build`:

```bash
pig build pkg pg_session_jwt         # build RPM / DEB packages
```


## Install

You can install `pg_session_jwt` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_session_jwt;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_session_jwt -v 18  # PG 18
pig ext install -y pg_session_jwt -v 17  # PG 17
pig ext install -y pg_session_jwt -v 16  # PG 16
pig ext install -y pg_session_jwt -v 15  # PG 15
pig ext install -y pg_session_jwt -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_session_jwt_18       # PG 18
dnf install -y pg_session_jwt_17       # PG 17
dnf install -y pg_session_jwt_16       # PG 16
dnf install -y pg_session_jwt_15       # PG 15
dnf install -y pg_session_jwt_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-session-jwt   # PG 18
apt install -y postgresql-17-pg-session-jwt   # PG 17
apt install -y postgresql-16-pg-session-jwt   # PG 16
apt install -y postgresql-15-pg-session-jwt   # PG 15
apt install -y postgresql-14-pg-session-jwt   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_session_jwt;
```




## Usage

Sources: [README](https://github.com/neondatabase/pg_session_jwt/blob/v0.5.0/README.md), [v0.5.0 tag](https://github.com/neondatabase/pg_session_jwt/tree/v0.5.0), [control file](https://github.com/neondatabase/pg_session_jwt/blob/v0.5.0/pg_session_jwt.control)

`pg_session_jwt` handles authenticated sessions through JWTs. When configured with a JWK, it verifies JWT authenticity. Without a JWK, it falls back to PostgREST-compatible `request.jwt.claims`.

```sql
CREATE EXTENSION pg_session_jwt;
```

### Mode 1: JWK Validation

Set the JWK at connection time via libpq options:

```bash
export PGOPTIONS="-c pg_session_jwt.jwk=$MY_JWK"
```

Then within the session:

```sql
SELECT auth.init();                        -- Initialize with JWK
SELECT auth.jwt_session_init('eyJ...');    -- Set and validate the JWT
SELECT auth.user_id();                     -- Get the 'sub' claim
SELECT auth.session();                     -- Get full JWT payload as JSONB
```

### Mode 2: PostgREST-Compatible (No JWK)

Works out of the box with PostgREST. No initialization needed:

```sql
SELECT auth.user_id();   -- Returns 'sub' from request.jwt.claims
SELECT auth.session();   -- Returns full claims as JSONB
```

### Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `auth.init()` | `void` | Initialize session using JWK |
| `auth.jwt_session_init(jwt text)` | `void` | Set and validate a JWT |
| `auth.session()` | `jsonb` | Get JWT payload or fallback claims |
| `auth.jwt()` | `jsonb` | Alias for `auth.session()` |
| `auth.user_id()` | `text` | Get the `sub` claim |
| `auth.uid()` | `uuid` | Get `sub` as UUID (or NULL) |
| `auth.organization()` | `jsonb` | Neon Auth organization claim helper |
| `auth.organization_id()` | `uuid` | Neon Auth organization id helper |

### Configuration

| Parameter | Description |
|-----------|-------------|
| `pg_session_jwt.jwk` | JWK for JWT validation (set at startup or connection) |
| `pg_session_jwt.audit_log` | Enable audit logging (`on`/`off`) |

### RLS Example

```sql
CREATE POLICY user_isolation ON my_table
    USING (user_id = auth.user_id());
```

For Neon Auth organization-scoped policies, use the `o` claim helpers:

```sql
CREATE POLICY team_select ON team
  FOR SELECT
  USING (organization_id = auth.organization_id());
```

### Version Notes

The v0.5.0 README adds Neon Auth organization helpers and explicitly separates portable helpers such as `auth.jwt()`, `auth.user_id()`, and `auth.uid()` from Neon-specific `auth.organization()` and `auth.organization_id()`. Other auth providers should use `auth.jwt()` and extract provider-specific claims directly.
