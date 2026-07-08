---
title: "pgagent"
linkTitle: "pgagent"
description: "A PostgreSQL job scheduler"
weight: 5880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.pgadmin.org/docs/pgadmin4/development/pgagent.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.pgadmin.org/docs/pgadmin4/development/pgagent.html</div>
    <div class="ext-card__desc">https://www.pgadmin.org/docs/pgadmin4/development/pgagent.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgagent`**](/ext/e/pgagent) | `4.2.3` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5880  | [**`pgagent`**](/ext/e/pgagent) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_cron`](/ext/e/pg_cron) [`pg_task`](/ext/e/pg_task) [`pg_jobmon`](/ext/e/pg_jobmon) [`pg_partman`](/ext/e/pg_partman) [`pglogical`](/ext/e/pglogical) [`pg_background`](/ext/e/pg_background) [`pg_repack`](/ext/e/pg_repack) [`pg_rewrite`](/ext/e/pg_rewrite) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pgagent` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pgagent_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `4.2.3` | {{< pgvers "18,17,16,15,14" >}} | `pgagent` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 4.2.3 1 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 3 |
| el8.aarch64 | AVAIL PGDG 4.2.3 1 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| el9.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 4 |
| el9.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 3 | AVAIL PGDG 4.2.3 3 |
| el10.x86_64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 |
| el10.aarch64 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 2 | AVAIL PGDG 4.2.3 1 |
| d12.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d13.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u22.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u24.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| u26.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
@ el8.x86_64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel8.x86_64.rpm pgdg 4.2.3 135.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgagent_18-4.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel8.aarch64.rpm pgdg 4.2.3 129.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgagent_18-4.2.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgagent_18 pgagent_18-4.2.3-9PGDG.rhel9.8.x86_64.rpm pgdg 4.2.3 122.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgagent_18-4.2.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel9.x86_64.rpm pgdg 4.2.3 121.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgagent_18-4.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgagent_18 pgagent_18-4.2.3-9PGDG.rhel9.8.aarch64.rpm pgdg 4.2.3 118.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgagent_18-4.2.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel9.aarch64.rpm pgdg 4.2.3 117.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgagent_18-4.2.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgagent_18 pgagent_18-4.2.3-9PGDG.rhel10.2.x86_64.rpm pgdg 4.2.3 127.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgagent_18-4.2.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel10.x86_64.rpm pgdg 4.2.3 126.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgagent_18-4.2.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgagent_18 pgagent_18-4.2.3-9PGDG.rhel10.2.aarch64.rpm pgdg 4.2.3 117.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgagent_18-4.2.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgagent_18 pgagent_18-4.2.3-1PGDG.rhel10.aarch64.rpm pgdg 4.2.3 116.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgagent_18-4.2.3-1PGDG.rhel10.aarch64.rpm
@ el8.x86_64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel8.x86_64.rpm pgdg 4.2.3 135.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgagent_17-4.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgagent_17 pgagent_17-4.2.2-5PGDG.rhel8.x86_64.rpm pgdg 4.2.2 133.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgagent_17-4.2.2-5PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel8.aarch64.rpm pgdg 4.2.3 129.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgagent_17-4.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgagent_17 pgagent_17-4.2.2-5PGDG.rhel8.aarch64.rpm pgdg 4.2.2 128.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgagent_17-4.2.2-5PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgagent_17 pgagent_17-4.2.3-9PGDG.rhel9.8.x86_64.rpm pgdg 4.2.3 122.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgagent_17-4.2.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel9.x86_64.rpm pgdg 4.2.3 121.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgagent_17-4.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgagent_17 pgagent_17-4.2.2-5PGDG.rhel9.x86_64.rpm pgdg 4.2.2 120.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgagent_17-4.2.2-5PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgagent_17 pgagent_17-4.2.3-9PGDG.rhel9.8.aarch64.rpm pgdg 4.2.3 118.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgagent_17-4.2.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel9.aarch64.rpm pgdg 4.2.3 118.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgagent_17-4.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgagent_17 pgagent_17-4.2.2-5PGDG.rhel9.aarch64.rpm pgdg 4.2.2 116.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgagent_17-4.2.2-5PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgagent_17 pgagent_17-4.2.3-9PGDG.rhel10.2.x86_64.rpm pgdg 4.2.3 127.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgagent_17-4.2.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel10.x86_64.rpm pgdg 4.2.3 126.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgagent_17-4.2.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgagent_17 pgagent_17-4.2.3-9PGDG.rhel10.2.aarch64.rpm pgdg 4.2.3 117.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgagent_17-4.2.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgagent_17 pgagent_17-4.2.3-1PGDG.rhel10.aarch64.rpm pgdg 4.2.3 116.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgagent_17-4.2.3-1PGDG.rhel10.aarch64.rpm
@ el8.x86_64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel8.x86_64.rpm pgdg 4.2.3 135.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgagent_16-4.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgagent_16 pgagent_16-4.2.2-3.rhel8.x86_64.rpm pgdg 4.2.2 133.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgagent_16-4.2.2-3.rhel8.x86_64.rpm
@ el8.aarch64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel8.aarch64.rpm pgdg 4.2.3 129.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgagent_16-4.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgagent_16 pgagent_16-4.2.2-3.rhel8.aarch64.rpm pgdg 4.2.2 127.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgagent_16-4.2.2-3.rhel8.aarch64.rpm
@ el9.x86_64 16 pgagent_16 pgagent_16-4.2.3-9PGDG.rhel9.8.x86_64.rpm pgdg 4.2.3 122.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgagent_16-4.2.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel9.x86_64.rpm pgdg 4.2.3 122.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgagent_16-4.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgagent_16 pgagent_16-4.2.2-3.rhel9.x86_64.rpm pgdg 4.2.2 120.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgagent_16-4.2.2-3.rhel9.x86_64.rpm
@ el9.aarch64 16 pgagent_16 pgagent_16-4.2.3-9PGDG.rhel9.8.aarch64.rpm pgdg 4.2.3 118.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgagent_16-4.2.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel9.aarch64.rpm pgdg 4.2.3 118.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgagent_16-4.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgagent_16 pgagent_16-4.2.2-3.rhel9.aarch64.rpm pgdg 4.2.2 116.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgagent_16-4.2.2-3.rhel9.aarch64.rpm
@ el10.x86_64 16 pgagent_16 pgagent_16-4.2.3-9PGDG.rhel10.2.x86_64.rpm pgdg 4.2.3 127.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgagent_16-4.2.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel10.x86_64.rpm pgdg 4.2.3 126.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgagent_16-4.2.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgagent_16 pgagent_16-4.2.3-9PGDG.rhel10.2.aarch64.rpm pgdg 4.2.3 117.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgagent_16-4.2.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgagent_16 pgagent_16-4.2.3-1PGDG.rhel10.aarch64.rpm pgdg 4.2.3 116.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgagent_16-4.2.3-1PGDG.rhel10.aarch64.rpm
@ el8.x86_64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel8.x86_64.rpm pgdg 4.2.3 135.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgagent_15-4.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgagent_15 pgagent_15-4.2.2-1.rhel8.x86_64.rpm pgdg 4.2.2 133.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgagent_15-4.2.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel8.aarch64.rpm pgdg 4.2.3 129.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgagent_15-4.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgagent_15 pgagent_15-4.2.2-1.rhel8.aarch64.rpm pgdg 4.2.2 127.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgagent_15-4.2.2-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pgagent_15 pgagent_15-4.2.3-9PGDG.rhel9.8.x86_64.rpm pgdg 4.2.3 122.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgagent_15-4.2.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel9.x86_64.rpm pgdg 4.2.3 122.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgagent_15-4.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgagent_15 pgagent_15-4.2.2-1.rhel9.x86_64.rpm pgdg 4.2.2 119.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgagent_15-4.2.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pgagent_15 pgagent_15-4.2.3-9PGDG.rhel9.8.aarch64.rpm pgdg 4.2.3 118.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgagent_15-4.2.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel9.aarch64.rpm pgdg 4.2.3 118.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgagent_15-4.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgagent_15 pgagent_15-4.2.2-1.rhel9.aarch64.rpm pgdg 4.2.2 114.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgagent_15-4.2.2-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pgagent_15 pgagent_15-4.2.3-9PGDG.rhel10.2.x86_64.rpm pgdg 4.2.3 127.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgagent_15-4.2.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel10.x86_64.rpm pgdg 4.2.3 126.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgagent_15-4.2.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgagent_15 pgagent_15-4.2.3-9PGDG.rhel10.2.aarch64.rpm pgdg 4.2.3 117.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgagent_15-4.2.3-9PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgagent_15 pgagent_15-4.2.3-1PGDG.rhel10.aarch64.rpm pgdg 4.2.3 116.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgagent_15-4.2.3-1PGDG.rhel10.aarch64.rpm
@ el8.x86_64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel8.x86_64.rpm pgdg 4.2.3 135.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgagent_14-4.2.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgagent_14 pgagent_14-4.2.2-1.rhel8.x86_64.rpm pgdg 4.2.2 133.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgagent_14-4.2.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pgagent_14 pgagent_14-4.2.1-1.rhel8.x86_64.rpm pgdg 4.2.1 153.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgagent_14-4.2.1-1.rhel8.x86_64.rpm
@ el8.aarch64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel8.aarch64.rpm pgdg 4.2.3 129.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgagent_14-4.2.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgagent_14 pgagent_14-4.2.2-1.rhel8.aarch64.rpm pgdg 4.2.2 127.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgagent_14-4.2.2-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pgagent_14 pgagent_14-4.2.3-9PGDG.rhel9.8.x86_64.rpm pgdg 4.2.3 122.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgagent_14-4.2.3-9PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel9.x86_64.rpm pgdg 4.2.3 122.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgagent_14-4.2.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgagent_14 pgagent_14-4.2.2-1.rhel9.x86_64.rpm pgdg 4.2.2 119.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgagent_14-4.2.2-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pgagent_14 pgagent_14-4.2.1-1.rhel9.x86_64.rpm pgdg 4.2.1 138.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgagent_14-4.2.1-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pgagent_14 pgagent_14-4.2.3-9PGDG.rhel9.8.aarch64.rpm pgdg 4.2.3 118.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgagent_14-4.2.3-9PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel9.aarch64.rpm pgdg 4.2.3 118.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgagent_14-4.2.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgagent_14 pgagent_14-4.2.2-1.rhel9.aarch64.rpm pgdg 4.2.2 114.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgagent_14-4.2.2-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pgagent_14 pgagent_14-4.2.3-9PGDG.rhel10.2.x86_64.rpm pgdg 4.2.3 127.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgagent_14-4.2.3-9PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel10.x86_64.rpm pgdg 4.2.3 126.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgagent_14-4.2.3-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgagent_14 pgagent_14-4.2.3-1PGDG.rhel10.aarch64.rpm pgdg 4.2.3 116.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgagent_14-4.2.3-1PGDG.rhel10.aarch64.rpm
{{< /pgext_matrix >}}


