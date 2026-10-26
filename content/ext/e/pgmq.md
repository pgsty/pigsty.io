---
title: "pgmq"
linkTitle: "pgmq"
description: "A lightweight message queue. Like AWS SQS and RSMQ but on Postgres."
weight: 2660
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgmq/pgmq">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgmq/pgmq</div>
    <div class="ext-card__desc">https://github.com/pgmq/pgmq</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmq-1.13.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmq-1.13.1.tar.gz</div>
    <div class="ext-card__desc">pgmq-1.13.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmq`**](/ext/e/pgmq) | `1.13.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2660  | [**`pgmq`**](/ext/e/pgmq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgmq` |
{.ext-table}

| **Related** | [`redis`](/ext/e/redis) [`pgmb`](/ext/e/pgmb) [`ulak`](/ext/e/ulak) [`redis_fdw`](/ext/e/redis_fdw) [`pg_durable`](/ext/e/pg_durable) [`pgq`](/ext/e/pgq) [`tcn`](/ext/e/tcn) [`pgmqtt`](/ext/e/pgmqtt) [`pgmemcache`](/ext/e/pgmemcache) [`fsm_core`](/ext/e/fsm_core) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`fsm_core`](/ext/e/fsm_core) [`pg_later`](/ext/e/pg_later) [`vectorize`](/ext/e/vectorize) |
{.ext-table .ext-table--rel}


> SQL-only. 1.13.1 hardens search_path and removes pg_monitor access to message payloads; run ALTER EXTENSION UPDATE and inspect privilege-revocation warnings. Also fixes mixed-case queue notifications.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmq` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmq_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.13.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmq` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 |
| el8.aarch64 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 | AVAIL PIGSTY 1.13.1 7 |
| el9.x86_64 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 |
| el9.aarch64 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 |
| el10.x86_64 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 |
| el10.aarch64 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 | AVAIL PIGSTY 1.13.1 10 |
| d12.x86_64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 | AVAIL PIGSTY 1.13.1 1 |
@ el8.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_18-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el8.x86_64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_18-1.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_18-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el8.aarch64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_18-1.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_18-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el9.x86_64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_18-1.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_18-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el9.aarch64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_18-1.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_18-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el10.x86_64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_18-1.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 43.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_18-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PIGSTY.el10.aarch64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_18-1.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-18-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_17-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el8.x86_64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_17-1.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_17-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el8.aarch64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_17-1.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_17-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el9.x86_64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_17-1.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_17-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el9.aarch64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_17-1.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_17-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el10.x86_64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_17-1.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 43.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_17-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PIGSTY.el10.aarch64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_17-1.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-17-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_16-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el8.x86_64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_16-1.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_16-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el8.aarch64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_16-1.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_16-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el9.x86_64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_16-1.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_16-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el9.aarch64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_16-1.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_16-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el10.x86_64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_16-1.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 43.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_16-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PIGSTY.el10.aarch64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_16-1.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-16-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_15-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el8.x86_64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_15-1.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_15-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el8.aarch64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_15-1.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_15-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el9.x86_64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_15-1.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_15-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el9.aarch64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_15-1.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_15-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el10.x86_64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_15-1.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_15-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PIGSTY.el10.aarch64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_15-1.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-15-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_14-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el8.x86_64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_14-1.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el8.noarch.rpm pigsty 1.13.1 51.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_14-1.13.1-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.1 64.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.13.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.13.0 58.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.13.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el8.aarch64.rpm pigsty 1.12.0 43.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_14-1.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.12.0 55.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.12.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_14-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el9.x86_64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_14-1.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el9.noarch.rpm pigsty 1.13.1 48.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_14-1.13.1-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.1 61.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.13.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.13.0 55.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.13.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el9.aarch64.rpm pigsty 1.12.0 41.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_14-1.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel9.8.noarch.rpm pgdg 1.12.0 53.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.12.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel9.7.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.11.0-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel9.6.noarch.rpm pgdg 1.11.0 51.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.11.0-1PGDG.rhel9.6.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel9.7.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.10.1-1PGDG.rhel9.7.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel9.6.noarch.rpm pgdg 1.10.1 42.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.10.1-1PGDG.rhel9.6.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_14-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el10.x86_64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_14-1.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 43.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGSTY.el10.noarch.rpm pigsty 1.13.1 48.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_14-1.13.1-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.13.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.1 61.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.13.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.13.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.13.0 55.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.13.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PIGSTY.el10.aarch64.rpm pigsty 1.12.0 41.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_14-1.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.12.0-1PGDG.rhel10.2.noarch.rpm pgdg 1.12.0 53.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.12.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel10.1.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.11.0-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel10.0.noarch.rpm pgdg 1.11.0 51.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.11.0-1PGDG.rhel10.0.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel10.1.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.10.1-1PGDG.rhel10.1.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel10.0.noarch.rpm pgdg 1.10.1 42.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.10.1-1PGDG.rhel10.0.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~bookworm_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~trixie_all.deb pigsty 1.13.1 32.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~jammy_all.deb pigsty 1.13.1 33.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~noble_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.13.1-1PGSTY~resolute_all.deb pigsty 1.13.1 33.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-14-pgmq_1.13.1-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgmq` using `pig build`:

```bash
pig build pkg pgmq         # build RPM / DEB packages
```


## Install

You can install `pgmq` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgmq;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgmq -v 18  # PG 18
pig ext install -y pgmq -v 17  # PG 17
pig ext install -y pgmq -v 16  # PG 16
pig ext install -y pgmq -v 15  # PG 15
pig ext install -y pgmq -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgmq_18       # PG 18
dnf install -y pgmq_17       # PG 17
dnf install -y pgmq_16       # PG 16
dnf install -y pgmq_15       # PG 15
dnf install -y pgmq_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgmq   # PG 18
apt install -y postgresql-17-pgmq   # PG 17
apt install -y postgresql-16-pgmq   # PG 16
apt install -y postgresql-15-pgmq   # PG 15
apt install -y postgresql-14-pgmq   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pgmq;
```

## Usage

Sources:

- [Official source](https://github.com/pgmq/pgmq/blob/8eab18272e50077ab9f72d9787296655f2849dcc/README.md)
- [Official source](https://github.com/pgmq/pgmq/blob/8eab18272e50077ab9f72d9787296655f2849dcc/pgmq-extension/pgmq.control)
- [Official source](https://github.com/pgmq/pgmq/blob/8eab18272e50077ab9f72d9787296655f2849dcc/pgmq-extension/sql/pgmq--1.13.0--1.13.1.sql)
- [Official source](https://github.com/pgmq/pgmq/releases/tag/v1.13.1)

pgmq implements durable message queues as PostgreSQL tables and SQL functions. It supports delayed delivery, visibility timeouts, FIFO groups, message headers, polling, topics, and archival. Use it when queue transactions should be coordinated with relational changes in the same database.

### Create a Queue and Send

    CREATE EXTENSION pgmq;
    SELECT pgmq.create('jobs');

    SELECT *
    FROM pgmq.send(
      queue_name => 'jobs',
      msg        => '{"task":"refresh"}'::jsonb,
      delay      => 0
    );

send returns the message identifier. send_batch inserts multiple JSONB messages. Headers can carry routing or tracing metadata separately from the body where the selected overload supports them.

### Read with a Visibility Timeout

    SELECT *
    FROM pgmq.read(
      queue_name => 'jobs',
      vt         => 30,
      qty        => 10
    );

Reading hides each message for vt seconds. On success, delete or archive it:

    SELECT pgmq.delete('jobs', 42);
    SELECT pgmq.archive('jobs', 43);

If processing fails or the consumer disappears, an unacknowledged message becomes visible again. Consumers must therefore be idempotent; pgmq does not make arbitrary application side effects globally exactly once.

pop reads and deletes immediately and is appropriate only when losing a message after the call is acceptable.

### FIFO Group Head Polling

Version 1.12.0 adds a polling read for the head message of multiple FIFO groups:

    SELECT *
    FROM pgmq.read_grouped_head_with_poll(
      queue_name          => 'jobs',
      vt                  => 30,
      qty                 => 10,
      max_poll_seconds    => 5,
      poll_interval_ms    => 100
    );

It selects head-of-group messages while polling for up to max_poll_seconds. This preserves per-group order while allowing different groups to be processed concurrently.

### Queue Administration Index

- pgmq.create(queue_name): create queue and archive structures.
- pgmq.send and pgmq.send_batch: enqueue JSONB messages, optionally delayed.
- pgmq.read: claim visible messages for a visibility timeout.
- pgmq.read_grouped_head_with_poll: poll FIFO group heads.
- pgmq.pop: read and immediately delete.
- pgmq.delete: acknowledge by removing a message.
- pgmq.archive: move a message to the queue archive table.
- pgmq.drop_queue: remove queue objects.
- pgmq.metrics and related helpers: inspect queue depth and age where available.

For queue jobs, archive rows are stored in pgmq.a_<queue_name>. Treat those tables as extension-managed objects.

### Operational Notes

- Set vt longer than normal processing time and design for redelivery after timeouts.
- Queue and archive tables consume ordinary PostgreSQL WAL, storage, vacuum, and backup capacity.
- Archive or delete completed messages and enforce an archive-retention policy.
- Long polling holds a database connection. Size connection pools and polling intervals for the number of consumers.
- Keep queue names within pgmq's identifier rules; call the API rather than constructing table names from untrusted input.

### 1.13.1 Upgrade and Security Fixes

After installing matching extension files, update each database using it:

```sql
ALTER EXTENSION pgmq UPDATE TO '1.13.1';
```

Version 1.13.1 fixes function `search_path` and qualifies internal objects to prevent same-name objects from influencing execution. `pg_monitor` no longer gets whole-message-table reads; monitoring access is limited to metadata, visibility/enqueue timestamps and message-id sequences. The upgrade also cleans existing and default grants. Revocation failures can be warnings rather than fatal errors, so inspect the upgrade log and verify the resulting grants. Mixed-case queue names also receive an insert-notification fix.

The extension is implemented in SQL and needs no preload; PostgreSQL privileges still govern queue creation and management. An upstream version update does not establish availability of updated Pigsty packages.
