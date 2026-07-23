---
title: "pgauditlogtofile"
linkTitle: "pgauditlogtofile"
description: "pgAudit addon to redirect audit log to an independent file"
weight: 7110
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fmbiete/pgauditlogtofile">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fmbiete/pgauditlogtofile</div>
    <div class="ext-card__desc">https://github.com/fmbiete/pgauditlogtofile</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgauditlogtofile`**](/ext/e/pgauditlogtofile) | `1.8.5` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7110  | [**`pgauditlogtofile`**](/ext/e/pgauditlogtofile) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgaudit`](/ext/e/pgaudit) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`logerrors`](/ext/e/logerrors) [`pg_permissions`](/ext/e/pg_permissions) [`login_hook`](/ext/e/login_hook) [`set_user`](/ext/e/set_user) [`pg_drop_events`](/ext/e/pg_drop_events) [`table_log`](/ext/e/table_log) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.5` | {{< pgvers "18,17,16,15,14" >}} | `pgauditlogtofile` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.4` | {{< pgvers "18,17,16,15,14" >}} | `pgauditlogtofile_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.8.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgauditlogtofile` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.8.4 9 | AVAIL PGDG 1.8.4 12 | AVAIL PGDG 1.8.4 14 | AVAIL PGDG 1.8.4 16 | AVAIL PGDG 1.8.4 21 |
