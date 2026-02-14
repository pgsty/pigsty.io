---
title: "pig ext"
description: "Manage PostgreSQL extensions with pig ext subcommand"
weight: 120
icon: fas fa-puzzle-piece
module: [PIG]
categories: [Reference]
---

The `pig ext` command is a comprehensive tool for managing PostgreSQL extensions.
It allows users to search, install, remove, update, and manage PostgreSQL extensions and even kernel packages.

```bash
pig ext - Manage PostgreSQL Extensions

Usage: pig ext <command>

Commands:
  add       Install extension for PostgreSQL
  avail     Show extension availability matrix
  info      Get extension information
  link      Link PostgreSQL version to PATH
  list      List & Search PostgreSQL extensions
  reload    Refresh extension catalog
  rm        Remove extension from PostgreSQL
  scan      Scan installed PostgreSQL extensions
  status    Show installed PostgreSQL extensions
  update    Update extension for PostgreSQL

Aliases:
  add, install, ins, get
  rm, remove, del, uninstall

Flags:
  -h, --help               help for ext
  -p, --pgconfig string    pg_config path
  -v, --version int        pg major version

Global Flags:
      --debug              enable debug mode
  -H, --home string        pigsty home path
  -i, --inventory string   config inventory path
      --log-level string   log level: debug, info, warn, error, fatal, panic (default "info")
      --log-path string    log file path, terminal by default

Use "pig ext [command] --help" for more information about a command.
```

| Command | Description | Notes |
|:---|:---|:---|
| `ext list` | Search extensions | |
| `ext info` | Show extension details | |
| `ext avail` | Show extension availability matrix | |
| `ext status` | Show installed extensions | |
| `ext scan` | Scan installed extensions | |
| `ext add` | Install extensions | Requires sudo or root |
| `ext rm` | Remove extensions | Requires sudo or root |
| `ext update` | Update extensions | Requires sudo or root |
| `ext import` | Download for offline use | Requires sudo or root |
| `ext link` | Link PG version to PATH | Requires sudo or root |
| `ext reload` | Refresh extension catalog | |
{.full-width}


## Quick Start

```bash
pig ext list                     # List all extensions
pig ext list duck                # Search for "duck" extensions
pig ext info pg_duckdb           # Show pg_duckdb extension info
pig install pg_duckdb            # Install pg_duckdb extension
pig install pg_duckdb -v 18      # Install pg_duckdb for PG 18
pig ext status                   # Show installed extensions
```


## ext list

List or search extensions.

```bash
pig ext list                     # List all extensions
pig ext list duck                # Search for "duck" extensions
pig ext list -v 18               # Filter by PG version
pig ext ls olap                  # List OLAP category extensions
pig ext ls gis -v 16             # List GIS extensions for PG 16
pig ext ls rag                   # List RAG category extensions
```

Category filter is achieved by specifying the category name directly as query parameter. Supported categories: `time`, `gis`, `rag`, `fts`, `olap`, `feat`, `lang`, `type`, `func`, `util`, `admin`, `stat`, `sec`, `fdw`, `sim`, `etl`.

**Options:**

- `-v|--version`: Filter by PG version
- `--pkg`: Show package names instead of extension names, list leading extensions only


## ext info

Display detailed information about specific extensions.

```bash
pig ext info pg_duckdb           # Show pg_duckdb info
pig ext info vector postgis      # Show info for multiple extensions
```


## ext avail

Display the availability matrix for extensions, showing availability across different operating systems, architectures, and PostgreSQL versions.

```bash
pig ext avail                     # Show availability for all packages on current system
pig ext avail timescaledb         # Show availability matrix for timescaledb
pig ext avail postgis pg_duckdb   # Show availability for multiple extensions
pig ext av pgvector               # Show availability for pgvector
pig ext matrix citus              # Alias for avail command
```

The availability matrix shows extension availability across operating systems (EL8/9/10, Debian 12/13, Ubuntu 22/24), architectures (x86_64/aarch64), and PostgreSQL versions (13-18).


## ext status

Display the status of installed extensions for the active PostgreSQL instance.

```bash
pig ext status                   # Show installed extensions
pig ext status -v 18             # Show installed extensions for PG 18
```


## ext add

Install extensions. Also available via alias `pig install`.

```bash
pig ext add pg_duckdb            # Install pg_duckdb
pig ext add pg_duckdb -v 18      # Install for PG 18
pig ext add pg_duckdb -y         # Auto-confirm installation
pig ext add vector postgis       # Install multiple extensions

# Using alias
pig install pg_duckdb
pig install pg_duckdb -v 18 -y
```

**Options:**
- `-v|--version`: Specify PG major version
- `-y|--yes`: Auto-confirm installation


## ext rm

Remove extensions.

```bash
pig ext rm pg_duckdb             # Remove pg_duckdb
pig ext rm pg_duckdb -v 18       # Remove for PG 18
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
pig ext scan -v 18               # Scan PG 18
```


## ext import

Download extension packages for offline use.

```bash
pig ext import pg_duckdb         # Download pg_duckdb
pig ext import pg_duckdb -v 18   # Download for PG 18
```


## ext link

Link a specific PG version to the system PATH.

```bash
pig ext link 18                  # Link PG 18 to PATH
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
pig repo set                   # brute way to remove and add all required repos
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
pig ext install pg18          # install PostgreSQL 18 kernels (all but devel)
```