## Install

You can install `pgagent` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgagent;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgagent -v 18  # PG 18
pig ext install -y pgagent -v 17  # PG 17
pig ext install -y pgagent -v 16  # PG 16
pig ext install -y pgagent -v 15  # PG 15
pig ext install -y pgagent -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgagent_18       # PG 18
dnf install -y pgagent_17       # PG 17
dnf install -y pgagent_16       # PG 16
dnf install -y pgagent_15       # PG 15
dnf install -y pgagent_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgagent   # PG 18
apt install -y pgagent   # PG 17
apt install -y pgagent   # PG 16
apt install -y pgagent   # PG 15
apt install -y pgagent   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgagent;
```




## Usage

> [pgagent: A PostgreSQL job scheduler](https://www.pgadmin.org/docs/pgadmin4/development/pgagent.html)

pgAgent is a job scheduling agent for PostgreSQL, capable of running multi-step batch/shell scripts and SQL tasks on complex schedules. It runs as a daemon and stores job definitions in the database.

### Core Concepts

- **Job**: A named schedulable unit containing one or more steps and schedules
- **Step**: An individual action (SQL script or OS batch/shell command) within a job
- **Schedule**: Defines when a job runs, with cron-like flexibility

### Job Management via SQL

pgAgent stores its configuration in the `pgagent` schema. Jobs can be managed through pgAdmin or directly via SQL.

```sql
-- View all jobs
SELECT jobid, jobname, jobenabled, jobdesc
FROM pgagent.pga_job;

