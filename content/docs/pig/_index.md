---
title: "PIG the PGPM"
weight: 5200
description: "PostgreSQL Extension Ecosystem Package Manager"
icon: fas fa-piggy-bank
module: [PIG]
---

— **Postgres Install Genius, the missing extension package manager for the PostgreSQL ecosystem**

PIG is a command-line tool specifically designed for installing, managing, and building PostgreSQL and its extensions. Developed in Go, it's ready to use out of the box, simple, and lightweight (4MB).
PIG is not a reinvented wheel, but rather a **PiggyBack** — a high-level abstraction layer that leverages existing Linux distribution package managers (`apt`/`dnf`).
It abstracts away the differences between operating systems, chip architectures, and PG major versions, allowing you to install and manage PG kernels and 431+ extensions with just a few simple commands.

Note: For extension installation, **pig is not a mandatory component** — you can still use apt/dnf package managers to directly access the [**Pigsty PGSQL**](/docs/repo/pgsql/) repository.

- [**Introduction**](/docs/pig/intro/): Why do we need a dedicated PG package manager?
- [**Getting Started**](/docs/pig/start/): Quick start guide and examples
- [**Installation**](/docs/pig/install/): Download, install, and update pig


## Quick Start

Use the following command to [**install**](/docs/pig/install/) PIG on your system:

**Default Installation** (Cloudflare CDN):

```bash
curl -fsSL https://repo.pigsty.io/pig | bash
```

**China Mirror**:

```bash
curl -fsSL https://repo.pigsty.cc/pig | bash
```

After installation, you can [**get started**](/docs/pig/start/) with just a few commands. For example, to install PG 18 and the [**`pg_duckdb`**](https://ext.pigsty.io/#/pg_duckdb) extension:

```bash
$ pig repo set                        # One-time setup for Linux, Pigsty + PGDG repos (overwrites!)
$ pig install pg18                    # Install PostgreSQL 18 kernel (native PGDG packages)
$ pig install pg_duckdb -v 18         # Install pg_duckdb extension (for PG 18)
$ pig install -y postgis timescaledb  # Install multiple extensions for current active PG version
$ pig install -y vector               # You can use extension name (vector) or package name (pgvector)!
```


## Command Reference

Run `pig help <command>` to get detailed help for subcommands.

- [**pig repo**](/docs/pig/repo/): Manage software repositories
- [**pig ext**](/docs/pig/ext/): Manage PG extensions
- [**pig build**](/docs/pig/build/): Set up build environment
- [**pig sty**](/docs/pig/sty/): Manage Pigsty


## About

The `pig` CLI tool is developed by [Vonng](https://vonng.com/en/) (rh@vonng.com) and is open-sourced under the [Apache 2.0](https://github.com/pgsty/pig/?tab=Apache-2.0-1-ov-file#readme) license.

You can also check out the [**PIGSTY**](https://pigsty.io) project, which provides a complete PostgreSQL RDS DBaaS experience including extension delivery.

- [**PGEXT**](https://github.com/pgsty/pgext): Extension data and management tools
- [**PIG**](https://github.com/pgsty/pig): PostgreSQL package manager
- [**PIGSTY**](https://github.com/pgsty/pigsty): Batteries-included PostgreSQL distribution

