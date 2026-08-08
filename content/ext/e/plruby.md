---
title: "plruby"
linkTitle: "plruby"
description: "Embed MRI Ruby as an untrusted PostgreSQL procedural language"
weight: 3160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/commandprompt/plruby">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">commandprompt/plruby</div>
    <div class="ext-card__desc">https://github.com/commandprompt/plruby</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plruby-2.5.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plruby-2.5.0.tar.gz</div>
    <div class="ext-card__desc">plruby-2.5.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plruby`**](/ext/e/plruby) | `2.5` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3160  | [**`plruby`**](/ext/e/plruby) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3161  | [**`jsonb_plruby`**](/ext/e/jsonb_plruby) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3162  | [**`hstore_plruby`**](/ext/e/hstore_plruby) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3163  | [**`ltree_plruby`**](/ext/e/ltree_plruby) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`jsonb_plruby`](/ext/e/jsonb_plruby) [`hstore_plruby`](/ext/e/hstore_plruby) [`ltree_plruby`](/ext/e/ltree_plruby) [`plperl`](/ext/e/plperl) [`plpython3u`](/ext/e/plpython3u) [`pllua`](/ext/e/pllua) [`plv8`](/ext/e/plv8) `plrust` |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`hstore_plruby`](/ext/e/hstore_plruby) [`jsonb_plruby`](/ext/e/jsonb_plruby) [`ltree_plruby`](/ext/e/ltree_plruby) |
{.ext-table .ext-table--rel}


> Extension control default_version is 2.5 while the project and package version is 2.5.0; PL/Ruby embeds MRI Ruby 3.x, is untrusted and superuser-only, and requires no preload. RPM builds also provide an llvmjit subpackage.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.5` | {{< pgvers "18,17,16,15,14" >}} | `plruby` | - |
| [**RPM**](/ext/rpm#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.5.0` | {{< pgvers "18,17,16,15,14" >}} | `plruby_$v` | `ruby-libs` |
| [**DEB**](/ext/deb#lang) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.5.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plruby` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 | AVAIL PIGSTY 2.5.0 1 |
@ el8.x86_64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el8.x86_64.rpm pigsty 2.5.0 63.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plruby_18-2.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el8.aarch64.rpm pigsty 2.5.0 61.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plruby_18-2.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el9.x86_64.rpm pigsty 2.5.0 62.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plruby_18-2.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el9.aarch64.rpm pigsty 2.5.0 61.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plruby_18-2.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el10.x86_64.rpm pigsty 2.5.0 62.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plruby_18-2.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 plruby_18 plruby_18-2.5.0-1PIGSTY.el10.aarch64.rpm pigsty 2.5.0 61.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plruby_18-2.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 138.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 135.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 135.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 133.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 151.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 148.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 143.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 141.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 140.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-plruby postgresql-18-plruby_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 139.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-18-plruby_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el8.x86_64.rpm pigsty 2.5.0 62.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plruby_17-2.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el8.aarch64.rpm pigsty 2.5.0 61.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plruby_17-2.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el9.x86_64.rpm pigsty 2.5.0 62.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plruby_17-2.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el9.aarch64.rpm pigsty 2.5.0 61.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plruby_17-2.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el10.x86_64.rpm pigsty 2.5.0 62.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plruby_17-2.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 plruby_17 plruby_17-2.5.0-1PIGSTY.el10.aarch64.rpm pigsty 2.5.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plruby_17-2.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 138.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 135.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 135.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 132.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 168.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 165.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 142.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 141.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 139.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-plruby postgresql-17-plruby_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 138.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-17-plruby_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el8.x86_64.rpm pigsty 2.5.0 62.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plruby_16-2.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el8.aarch64.rpm pigsty 2.5.0 61.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plruby_16-2.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el9.x86_64.rpm pigsty 2.5.0 62.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plruby_16-2.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el9.aarch64.rpm pigsty 2.5.0 61.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plruby_16-2.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el10.x86_64.rpm pigsty 2.5.0 62.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plruby_16-2.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 plruby_16 plruby_16-2.5.0-1PIGSTY.el10.aarch64.rpm pigsty 2.5.0 61.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plruby_16-2.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 138.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 135.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 134.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 132.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 167.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 164.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 142.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 141.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 139.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-plruby postgresql-16-plruby_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 138.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-16-plruby_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el8.x86_64.rpm pigsty 2.5.0 63.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plruby_15-2.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el8.aarch64.rpm pigsty 2.5.0 61.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plruby_15-2.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el9.x86_64.rpm pigsty 2.5.0 63.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plruby_15-2.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el9.aarch64.rpm pigsty 2.5.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plruby_15-2.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el10.x86_64.rpm pigsty 2.5.0 62.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plruby_15-2.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 plruby_15 plruby_15-2.5.0-1PIGSTY.el10.aarch64.rpm pigsty 2.5.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plruby_15-2.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 137.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 135.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 134.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 132.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 167.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 165.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 142.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 141.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 139.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-plruby postgresql-15-plruby_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 138.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-15-plruby_2.5.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el8.x86_64.rpm pigsty 2.5.0 63.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plruby_14-2.5.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el8.aarch64.rpm pigsty 2.5.0 61.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plruby_14-2.5.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el9.x86_64.rpm pigsty 2.5.0 63.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plruby_14-2.5.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el9.aarch64.rpm pigsty 2.5.0 62.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plruby_14-2.5.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el10.x86_64.rpm pigsty 2.5.0 62.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plruby_14-2.5.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 plruby_14 plruby_14-2.5.0-1PIGSTY.el10.aarch64.rpm pigsty 2.5.0 62.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plruby_14-2.5.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb pigsty 2.5.0 138.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb pigsty 2.5.0 135.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~trixie_amd64.deb pigsty 2.5.0 134.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~trixie_arm64.deb pigsty 2.5.0 131.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~jammy_amd64.deb pigsty 2.5.0 164.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~jammy_arm64.deb pigsty 2.5.0 162.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~noble_amd64.deb pigsty 2.5.0 142.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~noble_arm64.deb pigsty 2.5.0 141.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~resolute_amd64.deb pigsty 2.5.0 139.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-plruby postgresql-14-plruby_2.5.0-1PIGSTY~resolute_arm64.deb pigsty 2.5.0 138.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/plruby/postgresql-14-plruby_2.5.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `plruby` using `pig build`:

```bash
pig build pkg plruby         # build RPM / DEB packages
```


## Install

You can install `plruby` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plruby;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plruby -v 18  # PG 18
pig ext install -y plruby -v 17  # PG 17
pig ext install -y plruby -v 16  # PG 16
pig ext install -y plruby -v 15  # PG 15
pig ext install -y plruby -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plruby_18       # PG 18
dnf install -y plruby_17       # PG 17
dnf install -y plruby_16       # PG 16
dnf install -y plruby_15       # PG 15
dnf install -y plruby_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plruby   # PG 18
apt install -y postgresql-17-plruby   # PG 17
apt install -y postgresql-16-plruby   # PG 16
apt install -y postgresql-15-plruby   # PG 15
apt install -y postgresql-14-plruby   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION plruby;
```

## Usage

Sources:

- [PL/Ruby v2.5.0 README](https://github.com/commandprompt/plruby/blob/v2.5.0/README.md)
- [PL/Ruby language reference](https://github.com/commandprompt/plruby/blob/v2.5.0/doc/plruby.md)
- [PL/Ruby cookbook](https://github.com/commandprompt/plruby/blob/v2.5.0/doc/cookbook.md)
- [PL/Ruby v2.5.0 control file](https://github.com/commandprompt/plruby/blob/v2.5.0/plruby.control)
- [PL/Ruby changelog](https://github.com/commandprompt/plruby/blob/v2.5.0/CHANGELOG.md)

`plruby` is the maintained Command Prompt procedural-language extension that embeds Ruby 3 in PostgreSQL. Package release 2.5.0 installs SQL extension version `2.5`. It supports scalar and set-returning functions, triggers, event triggers, procedures, anonymous `DO` blocks, SPI queries, cursors, and prepared plans.

### Create a Function

```sql
CREATE EXTENSION plruby;

CREATE FUNCTION ruby_add(integer, integer)
RETURNS integer
LANGUAGE plruby
AS $$
  args[0] + args[1]
$$;

SELECT ruby_add(2, 3);
```

Arguments are exposed through `args`; Ruby's final expression becomes the SQL return value. PostgreSQL scalar, array, composite, and record conversion rules are documented in the language reference.

### Set-Returning Functions

Use `return_next` to emit rows from a set-returning function:

```sql
CREATE FUNCTION ruby_series(integer)
RETURNS SETOF integer
LANGUAGE plruby
AS $$
  1.upto(args[0]) { |n| return_next(n) }
$$;

SELECT * FROM ruby_series(3);
```

### SPI and Database Work

PL/Ruby exposes PostgreSQL's Server Programming Interface for SQL execution, prepared plans, and cursors. Keep SQL values in parameters rather than interpolating them into command text, and release long-lived cursors or prepared state when the session no longer needs them.

Procedures can use the documented transaction-control surface where PostgreSQL permits `COMMIT` or `ROLLBACK`. Functions and triggers remain subject to PostgreSQL's normal transactional restrictions.

### Triggers and Session State

Trigger functions receive trigger metadata through `$_TD` and return the row action documented by PL/Ruby. Event triggers, anonymous `DO` blocks, backend-local session data, and shared data are also available. These features run inside the database backend, so an exception, blocking call, or memory leak directly affects that backend.

### Version 2.5.0

- `bytea` now maps to a raw, NUL-safe Ruby `String` with `ASCII-8BIT` encoding instead of PostgreSQL hex text. This is a breaking conversion change: audit functions that parse or construct `\x...` strings and build bytes explicitly, for example with `Array#pack`.
- `$_SD` adds per-function state that persists across calls in one session and resets when the function is recompiled. `$_SHARED` remains session-wide across PL/Ruby functions.
- `spi_colnames`, `spi_coltypes`, and `spi_coltypmods` expose result-column metadata, and `ltree_plruby` adds the opt-in `ltree` transform.
- After installing the 2.5.0 shared library and SQL files, run `ALTER EXTENSION plruby UPDATE` in each database that already has the extension.

### Security and Requirements

- `plruby` is an untrusted language. Ruby 3 provides no safe in-process sandbox, so creating PL/Ruby functions is restricted to superusers and code executes with the PostgreSQL server process's operating-system authority.
- Review all PL/Ruby source as privileged server code. Never allow tenants or ordinary application roles to submit arbitrary Ruby.
- Upstream v2.5.0 supports PostgreSQL 11-18 and Ruby 3.x. Current Pigsty packages target PostgreSQL 14-18.
- No `shared_preload_libraries` setting is required. Existing sessions must reconnect after server-side library replacement before assuming a new runtime is active.
- `jsonb_plruby`, `hstore_plruby`, and `ltree_plruby` are companion transforms. A function must explicitly declare `TRANSFORM FOR TYPE ...` to receive native Ruby structures instead of the normal datum wrapper/conversion path.
