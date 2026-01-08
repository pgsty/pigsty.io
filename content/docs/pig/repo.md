---
title: "CMD: pig repo"
linkTitle: "CMD: pig repo"
description: "Manage software repositories with pig repo subcommand"
weight: 5280
icon: fas fa-warehouse
module: [PIG]
categories: [Admin]
---

The `pig repo` command is a comprehensive tool for managing package repositories on Linux systems. It provides functionality to add, remove, create, and manage software repositories for both RPM-based (RHEL/CentOS/Rocky/Alma) and Debian-based (Debian/Ubuntu) distributions.

| Command | Description | Notes |
|:---|:---|:---|
| `repo list` | Print available repo and module list | |
| `repo info` | Get repo detailed information | |
| `repo status` | Show current repo status | |
| `repo add` | Add new repository | Requires sudo or root |
| `repo set` | Wipe, overwrite, and update repository | Requires sudo or root |
| `repo rm` | Remove repository | Requires sudo or root |
| `repo update` | Update repo cache | Requires sudo or root |
| `repo create` | Create local YUM/APT repository | Requires sudo or root |
| `repo cache` | Create offline package from local repo | Requires sudo or root |
| `repo boot` | Bootstrap repo from offline package | Requires sudo or root |


## Quick Start

```bash
# Method 1: Clean existing repos, add all necessary repos and update cache (recommended)
pig repo add all --remove --update    # Remove old repos, add all essentials, update cache

# Method 1 variant: One-step
pig repo set                          # = pig repo add all --remove --update

# Method 2: Gentle approach - only add required repos, keep existing config
pig repo add pgsql                    # Add PGDG and Pigsty repos with cache update
pig repo add pigsty --region=china    # Add Pigsty repo, specify China region
pig repo add pgdg   --region=default  # Add PGDG, specify default region
pig repo add infra  --region=europe   # Add INFRA repo, specify Europe region

# If no -u|--update option above, run this command additionally
pig repo update                       # Update system package cache
```


## Modules

In pig, APT/YUM repositories are organized into **modules** — groups of repositories serving a specific purpose.

| Module | Description | Repository List |
|:---:|:---|:---|
| `all` | All core modules needed to install PG | `node` + `infra` + `pgsql` |
| `pgsql` | PGDG + Pigsty PG extensions | `pigsty-pgsql` + `pgdg` |
| `pigsty` | Pigsty Infra + PGSQL repos | pigsty-infra, pigsty-pgsql |
| `pgdg` | PGDG official repository | pgdg-common, pgdg13-18 |
| `node` | Linux system repositories | base, updates, extras, epel... |
| `infra` | Infrastructure component repos | pigsty-infra, nginx, docker-ce |


## repo add

Add repository configuration files to the system. Requires root/sudo privileges.

```bash
pig repo add pgdg                # Add PGDG repository
pig repo add pgdg pigsty         # Add multiple repositories
pig repo add all                 # Add all essential repos (pgdg + pigsty + node)
pig repo add pigsty -u           # Add and update cache
pig repo add all -r              # Remove existing repos before adding
pig repo add all -ru             # Remove, add, and update (complete reset)
pig repo add pgdg --region=china # Use China mirrors
```

**Options:**
- `-r|--remove`: Remove existing repos before adding new ones
- `-u|--update`: Run package cache update after adding repos
- `--region <region>`: Use regional mirror repositories (`default` / `china` / `europe`)


## repo set

Equivalent to `repo add --remove --update`. Wipes existing repositories and sets up new ones, then updates cache.

```bash
pig repo set                     # Replace with default repos
pig repo set pgdg pigsty         # Replace with specific repos and update
pig repo set all --region=china  # Use China mirrors
```


## repo rm

Remove repository configuration files and back them up.

```bash
pig repo rm                      # Remove all repos
pig repo rm pgdg                 # Remove specific repo
pig repo rm pgdg pigsty -u       # Remove and update cache
```


## repo update

Update package manager cache to reflect repository changes.

```bash
pig repo update                  # Update package cache
```

| Platform | Equivalent Command |
|:---:|:---|
| EL | `dnf makecache` |
| Debian | `apt update` |


## repo create

Create local package repository for offline installations.

```bash
pig repo create                  # Create at default location (/www/pigsty)
pig repo create /srv/repo        # Create at custom location
```


## repo cache

Create compressed tarball of repository contents for offline distribution.

```bash
pig repo cache                   # Default: /www to /tmp/pkg.tgz
pig repo cache -f                # Force overwrite existing
pig repo cache -d /srv           # Custom source directory
```


## repo boot

Extract and set up local repository from offline package.

```bash
pig repo boot                    # Default: /tmp/pkg.tgz to /www
pig repo boot -p /mnt/pkg.tgz   # Custom package path
pig repo boot -d /srv           # Custom target directory
```


--------

## Common Scenarios

### Scenario 1: Fresh PostgreSQL Installation

```bash
# Setup repositories
sudo pig repo add -ru

# Install PostgreSQL 17
sudo pig ext install pg17

# Install popular extensions
sudo pig ext add pg_duckdb postgis timescaledb
```

### Scenario 2: Air-gapped Environment

```bash
# On internet-connected machine:
sudo pig repo add -ru
sudo pig ext install pg17
sudo pig ext add pg_duckdb postgis
sudo pig repo create
sudo pig repo cache

# Transfer /tmp/pkg.tgz to air-gapped machine

# On air-gapped machine:
sudo pig repo boot
sudo pig repo add local
sudo pig ext install pg17
sudo pig ext add pg_duckdb postgis
```

### Scenario 3: Using Regional Mirrors

```bash
# For users in China
sudo pig repo add all --region=china -u

# Check mirror URLs
pig repo info pgdg
```

