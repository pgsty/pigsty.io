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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/percona-pg_tde18-2.2.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">percona-pg_tde18-2.2.1.tar.gz</div>
    <div class="ext-card__desc">percona-pg_tde18-2.2.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_tde`**](/ext/e/pg_tde) | `2.2.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7500  | [**`pg_tde`**](/ext/e/pg_tde) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`column_encrypt`](/ext/e/column_encrypt) [`pg_enigma`](/ext/e/pg_enigma) [`supabase_vault`](/ext/e/supabase_vault) [`pgsodium`](/ext/e/pgsodium) [`pgcryptokey`](/ext/e/pgcryptokey) [`anon`](/ext/e/anon) [`pgcrypto`](/ext/e/pgcrypto) [`pgsmcrypto`](/ext/e/pgsmcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> works on percona postgres tde fork


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.2.1` | {{< pgvers "18" >}} | `pg_tde` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.4` | {{< pgvers "18" >}} | `pgtde-$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `18.4` | {{< pgvers "18" >}} | `pgtde-$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 18.4 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el8.x86_64.rpm pigsty 18.4 12.9MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgtde-18-18.4-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el8.aarch64.rpm pigsty 18.4 12.6MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgtde-18-18.4-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el9.x86_64.rpm pigsty 18.4 11.5MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgtde-18-18.4-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el9.aarch64.rpm pigsty 18.4 11.3MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgtde-18-18.4-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el10.x86_64.rpm pigsty 18.4 11.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgtde-18-18.4-2PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgtde-18 pgtde-18-18.4-2PIGSTY.el10.aarch64.rpm pigsty 18.4 11.4MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgtde-18-18.4-2PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~bookworm_amd64.deb pigsty 18.4 9.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~bookworm_arm64.deb pigsty 18.4 9.3MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~trixie_amd64.deb pigsty 18.4 9.9MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~trixie_arm64.deb pigsty 18.4 9.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~jammy_amd64.deb pigsty 18.4 11.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~jammy_arm64.deb pigsty 18.4 10.9MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~noble_amd64.deb pigsty 18.4 10.9MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~noble_amd64.deb
@ u24.aarch64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~noble_arm64.deb pigsty 18.4 10.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~noble_arm64.deb
@ u26.x86_64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~resolute_amd64.deb pigsty 18.4 11.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 pgtde-18 pgtde-18_18.4-2PIGSTY~resolute_arm64.deb pigsty 18.4 10.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgtde-18/pgtde-18_18.4-2PIGSTY~resolute_arm64.deb
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
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgtde-18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y pgtde-18   # PG 18
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

Sources:

- [pg_tde 2.2 setup](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/setup.md)
- [Key-provider and key-management functions](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/functions.md)
- [pg_tde 2.2.0 release notes](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/release-notes/release-notes-v2.2.0.md)
- [Transparent data encryption limitations](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/index/tde-limitations.md)
- [TDE table access method](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/index/table-access-method.md)
- [WAL encryption](https://github.com/percona/pg_tde/blob/2.2.0/documentation/docs/wal-encryption.md)

pg_tde provides transparent data encryption for Percona Server for PostgreSQL. It encrypts table data through the tde_heap access method and can encrypt WAL, with keys managed by file, HashiCorp Vault, or KMIP providers. It is not a drop-in extension for community PostgreSQL.

### Preload and Create the Extension

Add the library and restart the server:

    shared_preload_libraries = 'pg_tde'

Then enable pg_tde in every database that will use encrypted tables:

    CREATE EXTENSION pg_tde;

Run setup as a superuser or suitably privileged database owner. Upstream pg_tde 2.2 is tied to compatible Percona Server for PostgreSQL 17 or 18 builds; the 2.2.0 release notes warn that it is incompatible with Percona Distribution releases older than 17.10 and 18.4.

### Configure a Key Provider

Register a provider, then set a principal key. A local file provider is useful for evaluation:

    SELECT pg_tde_add_database_key_provider_file(
      'local-file',
      '/secure/path/pg_tde_keys'
    );

    SELECT pg_tde_set_principal_key(
      'app-principal-key',
      'local-file'
    );

For production, upstream recommends an external provider such as Vault or KMIP rather than the local-file provider. Protect provider credentials, key files, backups, and recovery procedures independently of the database files.

Provider management includes database- and server-global variants for file, Vault, and KMIP providers, plus functions to list, change, and delete providers and to inspect or rotate the principal key.

### Create and Convert Encrypted Tables

Create a table with the encrypted access method:

    CREATE TABLE customer_secrets (
      id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
      payload jsonb NOT NULL
    ) USING tde_heap;

Convert an existing table only after testing lock, rewrite, disk-space, and backup implications:

    ALTER TABLE customer_secrets SET ACCESS METHOD tde_heap;

Changing a table access method rewrites the table. Plan maintenance time and confirm indexes, replicas, backups, and restores on a staging copy.

### Enable WAL Encryption

WAL encryption is a separate server setting:

    pg_tde.wal_encrypt = on

Changing it requires a restart. Confirm that every primary, standby, backup, archive, and recovery host has the required provider configuration and key access before enabling it.

### Object Index

- tde_heap: encrypted table access method.
- pg_tde_add_database_key_provider_file/vault/kmip: database-scoped provider registration.
- pg_tde_add_global_key_provider_file/vault/kmip: server-global provider registration.
- pg_tde_set_principal_key and pg_tde_set_server_principal_key: select the key used to protect data-encryption keys.
- pg_tde_list_all_key_providers: inspect registered providers.
- pg_tde_change_key_provider_* and pg_tde_delete_key_provider: manage provider definitions.
- pg_tde.wal_encrypt: enable encryption of write-ahead log records.
- pg_tde_upgrade: upgrade helper introduced in the 2.2 line.

### Security and Recovery Boundaries

- pg_tde encrypts supported user-table storage, not every PostgreSQL artifact. System catalogs, planner statistics, and temporary spill files are among the documented exclusions.
- Upstream warns that pg_rewind and pg_tde_rewind between diverged nodes can corrupt a cluster. Follow the documented rebuild/recovery path instead of assuming ordinary rewind is safe.
- Starting recovery without pg_tde preloaded can corrupt encrypted data. Validate disaster-recovery automation with the library and keys present.
- Percona documents incompatibilities with Citus and TimescaleDB in Percona Server and limitations for several WAL-inspection and recovery tools.
- Encryption does not replace SQL privileges, TLS, host hardening, audit logging, or tested backups. Loss of keys can make otherwise intact backups unrecoverable.
