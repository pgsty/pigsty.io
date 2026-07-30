---
title: "login_hook"
linkTitle: "login_hook"
description: "login_hook - hook to execute login_hook.login() at login time"
weight: 7360
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/splendiddata/login_hook">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">splendiddata/login_hook</div>
    <div class="ext-card__desc">https://github.com/splendiddata/login_hook</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/login_hook-1.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">login_hook-1.7.tar.gz</div>
    <div class="ext-card__desc">login_hook-1.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`login_hook`**](/ext/e/login_hook) | `1.7` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7360  | [**`login_hook`**](/ext/e/login_hook) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `login_hook` |
{.ext-table}

| **Related** | [`pg_session_jwt`](/ext/e/pg_session_jwt) [`pg_oidc_validator`](/ext/e/pg_oidc_validator) [`pgjwt`](/ext/e/pgjwt) [`oidc_validator`](/ext/e/oidc_validator) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`auth_delay`](/ext/e/auth_delay) [`set_user`](/ext/e/set_user) [`pgsodium`](/ext/e/pgsodium) [`sslinfo`](/ext/e/sslinfo) [`sslutils`](/ext/e/sslutils) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `login_hook` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `login_hook_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-login-hook` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| el8.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| el9.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 4 | AVAIL PGDG 1.7 4 | AVAIL PGDG 1.7 4 |
| el9.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 4 | AVAIL PGDG 1.7 4 | AVAIL PGDG 1.7 4 |
| el10.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 |
| el10.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 | AVAIL PGDG 1.7 2 |
| d12.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d12.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d13.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| d13.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u22.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u22.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u24.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u24.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u26.x86_64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
| u26.aarch64 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 | AVAIL PIGSTY 1.7 1 |
@ el8.x86_64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el8.x86_64.rpm pigsty 1.7 17.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/login_hook_18-1.7-3PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el8.aarch64.rpm pigsty 1.7 17.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/login_hook_18-1.7-3PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el9.x86_64.rpm pigsty 1.7 17.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/login_hook_18-1.7-3PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el9.aarch64.rpm pigsty 1.7 17.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/login_hook_18-1.7-3PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el10.x86_64.rpm pigsty 1.7 17.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/login_hook_18-1.7-3PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 login_hook_18 login_hook_18-1.7-3PIGSTY.el10.aarch64.rpm pigsty 1.7 17.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/login_hook_18-1.7-3PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~bookworm_amd64.deb pigsty 1.7 27.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~bookworm_arm64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~trixie_amd64.deb pigsty 1.7 27.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~trixie_arm64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~jammy_amd64.deb pigsty 1.7 29.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~jammy_arm64.deb pigsty 1.7 29.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~noble_amd64.deb pigsty 1.7 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~noble_arm64.deb pigsty 1.7 28.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~resolute_amd64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-login-hook postgresql-18-login-hook_1.7-2PIGSTY~resolute_arm64.deb pigsty 1.7 27.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-18-login-hook_1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/login_hook_17-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 login_hook_17 login_hook_17-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 17.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/login_hook_17-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/login_hook_17-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 login_hook_17 login_hook_17-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/login_hook_17-1.6-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 login_hook_17 login_hook_17-1.7-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/login_hook_17-1.7-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 18.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/login_hook_17-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 login_hook_17 login_hook_17-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 17.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/login_hook_17-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 login_hook_17 login_hook_17-1.7-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7 18.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/login_hook_17-1.7-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/login_hook_17-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 login_hook_17 login_hook_17-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 17.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/login_hook_17-1.6-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 login_hook_17 login_hook_17-1.7-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/login_hook_17-1.7-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/login_hook_17-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 login_hook_17 login_hook_17-1.7-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/login_hook_17-1.7-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 login_hook_17 login_hook_17-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 18.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/login_hook_17-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~bookworm_amd64.deb pigsty 1.7 27.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~bookworm_arm64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~trixie_amd64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~trixie_arm64.deb pigsty 1.7 27.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~jammy_amd64.deb pigsty 1.7 29.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~jammy_arm64.deb pigsty 1.7 29.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~noble_amd64.deb pigsty 1.7 28.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~noble_arm64.deb pigsty 1.7 28.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~resolute_amd64.deb pigsty 1.7 27.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-login-hook postgresql-17-login-hook_1.7-2PIGSTY~resolute_arm64.deb pigsty 1.7 27.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-17-login-hook_1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/login_hook_16-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 login_hook_16 login_hook_16-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/login_hook_16-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 login_hook_16 login_hook_16-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/login_hook_16-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/login_hook_16-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 login_hook_16 login_hook_16-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/login_hook_16-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 login_hook_16 login_hook_16-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 16.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/login_hook_16-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 login_hook_16 login_hook_16-1.7-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7 18.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/login_hook_16-1.7-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/login_hook_16-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 login_hook_16 login_hook_16-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 17.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/login_hook_16-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 login_hook_16 login_hook_16-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/login_hook_16-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 login_hook_16 login_hook_16-1.7-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/login_hook_16-1.7-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/login_hook_16-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 login_hook_16 login_hook_16-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/login_hook_16-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 login_hook_16 login_hook_16-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 16.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/login_hook_16-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 login_hook_16 login_hook_16-1.7-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/login_hook_16-1.7-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/login_hook_16-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 login_hook_16 login_hook_16-1.7-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/login_hook_16-1.7-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 login_hook_16 login_hook_16-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/login_hook_16-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~bookworm_amd64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~bookworm_arm64.deb pigsty 1.7 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~trixie_amd64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~trixie_arm64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~jammy_amd64.deb pigsty 1.7 29.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~jammy_arm64.deb pigsty 1.7 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~noble_amd64.deb pigsty 1.7 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~noble_arm64.deb pigsty 1.7 28.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~resolute_amd64.deb pigsty 1.7 27.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-login-hook postgresql-16-login-hook_1.7-2PIGSTY~resolute_arm64.deb pigsty 1.7 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-16-login-hook_1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/login_hook_15-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 login_hook_15 login_hook_15-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/login_hook_15-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 login_hook_15 login_hook_15-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/login_hook_15-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/login_hook_15-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 login_hook_15 login_hook_15-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/login_hook_15-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 login_hook_15 login_hook_15-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 16.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/login_hook_15-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 login_hook_15 login_hook_15-1.7-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/login_hook_15-1.7-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/login_hook_15-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 login_hook_15 login_hook_15-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 17.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/login_hook_15-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 login_hook_15 login_hook_15-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/login_hook_15-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 login_hook_15 login_hook_15-1.7-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/login_hook_15-1.7-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/login_hook_15-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 login_hook_15 login_hook_15-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/login_hook_15-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 login_hook_15 login_hook_15-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 16.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/login_hook_15-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 login_hook_15 login_hook_15-1.7-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/login_hook_15-1.7-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/login_hook_15-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 login_hook_15 login_hook_15-1.7-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/login_hook_15-1.7-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 login_hook_15 login_hook_15-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/login_hook_15-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~bookworm_amd64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~bookworm_arm64.deb pigsty 1.7 27.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~trixie_amd64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~trixie_arm64.deb pigsty 1.7 27.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~jammy_amd64.deb pigsty 1.7 29.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~jammy_arm64.deb pigsty 1.7 28.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~noble_amd64.deb pigsty 1.7 28.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~noble_arm64.deb pigsty 1.7 28.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~resolute_amd64.deb pigsty 1.7 27.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-login-hook postgresql-15-login-hook_1.7-2PIGSTY~resolute_arm64.deb pigsty 1.7 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-15-login-hook_1.7-2PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel8.x86_64.rpm pgdg 1.7 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/login_hook_14-1.7-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 login_hook_14 login_hook_14-1.6-1PGDG.rhel8.x86_64.rpm pgdg 1.6 17.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/login_hook_14-1.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 login_hook_14 login_hook_14-1.5-1PGDG.rhel8.x86_64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/login_hook_14-1.5-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel8.aarch64.rpm pgdg 1.7 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/login_hook_14-1.7-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 login_hook_14 login_hook_14-1.6-1PGDG.rhel8.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/login_hook_14-1.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 login_hook_14 login_hook_14-1.5-1PGDG.rhel8.aarch64.rpm pgdg 1.5 16.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/login_hook_14-1.5-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 login_hook_14 login_hook_14-1.7-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7 18.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/login_hook_14-1.7-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel9.x86_64.rpm pgdg 1.7 18.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/login_hook_14-1.7-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 login_hook_14 login_hook_14-1.6-1PGDG.rhel9.x86_64.rpm pgdg 1.6 17.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/login_hook_14-1.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 login_hook_14 login_hook_14-1.5-1PGDG.rhel9.x86_64.rpm pgdg 1.5 16.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/login_hook_14-1.5-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 login_hook_14 login_hook_14-1.7-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7 18.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/login_hook_14-1.7-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel9.aarch64.rpm pgdg 1.7 18.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/login_hook_14-1.7-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 login_hook_14 login_hook_14-1.6-1PGDG.rhel9.aarch64.rpm pgdg 1.6 17.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/login_hook_14-1.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 login_hook_14 login_hook_14-1.5-1PGDG.rhel9.aarch64.rpm pgdg 1.5 16.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/login_hook_14-1.5-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 login_hook_14 login_hook_14-1.7-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/login_hook_14-1.7-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel10.x86_64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/login_hook_14-1.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 login_hook_14 login_hook_14-1.7-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7 18.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/login_hook_14-1.7-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 login_hook_14 login_hook_14-1.7-1PGDG.rhel10.aarch64.rpm pgdg 1.7 18.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/login_hook_14-1.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~bookworm_amd64.deb pigsty 1.7 27.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~bookworm_arm64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~trixie_amd64.deb pigsty 1.7 27.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~trixie_arm64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~jammy_amd64.deb pigsty 1.7 29.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~jammy_arm64.deb pigsty 1.7 29.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~noble_amd64.deb pigsty 1.7 28.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~noble_arm64.deb pigsty 1.7 28.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~resolute_amd64.deb pigsty 1.7 27.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-login-hook postgresql-14-login-hook_1.7-2PIGSTY~resolute_arm64.deb pigsty 1.7 27.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/l/login-hook/postgresql-14-login-hook_1.7-2PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `login_hook` using `pig build`:

