---
title: "orioledb"
linkTitle: "orioledb"
description: "OrioleDB, the next generation transactional engine"
weight: 2910
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/orioledb/orioledb">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">orioledb/orioledb</div>
    <div class="ext-card__desc">https://github.com/orioledb/orioledb</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/orioledb-beta16.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">orioledb-beta16.tar.gz</div>
    <div class="ext-card__desc">orioledb-beta16.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`orioledb`**](/ext/e/orioledb) | `1.8` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2910  | [**`orioledb`**](/ext/e/orioledb) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_mooncake`](/ext/e/pg_mooncake) [`storage_engine`](/ext/e/storage_engine) [`columnar`](/ext/e/columnar) [`pg_sorted_heap`](/ext/e/pg_sorted_heap) [`citus_columnar`](/ext/e/citus_columnar) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> patched kernel; beta16 for patchset 18.1/17.20/16.47


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8` | {{< pgvers "18,17,16" >}} | `orioledb` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.8` | {{< pgvers "18,17,16" >}} | `orioledb-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | AVAIL PIGSTY 1.8 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el8.x86_64.rpm pigsty 1.8 13.5MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-18-1.8-beta16PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el8.aarch64.rpm pigsty 1.8 13.1MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-18-1.8-beta16PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el9.x86_64.rpm pigsty 1.8 12.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-18-1.8-beta16PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el9.aarch64.rpm pigsty 1.8 11.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-18-1.8-beta16PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el10.x86_64.rpm pigsty 1.8 12.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-18-1.8-beta16PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 orioledb-18 orioledb-18-1.8-beta16PIGSTY.el10.aarch64.rpm pigsty 1.8 12.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-18-1.8-beta16PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~bookworm_amd64.deb pigsty 1.8 10.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~bookworm_arm64.deb pigsty 1.8 9.7MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~trixie_amd64.deb pigsty 1.8 10.3MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~trixie_arm64.deb pigsty 1.8 9.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~jammy_amd64.deb pigsty 1.8 11.7MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~jammy_arm64.deb pigsty 1.8 11.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~noble_amd64.deb pigsty 1.8 11.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~noble_amd64.deb
@ u24.aarch64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~noble_arm64.deb pigsty 1.8 11.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~noble_arm64.deb
@ u26.x86_64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~resolute_amd64.deb pigsty 1.8 11.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 orioledb-18 orioledb-18_1.8-0.beta16PIGSTY~resolute_arm64.deb pigsty 1.8 11.3MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-18/orioledb-18_1.8-0.beta16PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el8.x86_64.rpm pigsty 1.8 13.0MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-17-1.8-beta16PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el8.aarch64.rpm pigsty 1.8 12.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-17-1.8-beta16PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el9.x86_64.rpm pigsty 1.8 11.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-17-1.8-beta16PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el9.aarch64.rpm pigsty 1.8 11.6MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-17-1.8-beta16PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el10.x86_64.rpm pigsty 1.8 11.9MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-17-1.8-beta16PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 orioledb-17 orioledb-17-1.8-beta16PIGSTY.el10.aarch64.rpm pigsty 1.8 11.7MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-17-1.8-beta16PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~bookworm_amd64.deb pigsty 1.8 9.9MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~bookworm_arm64.deb pigsty 1.8 9.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~trixie_amd64.deb pigsty 1.8 10.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~trixie_arm64.deb pigsty 1.8 9.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~jammy_amd64.deb pigsty 1.8 11.3MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~jammy_arm64.deb pigsty 1.8 11.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~noble_amd64.deb pigsty 1.8 11.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~noble_amd64.deb
@ u24.aarch64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~noble_arm64.deb pigsty 1.8 11.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~noble_arm64.deb
@ u26.x86_64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~resolute_amd64.deb pigsty 1.8 11.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 orioledb-17 orioledb-17_1.8-0.beta16PIGSTY~resolute_arm64.deb pigsty 1.8 10.9MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-17/orioledb-17_1.8-0.beta16PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el8.x86_64.rpm pigsty 1.8 12.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/orioledb-16-1.8-beta16PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el8.aarch64.rpm pigsty 1.8 11.9MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/orioledb-16-1.8-beta16PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el9.x86_64.rpm pigsty 1.8 11.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/orioledb-16-1.8-beta16PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el9.aarch64.rpm pigsty 1.8 11.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/orioledb-16-1.8-beta16PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el10.x86_64.rpm pigsty 1.8 11.4MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/orioledb-16-1.8-beta16PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 orioledb-16 orioledb-16-1.8-beta16PIGSTY.el10.aarch64.rpm pigsty 1.8 11.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/orioledb-16-1.8-beta16PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~bookworm_amd64.deb pigsty 1.8 9.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~bookworm_arm64.deb pigsty 1.8 9.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~trixie_amd64.deb pigsty 1.8 9.5MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~trixie_arm64.deb pigsty 1.8 9.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~jammy_amd64.deb pigsty 1.8 10.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~jammy_arm64.deb pigsty 1.8 10.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~noble_amd64.deb pigsty 1.8 10.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~noble_amd64.deb
@ u24.aarch64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~noble_arm64.deb pigsty 1.8 10.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~noble_arm64.deb
@ u26.x86_64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~resolute_amd64.deb pigsty 1.8 10.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 orioledb-16 orioledb-16_1.8-0.beta16PIGSTY~resolute_arm64.deb pigsty 1.8 10.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/o/orioledb-16/orioledb-16_1.8-0.beta16PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `orioledb` using `pig build`:

