---
title: "supabase_vault"
linkTitle: "supabase_vault"
description: "Supabase Vault Extension"
weight: 7050
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/vault">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/vault</div>
    <div class="ext-card__desc">https://github.com/supabase/vault</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/vault-0.3.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">vault-0.3.1.tar.gz</div>
    <div class="ext-card__desc">vault-0.3.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vault`**](/ext/e/supabase_vault) | `0.3.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7050  | [**`supabase_vault`**](/ext/e/supabase_vault) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `vault` |
{.ext-table}

| **Related** | [`pgsodium`](/ext/e/pgsodium) [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`supautils`](/ext/e/supautils) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`anon`](/ext/e/anon) [`pg_tde`](/ext/e/pg_tde) [`pgsmcrypto`](/ext/e/pgsmcrypto) [`pgaudit`](/ext/e/pgaudit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_vault` | `pgsodium` |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "18,17,16,15,14" >}} | `vault_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-vault` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 vault_18 vault_18-0.3.1-1PIGSTY.el8.x86_64.rpm pigsty 0.3.1 26.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vault_18-0.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 vault_18 vault_18-0.3.1-1PIGSTY.el8.aarch64.rpm pigsty 0.3.1 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vault_18-0.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 vault_18 vault_18-0.3.1-1PIGSTY.el9.x86_64.rpm pigsty 0.3.1 25.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vault_18-0.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 vault_18 vault_18-0.3.1-1PIGSTY.el9.aarch64.rpm pigsty 0.3.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vault_18-0.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 vault_18 vault_18-0.3.1-1PIGSTY.el10.x86_64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vault_18-0.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 vault_18 vault_18-0.3.1-1PIGSTY.el10.aarch64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vault_18-0.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~bookworm_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~bookworm_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~trixie_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~trixie_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~jammy_amd64.deb pigsty 0.3.1 31.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~jammy_arm64.deb pigsty 0.3.1 31.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~noble_amd64.deb pigsty 0.3.1 30.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~noble_arm64.deb pigsty 0.3.1 30.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 vault_17 vault_17-0.3.1-1PIGSTY.el8.x86_64.rpm pigsty 0.3.1 26.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vault_17-0.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 vault_17 vault_17-0.3.1-1PIGSTY.el8.aarch64.rpm pigsty 0.3.1 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vault_17-0.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 vault_17 vault_17-0.3.1-1PIGSTY.el9.x86_64.rpm pigsty 0.3.1 25.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vault_17-0.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 vault_17 vault_17-0.3.1-1PIGSTY.el9.aarch64.rpm pigsty 0.3.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vault_17-0.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 vault_17 vault_17-0.3.1-1PIGSTY.el10.x86_64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vault_17-0.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 vault_17 vault_17-0.3.1-1PIGSTY.el10.aarch64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vault_17-0.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~bookworm_amd64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~bookworm_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~trixie_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~trixie_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~jammy_amd64.deb pigsty 0.3.1 32.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~jammy_arm64.deb pigsty 0.3.1 32.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~noble_amd64.deb pigsty 0.3.1 30.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~noble_arm64.deb pigsty 0.3.1 30.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 vault_16 vault_16-0.3.1-1PIGSTY.el8.x86_64.rpm pigsty 0.3.1 26.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vault_16-0.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 vault_16 vault_16-0.3.1-1PIGSTY.el8.aarch64.rpm pigsty 0.3.1 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vault_16-0.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 vault_16 vault_16-0.3.1-1PIGSTY.el9.x86_64.rpm pigsty 0.3.1 25.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vault_16-0.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 vault_16 vault_16-0.3.1-1PIGSTY.el9.aarch64.rpm pigsty 0.3.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vault_16-0.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 vault_16 vault_16-0.3.1-1PIGSTY.el10.x86_64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vault_16-0.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 vault_16 vault_16-0.3.1-1PIGSTY.el10.aarch64.rpm pigsty 0.3.1 25.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vault_16-0.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~bookworm_amd64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~bookworm_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~trixie_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~trixie_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~jammy_amd64.deb pigsty 0.3.1 32.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~jammy_arm64.deb pigsty 0.3.1 32.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~noble_amd64.deb pigsty 0.3.1 30.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~noble_arm64.deb pigsty 0.3.1 30.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 vault_15 vault_15-0.3.1-1PIGSTY.el8.x86_64.rpm pigsty 0.3.1 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vault_15-0.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 vault_15 vault_15-0.3.1-1PIGSTY.el8.aarch64.rpm pigsty 0.3.1 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vault_15-0.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 vault_15 vault_15-0.3.1-1PIGSTY.el9.x86_64.rpm pigsty 0.3.1 25.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vault_15-0.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 vault_15 vault_15-0.3.1-1PIGSTY.el9.aarch64.rpm pigsty 0.3.1 25.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vault_15-0.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 vault_15 vault_15-0.3.1-1PIGSTY.el10.x86_64.rpm pigsty 0.3.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vault_15-0.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 vault_15 vault_15-0.3.1-1PIGSTY.el10.aarch64.rpm pigsty 0.3.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vault_15-0.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~bookworm_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~bookworm_arm64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~trixie_amd64.deb pigsty 0.3.1 29.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~trixie_arm64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~jammy_amd64.deb pigsty 0.3.1 32.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~jammy_arm64.deb pigsty 0.3.1 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~noble_amd64.deb pigsty 0.3.1 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~noble_arm64.deb pigsty 0.3.1 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 vault_14 vault_14-0.3.1-1PIGSTY.el8.x86_64.rpm pigsty 0.3.1 26.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/vault_14-0.3.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 vault_14 vault_14-0.3.1-1PIGSTY.el8.aarch64.rpm pigsty 0.3.1 26.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/vault_14-0.3.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 vault_14 vault_14-0.3.1-1PIGSTY.el9.x86_64.rpm pigsty 0.3.1 25.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/vault_14-0.3.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 vault_14 vault_14-0.3.1-1PIGSTY.el9.aarch64.rpm pigsty 0.3.1 25.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/vault_14-0.3.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 vault_14 vault_14-0.3.1-1PIGSTY.el10.x86_64.rpm pigsty 0.3.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/vault_14-0.3.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 vault_14 vault_14-0.3.1-1PIGSTY.el10.aarch64.rpm pigsty 0.3.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/vault_14-0.3.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~bookworm_amd64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~bookworm_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~trixie_amd64.deb pigsty 0.3.1 29.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~trixie_arm64.deb pigsty 0.3.1 29.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~jammy_amd64.deb pigsty 0.3.1 32.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~jammy_arm64.deb pigsty 0.3.1 32.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~noble_amd64.deb pigsty 0.3.1 30.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~noble_arm64.deb pigsty 0.3.1 31.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_vault` using `pig build`:

```bash
pig build pkg pg_vault         # build RPM / DEB packages
```


## Install

You can install `pg_vault` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_vault;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_vault -v 18  # PG 18
pig ext install -y pg_vault -v 17  # PG 17
pig ext install -y pg_vault -v 16  # PG 16
pig ext install -y pg_vault -v 15  # PG 15
pig ext install -y pg_vault -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y vault_18       # PG 18
dnf install -y vault_17       # PG 17
dnf install -y vault_16       # PG 16
dnf install -y vault_15       # PG 15
dnf install -y vault_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-vault   # PG 18
apt install -y postgresql-17-vault   # PG 17
apt install -y postgresql-16-vault   # PG 16
apt install -y postgresql-15-vault   # PG 15
apt install -y postgresql-14-vault   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION supabase_vault CASCADE;  -- requires: pgsodium
```




## Usage

> [supabase_vault: Encrypted secret storage for Supabase](https://github.com/supabase/vault)

Supabase Vault provides a `vault.secrets` table to store sensitive information (API keys, tokens, etc.) encrypted at rest. Decryption happens on the fly through the `vault.decrypted_secrets` view.

```sql
CREATE EXTENSION supabase_vault CASCADE;
```

### Storing Secrets

```sql
INSERT INTO vault.secrets (secret) VALUES ('s3kre3t_k3y') RETURNING *;

-- Or use the helper function:
SELECT vault.create_secret('another_s3kre3t');

-- With optional name and description:
SELECT vault.create_secret('my_secret', 'unique_name', 'This is the description');
```

### Reading Secrets

The `vault.secrets` table stores data encrypted. Use the `vault.decrypted_secrets` view to read decrypted values:

```sql
SELECT * FROM vault.decrypted_secrets ORDER BY created_at DESC LIMIT 3;
-- Includes a `decrypted_secret` column with the plaintext value
```

### Updating Secrets

```sql
SELECT vault.update_secret(
    '7095d222-efe5-4cd5-b5c6-5755b451e223',
    'n3w_upd@ted_s3kret',
    'updated_unique_name',
    'This is the updated description'
);
```

### Security Note

Turn off statement logging to prevent secrets from appearing in logs:

```sql
ALTER SYSTEM SET statement_log = 'none';
```
