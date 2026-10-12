---
title: "plphp"
linkTitle: "plphp"
description: "Embed PHP 8 as an untrusted PostgreSQL procedural language"
weight: 3170
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/commandprompt/plPHP">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">commandprompt/plPHP</div>
    <div class="ext-card__desc">https://github.com/commandprompt/plPHP</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plphp-2.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plphp-2.6.tar.gz</div>
    <div class="ext-card__desc">plphp-2.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plphp`**](/ext/e/plphp) | `2.6` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3170  | [**`plphp`**](/ext/e/plphp) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plruby`](/ext/e/plruby) [`plperl`](/ext/e/plperl) [`plpython3u`](/ext/e/plpython3u) [`pllua`](/ext/e/pllua) [`plv8`](/ext/e/plv8) `jsonb_plphp` `hstore_plphp` `bytea_plphp` |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | `bytea_plphp` `hstore_plphp` `jsonb_plphp` |
{.ext-table .ext-table--rel}


> Uses non-ZTS PHP embed. EL8/EL9 RPMs require the PHP 8.2/8.3 module streams respectively; DEBs pin the matching PHP embed runtime for each OS. No preload or fixed schema. The three optional transforms are not included in this package.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `plphp` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `plphp_$v` | `php-embedded` |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plphp` | `libphp-embed` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| el8.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| el9.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| el9.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| el10.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| el10.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| d12.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| d12.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| d13.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| d13.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u22.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u22.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u24.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u24.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u26.x86_64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
| u26.aarch64 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 | AVAIL PIGSTY 2.6 1 |
@ el8.x86_64 18 plphp_18 plphp_18-2.6-1PGSTY.el8.x86_64.rpm pigsty 2.6 120.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plphp_18-2.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 plphp_18 plphp_18-2.6-1PGSTY.el8.aarch64.rpm pigsty 2.6 117.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plphp_18-2.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 plphp_18 plphp_18-2.6-1PGSTY.el9.x86_64.rpm pigsty 2.6 123.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plphp_18-2.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 plphp_18 plphp_18-2.6-1PGSTY.el9.aarch64.rpm pigsty 2.6 120.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plphp_18-2.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 plphp_18 plphp_18-2.6-1PGSTY.el10.x86_64.rpm pigsty 2.6 123.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plphp_18-2.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 plphp_18 plphp_18-2.6-1PGSTY.el10.aarch64.rpm pigsty 2.6 121.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plphp_18-2.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~bookworm_amd64.deb pigsty 2.6 114.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~bookworm_arm64.deb pigsty 2.6 110.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~trixie_amd64.deb pigsty 2.6 114.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~trixie_arm64.deb pigsty 2.6 111.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~jammy_amd64.deb pigsty 2.6 117.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~jammy_arm64.deb pigsty 2.6 115.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~noble_amd64.deb pigsty 2.6 114.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~noble_arm64.deb pigsty 2.6 111.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~resolute_amd64.deb pigsty 2.6 112.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plphp postgresql-18-plphp_2.6-1PGSTY~resolute_arm64.deb pigsty 2.6 109.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-18-plphp_2.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 plphp_17 plphp_17-2.6-1PGSTY.el8.x86_64.rpm pigsty 2.6 120.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plphp_17-2.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 plphp_17 plphp_17-2.6-1PGSTY.el8.aarch64.rpm pigsty 2.6 117.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plphp_17-2.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 plphp_17 plphp_17-2.6-1PGSTY.el9.x86_64.rpm pigsty 2.6 123.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plphp_17-2.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 plphp_17 plphp_17-2.6-1PGSTY.el9.aarch64.rpm pigsty 2.6 120.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plphp_17-2.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 plphp_17 plphp_17-2.6-1PGSTY.el10.x86_64.rpm pigsty 2.6 123.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plphp_17-2.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 plphp_17 plphp_17-2.6-1PGSTY.el10.aarch64.rpm pigsty 2.6 121.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plphp_17-2.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~bookworm_amd64.deb pigsty 2.6 114.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~bookworm_arm64.deb pigsty 2.6 111.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~trixie_amd64.deb pigsty 2.6 114.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~trixie_arm64.deb pigsty 2.6 111.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~jammy_amd64.deb pigsty 2.6 138.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~jammy_arm64.deb pigsty 2.6 136.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~noble_amd64.deb pigsty 2.6 113.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~noble_arm64.deb pigsty 2.6 111.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~resolute_amd64.deb pigsty 2.6 112.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plphp postgresql-17-plphp_2.6-1PGSTY~resolute_arm64.deb pigsty 2.6 109.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-17-plphp_2.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 plphp_16 plphp_16-2.6-1PGSTY.el8.x86_64.rpm pigsty 2.6 120.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plphp_16-2.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 plphp_16 plphp_16-2.6-1PGSTY.el8.aarch64.rpm pigsty 2.6 117.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plphp_16-2.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 plphp_16 plphp_16-2.6-1PGSTY.el9.x86_64.rpm pigsty 2.6 123.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plphp_16-2.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 plphp_16 plphp_16-2.6-1PGSTY.el9.aarch64.rpm pigsty 2.6 120.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plphp_16-2.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 plphp_16 plphp_16-2.6-1PGSTY.el10.x86_64.rpm pigsty 2.6 123.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plphp_16-2.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 plphp_16 plphp_16-2.6-1PGSTY.el10.aarch64.rpm pigsty 2.6 121.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plphp_16-2.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~bookworm_amd64.deb pigsty 2.6 114.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~bookworm_arm64.deb pigsty 2.6 111.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~trixie_amd64.deb pigsty 2.6 114.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~trixie_arm64.deb pigsty 2.6 111.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~jammy_amd64.deb pigsty 2.6 137.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~jammy_arm64.deb pigsty 2.6 134.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~noble_amd64.deb pigsty 2.6 113.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~noble_arm64.deb pigsty 2.6 111.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~resolute_amd64.deb pigsty 2.6 112.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plphp postgresql-16-plphp_2.6-1PGSTY~resolute_arm64.deb pigsty 2.6 109.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-16-plphp_2.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 plphp_15 plphp_15-2.6-1PGSTY.el8.x86_64.rpm pigsty 2.6 120.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plphp_15-2.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 plphp_15 plphp_15-2.6-1PGSTY.el8.aarch64.rpm pigsty 2.6 117.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plphp_15-2.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 plphp_15 plphp_15-2.6-1PGSTY.el9.x86_64.rpm pigsty 2.6 123.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plphp_15-2.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 plphp_15 plphp_15-2.6-1PGSTY.el9.aarch64.rpm pigsty 2.6 121.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plphp_15-2.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 plphp_15 plphp_15-2.6-1PGSTY.el10.x86_64.rpm pigsty 2.6 123.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plphp_15-2.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 plphp_15 plphp_15-2.6-1PGSTY.el10.aarch64.rpm pigsty 2.6 121.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plphp_15-2.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~bookworm_amd64.deb pigsty 2.6 114.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~bookworm_arm64.deb pigsty 2.6 111.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~trixie_amd64.deb pigsty 2.6 115.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~trixie_arm64.deb pigsty 2.6 111.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~jammy_amd64.deb pigsty 2.6 137.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~jammy_arm64.deb pigsty 2.6 135.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~noble_amd64.deb pigsty 2.6 114.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~noble_arm64.deb pigsty 2.6 112.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~resolute_amd64.deb pigsty 2.6 113.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plphp postgresql-15-plphp_2.6-1PGSTY~resolute_arm64.deb pigsty 2.6 109.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-15-plphp_2.6-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 plphp_14 plphp_14-2.6-1PGSTY.el8.x86_64.rpm pigsty 2.6 120.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plphp_14-2.6-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 plphp_14 plphp_14-2.6-1PGSTY.el8.aarch64.rpm pigsty 2.6 117.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plphp_14-2.6-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 plphp_14 plphp_14-2.6-1PGSTY.el9.x86_64.rpm pigsty 2.6 123.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plphp_14-2.6-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 plphp_14 plphp_14-2.6-1PGSTY.el9.aarch64.rpm pigsty 2.6 121.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plphp_14-2.6-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 plphp_14 plphp_14-2.6-1PGSTY.el10.x86_64.rpm pigsty 2.6 123.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plphp_14-2.6-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 plphp_14 plphp_14-2.6-1PGSTY.el10.aarch64.rpm pigsty 2.6 121.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plphp_14-2.6-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~bookworm_amd64.deb pigsty 2.6 117.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~bookworm_arm64.deb pigsty 2.6 114.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~trixie_amd64.deb pigsty 2.6 117.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~trixie_arm64.deb pigsty 2.6 114.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~jammy_amd64.deb pigsty 2.6 140.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~jammy_arm64.deb pigsty 2.6 138.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~noble_amd64.deb pigsty 2.6 116.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~noble_arm64.deb pigsty 2.6 115.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~resolute_amd64.deb pigsty 2.6 115.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plphp postgresql-14-plphp_2.6-1PGSTY~resolute_arm64.deb pigsty 2.6 112.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plphp/postgresql-14-plphp_2.6-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `plphp` using `pig build`:

```bash
pig build pkg plphp         # build RPM / DEB packages
```


## Install

You can install `plphp` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install plphp;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y plphp -v 18  # PG 18
pig ext install -y plphp -v 17  # PG 17
pig ext install -y plphp -v 16  # PG 16
pig ext install -y plphp -v 15  # PG 15
pig ext install -y plphp -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y plphp_18       # PG 18
dnf install -y plphp_17       # PG 17
dnf install -y plphp_16       # PG 16
dnf install -y plphp_15       # PG 15
dnf install -y plphp_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-plphp   # PG 18
apt install -y postgresql-17-plphp   # PG 17
apt install -y postgresql-16-plphp   # PG 16
apt install -y postgresql-15-plphp   # PG 15
apt install -y postgresql-14-plphp   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION plphp;
```

