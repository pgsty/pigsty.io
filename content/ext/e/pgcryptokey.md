---
title: "pgcryptokey"
linkTitle: "pgcryptokey"
description: "cryptographic key management"
weight: 7320
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://momjian.us/download/pgcryptokey/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://momjian.us/download/pgcryptokey/</div>
    <div class="ext-card__desc">https://momjian.us/download/pgcryptokey/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgcryptokey-0.85.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgcryptokey-0.85.tar.gz</div>
    <div class="ext-card__desc">pgcryptokey-0.85.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgcryptokey`**](/ext/e/pgcryptokey) | `0.85` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7320  | [**`pgcryptokey`**](/ext/e/pgcryptokey) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgcrypto`](/ext/e/pgcrypto) [`pgsodium`](/ext/e/pgsodium) [`column_encrypt`](/ext/e/column_encrypt) [`supabase_vault`](/ext/e/supabase_vault) [`pg_enigma`](/ext/e/pg_enigma) [`pg_tde`](/ext/e/pg_tde) [`pgcrypto`](/ext/e/pgcrypto) [`shacrypt`](/ext/e/shacrypt) [`cryptint`](/ext/e/cryptint) [`pguecc`](/ext/e/pguecc) [`pgsmcrypto`](/ext/e/pgsmcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.85` | {{< pgvers "18,17,16,15,14" >}} | `pgcryptokey` | `pgcrypto` |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.85` | {{< pgvers "18,17,16,15,14" >}} | `pgcryptokey_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.85` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgcryptokey` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 |
| el8.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 | AVAIL PGDG 0.85 2 |
| el9.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 2 |
| el9.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 |
| el10.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 |
| el10.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 | AVAIL PGDG 0.85 3 |
| d12.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| d12.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| d13.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| d13.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u22.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u22.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u24.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u24.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u26.x86_64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
| u26.aarch64 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 | AVAIL PIGSTY 0.85 1 |
@ el8.x86_64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el8.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcryptokey_18-0.85-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el8.aarch64.rpm pigsty 0.85 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcryptokey_18-0.85-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el9.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcryptokey_18-0.85-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el9.aarch64.rpm pigsty 0.85 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcryptokey_18-0.85-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el10.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcryptokey_18-0.85-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgcryptokey_18 pgcryptokey_18-0.85-1PIGSTY.el10.aarch64.rpm pigsty 0.85 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcryptokey_18-0.85-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgcryptokey postgresql-18-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-18-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-6PGDG.rhel8.x86_64.rpm pgdg 0.85 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgcryptokey_17-0.85-6PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el8.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcryptokey_17-0.85-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-6PGDG.rhel8.aarch64.rpm pgdg 0.85 18.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgcryptokey_17-0.85-6PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el8.aarch64.rpm pigsty 0.85 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcryptokey_17-0.85-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-10PGDG.rhel9.8.x86_64.rpm pgdg 0.85 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgcryptokey_17-0.85-10PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-6PGDG.rhel9.x86_64.rpm pgdg 0.85 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgcryptokey_17-0.85-6PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el9.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcryptokey_17-0.85-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-10PGDG.rhel9.8.aarch64.rpm pgdg 0.85 17.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgcryptokey_17-0.85-10PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-6PGDG.rhel9.aarch64.rpm pgdg 0.85 17.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgcryptokey_17-0.85-6PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el9.aarch64.rpm pigsty 0.85 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcryptokey_17-0.85-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-10PGDG.rhel10.2.x86_64.rpm pgdg 0.85 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgcryptokey_17-0.85-10PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-8PGDG.rhel10.x86_64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgcryptokey_17-0.85-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el10.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcryptokey_17-0.85-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-10PGDG.rhel10.2.aarch64.rpm pgdg 0.85 17.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgcryptokey_17-0.85-10PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-8PGDG.rhel10.aarch64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgcryptokey_17-0.85-8PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgcryptokey_17 pgcryptokey_17-0.85-1PIGSTY.el10.aarch64.rpm pigsty 0.85 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcryptokey_17-0.85-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb pigsty 0.85 11.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb pigsty 0.85 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgcryptokey postgresql-17-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-17-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-5PGDG.rhel8.x86_64.rpm pgdg 0.85 18.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgcryptokey_16-0.85-5PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el8.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcryptokey_16-0.85-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-5PGDG.rhel8.aarch64.rpm pgdg 0.85 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgcryptokey_16-0.85-5PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el8.aarch64.rpm pigsty 0.85 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcryptokey_16-0.85-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-10PGDG.rhel9.8.x86_64.rpm pgdg 0.85 17.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgcryptokey_16-0.85-10PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-5PGDG.rhel9.x86_64.rpm pgdg 0.85 17.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgcryptokey_16-0.85-5PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el9.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcryptokey_16-0.85-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-10PGDG.rhel9.8.aarch64.rpm pgdg 0.85 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgcryptokey_16-0.85-10PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-5PGDG.rhel9.aarch64.rpm pgdg 0.85 17.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgcryptokey_16-0.85-5PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el9.aarch64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcryptokey_16-0.85-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-10PGDG.rhel10.2.x86_64.rpm pgdg 0.85 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgcryptokey_16-0.85-10PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-8PGDG.rhel10.x86_64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgcryptokey_16-0.85-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el10.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcryptokey_16-0.85-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-10PGDG.rhel10.2.aarch64.rpm pgdg 0.85 17.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgcryptokey_16-0.85-10PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-8PGDG.rhel10.aarch64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgcryptokey_16-0.85-8PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgcryptokey_16 pgcryptokey_16-0.85-1PIGSTY.el10.aarch64.rpm pigsty 0.85 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcryptokey_16-0.85-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb pigsty 0.85 11.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb pigsty 0.85 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgcryptokey postgresql-16-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-16-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-3.rhel8.x86_64.rpm pgdg 0.85 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgcryptokey_15-0.85-3.rhel8.x86_64.rpm
@ el8.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el8.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcryptokey_15-0.85-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-3.rhel8.aarch64.rpm pgdg 0.85 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgcryptokey_15-0.85-3.rhel8.aarch64.rpm
@ el8.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el8.aarch64.rpm pigsty 0.85 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcryptokey_15-0.85-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-10PGDG.rhel9.8.x86_64.rpm pgdg 0.85 17.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgcryptokey_15-0.85-10PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-3.rhel9.x86_64.rpm pgdg 0.85 22.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgcryptokey_15-0.85-3.rhel9.x86_64.rpm
@ el9.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el9.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcryptokey_15-0.85-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-10PGDG.rhel9.8.aarch64.rpm pgdg 0.85 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgcryptokey_15-0.85-10PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-3.rhel9.aarch64.rpm pgdg 0.85 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgcryptokey_15-0.85-3.rhel9.aarch64.rpm
@ el9.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el9.aarch64.rpm pigsty 0.85 16.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcryptokey_15-0.85-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-10PGDG.rhel10.2.x86_64.rpm pgdg 0.85 17.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgcryptokey_15-0.85-10PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-8PGDG.rhel10.x86_64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgcryptokey_15-0.85-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el10.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcryptokey_15-0.85-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-10PGDG.rhel10.2.aarch64.rpm pgdg 0.85 17.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgcryptokey_15-0.85-10PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-8PGDG.rhel10.aarch64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgcryptokey_15-0.85-8PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgcryptokey_15 pgcryptokey_15-0.85-1PIGSTY.el10.aarch64.rpm pigsty 0.85 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcryptokey_15-0.85-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb pigsty 0.85 11.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb pigsty 0.85 11.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgcryptokey postgresql-15-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-15-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-3.rhel8.x86_64.rpm pgdg 0.85 22.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgcryptokey_14-0.85-3.rhel8.x86_64.rpm
@ el8.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el8.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcryptokey_14-0.85-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-3.rhel8.aarch64.rpm pgdg 0.85 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgcryptokey_14-0.85-3.rhel8.aarch64.rpm
@ el8.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el8.aarch64.rpm pigsty 0.85 17.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcryptokey_14-0.85-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-10PGDG.rhel9.8.x86_64.rpm pgdg 0.85 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgcryptokey_14-0.85-10PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el9.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcryptokey_14-0.85-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-10PGDG.rhel9.8.aarch64.rpm pgdg 0.85 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgcryptokey_14-0.85-10PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-3.rhel9.aarch64.rpm pgdg 0.85 22.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgcryptokey_14-0.85-3.rhel9.aarch64.rpm
@ el9.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el9.aarch64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcryptokey_14-0.85-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-10PGDG.rhel10.2.x86_64.rpm pgdg 0.85 17.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgcryptokey_14-0.85-10PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-8PGDG.rhel10.x86_64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgcryptokey_14-0.85-8PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el10.x86_64.rpm pigsty 0.85 16.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcryptokey_14-0.85-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-10PGDG.rhel10.2.aarch64.rpm pgdg 0.85 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgcryptokey_14-0.85-10PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-8PGDG.rhel10.aarch64.rpm pgdg 0.85 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgcryptokey_14-0.85-8PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgcryptokey_14 pgcryptokey_14-0.85-1PIGSTY.el10.aarch64.rpm pigsty 0.85 17.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcryptokey_14-0.85-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb pigsty 0.85 11.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb pigsty 0.85 11.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb pigsty 0.85 11.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgcryptokey postgresql-14-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb pigsty 0.85 11.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgcryptokey/postgresql-14-pgcryptokey_0.85-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgcryptokey` using `pig build`:

```bash
pig build pkg pgcryptokey         # build RPM / DEB packages
```


## Install

You can install `pgcryptokey` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgcryptokey;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgcryptokey -v 18  # PG 18
pig ext install -y pgcryptokey -v 17  # PG 17
pig ext install -y pgcryptokey -v 16  # PG 16
pig ext install -y pgcryptokey -v 15  # PG 15
pig ext install -y pgcryptokey -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgcryptokey_18       # PG 18
dnf install -y pgcryptokey_17       # PG 17
dnf install -y pgcryptokey_16       # PG 16
dnf install -y pgcryptokey_15       # PG 15
dnf install -y pgcryptokey_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgcryptokey   # PG 18
apt install -y postgresql-17-pgcryptokey   # PG 17
apt install -y postgresql-16-pgcryptokey   # PG 16
apt install -y postgresql-15-pgcryptokey   # PG 15
apt install -y postgresql-14-pgcryptokey   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgcryptokey CASCADE;  -- requires: pgcrypto
```

## Usage

Sources:

- [Official 0.85 source archive](https://momjian.us/download/pgcryptokey/pgcryptokey-0.85.tar.gz)
- [Official project directory](https://momjian.us/download/pgcryptokey/)

`pgcryptokey` manages encryption data keys wrapped by an access password. It stores wrapped keys in a database table and integrates with `pgcrypto` for encryption, key rotation and re-encryption.

### Install and Unlock

```sql
CREATE EXTENSION pgcryptokey CASCADE;
```

The dependency is `pgcrypto`. Source release 0.85 uses SQL extension version 1.0 and needs superuser installation. In client mode, first establish the documented session access password using `get_shared_key()` and `set_session_access_password(encrypted_password)`. The shared-key exchange supports SSL or Unix-domain socket connections only; the encrypted password argument is hex-encoded.

Boot mode instead preloads `pgcryptokey_acpass`, runs the protected server-side password acquisition script and requires a restart. It makes the access password server-wide and read-only. Choose one mode; boot and client modes cannot be combined while the server is running.

### Create and Use a Key

After unlocking access to the keys:

```sql
SELECT create_cryptokey('app-key', 32);
SELECT set_cryptokey('app-key');

CREATE TEMP TABLE secrets(ciphertext bytea);
INSERT INTO secrets VALUES
  (pgp_sym_encrypt('example', get_cryptokey('app-key')));
SELECT pgp_sym_decrypt(ciphertext, get_cryptokey('app-key'))
FROM secrets;
```

The key length is in bytes. Keys may be selected by name or integer key ID; name lookup refers to an active, non-superseded key.

### Rotate and Re-encrypt

`supersede_cryptokey(name, byte_len)` or its key-ID overload creates a replacement and returns its ID. The old and new keys initially use the same access password. Use the integer key-ID overload `change_key_access_password(key_id, new_encrypted_password)` to change that wrapping password. The session must already have its shared key and current access password set; the new password must be encrypted with the shared key and hex-encoded.

In source release 0.85, the name overload calls an undefined `change_access_password` function and cannot complete the password change. Use the integer overload above.

`reencrypt_data(data, old_key_id, new_key_id)` and `reencrypt_data_bytea(data, old_key_id, new_key_id)` migrate encrypted values. Preserve old key IDs alongside ciphertext and verify re-encryption before calling `drop_cryptokey(name)` or its key-ID overload; removing a key can make remaining ciphertext unreadable.

### Security Boundary

Protect the key table, function grants, access-password acquisition script and backups. Upstream warns that all users can view the boot-time `pgcryptokey.access_password`; table privileges are still required to use wrapped keys. `get_cryptokey(name)` returns raw key material, so do not expose its result through ordinary queries, logs or application traces. This design does not isolate keys from a trusted database administrator.
