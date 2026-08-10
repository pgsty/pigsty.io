---
title: "acl"
linkTitle: "acl"
description: "ACL Data type"
weight: 3810
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/arkhipov/acl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">arkhipov/acl</div>
    <div class="ext-card__desc">https://github.com/arkhipov/acl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/acl-1.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">acl-1.0.4.tar.gz</div>
    <div class="ext-card__desc">acl-1.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_acl`**](/ext/e/acl) | `1.0.4` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3810  | [**`acl`**](/ext/e/acl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgaudit`](/ext/e/pgaudit) [`pg_permissions`](/ext/e/pg_permissions) [`set_user`](/ext/e/set_user) [`pg_roast`](/ext/e/pg_roast) [`table_log`](/ext/e/table_log) [`pgmemento`](/ext/e/pgmemento) [`pg_auditor`](/ext/e/pg_auditor) [`pgelog`](/ext/e/pgelog) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pg_readonly`](/ext/e/pg_readonly) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> +cast pg_uuid_t


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pg_acl` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.4` | {{< pgvers "18,17,16,15,14" >}} | `acl_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-acl` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 | AVAIL PIGSTY 1.0.4 1 |
@ el8.x86_64 18 acl_18 acl_18-1.0.4-1PIGSTY.el8.x86_64.rpm pigsty 1.0.4 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acl_18-1.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 acl_18 acl_18-1.0.4-1PIGSTY.el8.aarch64.rpm pigsty 1.0.4 27.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acl_18-1.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 acl_18 acl_18-1.0.4-1PIGSTY.el9.x86_64.rpm pigsty 1.0.4 27.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acl_18-1.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 acl_18 acl_18-1.0.4-1PIGSTY.el9.aarch64.rpm pigsty 1.0.4 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acl_18-1.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 acl_18 acl_18-1.0.4-1PIGSTY.el10.x86_64.rpm pigsty 1.0.4 27.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acl_18-1.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 acl_18 acl_18-1.0.4-1PIGSTY.el10.aarch64.rpm pigsty 1.0.4 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acl_18-1.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~bookworm_amd64.deb pigsty 1.0.4 45.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~bookworm_arm64.deb pigsty 1.0.4 44.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~trixie_amd64.deb pigsty 1.0.4 45.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~trixie_arm64.deb pigsty 1.0.4 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~jammy_amd64.deb pigsty 1.0.4 47.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~jammy_arm64.deb pigsty 1.0.4 47.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~noble_amd64.deb pigsty 1.0.4 47.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~noble_arm64.deb pigsty 1.0.4 46.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~resolute_amd64.deb pigsty 1.0.4 46.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-acl postgresql-18-acl_1.0.4-1PIGSTY~resolute_arm64.deb pigsty 1.0.4 45.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-18-acl_1.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 acl_17 acl_17-1.0.4-1PIGSTY.el8.x86_64.rpm pigsty 1.0.4 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acl_17-1.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 acl_17 acl_17-1.0.4-1PIGSTY.el8.aarch64.rpm pigsty 1.0.4 27.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acl_17-1.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 acl_17 acl_17-1.0.4-1PIGSTY.el9.x86_64.rpm pigsty 1.0.4 27.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acl_17-1.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 acl_17 acl_17-1.0.4-1PIGSTY.el9.aarch64.rpm pigsty 1.0.4 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acl_17-1.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 acl_17 acl_17-1.0.4-1PIGSTY.el10.x86_64.rpm pigsty 1.0.4 27.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acl_17-1.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 acl_17 acl_17-1.0.4-1PIGSTY.el10.aarch64.rpm pigsty 1.0.4 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acl_17-1.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~bookworm_amd64.deb pigsty 1.0.4 45.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~bookworm_arm64.deb pigsty 1.0.4 44.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~trixie_amd64.deb pigsty 1.0.4 45.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~trixie_arm64.deb pigsty 1.0.4 44.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~jammy_amd64.deb pigsty 1.0.4 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~jammy_arm64.deb pigsty 1.0.4 50.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~noble_amd64.deb pigsty 1.0.4 47.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~noble_arm64.deb pigsty 1.0.4 46.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~resolute_amd64.deb pigsty 1.0.4 46.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-acl postgresql-17-acl_1.0.4-1PIGSTY~resolute_arm64.deb pigsty 1.0.4 45.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-17-acl_1.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 acl_16 acl_16-1.0.4-1PIGSTY.el8.x86_64.rpm pigsty 1.0.4 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acl_16-1.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 acl_16 acl_16-1.0.4-1PIGSTY.el8.aarch64.rpm pigsty 1.0.4 27.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acl_16-1.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 acl_16 acl_16-1.0.4-1PIGSTY.el9.x86_64.rpm pigsty 1.0.4 27.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acl_16-1.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 acl_16 acl_16-1.0.4-1PIGSTY.el9.aarch64.rpm pigsty 1.0.4 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acl_16-1.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 acl_16 acl_16-1.0.4-1PIGSTY.el10.x86_64.rpm pigsty 1.0.4 27.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acl_16-1.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 acl_16 acl_16-1.0.4-1PIGSTY.el10.aarch64.rpm pigsty 1.0.4 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acl_16-1.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~bookworm_amd64.deb pigsty 1.0.4 45.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~bookworm_arm64.deb pigsty 1.0.4 44.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~trixie_amd64.deb pigsty 1.0.4 45.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~trixie_arm64.deb pigsty 1.0.4 44.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~jammy_amd64.deb pigsty 1.0.4 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~jammy_arm64.deb pigsty 1.0.4 50.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~noble_amd64.deb pigsty 1.0.4 47.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~noble_arm64.deb pigsty 1.0.4 46.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~resolute_amd64.deb pigsty 1.0.4 46.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-acl postgresql-16-acl_1.0.4-1PIGSTY~resolute_arm64.deb pigsty 1.0.4 45.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-16-acl_1.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 acl_15 acl_15-1.0.4-1PIGSTY.el8.x86_64.rpm pigsty 1.0.4 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acl_15-1.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 acl_15 acl_15-1.0.4-1PIGSTY.el8.aarch64.rpm pigsty 1.0.4 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acl_15-1.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 acl_15 acl_15-1.0.4-1PIGSTY.el9.x86_64.rpm pigsty 1.0.4 27.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acl_15-1.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 acl_15 acl_15-1.0.4-1PIGSTY.el9.aarch64.rpm pigsty 1.0.4 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acl_15-1.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 acl_15 acl_15-1.0.4-1PIGSTY.el10.x86_64.rpm pigsty 1.0.4 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acl_15-1.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 acl_15 acl_15-1.0.4-1PIGSTY.el10.aarch64.rpm pigsty 1.0.4 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acl_15-1.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~bookworm_amd64.deb pigsty 1.0.4 45.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~bookworm_arm64.deb pigsty 1.0.4 44.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~trixie_amd64.deb pigsty 1.0.4 45.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~trixie_arm64.deb pigsty 1.0.4 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~jammy_amd64.deb pigsty 1.0.4 50.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~jammy_arm64.deb pigsty 1.0.4 49.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~noble_amd64.deb pigsty 1.0.4 46.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~noble_arm64.deb pigsty 1.0.4 46.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~resolute_amd64.deb pigsty 1.0.4 46.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-acl postgresql-15-acl_1.0.4-1PIGSTY~resolute_arm64.deb pigsty 1.0.4 45.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-15-acl_1.0.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 acl_14 acl_14-1.0.4-1PIGSTY.el8.x86_64.rpm pigsty 1.0.4 28.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/acl_14-1.0.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 acl_14 acl_14-1.0.4-1PIGSTY.el8.aarch64.rpm pigsty 1.0.4 27.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/acl_14-1.0.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 acl_14 acl_14-1.0.4-1PIGSTY.el9.x86_64.rpm pigsty 1.0.4 27.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/acl_14-1.0.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 acl_14 acl_14-1.0.4-1PIGSTY.el9.aarch64.rpm pigsty 1.0.4 27.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/acl_14-1.0.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 acl_14 acl_14-1.0.4-1PIGSTY.el10.x86_64.rpm pigsty 1.0.4 27.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/acl_14-1.0.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 acl_14 acl_14-1.0.4-1PIGSTY.el10.aarch64.rpm pigsty 1.0.4 27.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/acl_14-1.0.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~bookworm_amd64.deb pigsty 1.0.4 45.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~bookworm_arm64.deb pigsty 1.0.4 44.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~trixie_amd64.deb pigsty 1.0.4 45.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~trixie_arm64.deb pigsty 1.0.4 44.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~jammy_amd64.deb pigsty 1.0.4 50.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~jammy_arm64.deb pigsty 1.0.4 49.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~noble_amd64.deb pigsty 1.0.4 46.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~noble_arm64.deb pigsty 1.0.4 46.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~resolute_amd64.deb pigsty 1.0.4 46.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-acl postgresql-14-acl_1.0.4-1PIGSTY~resolute_arm64.deb pigsty 1.0.4 45.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/a/acl/postgresql-14-acl_1.0.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_acl` using `pig build`:

