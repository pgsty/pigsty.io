---
title: "pg_grammar_guard"
linkTitle: "pg_grammar_guard"
description: "Catalog-derived grammars and approved grammar drift checks"
weight: 1890
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Manuelreyesbravo/pg_grammar_guard">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Manuelreyesbravo/pg_grammar_guard</div>
    <div class="ext-card__desc">https://github.com/Manuelreyesbravo/pg_grammar_guard</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_grammar_guard-0.4.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_grammar_guard-0.4.1.tar.gz</div>
    <div class="ext-card__desc">pg_grammar_guard-0.4.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_grammar_guard`**](/ext/e/pg_grammar_guard) | `0.4.1` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1890  | [**`pg_grammar_guard`**](/ext/e/pg_grammar_guard) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `grammar_guard` |
{.ext-table}

| **Related** | [`pg_living_assertions`](/ext/e/pg_living_assertions) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires pg_living_assertions, despite older README text claiming no dependencies.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_grammar_guard` | `pg_living_assertions` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_grammar_guard_$v` | `pg_living_assertions_$v` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-grammar-guard` | `postgresql-$v-pg-living-assertions` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 | AVAIL PIGSTY 0.4.1 1 |
@ el8.x86_64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_grammar_guard_18-0.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_grammar_guard_18-0.4.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_grammar_guard_18-0.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_grammar_guard_18-0.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_grammar_guard_18-0.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_grammar_guard_18 pg_grammar_guard_18-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_grammar_guard_18-0.4.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-grammar-guard postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-18-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_grammar_guard_17-0.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_grammar_guard_17-0.4.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_grammar_guard_17-0.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_grammar_guard_17-0.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_grammar_guard_17-0.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_grammar_guard_17 pg_grammar_guard_17-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_grammar_guard_17-0.4.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-grammar-guard postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-17-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_grammar_guard_16-0.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_grammar_guard_16-0.4.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_grammar_guard_16-0.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_grammar_guard_16-0.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_grammar_guard_16-0.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_grammar_guard_16 pg_grammar_guard_16-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_grammar_guard_16-0.4.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-grammar-guard postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-16-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_grammar_guard_15-0.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_grammar_guard_15-0.4.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_grammar_guard_15-0.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_grammar_guard_15-0.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_grammar_guard_15-0.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_grammar_guard_15 pg_grammar_guard_15-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_grammar_guard_15-0.4.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-grammar-guard postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-15-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_grammar_guard_14-0.4.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el8.noarch.rpm pigsty 0.4.1 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_grammar_guard_14-0.4.1-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_grammar_guard_14-0.4.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el9.noarch.rpm pigsty 0.4.1 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_grammar_guard_14-0.4.1-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_grammar_guard_14-0.4.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_grammar_guard_14 pg_grammar_guard_14-0.4.1-1PGSTY.el10.noarch.rpm pigsty 0.4.1 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_grammar_guard_14-0.4.1-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb pigsty 0.4.1 21.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb pigsty 0.4.1 22.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-grammar-guard postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb pigsty 0.4.1 22.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-grammar-guard/postgresql-14-pg-grammar-guard_0.4.1-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_grammar_guard` using `pig build`:

```bash
pig build pkg pg_grammar_guard         # build RPM / DEB packages
```


## Install

You can install `pg_grammar_guard` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_grammar_guard;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_grammar_guard -v 18  # PG 18
pig ext install -y pg_grammar_guard -v 17  # PG 17
pig ext install -y pg_grammar_guard -v 16  # PG 16
pig ext install -y pg_grammar_guard -v 15  # PG 15
pig ext install -y pg_grammar_guard -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_grammar_guard_18       # PG 18
dnf install -y pg_grammar_guard_17       # PG 17
dnf install -y pg_grammar_guard_16       # PG 16
dnf install -y pg_grammar_guard_15       # PG 15
dnf install -y pg_grammar_guard_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-grammar-guard   # PG 18
apt install -y postgresql-17-pg-grammar-guard   # PG 17
apt install -y postgresql-16-pg-grammar-guard   # PG 16
apt install -y postgresql-15-pg-grammar-guard   # PG 15
apt install -y postgresql-14-pg-grammar-guard   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_grammar_guard CASCADE;  -- requires: pg_living_assertions
```

## Usage

Sources:

- [PGXN 0.4.1](https://pgxn.org/dist/pg_grammar_guard/0.4.1/)

`pg_grammar_guard` generates GBNF or JSON Schema from catalog identifiers and detects drift from approved grammars. It is pure SQL, needs no preload and is packaged for PostgreSQL 14–18. Its control file requires `pg_living_assertions`.

### Generate a grammar

```sql
CREATE EXTENSION pg_grammar_guard CASCADE;
CREATE TABLE public.grammar_demo (id integer, label text);
SELECT grammar_guard.grammar_for_json(ARRAY[
  ROW('column', 'enum',
      grammar_guard.catalog_columns('public.grammar_demo'), true)
]::grammar_guard.grammar_field[]);
```

The catalog helpers enumerate actual tables, columns and enum labels. Generation supports nested objects and bounded arrays; open-ended values such as arbitrary SQL or file paths need separate validation.

### Detect changes

`grammar_guard.watch()` stores the query that rebuilds a grammar, and `grammar_guard.check_grammar()` evaluates it against the live catalog. Results and their age are available through `living_assertions.status`.

Register baseline SQL only through trusted administrators. A grammar limits valid identifiers; it cannot prove that a selected table, join or answer is semantically correct. Baselines from the old 0.2 series lack the original generating query and require manual re-approval when upgrading.
