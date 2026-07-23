---
title: "pg_retry"
linkTitle: "pg_retry"
description: "Retry SQL statements on transient errors with exponential backoff"
weight: 4100
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/Agent-Hellboy/pg_retry">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">Agent-Hellboy/pg_retry</div>
    <div class="ext-card__desc">https://github.com/Agent-Hellboy/pg_retry</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_retry-1.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_retry-1.0.0.tar.gz</div>
    <div class="ext-card__desc">pg_retry-1.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_retry`**](/ext/e/pg_retry) | `1.0.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4100  | [**`pg_retry`**](/ext/e/pg_retry) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17" >}} | `pg_retry` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17" >}} | `pg_retry_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0.0` | {{< pgvers "18,17" >}} | `postgresql-$v-retry` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.0.0 1 | AVAIL PIGSTY 1.0.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_retry_18-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_retry_18-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_retry_18-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_retry_18-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_retry_18-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_retry_18 pg_retry_18-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_retry_18-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 20.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 20.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-retry postgresql-18-retry_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 20.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-retry/postgresql-18-retry_1.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_retry_17-1.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0.0 17.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_retry_17-1.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_retry_17-1.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0.0 17.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_retry_17-1.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_retry_17-1.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_retry_17 pg_retry_17-1.0.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0.0 17.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_retry_17-1.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0.0 19.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0.0 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~trixie_amd64.deb pigsty 1.0.0 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~trixie_arm64.deb pigsty 1.0.0 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~jammy_amd64.deb pigsty 1.0.0 21.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~jammy_arm64.deb pigsty 1.0.0 21.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~noble_amd64.deb pigsty 1.0.0 20.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~noble_arm64.deb pigsty 1.0.0 20.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~resolute_amd64.deb pigsty 1.0.0 20.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-retry postgresql-17-retry_1.0.0-1PIGSTY~resolute_arm64.deb pigsty 1.0.0 20.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-retry/postgresql-17-retry_1.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_retry` using `pig build`:

```bash
pig build pkg pg_retry         # build RPM / DEB packages
```


## Install

You can install `pg_retry` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_retry;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_retry -v 18  # PG 18
pig ext install -y pg_retry -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_retry_18       # PG 18
dnf install -y pg_retry_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-retry   # PG 18
apt install -y postgresql-17-retry   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_retry;
```




## Usage

> [pg_retry: Retry SQL statements on transient errors with exponential backoff](https://github.com/Agent-Hellboy/pg_retry)

### Function Signature

```sql
retry.retry(
  sql TEXT,                          -- SQL statement to run (exactly one)
  max_tries INT DEFAULT 3,           -- total attempts (1 + retries), >= 1
  base_delay_ms INT DEFAULT 50,      -- initial backoff delay in ms
  max_delay_ms INT DEFAULT 1000,     -- cap for exponential backoff
  retry_sqlstates TEXT[] DEFAULT ARRAY['40001','40P01','55P03','57014']
) RETURNS INT                       -- number of rows processed
```

Default retryable SQLSTATEs: `40001` (serialization_failure), `40P01` (deadlock_detected), `55P03` (lock_not_available), `57014` (query_canceled).

### Examples

Basic retry with defaults:

```sql
SELECT retry.retry('UPDATE accounts SET balance = balance - 100 WHERE id = 1');
```

Custom retry parameters:

```sql
SELECT retry.retry(
    'INSERT INTO audit_log (event) VALUES (''test'')',
    5,      -- max_tries
    100,    -- base_delay_ms
    5000    -- max_delay_ms
);
```

### GUC Configuration

```sql
ALTER SYSTEM SET pg_retry.default_max_tries = 5;
ALTER SYSTEM SET pg_retry.default_base_delay_ms = 100;
ALTER SYSTEM SET pg_retry.default_max_delay_ms = 5000;
ALTER SYSTEM SET pg_retry.default_sqlstates = '40001,40P01,55P03,57014';
SELECT pg_reload_conf();
```

### Safety Rules

- Only one SQL statement per call (multi-statement fails)
- Transaction control statements (BEGIN, COMMIT, ROLLBACK) are prohibited
- Parameters are validated (max_tries >= 1, non-negative delays, base <= max delay)
