---
title: Docker Deployment
linkTitle: Docker
weight: 258
description: Spin up Pigsty in Docker containers for quick testing on macOS/Windows
icon: fa-brands fa-docker
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty is designed for native Linux, but can also run in Linux containers with systemd.
If you don't have native Linux (e.g., **macOS** or **Windows**), use Docker to spin up a local single-node Pigsty for testing.


----------------

## Quick Start

Enter the [**`docker/`**](https://github.com/pgsty/pigsty/tree/main/docker) dir in Pigsty source and launch with one command:

```bash
cd ~/pigsty/docker
make launch          # Start container + generate config + deploy
```

After deployment, access services:

| Service    | URL / Command                                                    | Credentials        |
|:-----------|:-----------------------------------------------------------------|:-------------------|
| SSH        | `ssh root@localhost -p 2222`                                     | Password: `pigsty` |
| Web Portal | http://localhost:8080                                            | -                  |
| Grafana    | http://localhost:8080/ui                                         | `admin` / `grafana_admin_password` |
| PostgreSQL | `psql 'postgres://dbuser_dba:<pg_admin_password>@localhost:5432/postgres'` | `pg_admin_password` |

`make launch` runs `./configure -g` internally to generate random passwords. You can check them with:

```bash
cd ~/pigsty/docker
make pass | grep -E 'grafana_admin_password|pg_admin_password'
```

{{% alert title="Web Portal & PostgreSQL" color="info" %}}
Web Portal and PostgreSQL are only available after **Deployment** (`./deploy.yml`) completes.
{{% /alert %}}


----------------

## Prepare

Docker deployment requires:

|    Item    | Requirement                   |   Item   | Requirement        |
|:----------:|:------------------------------|:--------:|:-------------------|
| **Docker** | Docker 20.10+ (Desktop or CE) | **CPU**  | At least 1 core    |
| **RAM**    | At least 2GB                  | **Disk** | At least 20GB free |

Ensure default host ports (2222/8080/8443/5432) are available, or edit [**`.env`**](#config) first.

{{% alert title="Good Use Cases" color="success" %}}
- Quick Pigsty experience on macOS/Windows without native Linux
- Learning and testing Pigsty features, dev and debug
- Quick local PostgreSQL dev environment
{{% /alert %}}

{{% alert title="Not Recommended For" color="warning" %}}
- **Production**: Container perf and stability inferior to native Linux
- **HA Clusters**: Docker single-node mode can't achieve multi-node HA
- **Large Scale**: Use native Linux VMs or physical machines
{{% /alert %}}


----------------

## Image

Pigsty provides an out-of-the-box Docker image on [**Docker Hub**](https://hub.docker.com/r/pgsty/pigsty).

| Image          | Pull   | Size  | Contents                            |
|:---------------|:-------|:------|:------------------------------------|
| `pgsty/pigsty` | ~500MB | 1.3GB | Debian 13 + systemd + SSH + pig + Ansible |

- Supports both **amd64** (x86_64) and **arm64** (Apple Silicon, AWS Graviton)
- Tags match Pigsty versions: `v4.4.0`, `latest`, etc.
- Pre-configured with docker template, ready to run `./deploy.yml`

Built on **Debian 13 (Trixie)**, pre-installed with [**`pig`**](/docs/pig/) CLI and Ansible, Pigsty source already initialized.


----------------

## Launch

Pigsty provides out-of-the-box Docker support in the [**`docker/`**](https://github.com/pgsty/pigsty/tree/main/docker) source directory.

Simplest way is `make launch`, which auto-completes: start container, generate config, and deploy:

```bash
cd ~/pigsty/docker
make launch          # One-liner: up + config + deploy
```

Or step by step for inspection at each stage:

```bash
cd ~/pigsty/docker
make up              # Start container
make exec            # Enter container
./configure -c docker -g --ip 127.0.0.1  # Generate config (optional, pre-configured)
./deploy.yml         # Execute deployment
```

To build locally instead of pulling from Docker Hub:

```bash
cd ~/pigsty/docker
make build           # Build image locally
make launch          # Start container + generate config + deploy
```


----------------

## Config

Customize image version and port mappings via [**`.env`**](https://github.com/pgsty/pigsty/blob/main/docker/.env):

```bash
PIGSTY_VERSION=<version>      # Image tag (example: v4.4.0 or latest)
PIGSTY_SSH_PORT=2222          # SSH port
PIGSTY_HTTP_PORT=8080         # Nginx HTTP port
PIGSTY_HTTPS_PORT=8443        # Nginx HTTPS port
PIGSTY_PG_PORT=5432           # PostgreSQL port
```

**Port Mapping:**

| Env Var             | Default  | Container | Description       |
|:--------------------|:---------|:----------|:------------------|
| `PIGSTY_VERSION`    | `<version>` | -         | Image tag (e.g. `v4.4.0` / `latest`) |
| `PIGSTY_SSH_PORT`   | `2222`   | 22        | SSH access port   |
| `PIGSTY_HTTP_PORT`  | `8080`   | 80        | Nginx HTTP port   |
| `PIGSTY_HTTPS_PORT` | `8443`   | 443       | Nginx HTTPS port  |
| `PIGSTY_PG_PORT`    | `5432`   | 5432      | PostgreSQL port   |

Override via env vars if defaults are occupied:

```bash
PIGSTY_HTTP_PORT=8888 docker compose up -d
```


----------------

## Commands

Pigsty Docker provides Makefile commands for container and image management.

### Docker Compose

Recommended way to run:

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
make build        # Build image locally
make buildnc      # Build without cache
make push         # Build and push multi-arch image
```

### Image Management

```bash
make save         # Export image to pigsty-<version>-<arch>.tgz
make load         # Import image from tgz file
make rmi          # Remove current version's pigsty image
```

### Cleanup

```bash
make clean        # Stop and remove container
make purge        # Remove container and wipe data (prompts)
```


----------------

## Manual Run

If you prefer `docker run` over Docker Compose:

```bash
mkdir -p ./data
docker run -d --privileged --name pigsty \
  -p 2222:22 -p 8080:80 -p 5432:5432 \
  -v ./data:/data \
  pgsty/pigsty:<version>

docker exec -it pigsty ./configure -c docker -g --ip 127.0.0.1
docker exec -it pigsty ./deploy.yml
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

Pigsty Docker image is based on **Debian 13 (Trixie)** with **systemd** as init.
Service management inside container stays consistent with native Linux via `systemctl`.

Key features:

- **systemd support**: Full systemd for proper service management
- **SSH access**: Pre-configured SSH, root password is `pigsty`
- **Privileged mode**: Requires `--privileged` for systemd
- **Data persistence**: Via `/data` volume mount
- **Pre-installed**: pig CLI + Ansible, Pigsty source initialized

Image build executes these init steps:

```dockerfile
# Install pig CLI
RUN echo "deb [trusted=yes] https://repo.pigsty.io/apt/infra/ generic main" \
    > /etc/apt/sources.list.d/pigsty.list \
    && apt-get update && apt-get install -y pig

# Initialize Pigsty source and install Ansible
RUN pig sty init -v ${PIGSTY_VERSION} \
    && pig sty boot \
    && pig sty conf -c docker --ip 127.0.0.1
```

Running `./configure` with `-c docker` applies the Docker-optimized [**config template**](/docs/concept/iac/template/):

- Uses `127.0.0.1` as default IP
- Tuned for container environment


----------------

## FAQ

### Container won't start

Ensure Docker is properly installed with sufficient resources. On Docker Desktop, allocate at least 2GB RAM.
Check for port conflicts on 2222, 8080, 8443, 5432.

### Can't access services

Web Portal and PostgreSQL only available after deployment. Ensure `./deploy.yml` finished successfully.
Use `make status` to check service status.

### Port conflicts

Override via `.env` or env vars:

```bash
PIGSTY_HTTP_PORT=8888 PIGSTY_PG_PORT=5433 docker compose up -d
```

### Data persistence

Container data mounted to `./data`. To wipe and start fresh:

```bash
make purge        # Remove container and wipe data (prompts)
```

### macOS performance

On macOS with Docker Desktop, performance is worse than native Linux due to virtualization overhead.
Expected—Docker deployment is for dev/testing. For production, use [**native Linux installation**](/docs/setup/install/).


----------------

## More

- **Docker Hub**: https://hub.docker.com/r/pgsty/pigsty
- **Source Directory**: https://github.com/pgsty/pigsty/tree/main/docker
- **Quick Start**: [**Native Linux Installation**](/docs/setup/install/)
- **Offline Installation**: [**Offline**](/docs/setup/offline/)
- **Production Deployment**: [**Deployment Guide**](/docs/deploy/)
