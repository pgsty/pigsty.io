---
title: "CMD: pig ext"
linkTitle: "CMD: pig ext"
description: "Manage PostgreSQL extensions with pig ext subcommand"
weight: 5270
icon: fas fa-puzzle-piece
module: [PIG]
categories: [Admin]
---

The `pig ext` command is a comprehensive tool for managing PostgreSQL extensions.
It allows users to search, install, remove, update, and manage PostgreSQL extensions and even kernel packages.

| Command | Description | Notes |
|:---|:---|:---|
| `ext list` | Search extensions | |
| `ext info` | Show extension details | |
| `ext status` | Show installed extensions | |
| `ext add` | Install extensions | Requires sudo or root |
| `ext rm` | Remove extensions | Requires sudo or root |
| `ext update` | Update extensions | Requires sudo or root |
| `ext scan` | Scan installed extensions | |
| `ext import` | Download for offline use | Requires sudo or root |
| `ext link` | Link PG version to PATH | Requires sudo or root |
| `ext reload` | Refresh extension catalog | |


## Quick Start

```bash
pig ext list                     # List all extensions
pig ext list duck                # Search for "duck" extensions
pig ext info pg_duckdb           # Show pg_duckdb extension info
pig install pg_duckdb            # Install pg_duckdb extension
pig install pg_duckdb -v 17      # Install pg_duckdb for PG 17
pig ext status                   # Show installed extensions
```


## ext list

List or search extensions.

```bash
pig ext list                     # List all extensions
pig ext list duck                # Search for "duck" extensions
pig ext list vector ai           # Search multiple keywords
pig ext list -c RAG              # Filter by category
pig ext list -v 17               # Filter by PG version
```

**Options:**
- `-c|--category`: Filter by category (TIME, GIS, RAG, FTS, OLAP, FEAT, LANG, TYPE, UTIL, FUNC, ADMIN, STAT, SEC, FDW, SIM, ETL)
- `-v|--version`: Filter by PG version


## ext info

Display detailed information about specific extensions.

```bash
pig ext info pg_duckdb           # Show pg_duckdb info
pig ext info vector postgis      # Show info for multiple extensions
```


## ext status

Display the status of installed extensions for the active PostgreSQL instance.

```bash
pig ext status                   # Show installed extensions
pig ext status -v 17             # Show installed extensions for PG 17
```


## ext add

Install extensions. Also available via alias `pig install`.

```bash
pig ext add pg_duckdb            # Install pg_duckdb
pig ext add pg_duckdb -v 17      # Install for PG 17
pig ext add pg_duckdb -y         # Auto-confirm installation
pig ext add vector postgis       # Install multiple extensions

# Using alias
pig install pg_duckdb
pig install pg_duckdb -v 17 -y
```

**Options:**
- `-v|--version`: Specify PG major version
- `-y|--yes`: Auto-confirm installation
- `-n|--no-translation`: Disable alias translation


## ext rm

Remove extensions. Also available via alias `pig remove`.

```bash
pig ext rm pg_duckdb             # Remove pg_duckdb
pig ext rm pg_duckdb -v 17       # Remove for PG 17
pig remove pg_duckdb             # Using alias
```


## ext update

Update installed extensions.

```bash
pig ext update                   # Update all extensions
pig ext update pg_duckdb         # Update specific extension
```


## ext scan

Scan installed PostgreSQL installations and their extensions.

```bash
pig ext scan                     # Scan all installed PG versions
pig ext scan -v 17               # Scan PG 17
```


## ext import

Download extension packages for offline use.

```bash
pig ext import pg_duckdb         # Download pg_duckdb
pig ext import pg_duckdb -v 17   # Download for PG 17
```


## ext link

Link a specific PG version to the system PATH.

```bash
pig ext link 17                  # Link PG 17 to PATH
```

This command creates a `/usr/pgsql` symlink and writes to `/etc/profile.d/pgsql.sh`.


## ext reload

Refresh extension metadata from GitHub.

```bash
pig ext reload                   # Refresh extension catalog
```

The updated file is placed in `~/.pig/extension.csv`.


--------

## Examples

To install PostgreSQL extensions, you'll have to add the [**repo**](/docs/pig/repo/) first:

```bash
pig repo add pgdg pigsty -u    # gentle way to add pgdg and pigsty repo
pig repo set -u                # brute way to remove and add all required repos
```

Then you can search and install PostgreSQL extensions:

```bash
pig ext install pg_duckdb
pig ext install pg_partman
pig ext install pg_cron
pig ext install pg_repack
pig ext install pg_stat_statements
pig ext install pg_stat_kcache
```

Check [**extension list**](https://ext.pigsty.io/#/list) for available extensions and their names.

**Notes:**

1. When no PostgreSQL version is specified, the tool will try to detect the active PostgreSQL installation from `pg_config` in your `PATH`
2. PostgreSQL can be specified either by major version number (`-v`) or by pg_config path (`-p`). If `-v` is given, pig will use the well-known default path of PGDG kernel packages for the given version.
   - On EL distros, it's `/usr/pgsql-$v/bin/pg_config` for PG$v
   - On DEB distros, it's `/usr/lib/postgresql/$v/bin/pg_config` for PG$v
   - If `-p` is given, pig will use the `pg_config` path to find the PostgreSQL installation
3. The extension manager supports different package formats based on the underlying operating system:
   - RPM packages for RHEL/CentOS/Rocky Linux/AlmaLinux
   - DEB packages for Debian/Ubuntu
4. Some extensions may have dependencies that will be automatically resolved during installation
5. Use the `-y` flag with caution as it will automatically confirm all prompts

Pigsty assumes you already have installed the official PGDG kernel packages. If not, you can install them with:

```bash
pig ext install pg17          # install PostgreSQL 17 kernels (all but devel)
```

