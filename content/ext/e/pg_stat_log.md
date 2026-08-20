---
title: "pg_stat_log"
linkTitle: "pg_stat_log"
description: "Track cumulative PostgreSQL log message statistics by backend, database, user, level, and SQLSTATE."
weight: 6040
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/fabriziomello/pg_stat_log">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">fabriziomello/pg_stat_log</div>
    <div class="ext-card__desc">https://github.com/fabriziomello/pg_stat_log</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_stat_log`**](/ext/e/pg_stat_log) | `0.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6040  | [**`pg_stat_log`**](/ext/e/pg_stat_log) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pgelog`](/ext/e/pgelog) [`logerrors`](/ext/e/logerrors) [`pg_sqlog`](/ext/e/pg_sqlog) [`log_fdw`](/ext/e/log_fdw) [`pgaudit`](/ext/e/pgaudit) [`pgdisablelogerror`](/ext/e/pgdisablelogerror) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pg_tracing`](/ext/e/pg_tracing) [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) [`pgfr_record`](/ext/e/pgfr_record) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1` | {{< pgvers "18" >}} | `pg_stat_log` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1` | {{< pgvers "18" >}} | `pg_stat_log_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.1` | {{< pgvers "18" >}} | `postgresql-$v-stat-log` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.1 1 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el8.aarch64 | AVAIL PGDG 0.1 1 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.x86_64 | AVAIL PGDG 0.1 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el9.aarch64 | AVAIL PGDG 0.1 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.x86_64 | AVAIL PGDG 0.1 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| el10.aarch64 | AVAIL PGDG 0.1 3 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d12.aarch64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.x86_64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| d13.aarch64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.x86_64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u22.aarch64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.x86_64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u24.aarch64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.x86_64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
| u26.aarch64 | AVAIL PGDG 0.1 2 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 | N/A PGDG - 0 |
@ el8.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel8.10.x86_64.rpm pgdg 0.1 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_stat_log_18-0.1-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel8.10.aarch64.rpm pgdg 0.1 23.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_stat_log_18-0.1-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.8.x86_64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.7.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.6.x86_64.rpm pgdg 0.1 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_stat_log_18-0.1-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.8.aarch64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.7.aarch64.rpm pgdg 0.1 23.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel9.6.aarch64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_stat_log_18-0.1-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.2.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.1.x86_64.rpm pgdg 0.1 23.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.0.x86_64.rpm pgdg 0.1 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_stat_log_18-0.1-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.2.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.1.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_stat_log_18 pg_stat_log_18-0.1-1PGDG.rhel10.0.aarch64.rpm pgdg 0.1 23.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_stat_log_18-0.1-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg12+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg12+1_amd64.deb pgdg 0.1 42.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg12+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg12+1_arm64.deb pgdg 0.1 42.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg13+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg13+1_amd64.deb pgdg 0.1 42.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg13+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg13+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg22.04+1_amd64.deb pgdg 0.1 42.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg22.04+1_amd64.deb pgdg 0.1 42.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg22.04+1_arm64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg22.04+1_arm64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg24.04+1_amd64.deb pgdg 0.1 42.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg24.04+1_amd64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg24.04+1_arm64.deb pgdg 0.1 42.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg24.04+1_arm64.deb pgdg 0.1 42.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg26.04+1_amd64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg26.04+1_amd64.deb pgdg 0.1 42.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-2.pgdg26.04+1_arm64.deb pgdg 0.1 42.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-stat-log postgresql-18-stat-log_0.1-1.pgdg26.04+1_arm64.deb pgdg 0.1 42.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-stat-log/postgresql-18-stat-log_0.1-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_stat_log` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_stat_log;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_stat_log -v 18  # PG 18
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_stat_log_18       # PG 18
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-stat-log   # PG 18
```


**Preload**:

```bash
shared_preload_libraries = '$libdir/pg_stat_log';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_stat_log;
```




## Usage

Sources: [README](https://github.com/fabriziomello/pg_stat_log/blob/main/README.md), [SQL objects](https://github.com/fabriziomello/pg_stat_log/blob/main/pg_stat_log--0.1.sql), [control file](https://github.com/fabriziomello/pg_stat_log/blob/main/pg_stat_log.control)

`pg_stat_log` collects cumulative statistics about PostgreSQL log messages. It hooks into `emit_log_hook` and counts messages by backend type, database, user, severity, SQLSTATE, and SQLSTATE condition name.

### Enable

`pg_stat_log` requires PostgreSQL 18 or newer and must be preloaded:

```conf
shared_preload_libraries = 'pg_stat_log'
```

Restart PostgreSQL, then create the extension:

```sql
CREATE EXTENSION pg_stat_log;
```

### View Statistics

```sql
SELECT *
FROM pg_stat_log
ORDER BY count DESC;
```

The view exposes `backend_type`, `database_oid`, `database_name`, `user_oid`, `user_name`, `elevel`, `sqlerrcode`, `sqlerrcode_name`, and `count`.

### Common Queries

```sql
SELECT elevel, sqlerrcode, sqlerrcode_name, sum(count) AS total
FROM pg_stat_log
GROUP BY elevel, sqlerrcode, sqlerrcode_name
ORDER BY total DESC
LIMIT 10;

SELECT backend_type, elevel, sqlerrcode_name, count
FROM pg_stat_log
WHERE backend_type <> 'client backend'
ORDER BY count DESC;
```

### Reset And Capacity

```sql
SELECT pg_stat_log_reset();
SELECT * FROM pg_stat_log_info();
```

`pg_stat_log_info()` reports `max_entries`, `num_entries`, `n_dropped`, and `stats_reset`. Increase `pg_stat_log.max_entries` if `n_dropped` grows.

### Configuration

Settings include `pg_stat_log.enabled`, `pg_stat_log.min_error_level`, and `pg_stat_log.max_entries`.

`emit_log_hook` only sees messages that reach the server log. `log_min_messages` therefore acts as a floor for what can be counted.
