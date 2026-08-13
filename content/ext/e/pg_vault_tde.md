---
title: "pg_vault_tde"
linkTitle: "pg_vault_tde"
description: "Transparent Data Encryption for PostgreSQL through custom table and index access methods"
weight: 7510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/labmiriade/pg_vault_tde">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">labmiriade/pg_vault_tde</div>
    <div class="ext-card__desc">https://github.com/labmiriade/pg_vault_tde</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_vault_tde-1.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_vault_tde-1.7.0.tar.gz</div>
    <div class="ext-card__desc">pg_vault_tde-1.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vault_tde`**](/ext/e/pg_vault_tde) | `1.7.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7510  | [**`pg_vault_tde`**](/ext/e/pg_vault_tde) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_tde`](/ext/e/pg_tde) [`supabase_vault`](/ext/e/supabase_vault) [`pgsodium`](/ext/e/pgsodium) [`column_encrypt`](/ext/e/column_encrypt) [`pgcryptokey`](/ext/e/pgcryptokey) [`pgcrypto`](/ext/e/pgcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires PostgreSQL 17+, OpenSSL 3, libcurl, and shared_preload_libraries=pg_vault_tde; RPM excludes EL8; includes pg_dump_tde, pg_restore_tde, and pg_basebackup_tde.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "17,18" >}} | `pg_vault_tde` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17" >}} | `pg_vault_tde_$v` | `openssl-libs`, `libcurl` |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.0` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-vault-tde` | `libssl3 | libssl3t64`, `libcurl4 | libcurl4t64` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.7.0 1 | AVAIL PIGSTY 1.7.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el9.x86_64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 161.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vault_tde_18-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 158.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vault_tde_18-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 164.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vault_tde_18-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 159.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vault_tde_18-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 319.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 309.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 320.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 309.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 342.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 334.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 333.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 327.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~resolute_amd64.deb pigsty 1.7.0 332.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~resolute_arm64.deb pigsty 1.7.0 323.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.0-1PIGSTY~resolute_arm64.deb
@ el9.x86_64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.0-1PIGSTY.el9.x86_64.rpm pigsty 1.7.0 162.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vault_tde_17-1.7.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.0-1PIGSTY.el9.aarch64.rpm pigsty 1.7.0 158.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vault_tde_17-1.7.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.0-1PIGSTY.el10.x86_64.rpm pigsty 1.7.0 165.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vault_tde_17-1.7.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.0-1PIGSTY.el10.aarch64.rpm pigsty 1.7.0 159.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vault_tde_17-1.7.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~bookworm_amd64.deb pigsty 1.7.0 321.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~bookworm_arm64.deb pigsty 1.7.0 311.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~trixie_amd64.deb pigsty 1.7.0 323.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~trixie_arm64.deb pigsty 1.7.0 312.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~jammy_amd64.deb pigsty 1.7.0 384.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~jammy_arm64.deb pigsty 1.7.0 376.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~noble_amd64.deb pigsty 1.7.0 335.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~noble_arm64.deb pigsty 1.7.0 329.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~resolute_amd64.deb pigsty 1.7.0 334.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~resolute_arm64.deb pigsty 1.7.0 325.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_vault_tde` using `pig build`:

```bash
pig build pkg pg_vault_tde         # build RPM / DEB packages
```


## Install

