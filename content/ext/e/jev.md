---
title: "jev"
linkTitle: "jev"
description: "Natural-language row filtering, ranking and classification through TypeSafe"
weight: 1900
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/realZachi/pg-jev">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">realZachi/pg-jev</div>
    <div class="ext-card__desc">https://github.com/realZachi/pg-jev</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/jev-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">jev-0.2.0.tar.gz</div>
    <div class="ext-card__desc">jev-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`jev`**](/ext/e/jev) | `0.2.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1900  | [**`jev`**](/ext/e/jev) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `public` |
{.ext-table}

| **Related** | [`plpython3u`](/ext/e/plpython3u) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires plpython3u and API credentials; sends row contents to an external model service. PG14-17.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "17,16,15,14" >}} | `jev` | `plpython3u` |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "17,16,15,14" >}} | `jev_$v` | `postgresql$v-plpython3` |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "17,16,15,14" >}} | `postgresql-$v-jev` | `postgresql-plpython3-$v` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d12.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| d13.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u22.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u24.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u26.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
| u26.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 |
@ el8.x86_64 17 jev_17 jev_17-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jev_17-0.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 jev_17 jev_17-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jev_17-0.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 jev_17 jev_17-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jev_17-0.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 jev_17 jev_17-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jev_17-0.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 jev_17 jev_17-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jev_17-0.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 jev_17 jev_17-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jev_17-0.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-jev postgresql-17-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-17-jev_0.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 16 jev_16 jev_16-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jev_16-0.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 jev_16 jev_16-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jev_16-0.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 jev_16 jev_16-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jev_16-0.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 jev_16 jev_16-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jev_16-0.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 jev_16 jev_16-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jev_16-0.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 jev_16 jev_16-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jev_16-0.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-jev postgresql-16-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-16-jev_0.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 15 jev_15 jev_15-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jev_15-0.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 jev_15 jev_15-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jev_15-0.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 jev_15 jev_15-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jev_15-0.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 jev_15 jev_15-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jev_15-0.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 jev_15 jev_15-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jev_15-0.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 jev_15 jev_15-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jev_15-0.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-jev postgresql-15-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-15-jev_0.2.0-1PGSTY~resolute_all.deb
@ el8.x86_64 14 jev_14 jev_14-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/jev_14-0.2.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 jev_14 jev_14-0.2.0-1PGSTY.el8.noarch.rpm pigsty 0.2.0 23.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/jev_14-0.2.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 jev_14 jev_14-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/jev_14-0.2.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 jev_14 jev_14-0.2.0-1PGSTY.el9.noarch.rpm pigsty 0.2.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/jev_14-0.2.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 jev_14 jev_14-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/jev_14-0.2.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 jev_14 jev_14-0.2.0-1PGSTY.el10.noarch.rpm pigsty 0.2.0 23.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/jev_14-0.2.0-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~bookworm_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~trixie_all.deb pigsty 0.2.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~jammy_all.deb pigsty 0.2.0 17.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~noble_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-jev postgresql-14-jev_0.2.0-1PGSTY~resolute_all.deb pigsty 0.2.0 17.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/j/jev/postgresql-14-jev_0.2.0-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `jev` using `pig build`:

```bash
pig build pkg jev         # build RPM / DEB packages
```


## Install

You can install `jev` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install jev;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y jev -v 17  # PG 17
pig ext install -y jev -v 16  # PG 16
pig ext install -y jev -v 15  # PG 15
pig ext install -y jev -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y jev_17       # PG 17
dnf install -y jev_16       # PG 16
dnf install -y jev_15       # PG 15
dnf install -y jev_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-17-jev   # PG 17
apt install -y postgresql-16-jev   # PG 16
apt install -y postgresql-15-jev   # PG 15
apt install -y postgresql-14-jev   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION jev CASCADE;  -- requires: plpython3u
```

## Usage

Sources:

- [PGXN 0.2.0](https://pgxn.org/dist/jev/0.2.0/)

`jev` filters, ranks and classifies rows using natural-language conditions evaluated by a TypeSafe API. It requires `plpython3u`, superuser installation and an API key. The upstream documented PostgreSQL range is 14–17; no preload is needed.

### Query rows

```sql
CREATE EXTENSION jev CASCADE;
SET jev.api_key = 'your-key';
CREATE TABLE jev_demo (id integer, body text);
INSERT INTO jev_demo VALUES (1, 'The customer requests a refund');
SELECT id, jev_prob(jev_demo, 'the customer requests a refund')
FROM jev_demo;
SELECT jev_stats();
```

`jev()` returns a boolean predicate; `jev_prob()` returns a probability. `jev_choice()` classifies among options, and `jev_score()` evaluates ordered levels. Cache and connection pools are session-local; `jev_cache_clear()` clears session state.

### Service and data boundaries

Row contents are transmitted to the configured API. Set `jev.api_url` for the intended service and use `jev.max_rows_per_statement` and `jev.max_chars_per_statement` to cap work. API latency and charges depend on the service and data volume. The API key must be handled as a credential.

PL/Python runs with server operating-system privileges. Hosts that withhold superuser access or PL/Python cannot run this extension. Local package tests use the upstream mock API; they do not validate the remote model's judgment quality.