```bash
pig build pkg login_hook         # build RPM / DEB packages
```


## Install

You can install `login_hook` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install login_hook;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y login_hook -v 18  # PG 18
pig ext install -y login_hook -v 17  # PG 17
pig ext install -y login_hook -v 16  # PG 16
pig ext install -y login_hook -v 15  # PG 15
pig ext install -y login_hook -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y login_hook_18       # PG 18
dnf install -y login_hook_17       # PG 17
dnf install -y login_hook_16       # PG 16
dnf install -y login_hook_15       # PG 15
dnf install -y login_hook_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-login-hook   # PG 18
apt install -y postgresql-17-login-hook   # PG 17
apt install -y postgresql-16-login-hook   # PG 16
apt install -y postgresql-15-login-hook   # PG 15
apt install -y postgresql-14-login-hook   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION login_hook;
```




## Usage

> [login_hook: Execute code on user login, comparable to Oracle's after logon trigger](https://github.com/splendiddata/login_hook)

`login_hook` allows executing custom PL/pgSQL code whenever a user logs into the database.

```sql
CREATE EXTENSION login_hook;
```

### Configuration

Add to `postgresql.conf`:

```ini
session_preload_libraries = 'login_hook'
```

### Creating the Login Function

Define a `login_hook.login()` function that will execute on every login:

```sql
CREATE OR REPLACE FUNCTION login_hook.login() RETURNS VOID LANGUAGE PLPGSQL AS $$
BEGIN
    IF NOT login_hook.is_executing_login_hook() THEN
        RAISE EXCEPTION 'Should only be invoked by login_hook';
    END IF;

    -- Your login logic here:
    RAISE NOTICE 'Hello %', current_user;

EXCEPTION
    WHEN OTHERS THEN
        RAISE LOG 'Error in login_hook.login(): %', SQLERRM;
END
$$;
GRANT EXECUTE ON FUNCTION login_hook.login() TO PUBLIC;
```

The `PUBLIC` grant is required because the function runs for every connecting user.

### Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `login_hook.is_executing_login_hook()` | `boolean` | Returns true only when called during login hook execution |
| `login_hook.get_login_hook_version()` | `text` | Returns compiled version of login_hook |
| `login_hook.login()` | `void` | User-provided function executed at login |

### Important Notes

- The function is NOT invoked for background processes or during recovery mode
- Handle all exceptions within the function -- failures will prevent normal users from logging in
- Superusers get a warning but can still log in when the function fails
- For PostgreSQL 17+, consider using the native login event trigger instead
