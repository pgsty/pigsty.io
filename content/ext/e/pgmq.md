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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgmq-1.11.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgmq-1.11.1.tar.gz</div>
    <div class="ext-card__desc">pgmq-1.11.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgmq`**](/ext/e/pgmq) | `1.11.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2660  | [**`pgmq`**](/ext/e/pgmq) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgmq` |
{.ext-table}

| **Related** | [`kafka_fdw`](/ext/e/kafka_fdw) [`pg_task`](/ext/e/pg_task) [`pg_net`](/ext/e/pg_net) [`pg_background`](/ext/e/pg_background) [`pgagent`](/ext/e/pgagent) [`pg_jobmon`](/ext/e/pg_jobmon) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`fsm_core`](/ext/e/fsm_core) [`pg_later`](/ext/e/pg_later) [`vectorize`](/ext/e/vectorize) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmq` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `pgmq_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.11.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgmq` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 |
| el8.aarch64 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 | AVAIL PIGSTY 1.11.1 3 |
| el9.x86_64 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 |
| el9.aarch64 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 |
| el10.x86_64 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 |
| el10.aarch64 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 | AVAIL PIGSTY 1.11.1 2 |
| d12.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 | AVAIL PIGSTY 1.11.1 1 |
@ el8.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 42.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_18-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_18-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 18 pgmq_18 pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgmq_18-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_18-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_18-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgmq_18-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_18-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_18-1.11.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgmq_18 pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgmq_18-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgmq postgresql-18-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-18-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_17-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_17-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 17 pgmq_17 pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgmq_17-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_17-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_17-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgmq_17-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_17-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_17-1.11.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgmq_17 pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgmq_17-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 26.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 26.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgmq postgresql-17-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-17-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 42.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_16-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_16-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 16 pgmq_16 pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgmq_16-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_16-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_16-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgmq_16-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_16-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_16-1.11.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgmq_16 pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgmq_16-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgmq postgresql-16-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-16-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 42.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_15-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_15-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 15 pgmq_15 pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgmq_15-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_15-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_15-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgmq_15-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_15-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_15-1.11.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgmq_15 pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgmq_15-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgmq postgresql-15-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-15-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el8.x86_64.rpm pigsty 1.11.1 42.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgmq_14-1.11.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 54.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.x86_64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el8.aarch64.rpm pigsty 1.11.1 42.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgmq_14-1.11.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm pgdg 1.11.0 53.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.11.0-1PGDG.rhel8.10.noarch.rpm
@ el8.aarch64 14 pgmq_14 pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm pgdg 1.10.1 44.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgmq_14-1.10.1-1PGDG.rhel8.10.noarch.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el9.x86_64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgmq_14-1.11.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el9.aarch64.rpm pigsty 1.11.1 40.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgmq_14-1.11.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm pgdg 1.11.1 52.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgmq_14-1.11.1-1PGDG.rhel9.8.noarch.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el10.x86_64.rpm pigsty 1.11.1 40.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgmq_14-1.11.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PIGSTY.el10.aarch64.rpm pigsty 1.11.1 40.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgmq_14-1.11.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgmq_14 pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm pgdg 1.11.1 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgmq_14-1.11.1-1PGDG.rhel10.2.noarch.rpm
@ d12.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb pigsty 1.11.1 26.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb pigsty 1.11.1 27.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~noble_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~noble_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgmq postgresql-14-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb pigsty 1.11.1 26.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgmq/postgresql-14-pgmq_1.11.1-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgmq;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgmq -v 18  # PG 18
pig ext install -y pgmq -v 17  # PG 17
pig ext install -y pgmq -v 16  # PG 16
pig ext install -y pgmq -v 15  # PG 15
pig ext install -y pgmq -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgmq_18       # PG 18
dnf install -y pgmq_17       # PG 17
dnf install -y pgmq_16       # PG 16
dnf install -y pgmq_15       # PG 15
dnf install -y pgmq_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgmq   # PG 18
apt install -y postgresql-17-pgmq   # PG 17
apt install -y postgresql-16-pgmq   # PG 16
apt install -y postgresql-15-pgmq   # PG 15
apt install -y postgresql-14-pgmq   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgmq;
```




## Usage

> [pgmq: A lightweight message queue for PostgreSQL](https://github.com/pgmq/pgmq)

PGMQ is a lightweight message queue built on PostgreSQL, providing guaranteed "exactly once" delivery within a visibility timeout, FIFO queues, topic-based routing, and message archival.

```sql
CREATE EXTENSION pgmq;
```

### Create a Queue

```sql
SELECT pgmq.create('my_queue');
```

### Send Messages

```sql
-- Send a single message (returns msg_id)
SELECT * FROM pgmq.send(
  queue_name => 'my_queue',
  msg        => '{"foo": "bar"}'
);

-- Send with delay (invisible for 5 seconds)
SELECT * FROM pgmq.send(
  queue_name => 'my_queue',
  msg        => '{"foo": "bar"}',
  delay      => 5
);

-- Send a batch of messages
SELECT pgmq.send_batch(
  queue_name => 'my_queue',
  msgs       => ARRAY['{"a":1}','{"b":2}','{"c":3}']::jsonb[]
);
```

### Read Messages

Read messages and make them invisible for a visibility timeout (in seconds):

```sql
SELECT * FROM pgmq.read(
  queue_name => 'my_queue',
  vt         => 30,    -- visibility timeout in seconds
  qty        => 2      -- number of messages to read
);
```

### Pop a Message

Read and immediately delete a message:

```sql
SELECT * FROM pgmq.pop('my_queue');
```

### Delete a Message

```sql
SELECT pgmq.delete('my_queue', 6);
```

### Archive a Message

Move a message from the queue to the archive table for long-term retention:

```sql
SELECT pgmq.archive(queue_name => 'my_queue', msg_id => 2);

-- Archive multiple messages
SELECT pgmq.archive(queue_name => 'my_queue', msg_ids => ARRAY[3, 4, 5]);
```

Inspect archived messages:

```sql
SELECT * FROM pgmq.a_my_queue;
```

### Drop a Queue

```sql
SELECT pgmq.drop_queue('my_queue');
```

### Visibility Timeout

Messages become invisible after being read for the duration of the visibility timeout (`vt`). If not deleted or archived within that time, they become visible again for other consumers. Set `vt` greater than the expected processing time.

### Key Functions

| Function | Description |
|----------|-------------|
| `pgmq.create(queue_name)` | Create a new queue |
| `pgmq.send(queue_name, msg, [delay])` | Send a message |
| `pgmq.send_batch(queue_name, msgs)` | Send multiple messages |
| `pgmq.read(queue_name, vt, qty)` | Read messages with visibility timeout |
| `pgmq.pop(queue_name)` | Read and delete a message atomically |
| `pgmq.delete(queue_name, msg_id)` | Delete a message |
| `pgmq.archive(queue_name, msg_id/msg_ids)` | Archive message(s) |
| `pgmq.drop_queue(queue_name)` | Delete a queue |
