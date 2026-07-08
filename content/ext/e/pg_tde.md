---
title: "pg_tde"
linkTitle: "pg_tde"
description: "Percona pg_tde access method"
weight: 7500
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/percona/pg_tde">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">percona/pg_tde</div>
    <div class="ext-card__desc">https://github.com/percona/pg_tde</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tde`**](/ext/e/pg_tde) | `2.2` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7500  | [**`pg_tde`**](/ext/e/pg_tde) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pgsodium`](/ext/e/pgsodium) [`pgsmcrypto`](/ext/e/pgsmcrypto) [`pgcrypto`](/ext/e/pgcrypto) [`anon`](/ext/e/anon) [`pgcryptokey`](/ext/e/pgcryptokey) [`faker`](/ext/e/faker) [`sslutils`](/ext/e/sslutils) [`uuid-ossp`](/ext/e/uuid-ossp) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on percona postgres tde fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2` | {{< pgvers "18,17" >}} | `pg_tde` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17" >}} | `percona-postgresql$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.0` | {{< pgvers "18,17" >}} | `percona-postgresql-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
{{< /pgext_matrix >}}


## Install

You can install `pg_tde` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_tde;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_tde -v 18  # PG 18
pig ext install -y pg_tde -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y percona-postgresql18       # PG 18
dnf install -y percona-postgresql17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y percona-postgresql-18   # PG 18
apt install -y percona-postgresql-17   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_tde';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_tde;
```




## Usage

> [pg_tde: Transparent Data Encryption for PostgreSQL](https://github.com/percona/pg_tde)

`pg_tde` provides Transparent Data Encryption (TDE) at the file level, encrypting tuples, WAL, and indexes. It works with the `tde_heap` access method and supports keyringfile and external Key Management Systems (KMS).

```sql
CREATE EXTENSION pg_tde;
```

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'pg_tde'
```

### Setting Up a Key Provider

```sql
-- File-based key provider (database-level)
SELECT pg_tde_add_database_key_provider_file('file_keyring', '/path/to/keyring');

-- Or global-level key provider
SELECT pg_tde_add_global_key_provider_file('file_keyring', '/path/to/keyring');

-- Set the encryption key using a database key provider
SELECT pg_tde_set_key_using_database_key_provider('my_key', 'file_keyring');

-- Or using a global key provider
SELECT pg_tde_set_key_using_global_key_provider('my_key', 'file_keyring');
```

### Creating Encrypted Tables

```sql
CREATE TABLE sensitive_data (
    id serial PRIMARY KEY,
    secret text
) USING tde_heap;
```

All data in tables created with `USING tde_heap` is transparently encrypted on disk.

### Checking Encryption Status

```sql
SELECT pg_tde_is_encrypted('sensitive_data');
```

### Additional Functions

| Function | Description |
|----------|-------------|
| `pg_tde_add_database_key_provider_file(name, path)` | Add a file-based database key provider |
| `pg_tde_add_global_key_provider_file(name, path)` | Add a file-based global key provider |
| `pg_tde_add_database_key_provider_vault_v2(...)` | Add a HashiCorp Vault database key provider |
| `pg_tde_add_global_key_provider_vault_v2(...)` | Add a HashiCorp Vault global key provider |
| `pg_tde_set_key_using_database_key_provider(key, provider)` | Set encryption key via database provider |
| `pg_tde_set_key_using_global_key_provider(key, provider)` | Set encryption key via global provider |
| `pg_tde_is_encrypted(table)` | Check if a table is encrypted |

### Notes

- Works only with Percona Server for PostgreSQL 17+
- Encrypts tuples, WAL, and indexes
- Does not yet encrypt temporary files and statistics
