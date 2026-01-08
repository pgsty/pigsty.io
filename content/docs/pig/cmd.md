---
title: "CMD: pig"
description: "pig CLI command reference overview"
weight: 5260
icon: fas fa-terminal
module: [PIG]
categories: [Admin]
---

The `pig` CLI provides comprehensive tools for managing PostgreSQL installations, extensions, repositories, and building extensions from source. Check command documentation with `pig help <command>`.

- [**pig repo**](/docs/pig/repo/): Manage software repositories
- [**pig ext**](/docs/pig/ext/): Manage PostgreSQL extensions
- [**pig build**](/docs/pig/build/): Build extensions from source
- [**pig sty**](/docs/pig/sty/): Manage Pigsty installation


## Overview

```bash
pig - the Linux Package Manager for PostgreSQL

Usage:
  pig [command]

Examples:

  pig repo add -ru            # overwrite existing repo & update cache
  pig install pg17            # install postgresql 17 PGDG package
  pig install pg_duckdb       # install certain postgresql extension
  pig install pgactive -v 18  # install extension for specifc pg major

  check https://pgext.cloud for details

PostgreSQL Extension Manager
  build       Build Postgres Extension
  ext         Manage PostgreSQL Extensions (pgext)
  repo        Manage Linux Software Repo (apt/dnf)
  install     Install packages using native package manager

Pigsty Management Commands
  do          Run admin tasks
  sty         Manage Pigsty installation

Additional Commands:
  completion  Generate the autocompletion script for the specified shell
  help        Help about any command
  status      Show Environment Status
  update      Upgrade pig itself
  version     Show pig version info

Flags:
      --debug              enable debug mode
  -h, --help               help for pig
  -H, --home string        pigsty home path
  -i, --inventory string   config inventory path
      --log-level string   log level: debug, info, warn, error, fatal, panic (default "info")
      --log-path string    log file path, terminal by default

Use "pig [command] --help" for more information about a command.
```


## pig repo

Manage APT/YUM repositories for PostgreSQL packages. See [`pig repo`](/docs/pig/repo/) for details.

```bash
pig repo list                    # List available repositories
pig repo info   pgdg             # Show repository details
pig repo status                  # Check current repo status
pig repo add    pgdg pigsty -u   # Add repositories
pig repo rm     old-repo         # Remove repositories
pig repo update                  # Update package cache
pig repo create /www/pigsty      # Create local repository
pig repo cache                   # Create offline package
pig repo boot                    # Bootstrap from offline package
```


## pig ext

Manage PostgreSQL extensions and kernel packages. See [`pig ext`](/docs/pig/ext/) for details.

```bash
pig ext list    duck             # Search extensions
pig ext info    pg_duckdb        # Extension details
pig ext status                   # Show installed extensions
pig ext add     pg_duckdb -y     # Install extension
pig ext rm      old_extension    # Remove extension
pig ext update                   # Update extensions
pig ext scan                     # Scan installed extensions
pig ext import  pg_duckdb        # Download for offline use
pig ext link    17               # Link PG version to PATH
pig ext reload                   # Refresh extension catalog
```


## pig build

Build PostgreSQL extensions from source. See [`pig build`](/docs/pig/build/) for details.

```bash
# Environment setup
pig build spec                   # Initialize build specs
pig build repo                   # Setup repositories
pig build tool                   # Install build tools
pig build rust -y                # Install Rust (for Rust extensions)
pig build pgrx                   # Install PGRX framework

# Build extensions
pig build pkg citus              # Complete build pipeline = get + dep + ext
pig build get citus              # Download source
pig build dep citus              # Install dependencies
pig build ext citus              # Build package
```


## pig sty

Install Pigsty distribution. See [`pig sty`](/docs/pig/sty/) for details.

```bash
pig sty init                     # Install Pigsty to ~/pigsty
pig sty boot                     # Install Ansible prerequisites
pig sty conf                     # Generate configuration
pig sty deploy                   # Run deployment playbook
```

