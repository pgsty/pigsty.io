---
title: "pg_policy"
linkTitle: "pg_policy"
description: "Agentic policy language for PostgreSQL with guardrails, guidance, and session-aware controls"
weight: 7440
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rahiakil/pg-policy">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rahiakil/pg-policy</div>
    <div class="ext-card__desc">https://github.com/rahiakil/pg-policy</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_policy-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_policy-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_policy-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_policy`**](/ext/e/pg_policy) | `0.1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7440  | [**`pg_policy`**](/ext/e/pg_policy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `policy` |
{.ext-table}

| **Related** | [`pg_command_fw`](/ext/e/pg_command_fw) [`pgextwlist`](/ext/e/pgextwlist) [`set_user`](/ext/e/set_user) [`noset`](/ext/e/noset) [`block_copy_command`](/ext/e/block_copy_command) [`supautils`](/ext/e/supautils) [`anon`](/ext/e/anon) [`pgaudit`](/ext/e/pgaudit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PIGSTY patches the reserved upstream schema pg_policy to policy and quotes the reserved check function, so the packaged API is policy.check() rather than pg_policy.check(); pure SQL and PL/pgSQL, no preload.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_policy` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_policy_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `postgresql-$v-pg-policy` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
@ el8.x86_64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_policy_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_policy_18-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_policy_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_policy_18-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_policy_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_policy_18 pg_policy_18-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_policy_18-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-policy postgresql-18-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-18-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_policy_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_policy_17-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_policy_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_policy_17-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_policy_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_policy_17 pg_policy_17-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_policy_17-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-policy postgresql-17-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-17-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_policy_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_policy_16-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_policy_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_policy_16-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_policy_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_policy_16 pg_policy_16-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_policy_16-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-policy postgresql-16-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-16-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_policy_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_policy_15-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_policy_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_policy_15-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_policy_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_policy_15 pg_policy_15-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_policy_15-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-policy postgresql-15-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-15-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_policy_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el8.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_policy_14-0.1.0-1PIGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_policy_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el9.noarch.rpm pigsty 0.1.0 15.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_policy_14-0.1.0-1PIGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 16.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_policy_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_policy_14 pg_policy_14-0.1.0-1PIGSTY.el10.noarch.rpm pigsty 0.1.0 15.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_policy_14-0.1.0-1PIGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~bookworm_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~trixie_all.deb pigsty 0.1.0 10.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~jammy_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~noble_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-policy postgresql-14-pg-policy_0.1.0-1PGSTY~resolute_all.deb pigsty 0.1.0 10.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-policy/postgresql-14-pg-policy_0.1.0-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_policy` using `pig build`:

```bash
pig build pkg pg_policy         # build RPM / DEB packages
```


## Install

You can install `pg_policy` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_policy;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_policy -v 18  # PG 18
pig ext install -y pg_policy -v 17  # PG 17
pig ext install -y pg_policy -v 16  # PG 16
pig ext install -y pg_policy -v 15  # PG 15
pig ext install -y pg_policy -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_policy_18       # PG 18
dnf install -y pg_policy_17       # PG 17
dnf install -y pg_policy_16       # PG 16
dnf install -y pg_policy_15       # PG 15
dnf install -y pg_policy_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-policy   # PG 18
apt install -y postgresql-17-pg-policy   # PG 17
apt install -y postgresql-16-pg-policy   # PG 16
apt install -y postgresql-15-pg-policy   # PG 15
apt install -y postgresql-14-pg-policy   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_policy;
```

## Usage

Sources:

- [pg_policy 0.1.0 on PGXN](https://pgxn.org/dist/pg_policy/0.1.0/)
- [pg_policy 0.1.0 README](https://api.pgxn.org/src/pg_policy/pg_policy-0.1.0/README.md)
- [Agent Policy Language reference](https://api.pgxn.org/src/pg_policy/pg_policy-0.1.0/doc/language.md)
- [pg_policy 0.1.0 security policy](https://api.pgxn.org/src/pg_policy/pg_policy-0.1.0/SECURITY.md)
- [pg_policy 0.1.0 control file](https://api.pgxn.org/src/pg_policy/pg_policy-0.1.0/pg_policy.control)
- [pg_policy 0.1.0 extension SQL](https://api.pgxn.org/src/pg_policy/pg_policy-0.1.0/sql/pg_policy--0.1.0.sql)
- [Pigsty pg_policy package page](https://pgext.cloud/ext/pg_policy)

`pg_policy` 0.1.0 is an experimental SQL and PL/pgSQL policy evaluator for agent and tool actions. It stores Agent Policy Language rules, evaluates context and session history, records every decision, and returns obligations for a gateway to enforce. It complements PostgreSQL roles and row-level security; it does not intercept SQL or tool calls by itself.

### Pigsty Schema Compatibility

Upstream 0.1.0 declares the reserved schema name `pg_policy` and defines an unquoted function named `check`. Pigsty packages patch the installed schema to `policy`, quote the reserved function name as `policy."check"()`, and fix function search paths. The upstream examples therefore cannot be copied verbatim into a Pigsty installation.

```sql
CREATE EXTENSION pg_policy;

SELECT policy.set_setting('enforcement_mode', 'log_only');
```

The extension is not relocatable, requires PostgreSQL 14 or later, and does not require `shared_preload_libraries` or a PostgreSQL restart. Current Pigsty packages cover PostgreSQL 14–18.

### Define and Evaluate a Guardrail

```sql
SELECT policy.upsert_policy('block_ddl', $apl$
forbid
  principal agent "research_bot"
  action tool "execute_sql"
  when { context.statement_type in ["DROP", "TRUNCATE", "ALTER", "CREATE"] }
  reason "Research agents may not run DDL"
$apl$);

SELECT policy.set_setting('enforcement_mode', 'enforce');

SELECT policy.evaluate(
  'agent', 'research_bot',
  'tool', 'execute_sql',
  '*', '*',
  '{"statement_type":"DROP"}'::jsonb,
  NULL
);

SELECT policy."check"(
  'research_bot',
  'execute_sql',
  '{"statement_type":"DROP"}'::jsonb
);
```

`policy.evaluate(...)` returns JSON containing `decision`, `allowed`, `matched_policies`, `obligations`, `reasons`, and `mode`. The convenience wrapper `policy."check"()` returns only a boolean. `policy.enforce()` requests exception-on-deny behavior when the mode is `enforce`.

### APL Surface

An APL document begins with one effect: `permit`, `forbid`, or `guide`. It can match principal, action, and resource types and identifiers. In 0.1.0, context conditions support only `==`, `in [...]`, and `and`. A temporal clause can count matching session events inside an interval when evaluation receives a session identifier.

`forbid` overrides matching `permit` rules. `guide` allows the action and can return `advice`, `prefer_tool`, or `max_rows` obligations. The caller—not the extension—must interpret and apply those obligations.

### Sessions, Temporal Limits, and Audit

```sql
SELECT policy.open_session(
  'sess-1',
  'agent',
  'research_bot'
);

SELECT policy.upsert_policy('export_budget', $apl$
forbid
  principal agent "research_bot"
  action tool "export_csv"
  when temporal {
    count(action == "export_csv") within interval '1 hour' >= 3
  }
  reason "Export budget exceeded"
$apl$);

SELECT policy.evaluate(
  'agent', 'research_bot',
  'tool', 'export_csv',
  '*', '*',
  '{}'::jsonb,
  'sess-1'
);
```

`policy.open_session()` creates or updates a session. Evaluations with a session identifier append an event and can satisfy temporal predicates. Every evaluation writes `policy.decision_log`; other important relations are `policy.policies`, `policy.sessions`, `policy.events`, and `policy.settings`.

### Enforcement and Security Boundaries

- The default `enforcement_mode` is `log_only` and the default decision is `permit`. A matched deny becomes an allow with a `shadow_deny` obligation.
- In `guide` mode, a matched deny becomes an allow with `would_deny`. Only `enforce` preserves a deny and allows `policy.enforce()` to raise an error.
- A gateway must call the evaluator before the protected action and hard-fail on deny. Calling `policy.evaluate(...)` after executing a tool is only auditing.
- Keep PostgreSQL `GRANT` and `REVOKE`, row-level security, network controls, and least-privilege credentials as the authoritative data-plane controls. Superusers and roles with `BYPASSRLS` can bypass row-level controls.
- The 0.1 line is explicitly an experimental MVP, not a hardened production security boundary. Shadow-test policies, restrict who can change `policy.settings` or `policy.policies`, and monitor `policy.decision_log` before switching to `enforce`.
