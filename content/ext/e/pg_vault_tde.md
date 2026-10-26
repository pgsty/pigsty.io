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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_vault_tde-1.7.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_vault_tde-1.7.2.tar.gz</div>
    <div class="ext-card__desc">pg_vault_tde-1.7.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_vault_tde`**](/ext/e/pg_vault_tde) | `1.7.2` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7510  | [**`pg_vault_tde`**](/ext/e/pg_vault_tde) | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_tde`](/ext/e/pg_tde) [`supabase_vault`](/ext/e/supabase_vault) [`pgsodium`](/ext/e/pgsodium) [`column_encrypt`](/ext/e/column_encrypt) [`pgcryptokey`](/ext/e/pgcryptokey) [`pgcrypto`](/ext/e/pgcrypto) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> pkg 1.7.2; SQL 1.7; PG17+, OpenSSL 3/no EL8; preload; export 1.7.0 encrypted TOAST with old binary; rewrite encrypted tables; coordinate custom WAL 128->161 on primary/standbys.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.2` | {{< pgvers "17,18" >}} | `pg_vault_tde` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.2` | {{< pgvers "18,17" >}} | `pg_vault_tde_$v` | `openssl-libs`, `libcurl` |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7.2` | {{< pgvers "18,17" >}} | `postgresql-$v-pg-vault-tde` | `libssl3 | libssl3t64`, `libcurl4 | libcurl4t64` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.7.2 1 | AVAIL PIGSTY 1.7.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el9.x86_64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.2-1PGSTY.el9.x86_64.rpm pigsty 1.7.2 424.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vault_tde_18-1.7.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.2-1PGSTY.el9.aarch64.rpm pigsty 1.7.2 416.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vault_tde_18-1.7.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.2-1PGSTY.el10.x86_64.rpm pigsty 1.7.2 427.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vault_tde_18-1.7.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_vault_tde_18 pg_vault_tde_18-1.7.2-1PGSTY.el10.aarch64.rpm pigsty 1.7.2 418.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vault_tde_18-1.7.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~bookworm_amd64.deb pigsty 1.7.2 425.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~bookworm_arm64.deb pigsty 1.7.2 411.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~trixie_amd64.deb pigsty 1.7.2 426.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~trixie_arm64.deb pigsty 1.7.2 412.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~jammy_amd64.deb pigsty 1.7.2 446.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~jammy_arm64.deb pigsty 1.7.2 435.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~noble_amd64.deb pigsty 1.7.2 434.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~noble_arm64.deb pigsty 1.7.2 426.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~resolute_amd64.deb pigsty 1.7.2 432.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-vault-tde postgresql-18-pg-vault-tde_1.7.2-1PGSTY~resolute_arm64.deb pigsty 1.7.2 423.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-18-pg-vault-tde_1.7.2-1PGSTY~resolute_arm64.deb
@ el9.x86_64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.2-1PGSTY.el9.x86_64.rpm pigsty 1.7.2 426.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_vault_tde_17-1.7.2-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.2-1PGSTY.el9.aarch64.rpm pigsty 1.7.2 417.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_vault_tde_17-1.7.2-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.2-1PGSTY.el10.x86_64.rpm pigsty 1.7.2 428.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_vault_tde_17-1.7.2-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_vault_tde_17 pg_vault_tde_17-1.7.2-1PGSTY.el10.aarch64.rpm pigsty 1.7.2 420.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_vault_tde_17-1.7.2-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~bookworm_amd64.deb pigsty 1.7.2 426.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~bookworm_arm64.deb pigsty 1.7.2 413.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~trixie_amd64.deb pigsty 1.7.2 427.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~trixie_arm64.deb pigsty 1.7.2 413.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~jammy_amd64.deb pigsty 1.7.2 491.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~jammy_arm64.deb pigsty 1.7.2 483.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~noble_amd64.deb pigsty 1.7.2 436.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~noble_arm64.deb pigsty 1.7.2 428.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~resolute_amd64.deb pigsty 1.7.2 433.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-vault-tde postgresql-17-pg-vault-tde_1.7.2-1PGSTY~resolute_arm64.deb pigsty 1.7.2 424.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-vault-tde/postgresql-17-pg-vault-tde_1.7.2-1PGSTY~resolute_arm64.deb
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

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_vault_tde;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_vault_tde -v 18  # PG 18
pig ext install -y pg_vault_tde -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_vault_tde_18       # PG 18
dnf install -y pg_vault_tde_17       # PG 17
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-vault-tde   # PG 18
apt install -y postgresql-17-pg-vault-tde   # PG 17
```


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