-- View job steps
SELECT jstid, jstjobid, jstname, jstenabled, jstkind, jstcode
FROM pgagent.pga_jobstep;

-- View job schedules
SELECT jscid, jscjobid, jscname, jscenabled,
       jscstart, jscend, jscminutes, jschours,
       jscweekdays, jscmonthdays, jscmonths
FROM pgagent.pga_schedule;

-- View job execution log
SELECT * FROM pgagent.pga_joblog
WHERE jlgjobid = 1 ORDER BY jlgstart DESC;

-- View step execution log
SELECT * FROM pgagent.pga_jobsteplog
WHERE jsljlgid IN (SELECT jlgid FROM pgagent.pga_joblog WHERE jlgjobid = 1)
ORDER BY jslstart DESC;
```

### Step Types

| Kind | Description |
|------|-------------|
| `s` | SQL script executed against a database |
| `b` | Batch/shell command executed on the OS |

### Schedule Fields

| Field | Description |
|-------|-------------|
| `jscstart` / `jscend` | Valid date range for the schedule |
| `jscminutes` | Boolean array[60]: which minutes to run |
| `jschours` | Boolean array[24]: which hours to run |
| `jscweekdays` | Boolean array[7]: which days of week |
| `jscmonthdays` | Boolean array[32]: which days of month |
| `jscmonths` | Boolean array[12]: which months |

### Security

The pgAgent daemon connects to the database using a stored connection string. Only database superusers or users granted appropriate privileges on the `pgagent` schema tables should manage jobs.
