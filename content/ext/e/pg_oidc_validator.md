---
title: "pg_oidc_validator"
linkTitle: "pg_oidc_validator"
description: "OAuth and OIDC token validator for PostgreSQL 18"
weight: 7170
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/percona/pg_oidc_validator">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">percona/pg_oidc_validator</div>
    <div class="ext-card__desc">https://github.com/percona/pg_oidc_validator</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_oidc_validator-1.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_oidc_validator-1.1.0.tar.gz</div>
    <div class="ext-card__desc">pg_oidc_validator-1.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_oidc_validator`**](/ext/e/pg_oidc_validator) | `1.1.0` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7170  | [**`pg_oidc_validator`**](/ext/e/pg_oidc_validator) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`oidc_validator`](/ext/e/oidc_validator) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`pgjwt`](/ext/e/pgjwt) [`login_hook`](/ext/e/login_hook) [`sslinfo`](/ext/e/sslinfo) [`sslutils`](/ext/e/sslutils) [`pgsodium`](/ext/e/pgsodium) [`pguecc`](/ext/e/pguecc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Configure oauth_validator_libraries=pg_oidc_validator; 1.1.0 adds discovery_url_override; RPM is available on EL10 only while DEB covers all supported Debian and Ubuntu targets.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18" >}} | `pg_oidc_validator` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18" >}} | `pg_oidc_validator_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.0` | {{< pgvers "18" >}} | `postgresql-$v-pg-oidc-validator` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 1.1.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 1.1.0 3 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 1.1.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el10.x86_64 18 pg_oidc_validator_18 pg_oidc_validator_18-1.1.0-1PGSTY.el10.x86_64.rpm pigsty 1.1.0 142.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_oidc_validator_18-1.1.0-1PGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_oidc_validator_18 pg_oidc_validator_18-1.0.0-1PGDG.rhel10.2.x86_64.rpm pgdg 1.0.0 173.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_oidc_validator_18-1.0.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.2 173.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_oidc_validator_18-0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 pg_oidc_validator_18 pg_oidc_validator_18-1.1.0-1PGSTY.el10.aarch64.rpm pigsty 1.1.0 129.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_oidc_validator_18-1.1.0-1PGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_oidc_validator_18 pg_oidc_validator_18-1.0.0-1PGDG.rhel10.2.aarch64.rpm pgdg 1.0.0 155.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_oidc_validator_18-1.0.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.2 154.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_oidc_validator_18-0.2-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~bookworm_amd64.deb pigsty 1.1.0 108.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~bookworm_arm64.deb pigsty 1.1.0 94.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~trixie_amd64.deb pigsty 1.1.0 116.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~trixie_arm64.deb pigsty 1.1.0 101.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~jammy_amd64.deb pigsty 1.1.0 106.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~jammy_arm64.deb pigsty 1.1.0 98.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~noble_amd64.deb pigsty 1.1.0 107.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~noble_arm64.deb pigsty 1.1.0 99.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~resolute_amd64.deb pigsty 1.1.0 120.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~resolute_arm64.deb pigsty 1.1.0 105.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_1.1.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_oidc_validator` using `pig build`:

```bash
pig build pkg pg_oidc_validator         # build RPM / DEB packages
```


## Install

You can install `pg_oidc_validator` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_oidc_validator;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_oidc_validator -v 18  # PG 18
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_oidc_validator_18       # PG 18
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-oidc-validator   # PG 18
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_oidc_validator';
```


## Usage

Sources:

- [pg_oidc_validator 1.1.0 README](https://github.com/percona/pg_oidc_validator/blob/1.1.0/README.md)
- [pg_oidc_validator 1.1.0 Keycloak example](https://github.com/percona/pg_oidc_validator/tree/1.1.0/examples/keycloak)
- [pg_oidc_validator 1.1.0 validator source](https://github.com/percona/pg_oidc_validator/blob/1.1.0/src/pg_oidc_validator.cpp)
- [PostgreSQL 18 OAuth authentication](https://www.postgresql.org/docs/18/auth-oauth.html)
- [PostgreSQL 18 libpq OAuth support](https://www.postgresql.org/docs/18/libpq-oauth.html)

`pg_oidc_validator` 1.1.0 is a PostgreSQL 18 OAuth validator module that validates JWT access tokens against an OpenID Connect provider. It is a server library with no control file or SQL extension, so do not run `CREATE EXTENSION`.

### Configure the Server

Load the module in `postgresql.conf`, then restart PostgreSQL:

```ini
oauth_validator_libraries = 'pg_oidc_validator'
```

Add an OAuth rule to `pg_hba.conf`; the issuer and required scope must match the provider. Use `hostssl` outside a strictly local test:

```text
hostssl  all  all  127.0.0.1/32  oauth  issuer=https://id.example.com/realms/postgres scope="openid postgres" validator=pg_oidc_validator
```

Reload PostgreSQL after HBA or validator-setting changes; adding the module to `oauth_validator_libraries` itself requires a restart.

The default authenticated identity claim is `sub`. To return another stable string claim for role matching, configure:

```ini
pg_oidc_validator.authn_field = 'email'
```

Version 1.1.0 also provides `pg_oidc_validator.discovery_url_override`. It changes where discovery metadata and JWKS are fetched without changing the issuer used to validate the JWT `iss` claim; this is useful when an OIDC provider has different internal and external URLs. Both validator settings are reloadable with `SIGHUP`.

Without `map=` in the HBA rule, the selected claim must exactly equal the requested PostgreSQL role. Use a named `pg_ident.conf` mapping when provider identities and database roles differ; the validator does not create roles.

### Connect with libpq

An OAuth-capable libpq client can start the provider's device authorization flow:

```bash
psql 'host=127.0.0.1 dbname=app user=alice oauth_issuer=https://id.example.com/realms/postgres oauth_client_id=postgres-client'
```

Use `oauth_client_secret` only when the registered client requires it. The client identifier, requested scope, issuer, and provider configuration must agree.

### Provider and Security Boundaries

- Keycloak must enable the OAuth 2 device flow for command-line clients.
- Microsoft Entra ID requires a tenant-specific v2 issuer and custom scopes; use the full scope name in `pg_hba.conf`.
- Google is not usable through libpq's built-in device flow, though custom clients may work.
- Dex does not emit OAuth scopes; an explicitly empty `scope=""` disables scope validation, which weakens the normal check.
- The client `oauth_issuer` must exactly match the HBA issuer and the discovery document. Treat the issuer and any `pg_oidc_validator.discovery_url_override` endpoint as trusted security boundaries, and require verified TLS for database and provider connections.
- Token validation does not replace PostgreSQL grants, role membership, or row-level security.
- Pigsty RPM packages are limited to EL10; DEB packages cover the supported Debian and Ubuntu targets. PostgreSQL 18 is required.
