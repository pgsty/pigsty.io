---
title: Docker Deployment
linkTitle: Docker
weight: 258
description: Spin up Pigsty in Docker containers for quick testing on macOS/Windows
icon: fa-brands fa-docker
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty is designed to run on native Linux, but can also run in Linux containers with systemd.
If you don't have a native Linux env (e.g., **macOS** or **Windows** users), use Docker to quickly spin up a local single-node Pigsty for testing.


----------------

## Summary

Enter the [**`docker/`**](https://github.com/pgsty/pigsty/tree/main/docker) directory in the Pigsty source and launch with one command:

```bash
cd ~/pigsty/docker
make launch          # Start container + generate config + deploy
```

After deployment, access services as follows:

| Service    | URL / Command                                                    | Credentials        |
|:-----------|:-----------------------------------------------------------------|:-------------------|
| SSH        | `ssh root@localhost -p 2222`                                     | Password: `pigsty` |
| Web Portal | http://localhost:8080                                            | -                  |
| Grafana    | http://localhost:8080/ui                                         | `admin` / `pigsty` |
| PostgreSQL | `psql postgres://dbuser_dba:DBUser.DBA@localhost:5432/postgres`  | `DBUser.DBA`       |
{.full-width}

{{% alert title="Web Portal & PostgreSQL Service" color="info" %}}
Web Portal and PostgreSQL are only available after **Deployment** (`./deploy.yml`) completes.
{{% /alert %}}


----------------

## Prepare

Docker deployment requires:

|    Item    | Requirement                         |   Item   | Requirement          |
|:----------:|:------------------------------------|:--------:|:---------------------|
| **Docker** | Docker 20.10+ (Desktop or CE)       | **CPU**  | At least 1 core      |
| **RAM**    | At least 2GB                        | **Disk** | At least 20GB free   |
{.full-width}


{{% alert title="Good Use Cases" color="success" %}}
- Quick Pigsty experience on macOS/Windows without native Linux
- Learning and testing Pigsty features, dev and debug
- Quick local PostgreSQL dev environment
{{% /alert %}}

{{% alert title="Not Recommended For" color="warning" %}}
- **Production**: Container perf and stability are inferior to native Linux
- **HA Clusters**: Docker single-node mode can't achieve multi-node HA
- **Large Scale**: Use native Linux VMs or physical machines instead
{{% /alert %}}


----------------

## Launch

Pigsty provides out-of-the-box Docker support in the [**`docker/`**](https://github.com/pgsty/pigsty/tree/main/docker) source directory.

The simplest way is `make launch`, which auto-completes: start container, generate config, and deploy:

```bash
cd ~/pigsty/docker
make launch          # One-liner: up + config + deploy
```

Or step by step, allowing inspection and adjustment at each stage:

```bash
cd ~/pigsty/docker
make up              # Start container
make exec            # Enter container
./configure -c docker -g --ip 127.0.0.1  # Generate config
./deploy.yml         # Execute deployment
```

To use locally built images instead of pulling from Docker Hub:

```bash
cd ~/pigsty/docker
make build           # Build images locally
make launch          # Start container + generate config + deploy
```


----------------

## Config

Customize image version and port mappings by editing [**`.env`**](https://github.com/pgsty/pigsty/blob/main/docker/.env):

```bash
# Image config
PIGSTY_IMAGE=pgsty/pigsty     # Image name: pgsty/linux, pgsty/admin, pgsty/infra, pgsty/pgsql, pgsty/pigsty
PIGSTY_VERSION=v4.0.0         # Image tag, matches Pigsty version

# Port mappings (host ports)
PIGSTY_SSH_PORT=2222          # SSH port
PIGSTY_HTTP_PORT=8080         # Nginx HTTP port
PIGSTY_HTTPS_PORT=8443        # Nginx HTTPS port
PIGSTY_PG_PORT=5432           # PostgreSQL port
```

**Port Mapping:**

| Env Var               | Default | Container | Description        |
|:----------------------|:--------|:----------|:-------------------|
| `PIGSTY_SSH_PORT`     | `2222`  | 22        | SSH access port    |
| `PIGSTY_HTTP_PORT`    | `8080`  | 80        | Nginx HTTP port    |
| `PIGSTY_HTTPS_PORT`   | `8443`  | 443       | Nginx HTTPS port   |
| `PIGSTY_PG_PORT`      | `5432`  | 5432      | PostgreSQL port    |
{.full-width}

Override ports via env vars if defaults are occupied:

```bash
PIGSTY_HTTP_PORT=8888 docker compose up -d
```


----------------

## Images

Pigsty provides 5 layered Docker images, each building on the previous. Choose based on your needs:

| Image          | Pull   | Size  | Contents                        | Use Case         |
|:---------------|:-------|:------|:--------------------------------|:-----------------|
| `pgsty/linux`  | ~150MB | 400MB | Debian 13 + systemd + SSH       | Base container   |
| `pgsty/admin`  | ~500MB | 1.3GB | + pig + Ansible + node packages | **Admin node**   |
| `pgsty/infra`  | ~1.0GB | 2.7GB | + monitoring stack              | Infra node       |
| `pgsty/pgsql`  | ~1.2GB | 3.1GB | + PostgreSQL 18 core            | PGSQL node       |
| `pgsty/pigsty` | ~1.6GB | 4.3GB | + all 340+ extensions           | **Full Deploy**  |
{.full-width}

- **Pull**: Compressed transfer size when pulling from Docker Hub
- **Size**: Uncompressed disk size after pulling
- All images support **amd64** (x86_64) and **arm64** (Apple Silicon, AWS Graviton)
- Image tags match Pigsty versions: `v4.0.0`, `latest`, etc.

**Image Hierarchy:**

```
debian:trixie
    └── pgsty/linux   (base + systemd + ssh)
        └── pgsty/admin   (+ pig + ansible + node packages)
            └── pgsty/infra   (+ monitoring stack)
                └── pgsty/pgsql   (+ postgresql core)
                    └── pgsty/pigsty (+ all extensions)
```


----------------

## Commands

Pigsty Docker provides rich Makefile commands for container and image management.

### Docker Compose

Recommended way to run. Common commands:

```bash
make up           # Start container
make down         # Stop and remove container
make start        # Start stopped container
make stop         # Stop container
make restart      # Restart container
make pull         # Pull latest image
make config       # Run ./configure in container
make deploy       # Run ./deploy.yml in container
make launch       # One-liner: up + config + deploy
```

### Container Access

```bash
make exec         # Enter container bash
make ssh          # SSH into container
make log          # View container logs
make status       # View systemd status
make ps           # View process list
make conf         # View config file
make pass         # View passwords in config
```

### Image Build

```bash
make linux        # Build pgsty/linux base image
make admin        # Build pgsty/admin admin node image
make infra        # Build pgsty/infra infra image
make pgsql        # Build pgsty/pgsql PostgreSQL image
make pigsty       # Build pgsty/pigsty full image
make build        # Build all 5 images (same as make images)
make images       # Build all 5 images
```

### Image Push

```bash
make pigsty-push  # Push pgsty/pigsty image (multi-arch)
make images-push  # Push all images
```

### Image Management

```bash
make save         # Export image to pigsty-<version>-<arch>.tgz
make load         # Import image from tgz file
make rmi          # Remove current version's pigsty image
make rmi-all      # Remove current version's all images
```

### Cleanup

```bash
make clean        # Stop and remove container
make purge        # Remove container and wipe data (prompts for confirmation)
```


----------------

## Manual Run

If you prefer `docker run` over Docker Compose:

```bash
mkdir -p /data/pigsty    # Create data directory
docker run -d --privileged --name pigsty \
  -p 2222:22 -p 8080:80 -p 5432:5432 \
  -v /data/pigsty:/data \
  pgsty/pigsty:v4.0.0
docker exec -it pigsty /bin/bash
./configure -c docker -g --ip 127.0.0.1
./deploy.yml
```

Or use Makefile's `make run`:

```bash
make run          # Start with docker run
make exec         # Enter container
make clean        # Stop and remove container
make purge        # Remove container and wipe data
```


----------------

## How It Works

Pigsty Docker images are based on **Debian 13 (Trixie)** with **systemd** as init system.
This keeps service management inside the container consistent with native Linux, using `systemctl`.

Key features:

- **systemd support**: Full systemd running inside container for proper service management
- **SSH access**: Pre-configured SSH service, root password is `pigsty`
- **Privileged mode**: Requires `--privileged` to support systemd
- **Data persistence**: Data persisted via `/data` volume mount
- **Pre-installed software**: Full image includes PostgreSQL 18 and 340+ extensions

When running `./configure` inside the container, `-c docker` applies the Docker-optimized [**config template**](/docs/concept/iac/template/):

- Uses `127.0.0.1` as default IP address
- Optimized for container environment


----------------

## FAQ

### Container won't start

Ensure Docker is properly installed with sufficient resources allocated. On Docker Desktop, allocate at least 2GB RAM.
Check for port conflicts, especially ports 22, 80, 443, 5432.

### Can't access services

Web Portal and PostgreSQL are only available after deployment completes. Ensure `./deploy.yml` finished successfully.
Use `make status` to check service status inside container.

### Port conflicts

If default ports are occupied, override via `.env` file or env vars:

```bash
PIGSTY_HTTP_PORT=8888 PIGSTY_PG_PORT=5433 docker compose up -d
```

### Data persistence

Container data is mounted to `./data` by default. To wipe and start fresh:

```bash
make purge        # Remove container and wipe data (prompts for confirmation)
```

### macOS performance

On macOS with Docker Desktop, performance is worse than native Linux due to virtualization overhead.
This is expected—Docker deployment is for dev/testing. For production, use [**native Linux installation**](/docs/setup/install/).


----------------

## More

- **Docker Hub**: https://hub.docker.com/r/pgsty/pigsty
- **Source Directory**: https://github.com/pgsty/pigsty/tree/main/docker
- **Quick Start**: [**Native Linux Installation**](/docs/setup/install/)
- **Offline Installation**: [**Offline**](/docs/setup/offline/)
- **Production Deployment**: [**Deployment Guide**](/docs/deploy/)

