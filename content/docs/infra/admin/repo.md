---
title: Software Repository
description: Managing local APT/YUM software repositories
weight: 3104
icon: fa-solid fa-box-archive
categories: [Task]
---


Pigsty supports creating and managing local APT/YUM software repositories for offline deployment or accelerated package installation.

----------------

## Quick Start

To add packages to the local repository:

1. Add packages to [`repo_packages`](../param/#repo_packages) (default packages)
2. Add packages to [`repo_extra_packages`](../param/#repo_extra_packages) (extra packages)
3. Run the build command:

```bash
./infra.yml -t repo_build   # Build local repo from upstream
./node.yml -t node_repo     # Refresh node repository cache
```


----------------

## Package Aliases

Pigsty predefines common package combinations for batch installation:

### EL Systems (RHEL/CentOS/Rocky)

| Alias            | Description                                        |
|------------------|----------------------------------------------------|
| `node-bootstrap` | Ansible, Python3 tools, SSH related                |
| `infra-package`  | Nginx, etcd, HAProxy, monitoring exporters, MinIO  |
| `pgsql-utility`  | Patroni, pgBouncer, pgBackRest, PG tools           |
| `pgsql`          | Full PostgreSQL (server, client, extensions)       |
| `pgsql-mini`     | Minimal PostgreSQL installation                    |

### Debian/Ubuntu Systems

| Alias            | Description                                 |
|------------------|---------------------------------------------|
| `node-bootstrap` | Ansible, development tools                  |
| `infra-package`  | Infrastructure components (Debian naming)   |
| `pgsql-client`   | PostgreSQL client                           |
| `pgsql-server`   | PostgreSQL server and related packages      |




----------------

## Playbook Tasks

### Main Tasks

| Task            | Description                               |
|-----------------|-------------------------------------------|
| `repo`          | Create local repo from internet or offline packages |
| `repo_build`    | Build from upstream if not exists         |
| `repo_upstream` | Add upstream repository files             |
| `repo_pkg`      | Download packages and dependencies        |
| `repo_create`   | Create/update YUM or APT repository       |
| `repo_nginx`    | Start Nginx file server                   |

### Complete Task List

```bash
./infra.yml -t repo_dir          # Create local repository directory
./infra.yml -t repo_check        # Check if local repo exists
./infra.yml -t repo_prepare      # Use existing repo directly
./infra.yml -t repo_build        # Build repo from upstream
./infra.yml -t repo_upstream     # Add upstream repositories
./infra.yml -t repo_remove       # Delete existing repo files
./infra.yml -t repo_add          # Add repo to system directory
./infra.yml -t repo_url_pkg      # Download packages from internet
./infra.yml -t repo_cache        # Create metadata cache
./infra.yml -t repo_boot_pkg     # Install bootstrap packages
./infra.yml -t repo_pkg          # Download packages and dependencies
./infra.yml -t repo_create       # Create local repository
./infra.yml -t repo_use          # Add new repo to system
./infra.yml -t repo_nginx        # Start Nginx file server
```


----------------

## Common Operations

### Add New Packages

```bash
# 1. Configure upstream repositories
./infra.yml -t repo_upstream

# 2. Download packages and dependencies
./infra.yml -t repo_pkg

# 3. Build local repository metadata
./infra.yml -t repo_create
```

### Refresh Node Repositories

```bash
./node.yml -t node_repo    # Refresh repository cache on all nodes
```

### Complete Repository Rebuild

```bash
./infra.yml -t repo        # Create repo from internet or offline packages
```
