# PIG 1.8 Documentation

> PostgreSQL Extension Ecosystem Package Manager

---

LLMS index: [llms.txt](/llms.txt)

---

— **Postgres Install Genius, the missing extension package manager for the PostgreSQL ecosystem**

PIG is a command-line tool specifically designed for installing, managing, and building PostgreSQL and its extensions. Developed in Go, it is ready to use out of the box, simple, and lightweight (about 5 MB).
PIG is not a reinvented wheel, but rather a **PiggyBack** - a high-level abstraction layer that leverages existing Linux distribution package managers (`apt`/`dnf`).
It abstracts away the differences between operating systems, chip architectures, and PG major versions, allowing you to install and manage PG kernels and 576 packaged extensions with just a few simple commands.

PIG is also automation-friendly by design: consistent parameter styles, clear error messages, preview switches like `--plan`, and confirmation steps.

Please note: for extension installation, **pig is not a mandatory component**. You can still use apt/dnf package managers to directly access the [**Pigsty PGSQL**](/docs/repo/pgsql/) repository.

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

After installation, you can [**get started**](/docs/pig/start/) with just a few commands. For example, to install PG 18 and the [**`pg_duckdb`**](/ext/e/pg_duckdb) extension:

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

The `pig` CLI tool is developed by [Vonng](https://vonng.com/en/) (rh@vonng.com) and is open-sourced under the [Apache 2.0](https://github.com/pgsty/pig/?tab=Apache-2.0-1-ov-file#readme) license.

You can also check out the [**PIGSTY**](https://pgsty.com) project, which provides a complete PostgreSQL RDS DBaaS experience including extension delivery.

- [**PGEXT**](https://github.com/pgsty/pgext): Extension data and management tools
- [**PIG**](https://github.com/pgsty/pig): PostgreSQL package manager
- [**PIGSTY**](https://github.com/pgsty/pigsty): Batteries-included PostgreSQL distribution

---

Section pages:

- [Getting Started](/docs/pig/start/): Quick start with pig, the PostgreSQL package manager
- [Introduction](/docs/pig/intro/): Why do we need yet another package manager? Especially for Postgres extensions?
- [Installation](/docs/pig/install/): How to download and install the pig package manager
- [Release](/docs/pig/release/): pig — PostgreSQL Package Manager Release Notes
- [Command Reference](/docs/pig/_div_cmd/)
- [pig](/docs/pig/cmd/): pig CLI command reference overview
- [pig repo](/docs/pig/repo/): Manage software repositories with pig repo
- [pig ext](/docs/pig/ext/): Manage PostgreSQL extensions with pig ext
- [pig build](/docs/pig/build/): Build PostgreSQL extensions from source with pig build
- [pig sty](/docs/pig/sty/): Manage Pigsty installation with pig sty
- [pig inventory](/docs/pig/inventory/): Inspect, edit, validate, check, and exchange the Pigsty Inventory
- [pig postgres](/docs/pig/pg/): Manage local PostgreSQL server with pig postgres subcommand
- [pig patroni](/docs/pig/pt/): Run patronictl transparently, with Pigsty service, config, and log helpers
- [pig pgbackrest](/docs/pig/pb/): Manage pgBackRest backup and restore primitives with pig pgbackrest
- [pig pitr](/docs/pig/pitr/): Perform orchestrated point-in-time recovery (PITR) with pig pitr
