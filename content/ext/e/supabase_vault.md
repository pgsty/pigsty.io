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

| **Related** | [`column_encrypt`](/ext/e/column_encrypt) [`pg_tde`](/ext/e/pg_tde) [`pg_enigma`](/ext/e/pg_enigma) [`pgsodium`](/ext/e/pgsodium) [`pgcryptokey`](/ext/e/pgcryptokey) [`anon`](/ext/e/anon) [`pgcrypto`](/ext/e/pgcrypto) [`pgsmcrypto`](/ext/e/pgsmcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream 0.3.2/pkg 0.3.1; restrict decrypted view access; keep plaintext out of logs; pgsodium no longer required.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_vault` | - |
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
| u26.x86_64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 | AVAIL PIGSTY 0.3.1 1 |
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
@ u26.x86_64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~resolute_amd64.deb pigsty 0.3.1 30.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-vault postgresql-18-vault_0.3.1-1PIGSTY~resolute_arm64.deb pigsty 0.3.1 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-18-vault_0.3.1-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~resolute_amd64.deb pigsty 0.3.1 30.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-vault postgresql-17-vault_0.3.1-1PIGSTY~resolute_arm64.deb pigsty 0.3.1 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-17-vault_0.3.1-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~resolute_amd64.deb pigsty 0.3.1 30.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-vault postgresql-16-vault_0.3.1-1PIGSTY~resolute_arm64.deb pigsty 0.3.1 31.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-16-vault_0.3.1-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~resolute_amd64.deb pigsty 0.3.1 30.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-vault postgresql-15-vault_0.3.1-1PIGSTY~resolute_arm64.deb pigsty 0.3.1 31.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-15-vault_0.3.1-1PIGSTY~resolute_arm64.deb
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
@ u26.x86_64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~resolute_amd64.deb pigsty 0.3.1 30.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-vault postgresql-14-vault_0.3.1-1PIGSTY~resolute_arm64.deb pigsty 0.3.1 31.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/v/vault/postgresql-14-vault_0.3.1-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_vault;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_vault -v 18  # PG 18
pig ext install -y pg_vault -v 17  # PG 17
pig ext install -y pg_vault -v 16  # PG 16
pig ext install -y pg_vault -v 15  # PG 15
pig ext install -y pg_vault -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y vault_18       # PG 18
dnf install -y vault_17       # PG 17
dnf install -y vault_16       # PG 16
dnf install -y vault_15       # PG 15
dnf install -y vault_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-vault   # PG 18
apt install -y postgresql-17-vault   # PG 17
apt install -y postgresql-16-vault   # PG 16
apt install -y postgresql-15-vault   # PG 15
apt install -y postgresql-14-vault   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION supabase_vault;
```

## Usage

Sources:

- [Official source](https://github.com/supabase/vault/blob/2f05b9be4dcac774a458d5a9e6acae794eb6b8c4/README.md)
- [Official source](https://github.com/supabase/vault/blob/2f05b9be4dcac774a458d5a9e6acae794eb6b8c4/supabase_vault.control.in)
- [Official source](https://github.com/supabase/vault/blob/2f05b9be4dcac774a458d5a9e6acae794eb6b8c4/Makefile)
- [Official source](https://github.com/supabase/vault/blob/2f05b9be4dcac774a458d5a9e6acae794eb6b8c4/sql/supabase_vault--0.3.1--0.3.2.sql)

`supabase_vault` 0.3.2 stores encrypted secrets in PostgreSQL and exposes decrypted values through a privileged view. Its fixed schema is `vault`; the current release no longer requires `pgsodium`. Upstream tests PostgreSQL 14–19. Install as a superuser; no preload or restart is required.

### Core Workflow

The following values are demonstration strings, not real credentials:

```sql
CREATE EXTENSION supabase_vault;
SELECT vault.create_secret('example-secret', 'api_token', 'Demo only');
SELECT name, decrypted_secret FROM vault.decrypted_secrets WHERE name = 'api_token';
SELECT vault.update_secret(id, 'replacement-example', 'api_token', 'Rotated demo')
FROM vault.secrets WHERE name = 'api_token';
```

`vault.create_secret` returns the secret UUID and accepts optional name and description. `vault.update_secret` updates a selected UUID. `vault.secrets` holds encrypted values and metadata; `vault.decrypted_secrets` exposes plaintext to roles allowed to read it. Restrict both helper and view privileges deliberately.

### Security and Upgrade

Version 0.3.2 moves `pg_temp` to the end of the search path used by secret creation/update helpers. After installing its files, run `ALTER EXTENSION supabase_vault UPDATE TO '0.3.2'` in each database.

Encryption at rest does not prevent authorized queries from returning plaintext. Secret literals and returned values can appear in database logs, client histories or application telemetry; use the documented secret workflow and configure those systems appropriately. Protect the encryption-key environment and verify backup/restore behavior. Do not treat access to the decrypted view as safe merely because the stored table is encrypted.