## Usage

Sources:

- [PGXN 2.6.0 README](https://pgxn.org/dist/plphp/2.6.0/README.html)
- [PL/php language reference](https://pgxn.org/dist/plphp/2.6.0/doc/plphp.html)
- [plphp control file](https://api.pgxn.org/src/plphp/plphp-2.6.0/plphp.control)
- [PL/php 2.6.0 changelog](https://api.pgxn.org/src/plphp/plphp-2.6.0/CHANGELOG.md)

`plphp` embeds PHP as an untrusted PostgreSQL procedural language for functions, procedures, triggers, event triggers, and anonymous blocks. Use it only when PHP APIs are worth running with the operating-system privileges of the PostgreSQL server process; it is not a sandboxed language.

### Core Workflow

```sql
CREATE EXTENSION plphp;

CREATE FUNCTION php_square(integer)
RETURNS integer
LANGUAGE plphp
AS $$
    return $args[0] * $args[0];
$$;

SELECT php_square(12);
```

PL/php 2.6 supports PHP 8.1 through 8.4 using the embed SAPI without ZTS and PostgreSQL 11 through 18. Installation and creation require a superuser because the language is deliberately untrusted.

### Main Interfaces

- `spi_exec(...)`, `spi_prepare(...)`, `spi_exec_prepared(...)`, `spi_query(...)`, and cursor helpers access PostgreSQL through SPI.
- `return_next()` emits rows from set-returning functions.
- `spi_commit()` and `spi_rollback()` provide transaction control inside procedures.
- `subtransaction(...)` creates a catchable subtransaction boundary.
- `$_TD` exposes trigger and event-trigger context.
- `$_SHARED` is session-global storage, while `$_SD` is private per-function session storage.
- `plphp.on_init`, `plphp.start_proc`, and `plphp_modules` initialize a session interpreter.

The optional `jsonb_plphp`, `hstore_plphp`, and `bytea_plphp` extensions add native transforms. A function must declare `TRANSFORM FOR TYPE ...` to use a transform; installing a companion does not change every PL/php function automatically.

### Security and Operations

A PL/php function can read or write files, open network connections, invoke PHP facilities, and affect anything accessible to the PostgreSQL operating-system account. Only grant function ownership and creation rights to roles trusted like a server administrator. Apply normal `SECURITY DEFINER` and `search_path` hardening when a privileged wrapper is unavoidable.

SPI query text, dynamic identifiers, session initialization code, loaded modules, and persistent interpreter state all require review. Long-running PHP code blocks a PostgreSQL backend, and memory retained in `$_SHARED` or `$_SD` lasts for the session. Use prepared statements for untrusted values, bound resource use, test cancellation/error paths, and recycle sessions when application code retains excessive state.

Version 2.6 adds per-function `$_SD` and the binary-safe `bytea_plphp` transform. PostgreSQL tracks the control version as `2.6` while the source distribution is `2.6.0`.
