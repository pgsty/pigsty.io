---
title: "oidc_validator"
linkTitle: "oidc_validator"
description: "PostgreSQL 18 OIDC bearer-token validator plugin written in Rust"
weight: 7180
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/UnAfraid/pg_oidc_validator_rust">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">UnAfraid/pg_oidc_validator_rust</div>
    <div class="ext-card__desc">https://github.com/UnAfraid/pg_oidc_validator_rust</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_oidc_validator_rust-0.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_oidc_validator_rust-0.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_oidc_validator_rust-0.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_oidc_validator_rust`**](/ext/e/oidc_validator) | `0.1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license licenserefupstreamnolicense" href="/ext/license#licenserefupstreamnolicense">LicenseRef-Upstream-No-License</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7180  | [**`oidc_validator`**](/ext/e/oidc_validator) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_oidc_validator`](/ext/e/pg_oidc_validator) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`pgjwt`](/ext/e/pgjwt) [`login_hook`](/ext/e/login_hook) [`auth_delay`](/ext/e/auth_delay) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Configure oauth_validator_libraries='oidc_validator'. Built from upstream commit b65bbbe288f84fab91d58b8304e8a526d1326af5; upstream publishes no license grant.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `pg_oidc_validator_rust` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `pg_oidc_validator_rust_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18" >}} | `postgresql-$v-pg-oidc-validator-rust` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el8.x86_64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el8.aarch64.rpm pigsty 0.1.0 3.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el9.x86_64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el9.aarch64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el10.x86_64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_oidc_validator_rust_18 pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el10.aarch64.rpm pigsty 0.1.0 3.1MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_oidc_validator_rust_18-0.1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~bookworm_amd64.deb pigsty 0.1.0 2.4MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~bookworm_arm64.deb pigsty 0.1.0 2.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~trixie_amd64.deb pigsty 0.1.0 2.4MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~trixie_arm64.deb pigsty 0.1.0 2.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~jammy_amd64.deb pigsty 0.1.0 2.6MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~jammy_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~noble_amd64.deb pigsty 0.1.0 2.6MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~noble_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~resolute_amd64.deb pigsty 0.1.0 2.6MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-oidc-validator-rust postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~resolute_arm64.deb pigsty 0.1.0 2.5MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator-rust/postgresql-18-pg-oidc-validator-rust_0.1.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_oidc_validator_rust` using `pig build`:

```bash
pig build pkg pg_oidc_validator_rust         # build RPM / DEB packages
```


## Install

You can install `pg_oidc_validator_rust` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_oidc_validator_rust;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_oidc_validator_rust -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_oidc_validator_rust_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-oidc-validator-rust   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'oidc_validator';
```


## Usage

Sources:

- [Official README](https://github.com/UnAfraid/pg_oidc_validator_rust/blob/b65bbbe288f84fab91d58b8304e8a526d1326af5/README.md)
- [Validator configuration source](https://github.com/UnAfraid/pg_oidc_validator_rust/blob/b65bbbe288f84fab91d58b8304e8a526d1326af5/src/config.rs)
- [PostgreSQL OAuth callback implementation](https://github.com/UnAfraid/pg_oidc_validator_rust/blob/b65bbbe288f84fab91d58b8304e8a526d1326af5/src/ffi.rs)
- [PostgreSQL 18 OAuth authentication documentation](https://www.postgresql.org/docs/18/auth-oauth.html)

`oidc_validator` is a PostgreSQL 18 OAuth validator module written in Rust. It validates JWT access tokens against an OpenID Connect issuer and returns the token subject as the authenticated identity. It is a headless authentication library, not a SQL extension, so it creates no SQL objects and does not use `CREATE EXTENSION`.

### Core Workflow

Install `oidc_validator.so` in PostgreSQL's library directory, then configure the PostgreSQL 18 validator module:

```conf
oauth_validator_libraries = 'oidc_validator'
```

Add an OAuth rule to `pg_hba.conf`:

```conf
host all all 0.0.0.0/0 oauth issuer="https://issuer.example" scope="openid profile"
```

Provide the validator configuration to the PostgreSQL server process:

```shell
POSTGRES_OIDC_ISSUER=https://issuer.example
POSTGRES_OIDC_CLIENT_ID=postgres
POSTGRES_OIDC_AUDIENCE=postgres
```

Restart PostgreSQL after changing `oauth_validator_libraries` or the server-process environment. OAuth clients can then authenticate through a matching `pg_hba.conf` rule.

### Configuration Index

- `POSTGRES_OIDC_ISSUER`: issuer URL without the well-known discovery suffix.
- `POSTGRES_OIDC_CLIENT_ID`: OIDC application client ID.
- `POSTGRES_OIDC_AUDIENCE`: required token audience, commonly the client ID.
- `oauth_validator_libraries`: PostgreSQL 18 setting that loads the trusted validator module.

### Requirements and Caveats

- Upstream version `0.1.0` targets PostgreSQL 18 and requires PostgreSQL to be built with OpenSSL and libcurl.
- Only JWT-shaped bearer tokens are accepted. Opaque access tokens are rejected.
- Validation performs OIDC discovery and JWKS retrieval, so the PostgreSQL server must be able to reach the issuer over TLS.
- The callback currently ignores the requested PostgreSQL role and authorizes based on successful token validation. Do not set `delegate_ident_mapping=1` with this implementation; keep PostgreSQL's standard exact-name or `pg_ident.conf` mapping so the returned token subject is checked against the requested role.
