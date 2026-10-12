---
title: "PIG 1.9 Documentation"
linkTitle: "pig"
weight: 5200
description: "PostgreSQL Extension Ecosystem Package Manager"
icon: fas fa-piggy-bank
module: [PIG]
sidebar_root_for: self
---

**Postgres Install Genius manages extension packages for the PostgreSQL ecosystem.**

PIG is a command-line tool that installs, manages, and builds PostgreSQL and its extensions.
It is written in Go, works without additional setup, and uses about 5 MB.
PIG acts as a **PiggyBack** layer over existing Linux package managers (`apt`/`dnf`).
It handles differences between operating systems, chip architectures, and PostgreSQL major versions.
Use a few commands to install and manage PostgreSQL kernels and {{< param pgext_count >}} packaged extensions.

PIG supports automation with consistent parameter styles, clear errors, preview options such as `--plan`, and confirmation steps.

**pig is optional** for extension installation.
You can use apt/dnf directly with the [**Pigsty PGSQL**](/docs/repo/pgsql/) repository.

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

After installation, follow [**Getting Started**](/docs/pig/start/).
For example, install PG 18 and the [**`pg_duckdb`**](/ext/e/pg_duckdb) extension:

```bash
$ pig repo set                        # One-time setup for Linux, Pigsty + PGDG repos (overwrites!)
$ pig install pg18                    # Install PostgreSQL 18 kernel (native PGDG packages)
$ pig install pg_duckdb -v 18         # Install pg_duckdb extension (for PG 18)
$ pig install -y postgis timescaledb  # Install multiple extensions for current active PG version
$ pig install -y vector               # You can use extension name (vector) or package name (pgvector)!
```


## Command Reference

Run `pig help <command>` to get detailed help for subcommands.

**Extension Management:**

- [**pig repo**](/docs/pig/repo/): Manage software repositories
- [**pig ext**](/docs/pig/ext/): Manage PG extensions
- [**pig build**](/docs/pig/build/): Build extensions from source
- [**pig install**](/docs/pig/cmd/#pig-install): Install PostgreSQL and extension packages through the native package manager

**Pigsty Management:**

- [**pig sty**](/docs/pig/sty/): Manage Pigsty installation and Grafana dashboards
- [**pig inventory**](/docs/pig/inventory/): Inspect, edit, validate, and exchange the Pigsty inventory
- [**pig context**](/docs/pig/cmd/#pig-context): Collect host, PostgreSQL, Patroni, pgBackRest, and extension context
- [**pig pg**](/docs/pig/pg/): Manage local PostgreSQL server
- [**pig pt**](/docs/pig/pt/): Run patronictl transparently to manage Patroni HA clusters
- [**pig pb**](/docs/pig/pb/): Manage pgBackRest backup & restore
- [**pig pitr**](/docs/pig/pitr/): Point-in-time recovery workflow


## About

[Vonng](https://vonng.com/en/) (rh@vonng.com) develops the `pig` CLI tool.
The source code uses the [Apache 2.0](https://github.com/pgsty/pig/?tab=Apache-2.0-1-ov-file#readme) license.

The [**PIGSTY**](https://pgsty.com) project provides a complete PostgreSQL RDS DBaaS system, including extension delivery.

- [**PGEXT**](https://github.com/pgsty/pgext): Extension data and management tools
- [**PIG**](https://github.com/pgsty/pig): PostgreSQL package manager
- [**PIGSTY**](https://github.com/pgsty/pigsty): Batteries-included PostgreSQL distribution
