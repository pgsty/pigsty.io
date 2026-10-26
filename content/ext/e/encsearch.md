---
title: "encsearch"
linkTitle: "encsearch"
description: "Experimental encrypted text search using AEAD ciphers and keyed blind indexes"
weight: 7035
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/lokeshmulpuru/encsearch">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">lokeshmulpuru/encsearch</div>
    <div class="ext-card__desc">https://github.com/lokeshmulpuru/encsearch</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/encsearch-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">encsearch-0.1.1.tar.gz</div>
    <div class="ext-card__desc">encsearch-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`encsearch`**](/ext/e/encsearch) | `0.1.1` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7035  | [**`encsearch`**](/ext/e/encsearch) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}


> Early release 0.1.1 changes PGXN status to stable without code changes from 0.1.0; PG17 tested, other Cargo PG14-18 targets untested. Session preload must precede key settings; blind indexes leak equality and token frequency.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "17" >}} | `encsearch` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "17" >}} | `encsearch_$v` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | N/A PIGSTY - 0 | AVAIL PIGSTY 0.1.1 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
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
@ el8.x86_64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el8.x86_64.rpm pigsty 0.1.1 517.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/encsearch_17-0.1.1-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el8.aarch64.rpm pigsty 0.1.1 414.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/encsearch_17-0.1.1-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el9.x86_64.rpm pigsty 0.1.1 519.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/encsearch_17-0.1.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el9.aarch64.rpm pigsty 0.1.1 445.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/encsearch_17-0.1.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el10.x86_64.rpm pigsty 0.1.1 473.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/encsearch_17-0.1.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 encsearch_17 encsearch_17-0.1.1-1PGSTY.el10.aarch64.rpm pigsty 0.1.1 430.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/encsearch_17-0.1.1-1PGSTY.el10.aarch64.rpm
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `encsearch` using `pig build`:

```bash
pig build pkg encsearch         # build RPM packages
```


## Install

You can install `encsearch` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install encsearch;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y encsearch -v 17  # PG 17
```

```bash {tab="dnf" value="dnf"}
dnf install -y encsearch_17       # PG 17
```


**Preload**:

```bash
shared_preload_libraries = 'encsearch';
```


**Create Extension**:

```sql
CREATE EXTENSION encsearch;
```

## Usage

Sources:

- [README.md](https://github.com/lokeshmulpuru/encsearch/blob/cfa1a2af334ebbd4026a9f467c0ec40bed12a035/README.md)
- [src/lib.rs](https://github.com/lokeshmulpuru/encsearch/blob/cfa1a2af334ebbd4026a9f467c0ec40bed12a035/src/lib.rs)
- [Cargo.toml](https://github.com/lokeshmulpuru/encsearch/blob/cfa1a2af334ebbd4026a9f467c0ec40bed12a035/Cargo.toml)
- [META.json](https://github.com/lokeshmulpuru/encsearch/blob/cfa1a2af334ebbd4026a9f467c0ec40bed12a035/META.json)
- [encsearch.control](https://github.com/lokeshmulpuru/encsearch/blob/cfa1a2af334ebbd4026a9f467c0ec40bed12a035/encsearch.control)

`encsearch` stores encrypted text alongside keyed search tokens in an `int8[]` column. Its experimental 0.1.0 release supports exact, word and pattern searches through a GIN index. Upstream has tested PostgreSQL 17; the other Cargo feature targets are untested.

### Core Workflow

```ini
session_preload_libraries = 'encsearch'
```

```sql
CREATE EXTENSION encsearch;
CREATE TABLE encrypted_notes (id bigint GENERATED ALWAYS AS IDENTITY, body bytea, idx int8[]);
CREATE INDEX encrypted_notes_tokens ON encrypted_notes USING gin (idx);
INSERT INTO encrypted_notes (body, idx)
VALUES (enc_encrypt('Patient has diabetes'), enc_index('Patient has diabetes'));
SELECT enc_decrypt(body) FROM encrypted_notes
WHERE enc_like(body, idx, '%diab%');
```

### Operational Boundaries

An administrator installs this untrusted extension. Configure `session_preload_libraries` before opening client sessions and before setting `encsearch.key`; otherwise an early key setting remains an unregistered setting visible to other roles. Supply a securely retained key of at least 32 characters to the session or explicit-key function overloads before running the data example. `enc_gen_key()` generates a 64-character key. Losing the key loses access to the plaintext.

`enc_encrypt` and `enc_decrypt` handle text and ciphertext. `enc_index` creates stored tokens; `enc_like`, `enc_ilike` and `enc_eq` filter candidates and check decrypted values. `enc_has_words` tests token containment without decrypting; `enc_q_like`, `enc_q_exact` and `enc_q_words` expose raw query tokens. `enc_algorithm` and `enc_algorithms` inspect available ciphers.

`encsearch.algorithm` defaults to `aes-256-gcm`; deterministic `aes-256-siv` reveals duplicate plaintext. Keep `encsearch.token_hash` identical when building and querying tokens: `hmac-sha256` is the default and `blake3` is the alternative. Changing the token hash requires regenerating tokens; changing keys requires decrypting with the old key and rebuilding ciphertext and tokens with the new key.

Blind indexes reveal shared values, words and character chunks and their frequency. Keys reach the database server and may appear in statement or parameter logs. This is an experimental privacy/performance tradeoff, not protection against a server that has the key.