- [pg_vault_tde.control](https://github.com/labmiriade/pg_vault_tde/blob/2520a0d80fc3c4d905f57e47e2d871ed7e6b0e7d/pg_vault_tde.control)
- [README.md](https://github.com/labmiriade/pg_vault_tde/blob/2520a0d80fc3c4d905f57e47e2d871ed7e6b0e7d/README.md)
- [doc/pg_vault_tde.md](https://github.com/labmiriade/pg_vault_tde/blob/2520a0d80fc3c4d905f57e47e2d871ed7e6b0e7d/doc/pg_vault_tde.md)

`pg_vault_tde` distribution 1.7.2 encrypts table values with AES-256-GCM through `encrypted_heap`, using Vault/OpenBao, a local PKCS#12 wallet or PKCS#11. SQL/control version remains 1.7. PostgreSQL 17–18, OpenSSL 3 and libcurl are required. Configure the key provider and authentication, preload the library, and restart before creating it as a superuser.

### Core Workflow

```ini
shared_preload_libraries = 'pg_vault_tde'
```

```sql
CREATE EXTENSION pg_vault_tde;
SELECT * FROM pg_vault_tde_health_check();
CREATE TABLE customer_secrets (id bigint, secret text) USING encrypted_heap;
CREATE INDEX customer_secrets_id_idx ON customer_secrets USING tde_btree (id);
```

### Operational Boundaries

This example assumes a configured provider. `pg_vault_tde_health_check`, `pg_vault_tde_verify_integrity`, `pg_vault_tde_get_rotation_status` and encrypted-size helpers expose operational state. `tde_btree` supports encrypted equality lookup, not ordering/range or index-only scans. Numeric and nondeterministic-collation encrypted indexes are unsupported; audit old unique/exclusion constraints because their checks may be ineffective. Plain indexes can expose keys, and pg_dump/COPY produce decrypted output. Protect external wallets/KMS and use the matching encrypted-backup tools where supported. Tuple headers, statistics, logs and query results are outside this protection.

Before replacing an older library or restarting, follow the upstream recovery checklist: earlier rotated tables may depend on keys held only in memory; concurrent rotation may require copying data while still readable, and rotated out-of-line values need the specified rewrite. Version 1.7.0 TOAST upgrades also have a separate export requirement. Check rotated/partial indexes and wallet ownership. After upgrading to 1.7.2, every pre-existing encrypted table needs VACUUM FULL to migrate its tuple layout; reserve a maintenance window and extra disk space. When `pg_vault_tde.toast_custom_rmgr` is enabled, the WAL ID changes from 128 to 161: clean shutdown, coordinated primary/standby upgrade, slot drainage and a new base backup are required. There is no rolling upgrade across those WAL formats.

Run key-management operations one at a time. Table rotation keeps reads available but blocks writes for one transaction; logical slots must decode the rotation before a restart or another rotation. Version 1.7.2 tightens caller privileges, but upstream documents remaining SECURITY DEFINER wrapper limitations; follow the listed grants/revokes. Do not toggle `pg_vault_tde.enabled` on a populated encrypted table. These catalog updates do not perform an operational upgrade or change the Pigsty package baseline.