| el8.aarch64 | AVAIL PGDG 1.8.4 9 | AVAIL PGDG 1.8.4 12 | AVAIL PGDG 1.8.4 14 | AVAIL PGDG 1.8.4 16 | AVAIL PGDG 1.8.4 17 |
| el9.x86_64 | AVAIL PGDG 1.8.4 16 | AVAIL PGDG 1.8.4 21 | AVAIL PGDG 1.8.4 23 | AVAIL PGDG 1.8.4 23 | AVAIL PGDG 1.8.4 25 |
| el9.aarch64 | AVAIL PGDG 1.8.4 17 | AVAIL PGDG 1.8.4 22 | AVAIL PGDG 1.8.4 24 | AVAIL PGDG 1.8.4 23 | AVAIL PGDG 1.8.4 23 |
| el10.x86_64 | AVAIL PGDG 1.8.4 17 | AVAIL PGDG 1.8.4 20 | AVAIL PGDG 1.8.4 20 | AVAIL PGDG 1.8.4 18 | AVAIL PGDG 1.8.4 18 |
| el10.aarch64 | AVAIL PGDG 1.8.4 17 | AVAIL PGDG 1.8.4 20 | AVAIL PGDG 1.8.4 19 | AVAIL PGDG 1.8.4 18 | AVAIL PGDG 1.8.4 18 |
| d12.x86_64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| d12.aarch64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| d13.x86_64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| d13.aarch64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u22.x86_64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u22.aarch64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u24.x86_64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u24.aarch64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u26.x86_64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
| u26.aarch64 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 | AVAIL PGDG 1.8.5 3 |
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.3 32.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.2 32.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.1 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.8.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.0 30.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.8.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.7 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.7.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel8.x86_64.rpm pgdg 1.7.6 27.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.7.6-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel8.x86_64.rpm pgdg 1.7.5 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.7.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.4-1PGDG.rhel8.x86_64.rpm pgdg 1.7.4 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgauditlogtofile_18-1.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.4 32.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.3 32.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.2 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.8.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.0 29.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.8.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.7.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel8.aarch64.rpm pgdg 1.7.6 26.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.7.6-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel8.aarch64.rpm pgdg 1.7.5 26.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.7.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.4-1PGDG.rhel8.aarch64.rpm pgdg 1.7.4 26.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgauditlogtofile_18-1.7.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel9.8.x86_64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.3 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.3 30.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.2 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.2 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.1 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.8.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel9.7.x86_64.rpm pgdg 1.7.7 26.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.7-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel9.6.x86_64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.7-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel9.x86_64.rpm pgdg 1.7.6 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel9.x86_64.rpm pgdg 1.7.5 25.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-2PGDG.rhel9.x86_64.rpm pgdg 1.7.3 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.3-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-1PGDG.rhel9.x86_64.rpm pgdg 1.7.3 25.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgauditlogtofile_18-1.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel9.8.aarch64.rpm pgdg 1.8.4 31.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.4 31.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.4 31.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.3 30.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.3 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.2 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.2 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.1 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.1 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.0 28.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.8.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel9.7.aarch64.rpm pgdg 1.7.7 25.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.7-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel9.6.aarch64.rpm pgdg 1.7.7 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.7-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel9.aarch64.rpm pgdg 1.7.6 25.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel9.aarch64.rpm pgdg 1.7.5 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-2PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.3-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-1PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgauditlogtofile_18-1.7.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.2.x86_64.rpm pgdg 1.8.4 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.4 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.4 32.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.3 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.3 31.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.2 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.2 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.1 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.1 28.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.0 28.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.8.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel10.1.x86_64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.7-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel10.0.x86_64.rpm pgdg 1.7.7 26.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.7-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel10.x86_64.rpm pgdg 1.7.6 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.6-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel10.x86_64.rpm pgdg 1.7.5 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-2PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.3-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-1PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgauditlogtofile_18-1.7.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.8.4 31.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.3 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.3 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.2 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.2 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.1 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.1 28.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.0 28.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.8.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.0 28.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.8.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel10.1.aarch64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.7-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.7-2PGDG.rhel10.0.aarch64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.7-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.6-2PGDG.rhel10.aarch64.rpm pgdg 1.7.6 26.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.6-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.5-1PGDG.rhel10.aarch64.rpm pgdg 1.7.5 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-2PGDG.rhel10.aarch64.rpm pgdg 1.7.3 25.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.3-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pgauditlogtofile_18 pgauditlogtofile_18-1.7.3-1PGDG.rhel10.aarch64.rpm pgdg 1.7.3 25.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgauditlogtofile_18-1.7.3-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb pgdg 1.8.5 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb pgdg 1.8.4 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb pgdg 1.8.3 65.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb pgdg 1.8.5 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb pgdg 1.8.4 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb pgdg 1.8.3 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb pgdg 1.8.5 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb pgdg 1.8.4 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb pgdg 1.8.3 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb pgdg 1.8.5 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb pgdg 1.8.4 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb pgdg 1.8.3 64.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb pgdg 1.8.5 68.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb pgdg 1.8.4 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb pgdg 1.8.3 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb pgdg 1.8.5 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb pgdg 1.8.4 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb pgdg 1.8.3 64.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb pgdg 1.8.5 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb pgdg 1.8.4 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb pgdg 1.8.3 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb pgdg 1.8.5 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb pgdg 1.8.4 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb pgdg 1.8.3 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb pgdg 1.8.5 66.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb pgdg 1.8.4 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb pgdg 1.8.3 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb pgdg 1.8.5 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb pgdg 1.8.4 64.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-pgauditlogtofile postgresql-18-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb pgdg 1.8.3 63.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-18-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.3 32.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.2 32.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.1 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.8.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.0 30.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.8.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.7 27.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.7.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel8.x86_64.rpm pgdg 1.7.6 26.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.7.6-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel8.x86_64.rpm pgdg 1.7.5 26.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.7.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.4-1PGDG.rhel8.x86_64.rpm pgdg 1.7.4 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 23.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgauditlogtofile_17-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.4 32.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.3 32.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.2 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.8.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.0 29.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.8.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.7.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel8.aarch64.rpm pgdg 1.7.6 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.7.6-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel8.aarch64.rpm pgdg 1.7.5 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.7.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.4-1PGDG.rhel8.aarch64.rpm pgdg 1.7.4 26.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 23.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgauditlogtofile_17-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel9.8.x86_64.rpm pgdg 1.8.4 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.4 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.3 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.3 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.2 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.2 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.1 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.0 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.8.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel9.7.x86_64.rpm pgdg 1.7.7 26.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.7-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel9.6.x86_64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.7-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel9.x86_64.rpm pgdg 1.7.6 25.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel9.x86_64.rpm pgdg 1.7.5 25.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-2PGDG.rhel9.x86_64.rpm pgdg 1.7.3 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.3-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-1PGDG.rhel9.x86_64.rpm pgdg 1.7.3 25.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-2PGDG.rhel9.x86_64.rpm pgdg 1.7.1 24.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 24.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-1PGDG.rhel9.x86_64.rpm pgdg 1.6.4 22.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.6.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 22.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 22.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgauditlogtofile_17-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel9.8.aarch64.rpm pgdg 1.8.4 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.4 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.4 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.3 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.3 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.2 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.2 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.1 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.0 28.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.8.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel9.7.aarch64.rpm pgdg 1.7.7 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.7-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel9.6.aarch64.rpm pgdg 1.7.7 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.7-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel9.aarch64.rpm pgdg 1.7.6 25.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel9.aarch64.rpm pgdg 1.7.5 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-2PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.3-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-1PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-2PGDG.rhel9.aarch64.rpm pgdg 1.7.1 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.1-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-1PGDG.rhel9.aarch64.rpm pgdg 1.6.4 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.6.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgauditlogtofile_17-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.2.x86_64.rpm pgdg 1.8.4 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.4 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.4 32.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.3 31.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.3 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.2 31.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.2 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.1 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.1 28.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.0 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.0 28.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.8.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel10.1.x86_64.rpm pgdg 1.7.7 26.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.7-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel10.0.x86_64.rpm pgdg 1.7.7 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.7-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel10.x86_64.rpm pgdg 1.7.6 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.6-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel10.x86_64.rpm pgdg 1.7.5 25.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-2PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.3-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-1PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-2PGDG.rhel10.x86_64.rpm pgdg 1.7.1 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 25.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-4PGDG.rhel10.x86_64.rpm pgdg 1.6.4 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgauditlogtofile_17-1.6.4-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.4 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.3 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.3 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.2 31.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.2 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.1 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.1 28.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.0 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.8.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.0 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.8.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel10.1.aarch64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.7-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.7-2PGDG.rhel10.0.aarch64.rpm pgdg 1.7.7 26.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.7-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.6-2PGDG.rhel10.aarch64.rpm pgdg 1.7.6 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.6-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.5-1PGDG.rhel10.aarch64.rpm pgdg 1.7.5 25.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-2PGDG.rhel10.aarch64.rpm pgdg 1.7.3 25.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.3-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.3-1PGDG.rhel10.aarch64.rpm pgdg 1.7.3 25.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-2PGDG.rhel10.aarch64.rpm pgdg 1.7.1 24.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.1-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.7.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgauditlogtofile_17 pgauditlogtofile_17-1.6.4-4PGDG.rhel10.aarch64.rpm pgdg 1.6.4 22.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgauditlogtofile_17-1.6.4-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb pgdg 1.8.5 67.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb pgdg 1.8.4 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb pgdg 1.8.3 65.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb pgdg 1.8.5 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb pgdg 1.8.4 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb pgdg 1.8.3 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb pgdg 1.8.5 67.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb pgdg 1.8.4 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb pgdg 1.8.3 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb pgdg 1.8.5 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb pgdg 1.8.4 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb pgdg 1.8.3 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb pgdg 1.8.5 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb pgdg 1.8.4 79.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb pgdg 1.8.3 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb pgdg 1.8.5 79.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb pgdg 1.8.4 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb pgdg 1.8.3 76.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb pgdg 1.8.5 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb pgdg 1.8.4 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb pgdg 1.8.3 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb pgdg 1.8.5 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb pgdg 1.8.4 65.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb pgdg 1.8.3 63.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb pgdg 1.8.5 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb pgdg 1.8.4 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb pgdg 1.8.3 64.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb pgdg 1.8.5 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb pgdg 1.8.4 64.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-pgauditlogtofile postgresql-17-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb pgdg 1.8.3 62.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-17-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.4 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.3 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.2 32.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.1 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.8.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.0 29.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.8.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.7 27.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.7.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel8.x86_64.rpm pgdg 1.7.6 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.7.6-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel8.x86_64.rpm pgdg 1.7.5 26.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.7.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.4-1PGDG.rhel8.x86_64.rpm pgdg 1.7.4 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 23.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.5.12-1PGDG.rhel8.x86_64.rpm pgdg 1.5.12 19.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgauditlogtofile_16-1.5.12-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.4 32.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.3 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.2 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.1 29.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.8.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.0 29.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.8.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.7 27.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.7.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel8.aarch64.rpm pgdg 1.7.6 26.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.7.6-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel8.aarch64.rpm pgdg 1.7.5 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.7.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.4-1PGDG.rhel8.aarch64.rpm pgdg 1.7.4 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 23.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.5.12-1PGDG.rhel8.aarch64.rpm pgdg 1.5.12 19.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgauditlogtofile_16-1.5.12-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel9.8.x86_64.rpm pgdg 1.8.4 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.4 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.3 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.3 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.2 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.2 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.1 28.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.0 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.0 28.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.8.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel9.7.x86_64.rpm pgdg 1.7.7 26.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.7-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel9.6.x86_64.rpm pgdg 1.7.7 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.7-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel9.x86_64.rpm pgdg 1.7.6 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.6-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel9.x86_64.rpm pgdg 1.7.5 25.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-2PGDG.rhel9.x86_64.rpm pgdg 1.7.3 24.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.3-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-1PGDG.rhel9.x86_64.rpm pgdg 1.7.3 24.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-2PGDG.rhel9.x86_64.rpm pgdg 1.7.1 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.1-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-1PGDG.rhel9.x86_64.rpm pgdg 1.6.4 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.6.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 21.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.5.12-1PGDG.rhel9.x86_64.rpm pgdg 1.5.12 19.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgauditlogtofile_16-1.5.12-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel9.8.aarch64.rpm pgdg 1.8.4 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.4 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.4 31.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.3 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.3 30.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.2 30.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.2 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.1 28.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.0 27.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.0 28.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.8.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel9.7.aarch64.rpm pgdg 1.7.7 25.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.7-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel9.6.aarch64.rpm pgdg 1.7.7 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.7-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel9.aarch64.rpm pgdg 1.7.6 25.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.6-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel9.aarch64.rpm pgdg 1.7.5 25.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-2PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.3-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-1PGDG.rhel9.aarch64.rpm pgdg 1.7.3 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-2PGDG.rhel9.aarch64.rpm pgdg 1.7.1 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.1-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 24.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-1PGDG.rhel9.aarch64.rpm pgdg 1.6.4 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.6.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 21.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.5.12-1PGDG.rhel9.aarch64.rpm pgdg 1.5.12 18.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgauditlogtofile_16-1.5.12-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.2.x86_64.rpm pgdg 1.8.4 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.4 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.4 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.3 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.3 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.2 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.2 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.1 28.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.0 28.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.8.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel10.1.x86_64.rpm pgdg 1.7.7 26.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.7-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel10.0.x86_64.rpm pgdg 1.7.7 26.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.7-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel10.x86_64.rpm pgdg 1.7.6 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.6-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel10.x86_64.rpm pgdg 1.7.5 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-2PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.3-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-1PGDG.rhel10.x86_64.rpm pgdg 1.7.3 25.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-2PGDG.rhel10.x86_64.rpm pgdg 1.7.1 24.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.1-2PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 24.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-3PGDG.rhel10.x86_64.rpm pgdg 1.6.4 22.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgauditlogtofile_16-1.6.4-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.8.4 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.4 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.4 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.3 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.3 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.2 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.2 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.1 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.1 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.8.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.0 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.8.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel10.1.aarch64.rpm pgdg 1.7.7 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.7-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.7-2PGDG.rhel10.0.aarch64.rpm pgdg 1.7.7 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.7-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.6-2PGDG.rhel10.aarch64.rpm pgdg 1.7.6 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.6-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.5-1PGDG.rhel10.aarch64.rpm pgdg 1.7.5 25.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-2PGDG.rhel10.aarch64.rpm pgdg 1.7.3 25.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.3-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.3-1PGDG.rhel10.aarch64.rpm pgdg 1.7.3 24.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-2PGDG.rhel10.aarch64.rpm pgdg 1.7.1 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.1-2PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 24.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.7.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgauditlogtofile_16 pgauditlogtofile_16-1.6.4-3PGDG.rhel10.aarch64.rpm pgdg 1.6.4 22.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgauditlogtofile_16-1.6.4-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb pgdg 1.8.5 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb pgdg 1.8.4 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb pgdg 1.8.3 65.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb pgdg 1.8.5 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb pgdg 1.8.4 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb pgdg 1.8.3 64.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb pgdg 1.8.5 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb pgdg 1.8.4 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb pgdg 1.8.3 65.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb pgdg 1.8.5 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb pgdg 1.8.4 65.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb pgdg 1.8.3 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb pgdg 1.8.5 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb pgdg 1.8.4 78.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb pgdg 1.8.3 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb pgdg 1.8.5 78.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb pgdg 1.8.4 77.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb pgdg 1.8.3 75.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb pgdg 1.8.5 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb pgdg 1.8.4 66.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb pgdg 1.8.3 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb pgdg 1.8.5 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb pgdg 1.8.4 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb pgdg 1.8.3 63.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb pgdg 1.8.5 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb pgdg 1.8.4 65.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb pgdg 1.8.3 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb pgdg 1.8.5 64.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb pgdg 1.8.4 64.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-pgauditlogtofile postgresql-16-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb pgdg 1.8.3 62.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-16-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.4 34.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.3 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.2 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.1 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.8.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.0 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.8.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.7 28.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.7.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel8.x86_64.rpm pgdg 1.7.6 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.7.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel8.x86_64.rpm pgdg 1.7.5 27.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.7.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.4-1PGDG.rhel8.x86_64.rpm pgdg 1.7.4 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 24.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 23.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.12-2PGDG.rhel8.x86_64.rpm pgdg 1.5.12 19.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.5.12-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.10-1.rhel8.x86_64.rpm pgdg 1.5.10 19.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.5.10-1.rhel8.x86_64.rpm
@ el8.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.6-2.rhel8.x86_64.rpm pgdg 1.5.6 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgauditlogtofile_15-1.5.6-2.rhel8.x86_64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.3 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.2 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.1 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.8.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.0 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.8.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.7 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.7.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel8.aarch64.rpm pgdg 1.7.6 27.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.7.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel8.aarch64.rpm pgdg 1.7.5 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.7.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.4-1PGDG.rhel8.aarch64.rpm pgdg 1.7.4 26.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 23.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.12-2PGDG.rhel8.aarch64.rpm pgdg 1.5.12 19.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.5.12-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.10-1.rhel8.aarch64.rpm pgdg 1.5.10 19.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.5.10-1.rhel8.aarch64.rpm
@ el8.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.6-2.rhel8.aarch64.rpm pgdg 1.5.6 17.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgauditlogtofile_15-1.5.6-2.rhel8.aarch64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel9.8.x86_64.rpm pgdg 1.8.4 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.3 32.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.3 32.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.2 32.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.2 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.1 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.1 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.0 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.0 30.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.8.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel9.7.x86_64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.7-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel9.6.x86_64.rpm pgdg 1.7.7 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.7-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel9.x86_64.rpm pgdg 1.7.6 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel9.x86_64.rpm pgdg 1.7.5 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.3-1PGDG.rhel9.x86_64.rpm pgdg 1.7.3 26.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 25.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-1PGDG.rhel9.x86_64.rpm pgdg 1.6.4 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.6.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.12-1PGDG.rhel9.x86_64.rpm pgdg 1.5.12 19.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.5.12-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.10-1.rhel9.x86_64.rpm pgdg 1.5.10 19.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.5.10-1.rhel9.x86_64.rpm
@ el9.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.6-2.rhel9.x86_64.rpm pgdg 1.5.6 18.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgauditlogtofile_15-1.5.6-2.rhel9.x86_64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel9.8.aarch64.rpm pgdg 1.8.4 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.4 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.4 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.3 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.3 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.2 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.2 32.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.1 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.0 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.8.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel9.7.aarch64.rpm pgdg 1.7.7 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.7-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel9.6.aarch64.rpm pgdg 1.7.7 27.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.7-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel9.aarch64.rpm pgdg 1.7.6 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel9.aarch64.rpm pgdg 1.7.5 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.3-1PGDG.rhel9.aarch64.rpm pgdg 1.7.3 25.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-1PGDG.rhel9.aarch64.rpm pgdg 1.6.4 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.6.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.12-1PGDG.rhel9.aarch64.rpm pgdg 1.5.12 19.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.5.12-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.10-1.rhel9.aarch64.rpm pgdg 1.5.10 18.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.5.10-1.rhel9.aarch64.rpm
@ el9.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.5.6-2.rhel9.aarch64.rpm pgdg 1.5.6 18.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgauditlogtofile_15-1.5.6-2.rhel9.aarch64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.2.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.4 33.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.3 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.3 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.2 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.2 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.1 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.1 30.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.0 30.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.0 30.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.8.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel10.1.x86_64.rpm pgdg 1.7.7 27.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.7-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel10.0.x86_64.rpm pgdg 1.7.7 27.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.7-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel10.x86_64.rpm pgdg 1.7.6 27.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel10.x86_64.rpm pgdg 1.7.5 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.3-1PGDG.rhel10.x86_64.rpm pgdg 1.7.3 26.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-3PGDG.rhel10.x86_64.rpm pgdg 1.6.4 24.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgauditlogtofile_15-1.6.4-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.2 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.2 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.1 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.1 29.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.0 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.8.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.0 29.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.8.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel10.1.aarch64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.7-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.7-2PGDG.rhel10.0.aarch64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.7-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.6-1PGDG.rhel10.aarch64.rpm pgdg 1.7.6 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.5-1PGDG.rhel10.aarch64.rpm pgdg 1.7.5 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.3-1PGDG.rhel10.aarch64.rpm pgdg 1.7.3 26.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.7.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgauditlogtofile_15 pgauditlogtofile_15-1.6.4-3PGDG.rhel10.aarch64.rpm pgdg 1.6.4 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgauditlogtofile_15-1.6.4-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb pgdg 1.8.5 69.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb pgdg 1.8.4 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb pgdg 1.8.3 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb pgdg 1.8.5 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb pgdg 1.8.4 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb pgdg 1.8.3 65.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb pgdg 1.8.5 69.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb pgdg 1.8.4 68.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb pgdg 1.8.3 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb pgdg 1.8.5 67.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb pgdg 1.8.4 67.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb pgdg 1.8.3 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb pgdg 1.8.5 82.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb pgdg 1.8.4 82.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb pgdg 1.8.3 79.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb pgdg 1.8.5 81.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb pgdg 1.8.4 80.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb pgdg 1.8.3 78.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb pgdg 1.8.5 69.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb pgdg 1.8.4 68.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb pgdg 1.8.3 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb pgdg 1.8.5 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb pgdg 1.8.4 66.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb pgdg 1.8.3 65.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb pgdg 1.8.5 68.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb pgdg 1.8.4 67.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb pgdg 1.8.3 66.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb pgdg 1.8.5 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb pgdg 1.8.4 66.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-pgauditlogtofile postgresql-15-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb pgdg 1.8.3 64.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-15-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.4 34.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.3 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.8.3-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.2 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.8.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.1 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.8.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel8.10.x86_64.rpm pgdg 1.8.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.8.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.7 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.7.7-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel8.x86_64.rpm pgdg 1.7.6 27.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.7.6-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel8.x86_64.rpm pgdg 1.7.5 27.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.7.5-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.4-1PGDG.rhel8.x86_64.rpm pgdg 1.7.4 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.7.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-1PGDG.rhel8.x86_64.rpm pgdg 1.6.4 24.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.6.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-2PGDG.rhel8.x86_64.rpm pgdg 1.5.12 19.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.12-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-1PGDG.rhel8.x86_64.rpm pgdg 1.5.12 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.12-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.10-1.rhel8.x86_64.rpm pgdg 1.5.10 19.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.10-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.6-1.rhel8.x86_64.rpm pgdg 1.5.6 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.6-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.5-1.rhel8.x86_64.rpm pgdg 1.5.5 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.5-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.1-1.rhel8.x86_64.rpm pgdg 1.5.1 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.5.1-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.4-1.rhel8.x86_64.rpm pgdg 1.4 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.4-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.3-1.rhel8.x86_64.rpm pgdg 1.3 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgauditlogtofile_14-1.3-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.3 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.8.3-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.2 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.8.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.1 30.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.8.1-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel8.10.aarch64.rpm pgdg 1.8.0 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.8.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.7 27.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.7.7-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel8.aarch64.rpm pgdg 1.7.6 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.7.6-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel8.aarch64.rpm pgdg 1.7.5 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.7.5-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.4-1PGDG.rhel8.aarch64.rpm pgdg 1.7.4 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.7.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-1PGDG.rhel8.aarch64.rpm pgdg 1.6.4 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.6.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-2PGDG.rhel8.aarch64.rpm pgdg 1.5.12 19.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.5.12-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-1PGDG.rhel8.aarch64.rpm pgdg 1.5.12 19.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.5.12-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.10-1.rhel8.aarch64.rpm pgdg 1.5.10 19.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.5.10-1.rhel8.aarch64.rpm
@ el8.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.6-1.rhel8.aarch64.rpm pgdg 1.5.6 17.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgauditlogtofile_14-1.5.6-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel9.8.x86_64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.4 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.3 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.3-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.3 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.3-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.2 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.2 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.1 29.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.1 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel9.7.x86_64.rpm pgdg 1.8.0 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel9.6.x86_64.rpm pgdg 1.8.0 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.8.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel9.7.x86_64.rpm pgdg 1.7.7 27.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.7-2PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel9.6.x86_64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.7-2PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel9.x86_64.rpm pgdg 1.7.6 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.6-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel9.x86_64.rpm pgdg 1.7.5 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.5-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.3-1PGDG.rhel9.x86_64.rpm pgdg 1.7.3 26.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.1-1PGDG.rhel9.x86_64.rpm pgdg 1.7.1 25.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.7.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-1PGDG.rhel9.x86_64.rpm pgdg 1.6.4 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.6.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-1PGDG.rhel9.x86_64.rpm pgdg 1.5.12 19.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.5.12-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.10-1.rhel9.x86_64.rpm pgdg 1.5.10 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.5.10-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.6-1.rhel9.x86_64.rpm pgdg 1.5.6 18.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.5.6-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.5-1.rhel9.x86_64.rpm pgdg 1.5.5 33.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.5.5-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.1-1.rhel9.x86_64.rpm pgdg 1.5.1 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgauditlogtofile_14-1.5.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel9.8.aarch64.rpm pgdg 1.8.4 32.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.4 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.4 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.3 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.3-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.3 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.3-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.2 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.2 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.1 29.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel9.6.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.1-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel9.7.aarch64.rpm pgdg 1.8.0 29.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.8.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel9.7.aarch64.rpm pgdg 1.7.7 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.7-2PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel9.6.aarch64.rpm pgdg 1.7.7 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.7-2PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel9.aarch64.rpm pgdg 1.7.6 26.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.6-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel9.aarch64.rpm pgdg 1.7.5 26.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.5-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.3-1PGDG.rhel9.aarch64.rpm pgdg 1.7.3 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.1-1PGDG.rhel9.aarch64.rpm pgdg 1.7.1 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.7.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-1PGDG.rhel9.aarch64.rpm pgdg 1.6.4 23.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.6.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.12-1PGDG.rhel9.aarch64.rpm pgdg 1.5.12 19.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.5.12-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.10-1.rhel9.aarch64.rpm pgdg 1.5.10 18.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.5.10-1.rhel9.aarch64.rpm
@ el9.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.5.6-1.rhel9.aarch64.rpm pgdg 1.5.6 17.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgauditlogtofile_14-1.5.6-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.2.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.4 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.4 33.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.3 32.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.3 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.2 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.2 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.1 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.1 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel10.1.x86_64.rpm pgdg 1.8.0 30.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel10.0.x86_64.rpm pgdg 1.8.0 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.8.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel10.1.x86_64.rpm pgdg 1.7.7 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.7-2PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel10.0.x86_64.rpm pgdg 1.7.7 27.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.7-2PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel10.x86_64.rpm pgdg 1.7.6 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel10.x86_64.rpm pgdg 1.7.5 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.3-1PGDG.rhel10.x86_64.rpm pgdg 1.7.3 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.1-1PGDG.rhel10.x86_64.rpm pgdg 1.7.1 26.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.7.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-3PGDG.rhel10.x86_64.rpm pgdg 1.6.4 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgauditlogtofile_14-1.6.4-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.4-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.4 33.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.4-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.3 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.3-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.3 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.2 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.2 32.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.1-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.1 29.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.1-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel10.1.aarch64.rpm pgdg 1.8.0 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.8.0-1PGDG.rhel10.0.aarch64.rpm pgdg 1.8.0 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.8.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel10.1.aarch64.rpm pgdg 1.7.7 27.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.7-2PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.7-2PGDG.rhel10.0.aarch64.rpm pgdg 1.7.7 27.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.7-2PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.6-1PGDG.rhel10.aarch64.rpm pgdg 1.7.6 26.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.5-1PGDG.rhel10.aarch64.rpm pgdg 1.7.5 26.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.3-1PGDG.rhel10.aarch64.rpm pgdg 1.7.3 26.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.7.1-1PGDG.rhel10.aarch64.rpm pgdg 1.7.1 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.7.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgauditlogtofile_14 pgauditlogtofile_14-1.6.4-3PGDG.rhel10.aarch64.rpm pgdg 1.6.4 24.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgauditlogtofile_14-1.6.4-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb pgdg 1.8.5 68.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb pgdg 1.8.4 68.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb pgdg 1.8.3 66.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb pgdg 1.8.5 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb pgdg 1.8.4 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb pgdg 1.8.3 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb pgdg 1.8.5 69.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb pgdg 1.8.4 68.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb pgdg 1.8.3 67.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb pgdg 1.8.5 67.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb pgdg 1.8.4 67.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb pgdg 1.8.3 65.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb pgdg 1.8.5 82.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb pgdg 1.8.4 81.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb pgdg 1.8.3 79.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb pgdg 1.8.5 81.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb pgdg 1.8.4 80.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb pgdg 1.8.3 78.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb pgdg 1.8.5 68.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb pgdg 1.8.4 68.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb pgdg 1.8.3 66.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb pgdg 1.8.5 67.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb pgdg 1.8.4 66.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb pgdg 1.8.3 65.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb pgdg 1.8.5 68.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb pgdg 1.8.4 67.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb pgdg 1.8.3 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb pgdg 1.8.5 66.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.5-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb pgdg 1.8.4 66.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.4-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-pgauditlogtofile postgresql-14-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb pgdg 1.8.3 64.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgauditlogtofile/postgresql-14-pgauditlogtofile_1.8.3-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pgauditlogtofile` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgauditlogtofile;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgauditlogtofile -v 18  # PG 18
pig ext install -y pgauditlogtofile -v 17  # PG 17
pig ext install -y pgauditlogtofile -v 16  # PG 16
pig ext install -y pgauditlogtofile -v 15  # PG 15
pig ext install -y pgauditlogtofile -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgauditlogtofile_18       # PG 18
dnf install -y pgauditlogtofile_17       # PG 17
dnf install -y pgauditlogtofile_16       # PG 16
dnf install -y pgauditlogtofile_15       # PG 15
dnf install -y pgauditlogtofile_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgauditlogtofile   # PG 18
apt install -y postgresql-17-pgauditlogtofile   # PG 17
apt install -y postgresql-16-pgauditlogtofile   # PG 16
apt install -y postgresql-15-pgauditlogtofile   # PG 15
apt install -y postgresql-14-pgauditlogtofile   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgauditlogtofile';
```


