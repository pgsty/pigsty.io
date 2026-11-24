---
title: "pg_duration"
linkTitle: "pg_duration"
description: "data type for representing durations"
weight: 3850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jkosh44/pg_duration">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jkosh44/pg_duration</div>
    <div class="ext-card__desc">https://github.com/jkosh44/pg_duration</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_duration-1.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_duration-1.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_duration-1.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_duration`**](/ext/e/pg_duration) | `1.0.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3850  | [**`pg_duration`**](/ext/e/pg_duration) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table .wide .expand}

| **Related** | [`pgcalendar`](/ext/e/pgcalendar) [`pg_rrule`](/ext/e/pg_rrule) [`pg_bikram_sambat`](/ext/e/pg_bikram_sambat) [`timestamp9`](/ext/e/timestamp9) [`pg_when`](/ext/e/pg_when) [`cron_utils`](/ext/e/cron_utils) [`pg_cron`](/ext/e/pg_cron) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17" >}} | `pg_duration` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17" >}} | `pg_duration_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.2` | {{< pgvers "19,18,17" >}} | `postgresql-$v-pg-duration` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | AVAIL PIGSTY 1.0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el9.x86_64 19 pg_duration_19 pg_duration_19-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 41.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duration_19-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 19 pg_duration_19 pg_duration_19-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duration_19-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 19 pg_duration_19 pg_duration_19-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duration_19-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 19 pg_duration_19 pg_duration_19-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duration_19-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 31.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 30.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 30.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 30.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 19 postgresql-19-pg-duration postgresql-19-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 30.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-19-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 40.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duration_18-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 40.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duration_18-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 41.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duration_18-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duration_18-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 41.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duration_18-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_duration_18 pg_duration_18-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 41.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duration_18-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 31.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 30.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 30.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 30.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 30.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-duration postgresql-18-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 30.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-18-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el8.x86_64.rpm pigsty 1.0.2 40.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_duration_17-1.0.2-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el8.aarch64.rpm pigsty 1.0.2 40.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_duration_17-1.0.2-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el9.x86_64.rpm pigsty 1.0.2 41.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_duration_17-1.0.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el9.aarch64.rpm pigsty 1.0.2 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_duration_17-1.0.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el10.x86_64.rpm pigsty 1.0.2 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_duration_17-1.0.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_duration_17 pg_duration_17-1.0.2-1PGSTY.el10.aarch64.rpm pigsty 1.0.2 41.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_duration_17-1.0.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb pigsty 1.0.2 28.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb pigsty 1.0.2 29.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb pigsty 1.0.2 29.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb pigsty 1.0.2 32.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb pigsty 1.0.2 31.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~noble_amd64.deb pigsty 1.0.2 30.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~noble_arm64.deb pigsty 1.0.2 30.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb pigsty 1.0.2 30.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-duration postgresql-17-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb pigsty 1.0.2 30.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-duration/postgresql-17-pg-duration_1.0.2-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_duration` using `pig build`:

```bash
pig build pkg pg_duration         # build RPM / DEB packages
```


## Install

You can install `pg_duration` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_duration;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_duration -v 19  # PG 19
pig ext install -y pg_duration -v 18  # PG 18
pig ext install -y pg_duration -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_duration_19       # PG 19
dnf install -y pg_duration_18       # PG 18
dnf install -y pg_duration_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-pg-duration   # PG 19
apt install -y postgresql-18-pg-duration   # PG 18
apt install -y postgresql-17-pg-duration   # PG 17
```


**Create Extension**:

```sql
CREATE EXTENSION pg_duration;
```




## Usage

> [pg_duration: ISO 8601 duration type for PostgreSQL](https://github.com/jkosh44/pg_duration)

The `pg_duration` extension provides a `duration` type for storing elapsed time as microseconds in 8 bytes, simpler and more consistently comparable than the built-in `interval` type.

```sql
CREATE EXTENSION pg_duration;
```

### Data Type

The `duration` type represents absolute elapsed time without calendar components (no months or days). Valid input accepts any PostgreSQL interval syntax that does not exceed hourly units.

```sql
SELECT '01:30:00'::duration;
SELECT '2 hours 30 minutes'::duration;
```

### Operators

- **Arithmetic**: `+`, `-` between durations; `*`, `/` by `float8`; unary `-`
- **Comparison**: `<`, `<=`, `>`, `>=`, `=`, `<>`

### Functions

```sql
-- Construct from components
SELECT make_duration(hours => 2, mins => 30, secs => 15.5);

-- Check for infinity
SELECT isfinite('01:00:00'::duration);

-- Truncate to precision
SELECT date_trunc('hour', '02:45:30'::duration);

-- Extract subfield
SELECT date_part('minute', '02:45:30'::duration);
SELECT extract_duration('hour', '02:45:30'::duration);
```

### Type Conversions

Durations cast implicitly to `interval`. Converting `interval` to `duration` requires explicit casting.

### Aggregates and Indexing

Standard aggregates (`avg`, `count`, `max`, `min`, `sum`) and both B-tree and hash indexes are supported.
