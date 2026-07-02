---
title: "session_variable"
linkTitle: "session_variable"
description: "Registration and manipulation of session variables and constants"
weight: 9120
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/splendiddata/session_variable">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">splendiddata/session_variable</div>
    <div class="ext-card__desc">https://github.com/splendiddata/session_variable</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/session_variable-3.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">session_variable-3.4.tar.gz</div>
    <div class="ext-card__desc">session_variable-3.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`session_variable`**](/ext/e/session_variable) | `3.4` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9120  | [**`session_variable`**](/ext/e/session_variable) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `session_variable` |
{.ext-table}

| **Related** | [`orafce`](/ext/e/orafce) [`pgtt`](/ext/e/pgtt) [`pg_statement_rollback`](/ext/e/pg_statement_rollback) [`plpgsql`](/ext/e/plpgsql) [`set_user`](/ext/e/set_user) [`oracle_fdw`](/ext/e/oracle_fdw) [`pg_dbms_lock`](/ext/e/pg_dbms_lock) [`babelfishpg_common`](/ext/e/babelfishpg_common) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16,15,14" >}} | `session_variable` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16,15,14" >}} | `session_variable_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `3.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-session-variable` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| el8.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| el9.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| el9.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| el10.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| el10.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| d12.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| d12.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| d13.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| d13.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u22.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u22.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u24.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u24.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u26.x86_64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
| u26.aarch64 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 | AVAIL PIGSTY 3.4 1 |
@ el8.x86_64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el8.x86_64.rpm pigsty 3.4 35.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/session_variable_18-3.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el8.aarch64.rpm pigsty 3.4 34.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/session_variable_18-3.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el9.x86_64.rpm pigsty 3.4 34.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/session_variable_18-3.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el9.aarch64.rpm pigsty 3.4 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/session_variable_18-3.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el10.x86_64.rpm pigsty 3.4 34.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/session_variable_18-3.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 session_variable_18 session_variable_18-3.4-1PIGSTY.el10.aarch64.rpm pigsty 3.4 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/session_variable_18-3.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~bookworm_amd64.deb pigsty 3.4 62.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~bookworm_arm64.deb pigsty 3.4 61.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~trixie_amd64.deb pigsty 3.4 62.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~trixie_arm64.deb pigsty 3.4 61.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~jammy_amd64.deb pigsty 3.4 66.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~jammy_arm64.deb pigsty 3.4 66.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~noble_amd64.deb pigsty 3.4 65.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~noble_arm64.deb pigsty 3.4 64.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~resolute_amd64.deb pigsty 3.4 60.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-session-variable postgresql-18-session-variable_3.4-1PIGSTY~resolute_arm64.deb pigsty 3.4 59.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-18-session-variable_3.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el8.x86_64.rpm pigsty 3.4 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/session_variable_17-3.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el8.aarch64.rpm pigsty 3.4 34.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/session_variable_17-3.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el9.x86_64.rpm pigsty 3.4 34.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/session_variable_17-3.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el9.aarch64.rpm pigsty 3.4 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/session_variable_17-3.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el10.x86_64.rpm pigsty 3.4 34.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/session_variable_17-3.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 session_variable_17 session_variable_17-3.4-1PIGSTY.el10.aarch64.rpm pigsty 3.4 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/session_variable_17-3.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~bookworm_amd64.deb pigsty 3.4 62.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~bookworm_arm64.deb pigsty 3.4 61.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~trixie_amd64.deb pigsty 3.4 62.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~trixie_arm64.deb pigsty 3.4 61.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~jammy_amd64.deb pigsty 3.4 72.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~jammy_arm64.deb pigsty 3.4 71.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~noble_amd64.deb pigsty 3.4 65.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~noble_arm64.deb pigsty 3.4 64.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~resolute_amd64.deb pigsty 3.4 60.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-session-variable postgresql-17-session-variable_3.4-1PIGSTY~resolute_arm64.deb pigsty 3.4 59.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-17-session-variable_3.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el8.x86_64.rpm pigsty 3.4 35.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/session_variable_16-3.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el8.aarch64.rpm pigsty 3.4 34.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/session_variable_16-3.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el9.x86_64.rpm pigsty 3.4 34.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/session_variable_16-3.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el9.aarch64.rpm pigsty 3.4 33.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/session_variable_16-3.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el10.x86_64.rpm pigsty 3.4 34.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/session_variable_16-3.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 session_variable_16 session_variable_16-3.4-1PIGSTY.el10.aarch64.rpm pigsty 3.4 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/session_variable_16-3.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~bookworm_amd64.deb pigsty 3.4 62.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~bookworm_arm64.deb pigsty 3.4 61.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~trixie_amd64.deb pigsty 3.4 62.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~trixie_arm64.deb pigsty 3.4 61.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~jammy_amd64.deb pigsty 3.4 71.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~jammy_arm64.deb pigsty 3.4 71.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~noble_amd64.deb pigsty 3.4 65.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~noble_arm64.deb pigsty 3.4 64.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~resolute_amd64.deb pigsty 3.4 60.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-session-variable postgresql-16-session-variable_3.4-1PIGSTY~resolute_arm64.deb pigsty 3.4 59.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-16-session-variable_3.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el8.x86_64.rpm pigsty 3.4 35.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/session_variable_15-3.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el8.aarch64.rpm pigsty 3.4 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/session_variable_15-3.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el9.x86_64.rpm pigsty 3.4 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/session_variable_15-3.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el9.aarch64.rpm pigsty 3.4 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/session_variable_15-3.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el10.x86_64.rpm pigsty 3.4 35.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/session_variable_15-3.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 session_variable_15 session_variable_15-3.4-1PIGSTY.el10.aarch64.rpm pigsty 3.4 34.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/session_variable_15-3.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~bookworm_amd64.deb pigsty 3.4 62.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~bookworm_arm64.deb pigsty 3.4 62.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~trixie_amd64.deb pigsty 3.4 62.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~trixie_arm64.deb pigsty 3.4 62.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~jammy_amd64.deb pigsty 3.4 71.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~jammy_arm64.deb pigsty 3.4 71.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~noble_amd64.deb pigsty 3.4 65.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~noble_arm64.deb pigsty 3.4 64.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~resolute_amd64.deb pigsty 3.4 60.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-session-variable postgresql-15-session-variable_3.4-1PIGSTY~resolute_arm64.deb pigsty 3.4 60.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-15-session-variable_3.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el8.x86_64.rpm pigsty 3.4 35.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/session_variable_14-3.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el8.aarch64.rpm pigsty 3.4 34.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/session_variable_14-3.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el9.x86_64.rpm pigsty 3.4 34.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/session_variable_14-3.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el9.aarch64.rpm pigsty 3.4 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/session_variable_14-3.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el10.x86_64.rpm pigsty 3.4 35.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/session_variable_14-3.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 session_variable_14 session_variable_14-3.4-1PIGSTY.el10.aarch64.rpm pigsty 3.4 34.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/session_variable_14-3.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~bookworm_amd64.deb pigsty 3.4 62.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~bookworm_arm64.deb pigsty 3.4 62.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~trixie_amd64.deb pigsty 3.4 62.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~trixie_arm64.deb pigsty 3.4 62.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~jammy_amd64.deb pigsty 3.4 70.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~jammy_arm64.deb pigsty 3.4 70.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~noble_amd64.deb pigsty 3.4 65.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~noble_arm64.deb pigsty 3.4 64.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~resolute_amd64.deb pigsty 3.4 60.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-session-variable postgresql-14-session-variable_3.4-1PIGSTY~resolute_arm64.deb pigsty 3.4 60.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/session-variable/postgresql-14-session-variable_3.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `session_variable` using `pig build`:

```bash
pig build pkg session_variable         # build RPM / DEB packages
```


## Install

You can install `session_variable` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install session_variable;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y session_variable -v 18  # PG 18
pig ext install -y session_variable -v 17  # PG 17
pig ext install -y session_variable -v 16  # PG 16
pig ext install -y session_variable -v 15  # PG 15
pig ext install -y session_variable -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y session_variable_18       # PG 18
dnf install -y session_variable_17       # PG 17
dnf install -y session_variable_16       # PG 16
dnf install -y session_variable_15       # PG 15
dnf install -y session_variable_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-session-variable   # PG 18
apt install -y postgresql-17-session-variable   # PG 17
apt install -y postgresql-16-session-variable   # PG 16
apt install -y postgresql-15-session-variable   # PG 15
apt install -y postgresql-14-session-variable   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION session_variable;
```




