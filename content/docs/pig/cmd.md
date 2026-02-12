---
title: "pig"
description: "pig CLI command reference overview"
weight: 100
icon: fas fa-terminal
module: [PIG]
categories: [Reference]
---

`pig` CLI provides comprehensive tools for managing PostgreSQL installations, extensions, repositories, and building extensions from source. Check command documentation with `pig help <command>`.

- [**pig repo**](/docs/pig/repo/): Manage software repositories
- [**pig ext**](/docs/pig/ext/): Manage PostgreSQL extensions
- [**pig build**](/docs/pig/build/): Build extensions from source
- [**pig sty**](/docs/pig/sty/): Manage Pigsty installation
- [**pig pg**](/docs/pig/pg/): Manage local PostgreSQL server
- [**pig pt**](/docs/pig/pt/): Manage Patroni HA cluster
- [**pig pb**](/docs/pig/pb/): Manage pgBackRest backup & restore

## Overview

```bash
pig - The Linux package manager for PostgreSQL

Usage:
  pig [command]

Examples:

  pig repo add -ru            # overwrite existing repo & update cache
  pig install pg17            # install PostgreSQL 17 PGDG package
  pig install pg_duckdb       # install a PostgreSQL extension
  pig install pgactive -v 18  # install extension for specific PG major

  visit https://pgext.cloud for details

PostgreSQL Extension Manager
  build       Build Postgres extensions
  ext         Manage PostgreSQL extensions (pgext)
  repo        Manage Linux software repo (apt/dnf)

Pigsty Management Commands
  do          Run admin tasks
  patroni     Manage Patroni cluster
  pg_exporter Manage pg_exporter and metrics
  pgbackrest  Manage pgBackRest backup and restore
  pitr        Orchestrated PITR
  postgres    Manage local PostgreSQL server and databases
  sty         Manage Pigsty installation

Additional Commands:
  completion  Generate shell completion scripts
  help        Help about any command
  install     Install packages using native package manager
  status      Show environment status
  update      Upgrade pig itself
  version     Show pig version info

Flags:
      --debug              enable debug mode
  -h, --help               help for pig
  -H, --home string        Pigsty home path
  -i, --inventory string   config inventory path
  -t, --toggle             placeholder flag shown in help output
      --log-level string   log level: debug, info, warn, error, fatal, panic (default "info")
      --log-path string    log file path, terminal by default

Use "pig [command] --help" for more information about a command.
```

## pig repo

Manage APT/YUM repositories for PostgreSQL packages. See [`pig repo`](/docs/pig/repo/) for details.

```bash
pig repo list                    # list available repositories
pig repo info   pgdg             # show repository details
pig repo status                  # check current repo status
pig repo add    pgdg pigsty -u   # add repositories
pig repo rm     old-repo         # remove repositories
pig repo update                  # update package cache
pig repo create /www/pigsty      # create local repository
pig repo cache                   # create offline package
pig repo boot                    # bootstrap from offline package
```




## pig ext

Manage PostgreSQL extensions and kernel packages. See [`pig ext`](/docs/pig/ext/) for details.

```bash
pig ext list    duck             # search extensions
pig ext info    pg_duckdb        # extension details
pig ext status                   # show installed extensions
pig ext add     pg_duckdb -y     # install extension
pig ext rm      old_extension    # remove extension
pig ext update                   # update extensions
pig ext scan                     # scan installed extensions
pig ext import  pg_duckdb        # download for offline use
pig ext link    17               # link PG version to PATH
pig ext reload                   # refresh extension catalog
```




## pig build

Build PostgreSQL extensions from source. See [`pig build`](/docs/pig/build/) for details.

```bash
# environment setup
pig build spec                   # initialize build specs
pig build repo                   # setup repositories
pig build tool                   # install build tools
pig build rust -y                # force reinstall Rust (default does not reinstall)
pig build pgrx                   # install PGRX framework

# build extensions
pig build pkg citus              # complete build pipeline = get + dep + ext
pig build get citus              # download source
pig build dep citus              # install dependencies
pig build ext citus              # build package
```


## pig sty

Install Pigsty distribution. See [`pig sty`](/docs/pig/sty/) for details.

```bash
pig sty init                     # install Pigsty to ~/pigsty
pig sty boot                     # install Ansible prerequisites
pig sty conf                     # generate configuration
pig sty deploy                   # run deployment playbook
```


## pig pg

Manage local PostgreSQL server. See [`pig pg`](/docs/pig/pg/) for details.

```bash
pig pg init                      # initialize data directory
pig pg start                     # start PostgreSQL
pig pg stop                      # stop PostgreSQL
pig pg status                    # check status
pig pg psql mydb                 # connect to database
pig pg ps                        # show current connections
pig pg vacuum mydb               # vacuum database
pig pg log tail                  # real-time log viewing
```


## pig pt

Manage Patroni HA cluster. See [`pig pt`](/docs/pig/pt/) for details.

```bash
pig pt list                      # list cluster members
pig pt config                    # show cluster config
pig pt config ttl=60             # modify cluster config
pig pt status                    # check service status
pig pt log -f                    # real-time log viewing
```


## pig pb

Manage pgBackRest backup & recovery. See [`pig pb`](/docs/pig/pb/) for details.

```bash
pig pb info                      # show backup info
pig pb ls                        # list all backups
pig pb backup                    # create backup
pig pb backup full               # full backup
pig pb restore -d                # restore to latest
pig pb restore -t "2025-01-01"   # restore to specific time
pig pb log tail                  # real-time log viewing
```


## pig pitr

Orchestrated Point-In-Time Recovery. See [`pig pitr`](/docs/pig/pitr/) for details.

```bash
pig pitr -d                      # recover to latest (most common)
pig pitr -t "2025-01-01 12:00"   # recover to specific time
pig pitr -I                      # recover to backup consistency point
pig pitr -d --dry-run            # show execution plan without running
pig pitr -d -y                   # skip confirmation (for automation)
pig pitr -d --skip-patroni       # skip Patroni management
pig pitr -d --no-restart         # don't auto-start PostgreSQL after restore
```
