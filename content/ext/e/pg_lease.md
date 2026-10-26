---
title: "pg_lease"
linkTitle: "pg_lease"
description: "SQL leases with TTL expiry and monotonically increasing fencing epochs"
weight: 4145
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://pgxn.org/dist/pg_lease/0.1.0/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://pgxn.org/dist/pg_lease/0.1.0/</div>
    <div class="ext-card__desc">https://pgxn.org/dist/pg_lease/0.1.0/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_lease-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_lease-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_lease-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_lease`**](/ext/e/pg_lease) | `0.1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4145  | [**`pg_lease`**](/ext/e/pg_lease) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `lease` |
{.ext-table}

| **Related** | [`pglock`](/ext/e/pglock) [`pg_retry`](/ext/e/pg_retry) [`pgmq`](/ext/e/pgmq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PGXN testing release. Requires PG14+; upstream tests PG14/15, local EL9 aarch64 regression and isolation tests pass PG14-18. No failover fencing guarantee; owner strings are application identities. PGXN-listed GitHub repository azghr/pg-primitive returned 404 on 2026-10-23; PGXN hosts the verified source.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_lease` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "14,15,16,17,18" >}} | `pg_lease_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 | AVAIL PIGSTY 0.1.0 1 |
| d12.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lease_18-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lease_18-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lease_18-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lease_18-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lease_18-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_lease_18 pg_lease_18-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lease_18-0.1.0-1PGSTY.el10.noarch.rpm
@ el8.x86_64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lease_17-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lease_17-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lease_17-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lease_17-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lease_17-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_lease_17 pg_lease_17-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lease_17-0.1.0-1PGSTY.el10.noarch.rpm
@ el8.x86_64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lease_16-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lease_16-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lease_16-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lease_16-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lease_16-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_lease_16 pg_lease_16-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lease_16-0.1.0-1PGSTY.el10.noarch.rpm
@ el8.x86_64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lease_15-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lease_15-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lease_15-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lease_15-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lease_15-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_lease_15 pg_lease_15-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lease_15-0.1.0-1PGSTY.el10.noarch.rpm
@ el8.x86_64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_lease_14-0.1.0-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el8.noarch.rpm pigsty 0.1.0 23.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_lease_14-0.1.0-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_lease_14-0.1.0-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el9.noarch.rpm pigsty 0.1.0 22.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_lease_14-0.1.0-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_lease_14-0.1.0-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_lease_14 pg_lease_14-0.1.0-1PGSTY.el10.noarch.rpm pigsty 0.1.0 22.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_lease_14-0.1.0-1PGSTY.el10.noarch.rpm
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_lease` using `pig build`:

```bash
pig build pkg pg_lease         # build RPM packages
```


## Install

You can install `pg_lease` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_lease;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_lease -v 18  # PG 18
pig ext install -y pg_lease -v 17  # PG 17
pig ext install -y pg_lease -v 16  # PG 16
pig ext install -y pg_lease -v 15  # PG 15
pig ext install -y pg_lease -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_lease_18       # PG 18
dnf install -y pg_lease_17       # PG 17
dnf install -y pg_lease_16       # PG 16
dnf install -y pg_lease_15       # PG 15
dnf install -y pg_lease_14       # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_lease;
```

## Usage

Sources:

- [PGXN 0.1.0](https://pgxn.org/dist/pg_lease/0.1.0/)
- [Official README](https://api.pgxn.org/src/pg_lease/pg_lease-0.1.0/README.md)
- [Extension SQL](https://api.pgxn.org/src/pg_lease/pg_lease-0.1.0/sql/pg_lease--0.1.0.sql)
- [Control file](https://api.pgxn.org/src/pg_lease/pg_lease-0.1.0/pg_lease.control)

`pg_lease` provides expiring ownership of named resources with increasing fencing epochs. It is a pure SQL/PL/pgSQL extension with lazy expiry, no background worker, and no preload requirement. Version 0.1.0 is marked testing on PGXN; upstream requires PostgreSQL 14 or later and documents its compatibility tests on PostgreSQL 14 and 15.

### Core Workflow

The extension is trusted: a role with CREATE privilege on the database can install it. It creates the fixed `lease` schema and is not relocatable.

```sql
CREATE EXTENSION pg_lease;

SELECT acquired, epoch, expires_at
FROM lease.acquire('job-42', 'worker-a', interval '30 seconds');

SELECT status, expires_at
FROM lease.renew('job-42', 'worker-a', 1, interval '30 seconds');

SELECT status FROM lease.release('job-42', 'worker-a', 1);
SELECT held, owner, epoch, expires_at FROM lease.inspect('job-42');
```

The example uses the first epoch, 1. Applications must pass the epoch actually returned by acquisition to later renewal, release, and external resource guards. A successful release advances the epoch; re-acquisition must use the newly returned value.

### Operations

| Operation | Behavior |
|---|---|
| `lease.acquire(key, owner, ttl, wait)` | Acquires a free or expired key. The optional wait defaults to zero; a busy key returns a denial. Positive waits poll until acquisition or timeout. |
| `lease.renew(key, owner, epoch, ttl)` | Extends an active lease without changing its epoch. |
| `lease.release(key, owner, epoch)` | Releases an active lease and advances its epoch. |
| `lease.inspect(key)` | Observes ownership, expiry, and the current fencing counter; an unknown key returns no rows. |

Renewal and release return `ok`, `not_owner`, `lapsed`, or `epoch_mismatch`. Invalid inputs raise SQLSTATE `22023`; an exhausted blocking wait raises `57014`. Re-acquiring an unexpired lease with the same owner is idempotent and does not extend its expiry.

### Transactions and Boundaries

Use READ COMMITTED for blocking acquisition. State changes follow the caller's transaction and are undone by rollback. Expiry follows the database server's clock; session termination does not release a lease immediately. The functions use `SECURITY DEFINER` with a fixed search path; direct public access to `lease.leases` is revoked.

Owner strings are application-supplied identifiers, not authenticated database identities. Applications must control access to the lease API and enforce fencing epochs at the resource being protected. The extension provides no safety guarantee across primary promotion or independent databases. Dropping the extension destroys lease state and resets the epoch history on reinstallation; version 0.1.0 does not register its lease table for extension configuration dumps.
