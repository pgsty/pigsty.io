---
title: "aux_mysql"
linkTitle: "aux_mysql"
description: "MySQL Supplementary Extension"
weight: 9420
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/HaloTech-Co-Ltd/openHalo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">HaloTech-Co-Ltd/openHalo</div>
    <div class="ext-card__desc">https://github.com/HaloTech-Co-Ltd/openHalo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/openhalodb-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">openhalodb-1.0.tar.gz</div>
    <div class="ext-card__desc">openhalodb-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`openhalo`**](/ext/e/aux_mysql) | `1.5` | <a class="ext-badge ext-badge--cate sim" href="/ext/cate/sim">SIM</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9420  | [**`aux_mysql`**](/ext/e/aux_mysql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `mysql` |
{.ext-table}


> module_pathname=$libdir/mysm; openHalo 14.x only


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.5` | {{< pgvers "14" >}} | `openhalo` | - |
| [**RPM**](/ext/rpm#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "14" >}} | `openhalodb_$v` | - |
| [**DEB**](/ext/deb#sim) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "14" >}} | `openhalodb-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| el9.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| el9.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| el10.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| el10.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| d12.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| d12.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| u22.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| u22.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| u24.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
| u24.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | FORK PIGSTY 1.0 1 |
@ el8.x86_64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el8.x86_64.rpm pigsty 1.0 10.2MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/openhalodb_14-1.0-beta1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el8.aarch64.rpm pigsty 1.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/openhalodb_14-1.0-beta1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el9.x86_64.rpm pigsty 1.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/openhalodb_14-1.0-beta1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el9.aarch64.rpm pigsty 1.0 9.7MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/openhalodb_14-1.0-beta1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el10.x86_64.rpm pigsty 1.0 10.0MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/openhalodb_14-1.0-beta1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 openhalodb_14 openhalodb_14-1.0-beta1PIGSTY.el10.aarch64.rpm pigsty 1.0 9.8MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/openhalodb_14-1.0-beta1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~bookworm_amd64.deb pigsty 1.0 19.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~bookworm_arm64.deb pigsty 1.0 18.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~trixie_amd64.deb pigsty 1.0 17.6MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~trixie_arm64.deb pigsty 1.0 17.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~jammy_amd64.deb pigsty 1.0 21.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~jammy_arm64.deb pigsty 1.0 20.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~noble_amd64.deb pigsty 1.0 19.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 openhalodb-14 openhalodb-14_1.0-beta1PIGSTY~noble_arm64.deb pigsty 1.0 19.3MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/o/openhalodb/openhalodb-14_1.0-beta1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `openhalo` using `pig build`:

```bash
pig build pkg openhalo         # build RPM / DEB packages
```


## Install

You can install `openhalo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install openhalo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y openhalo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y openhalodb_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y openhalodb-14   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION aux_mysql;
```



## Usage

> [aux_mysql: MySQL Supplementary Extension](https://github.com/HaloTech-Co-Ltd/openHalo)

The `aux_mysql` extension is part of the openHalo project, providing MySQL compatibility functions and features for PostgreSQL. It enables PostgreSQL to understand MySQL SQL dialect and communication protocol.

### Enabling

```sql
CREATE EXTENSION aux_mysql CASCADE;
```

### Overview

When used with openHalo's MySQL compatibility mode, this extension allows:

- MySQL client connections via the MySQL wire protocol (port 3306)
- MySQL-compatible SQL syntax parsing
- MySQL-compatible functions and operators

### MySQL Compatibility Mode

Configure in `postgresql.conf`:

```ini
database_compat_mode = 'mysql'      -- enable MySQL mode
mysql.listener_on = true            -- enable MySQL protocol listener
mysql.port = 3306                   -- MySQL protocol port
```

After enabling, MySQL clients can connect directly:

```bash
mysql -P 3306 -h 127.0.0.1
```

### Key Features

- MySQL-compatible SQL dialect support
- MySQL wire protocol compatibility (TDS)
- MySQL-style authentication (`mysql_native_password`)
- Common MySQL functions and operators available in PostgreSQL

### Notes

- This extension is designed to work as part of the openHalo distribution
- Standard PostgreSQL connections continue to work alongside MySQL protocol connections
- Not all MySQL features are supported; focuses on commonly used functionality
