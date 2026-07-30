---
title: "floatvec"
linkTitle: "floatvec"
description: "Math for vectors (arrays) of numbers"
weight: 4730
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pjungwir/floatvec">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pjungwir/floatvec</div>
    <div class="ext-card__desc">https://github.com/pjungwir/floatvec</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/floatvec-1.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">floatvec-1.1.1.tar.gz</div>
    <div class="ext-card__desc">floatvec-1.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`floatvec`**](/ext/e/floatvec) | `1.1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4730  | [**`floatvec`**](/ext/e/floatvec) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`intarray`](/ext/e/intarray) [`arraymath`](/ext/e/arraymath) [`aggs_for_vecs`](/ext/e/aggs_for_vecs) [`aggs_for_arrays`](/ext/e/aggs_for_arrays) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `floatvec` | - |
| [**RPM**](/ext/rpm#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `floatvec_$v` | - |
| [**DEB**](/ext/deb#func) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-floatvec` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 | AVAIL PIGSTY 1.1.1 1 |
@ el8.x86_64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatvec_18-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatvec_18-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatvec_18-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatvec_18-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatvec_18-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 floatvec_18 floatvec_18-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatvec_18-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 25.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 25.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 26.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 26.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 25.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-floatvec postgresql-18-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-18-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatvec_17-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatvec_17-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatvec_17-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatvec_17-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatvec_17-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 floatvec_17 floatvec_17-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatvec_17-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 25.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 25.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 27.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 26.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-floatvec postgresql-17-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-17-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatvec_16-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatvec_16-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatvec_16-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatvec_16-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatvec_16-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 floatvec_16 floatvec_16-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 19.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatvec_16-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 25.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 25.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 25.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 27.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 26.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 25.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-floatvec postgresql-16-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 27.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-16-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatvec_15-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatvec_15-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 18.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatvec_15-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatvec_15-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatvec_15-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 floatvec_15 floatvec_15-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatvec_15-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 24.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 26.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 25.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-floatvec postgresql-15-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 26.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-15-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el8.x86_64.rpm pigsty 1.1.1 18.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/floatvec_14-1.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el8.aarch64.rpm pigsty 1.1.1 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/floatvec_14-1.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el9.x86_64.rpm pigsty 1.1.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/floatvec_14-1.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el9.aarch64.rpm pigsty 1.1.1 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/floatvec_14-1.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el10.x86_64.rpm pigsty 1.1.1 17.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/floatvec_14-1.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 floatvec_14 floatvec_14-1.1.1-1PIGSTY.el10.aarch64.rpm pigsty 1.1.1 19.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/floatvec_14-1.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb pigsty 1.1.1 23.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb pigsty 1.1.1 24.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb pigsty 1.1.1 23.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb pigsty 1.1.1 24.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb pigsty 1.1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb pigsty 1.1.1 26.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~noble_amd64.deb pigsty 1.1.1 24.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~noble_arm64.deb pigsty 1.1.1 25.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb pigsty 1.1.1 25.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-floatvec postgresql-14-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb pigsty 1.1.1 26.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/f/floatvec/postgresql-14-floatvec_1.1.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `floatvec` using `pig build`:

```bash
pig build pkg floatvec         # build RPM / DEB packages
```


## Install

You can install `floatvec` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install floatvec;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y floatvec -v 18  # PG 18
pig ext install -y floatvec -v 17  # PG 17
pig ext install -y floatvec -v 16  # PG 16
pig ext install -y floatvec -v 15  # PG 15
pig ext install -y floatvec -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y floatvec_18       # PG 18
dnf install -y floatvec_17       # PG 17
dnf install -y floatvec_16       # PG 16
dnf install -y floatvec_15       # PG 15
dnf install -y floatvec_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-floatvec   # PG 18
apt install -y postgresql-17-floatvec   # PG 17
apt install -y postgresql-16-floatvec   # PG 16
apt install -y postgresql-15-floatvec   # PG 15
apt install -y postgresql-14-floatvec   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION floatvec;
```




## Usage

> [floatvec: element-by-element arithmetic on PostgreSQL arrays](https://github.com/pjungwir/floatvec)

Provides basic arithmetic functions for operating on arrays treated as vectors. Supports `SMALLINT`, `INTEGER`, `BIGINT`, `REAL`, and `DOUBLE PRECISION`.

```sql
CREATE EXTENSION floatvec;
```

### Functions

Each function accepts two arrays of the same length, or an array and a scalar, or a scalar and an array. Both arguments must be of the same type.

| Function | Description |
|---|---|
| `vec_add(a, b)` | Element-by-element addition |
| `vec_sub(a, b)` | Element-by-element subtraction |
| `vec_mul(a, b)` | Element-by-element multiplication |
| `vec_div(a, b)` | Element-by-element division |
| `vec_pow(a, b)` | Element-by-element exponentiation |

### Examples

```sql
-- Array + Array
SELECT vec_add(ARRAY[1,2,3], ARRAY[10,20,30]);  -- {11,22,33}

-- Array * Scalar
SELECT vec_mul(ARRAY[1.0, 2.0, 3.0], 2.0);     -- {2.0, 4.0, 6.0}

-- Scalar - Array
SELECT vec_sub(10, ARRAY[1,2,3]);               -- {9,8,7}
```