## Usage

> [session_variable: Registration and manipulation of session variables and constants](https://github.com/splendiddata/session_variable)

### Creating Variables and Constants

```sql
CREATE EXTENSION session_variable;

-- Create a variable with initial value
SELECT session_variable.create_variable('my_var', 'text'::regtype, 'initial text'::text);

-- Create a variable with NULL initial value
SELECT session_variable.create_variable('my_date_var', 'date'::regtype);

-- Create a constant (cannot be changed via set())
SELECT session_variable.create_constant('my_env', 'text'::regtype, 'Production'::text);
```

### Getting and Setting Values

```sql
-- Get variable value (second arg is type hint)
SELECT session_variable.get('my_var', null::text);

-- Set variable value (returns previous value)
SELECT session_variable.set('my_var', 'new text'::text);
```

### Using in PL/pgSQL

```sql
DO $$
DECLARE
    my_field text;
BEGIN
    my_field := session_variable.get('my_var', my_field);
    RAISE NOTICE 'Value: %', my_field;
END
$$ LANGUAGE plpgsql;
```

### Administration Functions

```sql
-- Alter the initial/constant value (affects new sessions)
SELECT session_variable.alter_value('my_env', 'Development'::text);

-- Reload all variables from database definitions
SELECT session_variable.init();

-- Drop a variable or constant
SELECT session_variable.drop('my_var');

-- Check if a variable exists
SELECT session_variable.exists('my_var');

-- Get the type of a variable
SELECT session_variable.type_of('my_var');
```

### Key Behaviors

- Variables are defined at the database level; each session gets a local copy
- `set()` only changes the session-local copy; other sessions are unaffected
- `alter_value()` changes the stored value; new sessions see it, existing sessions need `init()` to refresh
- Constants cannot be changed via `set()`, only via `alter_value()`
- Variable and constant names must be unique across both types