You can install `pg_vault_tde` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_vault_tde;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_vault_tde -v 18  # PG 18
pig ext install -y pg_vault_tde -v 17  # PG 17
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_vault_tde_18       # PG 18
dnf install -y pg_vault_tde_17       # PG 17
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-vault-tde   # PG 18
apt install -y postgresql-17-pg-vault-tde   # PG 17
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_vault_tde';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_vault_tde;
```

## Usage

Sources:

- [pg_vault_tde 1.7.0 README](https://api.pgxn.org/src/pg_vault_tde/pg_vault_tde-1.7.0/README.md)
- [pg_vault_tde v1.7.0 release](https://github.com/labmiriade/pg_vault_tde/releases/tag/v1.7.0)
- [pg_vault_tde 1.7 control file](https://api.pgxn.org/src/pg_vault_tde/pg_vault_tde-1.7.0/pg_vault_tde.control)
- [pg_vault_tde operator documentation](https://api.pgxn.org/src/pg_vault_tde/pg_vault_tde-1.7.0/doc/pg_vault_tde.md)

`pg_vault_tde` adds transparent tuple encryption for PostgreSQL 17 and 18 through the `encrypted_heap` table access method. It encrypts user-column data with AES-256-GCM before storage and manages per-relation data-encryption keys through HashiCorp Vault/OpenBao, a local PKCS#12 wallet, or—in v1.7—a PKCS#11 HSM. MVCC tuple headers remain plaintext.

### Configure and Install

```conf
shared_preload_libraries = 'pg_vault_tde'
pg_vault_tde.kms_provider = 'vault'
pg_vault_tde.vault_url = 'https://vault.example.com:8200'
pg_vault_tde.vault_transit_mount = 'transit'
pg_vault_tde.vault_key_name = 'pg-tde-dek'
pg_vault_tde.vault_ca_cert = '/etc/ssl/vault/ca.pem'
```

Configure Vault authentication through the documented token, AppRole, or Kubernetes settings without committing secrets to PostgreSQL configuration. Restart PostgreSQL, then create the extension:

```sql
CREATE EXTENSION pg_vault_tde;
SELECT * FROM pg_vault_tde_health_check();
```

`kms_provider` has no usable default and must be set explicitly. The extension requires OpenSSL 3 and libcurl in addition to PostgreSQL server files.

### Create an Encrypted Table

```sql
CREATE TABLE customer_secrets (
  id bigint GENERATED ALWAYS AS IDENTITY NOT NULL,
  email text,
  ssn text
) USING encrypted_heap;
```

Encryption is table-level: ordinary `heap` tables are unchanged. Tuple values, TOAST data, and WAL representations are encrypted; tuple headers required for MVCC remain visible.

### Indexes

Use `tde_btree` for equality lookup without storing plaintext keys:

```sql
CREATE UNIQUE INDEX customer_secrets_id_tde_idx
ON customer_secrets USING tde_btree (id);

CREATE INDEX customer_secrets_email_tde_idx
ON customer_secrets USING tde_btree (email);
```

`tde_btree` uses deterministic AES-256-SIV and supports equality, not range ordering or index-only scans. Other access methods on an `encrypted_heap` table are rejected by default because they would write plaintext index keys. `PRIMARY KEY` and `UNIQUE` table constraints still create native btree indexes and produce a warning; decide whether that exposure is acceptable before defining them.

### Integrity and Rotation

```sql
SELECT * FROM pg_vault_tde_verify_integrity('customer_secrets');
SELECT * FROM pg_vault_tde_encrypted_size('customer_secrets');

SELECT pg_vault_tde_rotate_online('customer_secrets', 1000);
SELECT * FROM pg_vault_tde_get_rotation_status('customer_secrets');

SELECT pg_vault_tde_rotate_kek();
```

Online DEK rotation re-encrypts a table in batches and rebuilds its `tde_btree` indexes. KEK rotation re-wraps per-table DEKs without rewriting tuples. Restrict these operations, monitor completion, and avoid concurrent key-catalog restoration.

### Provider and Backup Boundaries

- The local wallet defaults outside `PGDATA`; copy and protect it separately because plain `pg_basebackup` does not include it.
- Version 1.7 adds the `pkcs11` provider and `pg_vault_tde_pkcs11_keygen()`. The standalone `pg_dump_tde` and `pg_restore_tde` tools do not support PKCS#11 in this release.
- Plain `pg_dump` and `COPY ... TO` read decrypted rows and therefore produce plaintext without a warning. Use the supplied encrypted logical-backup tools where supported.
- Physical backups contain encrypted relation bytes and wrapped DEKs, but not the KEK. Provision access to the Vault/HSM or copy the local wallet separately. The key-sealing functions and `pg_basebackup_tde` wrapper can accompany a physical backup with a tamper-evident DEK bundle.

### Critical Caveats

- Never toggle `pg_vault_tde.enabled` while an `encrypted_heap` table contains rows written under the other setting. The extension does not rewrite existing rows and mixed formats can be silently misread as corruption.
- Ordinary indexes, statistics, logs, query results, client traffic, temporary work, and backups can expose plaintext outside the encrypted heap. TDE is one storage-layer control, not end-to-end encryption.
- `tde_btree` disables range semantics, and encrypted tables disable HOT updates in the current design; benchmark update-heavy workloads and index maintenance.
- Keep KMS credentials, wallet passphrases, HSM PINs, KEKs, sealed bundles, and restore procedures under separate access controls. A backup without the matching key path is unrecoverable.
- Package release 1.7.0 installs SQL extension version `1.7`, is not relocatable, requires preloading and a restart, and supports PostgreSQL 17-18 only.