```bash
pig build pkg orioledb         # build RPM / DEB packages
```


## Install

You can install `orioledb` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install orioledb;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y orioledb -v 18  # PG 18
pig ext install -y orioledb -v 17  # PG 17
pig ext install -y orioledb -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y orioledb-18       # PG 18
dnf install -y orioledb-17       # PG 17
dnf install -y orioledb-16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y orioledb-18   # PG 18
apt install -y orioledb-17   # PG 17
apt install -y orioledb-16   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'orioledb';
```


**Create Extension**:

```sql
CREATE EXTENSION orioledb;
```




## Usage

Sources: [README](https://github.com/orioledb/orioledb), [beta16 release](https://github.com/orioledb/orioledb/releases/tag/beta16), [patched PostgreSQL tree](https://github.com/orioledb/postgres)

OrioleDB is a new storage engine for PostgreSQL that provides modern approaches to database capacity, capabilities, and performance. It uses undo log-based MVCC, copy-on-write checkpoints, and row-level WAL to eliminate bloat and the need for VACUUM.

### Configuration

Add to `postgresql.conf` (requires restart):

```ini
shared_preload_libraries = 'orioledb.so'
```

Then enable the extension:

```sql
CREATE EXTENSION orioledb;
```

### Creating Tables

Use the `USING orioledb` clause to create tables with the OrioleDB storage engine:

```sql
CREATE TABLE my_table (
    id serial PRIMARY KEY,
    name text,
    value numeric
) USING orioledb;
```

All standard PostgreSQL operations work on OrioleDB tables:

```sql
INSERT INTO my_table (name, value) VALUES ('test', 42);
SELECT * FROM my_table WHERE id = 1;
UPDATE my_table SET value = 100 WHERE id = 1;
DELETE FROM my_table WHERE id = 1;
```

### Collation Requirements

OrioleDB tables support only **ICU**, **C**, and **POSIX** collations. To avoid specifying COLLATE on every text field, create the database with an appropriate default:

```sql
CREATE DATABASE mydb LOCALE 'C' TEMPLATE template0;
-- OR
CREATE DATABASE mydb LOCALE_PROVIDER icu ICU_LOCALE 'en' TEMPLATE template0;
```

### Key Benefits

- **No bloat**: Undo log-based MVCC means old tuple versions do not bloat main storage
- **No VACUUM needed**: Page-merging and undo log reclaim space automatically
- **No wraparound problem**: Native 64-bit transaction identifiers
- **Lock-less page reading**: In-memory pages linked directly to storage pages
- **Row-level WAL**: Compact write-ahead logging suitable for parallel apply

### Limitations

- Public beta status -- recommended for testing, not production
- Requires a patched PostgreSQL build from [orioledb/postgres](https://github.com/orioledb/postgres)
- Only ICU, C, and POSIX collations are supported

### Version Notes

OrioleDB 1.8-beta16 bumps the extension SQL version to `1.8`, bases patched PostgreSQL builds on 16.13, 17.9, and 18.4, and adds PostgreSQL 18 support. New user-facing surfaces include `orioledb.serializable` for SERIALIZABLE support and `verify_orioledb(regclass, boolean)` for `pg_amcheck` integration. The release also includes recovery, replication, index-scan, vacuum, and DDL correctness fixes.
