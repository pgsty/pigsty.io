---
title: "pg_money"
linkTitle: "pg_money"
description: "Exact currency-aware monetary types, arithmetic, and allocation"
weight: 3690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RustedBytes/pg-money">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RustedBytes/pg-money</div>
    <div class="ext-card__desc">https://github.com/RustedBytes/pg-money</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_money-0.3.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_money-0.3.0.tar.gz</div>
    <div class="ext-card__desc">pg_money-0.3.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_money`**](/ext/e/pg_money) | `0.3.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3690  | [**`pg_money`**](/ext/e/pg_money) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`currency`](/ext/e/currency) [`financial`](/ext/e/financial) [`pg_rational`](/ext/e/pg_rational) [`pgmp`](/ext/e/pgmp) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Currency metadata is built in; the currency extension is related, not required.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_money` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_money_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.3.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-money` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 | AVAIL PIGSTY 0.3.0 1 |
@ el8.x86_64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 1017.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_money_18-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 970.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_money_18-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_money_18-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_money_18-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_money_18-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_money_18 pg_money_18-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 1018.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_money_18-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 853.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 790.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 853.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 791.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 951.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 921.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 927.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 914.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 924.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-money postgresql-18-pg-money_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 910.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-18-pg-money_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 1014.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_money_17-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 966.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_money_17-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_money_17-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_money_17-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_money_17-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_money_17 pg_money_17-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 1017.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_money_17-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 851.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 788.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 851.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 789.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 947.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 920.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 925.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 912.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 923.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-money postgresql-17-pg-money_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 908.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-17-pg-money_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 1013.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_money_16-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 965.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_money_16-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_money_16-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_money_16-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_money_16-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_money_16 pg_money_16-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 1019.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_money_16-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 850.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 787.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 850.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 788.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 948.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 920.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 927.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 913.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 923.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-money postgresql-16-pg-money_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 908.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-16-pg-money_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 1005.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_money_15-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 955.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_money_15-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 1022.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_money_15-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 1.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_money_15-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 1023.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_money_15-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_money_15 pg_money_15-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 1015.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_money_15-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 845.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 782.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 845.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 783.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 939.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 917.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 921.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 911.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 918.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-money postgresql-15-pg-money_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 908.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-15-pg-money_0.3.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el8.x86_64.rpm pigsty 0.3.0 1003.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_money_14-0.3.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el8.aarch64.rpm pigsty 0.3.0 953.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_money_14-0.3.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el9.x86_64.rpm pigsty 0.3.0 1019.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_money_14-0.3.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el9.aarch64.rpm pigsty 0.3.0 1021.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_money_14-0.3.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el10.x86_64.rpm pigsty 0.3.0 1021.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_money_14-0.3.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_money_14 pg_money_14-0.3.0-1PGSTY.el10.aarch64.rpm pigsty 0.3.0 1013.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_money_14-0.3.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb pigsty 0.3.0 845.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb pigsty 0.3.0 783.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~trixie_amd64.deb pigsty 0.3.0 845.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~trixie_arm64.deb pigsty 0.3.0 784.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~jammy_amd64.deb pigsty 0.3.0 938.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~jammy_arm64.deb pigsty 0.3.0 918.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~noble_amd64.deb pigsty 0.3.0 921.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~noble_arm64.deb pigsty 0.3.0 911.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~resolute_amd64.deb pigsty 0.3.0 919.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-money postgresql-14-pg-money_0.3.0-1PGSTY~resolute_arm64.deb pigsty 0.3.0 908.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-money/postgresql-14-pg-money_0.3.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_money` using `pig build`:

```bash
pig build pkg pg_money         # build RPM / DEB packages
```


## Install

You can install `pg_money` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_money;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_money -v 18  # PG 18
pig ext install -y pg_money -v 17  # PG 17
pig ext install -y pg_money -v 16  # PG 16
pig ext install -y pg_money -v 15  # PG 15
pig ext install -y pg_money -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_money_18       # PG 18
dnf install -y pg_money_17       # PG 17
dnf install -y pg_money_16       # PG 16
dnf install -y pg_money_15       # PG 15
dnf install -y pg_money_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-money   # PG 18
apt install -y postgresql-17-pg-money   # PG 17
apt install -y postgresql-16-pg-money   # PG 16
apt install -y postgresql-15-pg-money   # PG 15
apt install -y postgresql-14-pg-money   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_money;
```

## Usage

Sources:

- [README](https://github.com/RustedBytes/pg-money/blob/4dfa040a59ef4d53eebd274749ada42ee184be29/README.md)
- [Control file](https://github.com/RustedBytes/pg-money/blob/4dfa040a59ef4d53eebd274749ada42ee184be29/pg_money.control)
- [Cargo.toml](https://github.com/RustedBytes/pg-money/blob/4dfa040a59ef4d53eebd274749ada42ee184be29/Cargo.toml)
- [src/lib.rs](https://github.com/RustedBytes/pg-money/blob/4dfa040a59ef4d53eebd274749ada42ee184be29/src/lib.rs)
- [docs/SECURITY.md](https://github.com/RustedBytes/pg-money/blob/4dfa040a59ef4d53eebd274749ada42ee184be29/docs/SECURITY.md)

`pg_money` provides exact currency-aware amounts, arithmetic, rounding, and allocation on PostgreSQL 14–18. Its types are distinct from the locale-sensitive built-in money type.

### Core Workflow

```sql
CREATE EXTENSION pg_money;
CREATE TABLE invoices (id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                       total money_with_currency NOT NULL);
INSERT INTO invoices(total) VALUES ('USD 19.95'), (money_make(5.25, 'USD'));
SELECT sum(total), avg(total), money_format(sum(total)) FROM invoices;
SELECT money_split('USD 10.00', 3);
SELECT money_exchange('USD 100', 'EUR', 0.85);
```

### Objects and Semantics

`money_with_currency` stores a currency with an exact decimal amount; `money_minor` works with minor-unit amounts. `money_make`, `money_from_minor`, and `money_minor_make` construct values. `money_round` accepts an explicit rounding mode, and `money_split` allocates residual units while conserving the total.

Arithmetic and aggregation reject incompatible currencies instead of converting implicitly. Exchange rates are supplied explicitly or read from an application-owned table with `money_exchange_at`; the extension fetches no market rates. Check rounding and amount bounds at application boundaries.

### Operation

The 0.3.0 control file requires superuser installation and allows relocation. No preload is required. Treat exchange-rate tables and mutation privileges separately from read-only arithmetic; caller-supplied SQL data does not establish the correctness or freshness of a rate.
