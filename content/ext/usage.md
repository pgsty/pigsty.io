---
title: "Usage"
linkTitle: "Usage"
description: "How to install PostgreSQL extensions using the Pigsty extension repository"
weight: 100
icon: fa-solid fa-book-open
---

Pigsty provides three pieces of infrastructure to help users harness the collaborative superpowers of the PostgreSQL extension ecosystem:

- [**Packaged Extension Catalog**](/ext/list): Browse detailed information, usage, metadata, download links and docs for [**575 packaged extensions**](/ext/list)
- [**Extension Repository**](/docs/repo/pgsql): Get pre-built RPM/DEB binary packages, available on [**16 Linux system and architecture combinations**](/ext/os)
- [**Package Manager**](/docs/pig): Use the [`pig`](/docs/pig) CLI tool to abstract away OS and architecture differences for one-click extension installation

For broader discovery, visit the full [**PGEXT.CLOUD directory**](https://pgext.cloud/) of **2,230 extensions**.

--------

## Quick Start

```bash
curl -fsSL https://repo.pigsty.cc/pig | bash  # Install the pig CLI tool
pig repo add pigsty pgdg -u                   # Configure the Pigsty & PGDG software repos
pig install pg18                              # Install PostgreSQL 18 kernel from the PGDG official repo
pig install pg_duckdb -v 18                   # e.g., install pg_duckdb for PG 18 (version flag can be omitted if PG18 is in PATH)
```

--------

## Extension Repository

The Pigsty extension repository contains RPM/DEB packages from the following three sources:

| **Repository**                   | **Description**                                                             |
|:---------------------------------|:----------------------------------------------------------------------------|
| [**PGDG**](/docs/repo/pgdg)     | PostgreSQL Global Development Group official repo, providing the PG kernel and core extensions |
| [**PIGSTY**](/docs/repo/pgsql)  | Pigsty-maintained supplementary repo, providing additional extensions not in PGDG              |
| **CONTRIB**                      | PostgreSQL built-in contrib extension modules, installed alongside the kernel                  |

The repository is globally distributed via Cloudflare CDN, with an accelerated mirror for mainland China.

To install extensions, you need to add both repositories (PGDG and PIGSTY) for the kernel and extensions, as well as your operating system's default software repository for required dependencies.