**Create Extension**:

```sql
CREATE EXTENSION pgauditlogtofile;
```

## Usage

Sources:

- [pgauditlogtofile v1.8.5 README](https://github.com/fmbiete/pgauditlogtofile/blob/v1.8.5/README.md)
- [Changes from v1.8.4 to v1.8.5](https://github.com/fmbiete/pgauditlogtofile/compare/v1.8.4...v1.8.5)

pgauditlogtofile is a pgAudit add-on that routes pgAudit records to a dedicated CSV or JSON file. Use it to separate audit retention and access controls from the ordinary PostgreSQL server log while keeping pgAudit's event selection and semantics.

### Preload and Create the Extension

Load pgAudit first, then pgauditlogtofile:

    shared_preload_libraries = 'pgaudit,pgauditlogtofile'

Restart PostgreSQL, then install both extensions in the postgres database:

    CREATE EXTENSION pgaudit;
    CREATE EXTENSION pgauditlogtofile;

Upstream recommends creating pgauditlogtofile only in the postgres database, not independently in every application database.

### Configure Audit Files

    pgaudit.log_directory = 'log'
    pgaudit.log_filename = 'audit-%Y%m%d_%H%M.log'
    pgaudit.log_format = 'csv'
    pgaudit.log_rotation_age = 1440
    pgaudit.log_file_mode = 0600

An empty pgaudit.log_directory or pgaudit.log_filename disables the separate target and lets records fall back to the normal server logger. Relative directories are resolved under the PostgreSQL data directory.

### Compression

Version 1.8 supports compressed audit files:

    pgaudit.log_compression = 'zstd'
    pgaudit.log_compression_level = 6

pgaudit.log_compression accepts off, gzip, lz4, or zstd when the corresponding support is available. The level range is 0 through 22, but valid and useful levels depend on the selected algorithm. Compression consumes backend CPU, so test both log throughput and rotation latency.

### Parameter Index

- pgaudit.log_format: csv or json output.
- pgaudit.log_directory and pgaudit.log_filename: destination and strftime-style filename.
- pgaudit.log_file_mode: permissions for newly created files.
- pgaudit.log_rotation_age: time-based rotation interval in minutes.
- pgaudit.log_compression and pgaudit.log_compression_level: compression method and effort.
- pgaudit.log_connections and pgaudit.log_disconnections: include connection lifecycle events when PostgreSQL's matching log settings are enabled.
- pgaudit.log_execution_time and pgaudit.log_execution_memory: add execution measurements; these require a restart.
- pgaudit.log_autoclose_minutes: experimental inactivity-based file-handler close.

### Rotation and Operations

A PostgreSQL configuration reload rotates the audit file. The extension's background worker can signal backends to close audit file handles; pg_rotate_logfile() does not rotate the independent audit file.

Version 1.8.5 improves background-worker signaling, hook restoration, and PostgreSQL 19 build compatibility. It does not introduce a required configuration migration from 1.8.4.

### Caveats

- File separation is not retention management. Ship, rotate, protect, and expire audit files explicitly.
- Ensure the PostgreSQL operating-system account can create the destination and that file permissions meet the audit policy.
- Abrupt backend or host failure can leave the last compressed file incomplete; validate ingestion behavior.
- Enabling timing, memory, connection, or verbose pgAudit classes can materially increase overhead and log volume.
