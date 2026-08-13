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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_oidc_validator-0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_oidc_validator-0.2.tar.gz</div>
    <div class="ext-card__desc">pg_oidc_validator-0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_oidc_validator`**](/ext/e/pg_oidc_validator) | `0.2` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7170  | [**`pg_oidc_validator`**](/ext/e/pg_oidc_validator) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`oidc_validator`](/ext/e/oidc_validator) [`pg_session_jwt`](/ext/e/pg_session_jwt) [`pgjwt`](/ext/e/pgjwt) [`login_hook`](/ext/e/login_hook) [`sslinfo`](/ext/e/sslinfo) [`sslutils`](/ext/e/sslutils) [`pgsodium`](/ext/e/pgsodium) [`pguecc`](/ext/e/pguecc) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Configure oauth_validator_libraries='pg_oidc_validator'. RPM is available on EL10 only; EL8/EL9 RPMs were excluded after libstdc++ ABI smoke failures. DEB covers all supported Debian/Ubuntu targets.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18" >}} | `pg_oidc_validator` | - |
| [**RPM**](/ext/rpm#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18" >}} | `pg_oidc_validator_$v` | - |
| [**DEB**](/ext/deb#sec) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2` | {{< pgvers "18" >}} | `postgresql-$v-pg-oidc-validator` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.2 2 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.2 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el10.x86_64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.2 141.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_oidc_validator_18-0.2-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PGDG.rhel10.2.x86_64.rpm pgdg 0.2 173.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_oidc_validator_18-0.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.aarch64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.2 127.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_oidc_validator_18-0.2-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_oidc_validator_18 pg_oidc_validator_18-0.2-1PGDG.rhel10.2.aarch64.rpm pgdg 0.2 154.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_oidc_validator_18-0.2-1PGDG.rhel10.2.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~bookworm_amd64.deb pigsty 0.2 107.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~bookworm_arm64.deb pigsty 0.2 94.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~trixie_amd64.deb pigsty 0.2 115.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~trixie_arm64.deb pigsty 0.2 100.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~jammy_amd64.deb pigsty 0.2 105.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~jammy_arm64.deb pigsty 0.2 96.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~noble_amd64.deb pigsty 0.2 107.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~noble_arm64.deb pigsty 0.2 98.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~resolute_amd64.deb pigsty 0.2 119.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-oidc-validator postgresql-18-pg-oidc-validator_0.2-1PIGSTY~resolute_arm64.deb pigsty 0.2 104.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-oidc-validator/postgresql-18-pg-oidc-validator_0.2-1PIGSTY~resolute_arm64.deb
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

- [pg_oidc_validator 0.2 README](https://github.com/percona/pg_oidc_validator/blob/0.2/README.md)
- [Keycloak example for 0.2](https://github.com/percona/pg_oidc_validator/tree/0.2/examples/keycloak)

pg_oidc_validator is an OAuth validator module for PostgreSQL 18 that validates libpq OAuth bearer tokens against an OpenID Connect issuer. Use it when PostgreSQL clients authenticate through an OIDC provider; it is loaded by the server and does not define a SQL extension, so do not run CREATE EXTENSION.

The project describes the module as experimental and not ready for production. Test the exact identity provider, client, and PostgreSQL build before relying on it.

### Configure the Server

Load the validator and restart PostgreSQL:

    oauth_validator_libraries = 'pg_oidc_validator'

Add an oauth rule to pg_hba.conf. The issuer and scope must match the provider:

    host  all  all  127.0.0.1/32  oauth  issuer=https://id.example.com/realms/postgres scope="openid postgres"

Reload pg_hba.conf after editing it. The validator checks the token issuer, audience, scope, signature, and expiry according to the provider metadata discovered from the issuer.

By default the PostgreSQL role is matched against the JWT sub claim. To authenticate by another claim, such as email, set:

    pg_oidc_validator.authn_field = 'email'

This setting changes the identity claim used for role matching; it does not create or provision database roles.

### Connect with libpq

A libpq client that supports OAuth can initiate the device-authorization flow:

    psql "host=127.0.0.1 dbname=app user=alice +      oauth_issuer=https://id.example.com/realms/postgres +      oauth_client_id=postgres-client"

Use oauth_client_secret only when the registered client requires one. The client identifier, redirect/device-flow settings, audience, and requested scopes must agree with the identity-provider configuration.

### Configuration Index

- oauth_validator_libraries: server-level list of OAuth validator modules; adding pg_oidc_validator requires a restart.
- pg_oidc_validator.authn_field: JWT claim compared with the requested PostgreSQL role; defaults to sub.
- pg_hba.conf oauth method: selects OAuth authentication and supplies the accepted issuer and scope.
- oauth_issuer, oauth_client_id, oauth_client_secret: libpq connection parameters used to obtain a token.

### Provider and Security Boundaries

- The upstream 0.2 documentation targets PostgreSQL 18 and requires an OAuth-capable libpq client.
- The validator supports common OIDC providers, but the README explicitly calls out Google as unsupported and describes provider-specific setup for Microsoft Entra ID.
- Token validation is only one part of authorization. PostgreSQL role membership and object privileges still control database access.
- Protect client secrets and provider credentials outside connection strings where possible, and validate TLS trust for the issuer.