```bash
pig build pkg pg_acl         # build RPM / DEB packages
```


## Install

You can install `pg_acl` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_acl;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_acl -v 18  # PG 18
pig ext install -y pg_acl -v 17  # PG 17
pig ext install -y pg_acl -v 16  # PG 16
pig ext install -y pg_acl -v 15  # PG 15
pig ext install -y pg_acl -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y acl_18       # PG 18
dnf install -y acl_17       # PG 17
dnf install -y acl_16       # PG 16
dnf install -y acl_15       # PG 15
dnf install -y acl_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-acl   # PG 18
apt install -y postgresql-17-acl   # PG 17
apt install -y postgresql-16-acl   # PG 16
apt install -y postgresql-15-acl   # PG 15
apt install -y postgresql-14-acl   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION acl;
```




## Usage

> [acl: access control list data type for PostgreSQL](https://github.com/arkhipov/acl)

The `acl` extension provides Access Control List types for row-level security based on application users, without requiring separate database accounts.

```sql
CREATE EXTENSION acl;
```

### Data Types

- **`ace`**: Standard role-based ACE using PostgreSQL OIDs
- **`ace_int4`**: ACE with 32-bit integer identifiers
- **`ace_int8`**: ACE with 64-bit integer identifiers
- **`ace_uuid`**: ACE with UUID identifiers

ACLs are stored as PostgreSQL arrays of ACE types (e.g., `ace[]`).

### ACE Format

```
[type]/[flags]/[who]=[mask]
```

- **Type**: `a` (allow) or `d` (deny)
- **Flags**: `i` (inherit only), `o` (object inherit), `c` (container inherit), `p` (no propagate), `h` (inherited)
- **Who**: Role name, OID, integer, UUID, or `""` (everyone)
- **Permissions**: `r` (read), `w` (write), `d` (delete), `c` (read ACL), `s` (write ACL), plus 16 custom permissions (0-F)

### Checking Permissions

```sql
-- Check current user's access
SELECT acl_check_access(acl_column, 'rw', false) FROM my_table;

-- Check specific role
SELECT acl_check_access(acl_column, 'r', 'username'::name, false);

-- Check custom int4 roles
SELECT acl_check_access(acl_column, 'rw', ARRAY[1001, 1002]::int4[], false);
```

### ACL Inheritance

```sql
-- Compute child ACL from parent
SELECT acl_merge(parent_acl, child_acl, true, true);
```

### Row-Level Security Example

```sql
CREATE TABLE file_system (
    id   int PRIMARY KEY,
    name text,
    acl  ace[]
);

ALTER TABLE file_system ENABLE ROW LEVEL SECURITY;

CREATE POLICY read_policy ON file_system FOR SELECT TO PUBLIC
    USING (acl_check_access(acl, 'r', false) = 'r');

CREATE POLICY write_policy ON file_system FOR UPDATE TO PUBLIC
    USING (acl_check_access(acl, 'w', false) = 'w');
```
