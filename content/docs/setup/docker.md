---
title: Docker Deployment
linkTitle: Docker
weight: 258
description: Run Pigsty in a Docker container for local development and testing.
icon: fa-brands fa-docker
module: [PIGSTY]
categories: [Tutorial]
---

Pigsty runs on native Linux.
It can also run in Linux containers with systemd.
If you use macOS or Windows, use Docker to try a local single-node installation.

## Quick Start

Enter the [`docker/` source directory](https://github.com/pgsty/pigsty/tree/main/docker).
Run the launch command:

```bash
cd ~/pigsty/docker
make launch          # Start container + generate config + deploy
```

After deployment, use these addresses and commands to connect:

| Service    | URL / Command                                                    | Credentials        |
|:-----------|:-----------------------------------------------------------------|:-------------------|
| SSH        | `ssh root@localhost -p 2222`                                     | Password: `pigsty` |
| Web Portal | http://localhost:8080                                            | -                  |
| Grafana    | http://localhost:8080/ui                                         | `admin` / `grafana_admin_password` |
| PostgreSQL | `psql 'postgres://dbuser_dba:<pg_admin_password>@localhost:5432/postgres'` | `pg_admin_password` |

The `make launch` command runs `./configure -g` to generate random passwords.
Use this command to find the generated passwords:

```bash
cd ~/pigsty/docker
make pass | grep -E 'grafana_admin_password|pg_admin_password'
```

> [!NOTE] Complete deployment before connection
> The Web Portal and PostgreSQL become available after `./deploy.yml` completes successfully.

## Prepare

Make sure that the host meets these requirements:

|    Item    | Requirement                   |   Item   | Requirement        |
|:----------:|:------------------------------|:--------:|:-------------------|
| **Docker** | Docker 20.10+ (Desktop or CE) | **CPU**  | At least 1 core    |
| **RAM**    | At least 2GB                  | **Disk** | At least 20GB free |

Make sure that host ports `2222`, `8080`, `8443`, and `5432` are available.
If a port is in use, change its mapping in [`.env`](#config) before launch.

> [!TIP] Suitable uses
> - Try Pigsty on macOS or Windows.
> - Learn, test, develop, or debug Pigsty features.
> - Run a local PostgreSQL development environment.

> [!WARNING] Deployment limits
> This single-node container does not provide high availability across multiple nodes.
> For production or large deployments, use native Linux virtual machines or physical servers.
> Native Linux avoids the container and virtualization overhead of this testing environment.

## Image

Pigsty supplies the `pgsty/pigsty` image on [Docker Hub](https://hub.docker.com/r/pgsty/pigsty).

| Image          | Pull   | Size  | Contents                            |
|:---------------|:-------|:------|:------------------------------------|
| `pgsty/pigsty` | ~500MB | 1.3GB | Debian 13 + systemd + SSH + pig + Ansible |

The image supports `amd64` (`x86_64`) and `arm64`.
The ARM architecture includes Apple Silicon and AWS Graviton.
Image tags follow Pigsty versions.
The `latest` and `{{< param stable_version >}}` tags point to the current release.
Select a version tag for repeatable deployment.

The image uses Debian 13 (Trixie).
It includes systemd, SSH, the [pig command-line tool](/docs/pig/), Ansible, and initialized Pigsty source.
The Docker configuration template prepares it for `./deploy.yml`.

## Launch

Use the commands in the [`docker/` directory](https://github.com/pgsty/pigsty/tree/main/docker).
The `make launch` command starts the container, generates its configuration, and runs deployment:

```bash
cd ~/pigsty/docker
make launch          # One-liner: up + config + deploy
```

To examine each stage separately, run the commands in this order:

```bash
cd ~/pigsty/docker
make up              # Start container
make exec            # Enter container
./configure -c docker -g --ip 127.0.0.1  # Generate config (optional, pre-configured)
./deploy.yml         # Execute deployment
```

To build the image locally, use these commands:

```bash
cd ~/pigsty/docker
make build           # Build image locally
make launch          # Start container + generate config + deploy
```

## Config

Set the image version and port mappings in [`.env`](https://github.com/pgsty/pigsty/blob/main/docker/.env):

```bash
PIGSTY_VERSION=v4.5.0         # Current main source default; verify the remote tag before pulling
PIGSTY_SSH_PORT=2222          # SSH port
PIGSTY_HTTP_PORT=8080         # Nginx HTTP port
PIGSTY_HTTPS_PORT=8443        # Nginx HTTPS port
PIGSTY_PG_PORT=5432           # PostgreSQL port
```

The port variables map host ports to container ports:

| Env Var             | Default  | Container | Description       |
|:--------------------|:---------|:----------|:------------------|
| `PIGSTY_VERSION`    | `v4.5.0`    | -         | Current `main` source default; verify the remote tag separately |
| `PIGSTY_SSH_PORT`   | `2222`   | 22        | SSH access port   |
| `PIGSTY_HTTP_PORT`  | `8080`   | 80        | Nginx HTTP port   |
| `PIGSTY_HTTPS_PORT` | `8443`   | 443       | Nginx HTTPS port  |
| `PIGSTY_PG_PORT`    | `5432`   | 5432      | PostgreSQL port   |

If a default host port is in use, supply a different value through an environment variable:

```bash
PIGSTY_HTTP_PORT=8888 docker compose up -d
```

## Commands

The Docker Makefile supplies commands to manage containers and images.
Run these commands from the Docker source directory.

### Docker Compose

Use Docker Compose for the standard deployment procedure:

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

Use these commands to enter the container or open a service client:

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

Use these commands to build images:

```bash
make build        # Build image locally
make buildnc      # Build without cache
make push         # Build and push multi-arch image
```

### Image Management

Use these commands to manage images:

```bash
make save         # Export image to pigsty-<version>-<arch>.tgz
make load         # Import image from tgz file
make rmi          # Remove current version's pigsty image
```

### Cleanup

Use these commands to remove the selected resources:

```bash
make clean        # Stop and remove container
make purge        # Stop and remove the container, then directly delete ./data in the current directory
```

> [!WARNING] Purge deletes local data
> The `make purge` command removes the container and runs `rm -rf -- ./data`.
> It has no countdown prompt.
> Before you run it, confirm the current directory and the target data.
> Back up any data that you need to keep.

## Manual Run

To start the container with `docker run`, use this command:

```bash
mkdir -p ./data
docker run -d --privileged --name pigsty \
  -p 2222:22 -p 8080:80 -p 5432:5432 \
  -v ./data:/data \
  pgsty/pigsty:<version>

docker exec -it pigsty ./configure -c docker -g --ip 127.0.0.1
docker exec -it pigsty ./deploy.yml
```

You can also use the Makefile command:

```bash
make run          # Start with docker run
make exec         # Enter container
make clean        # Stop and remove container
make purge        # Remove container and directly delete ./data in the current directory
```

## How It Works

The image uses Debian 13 (Trixie) with systemd as the initialization system.
Manage services inside the container with `systemctl`, as on native Linux.

The container has these properties:

- Systemd manages the services.
- SSH permits root access with the password `pigsty`.
- The `--privileged` option supplies the access required by systemd.
- The `/data` volume keeps data outside the container.
- The image includes pig, Ansible, and initialized Pigsty source.

The image build runs these initialization steps:

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

The `./configure -c docker` command selects the [Docker configuration template](/docs/concept/iac/template/).
This template uses `127.0.0.1` as the default IP address and applies settings for the container environment.

## FAQ

### Container won't start

Make sure that Docker is installed and the host meets the resource requirements.
On Docker Desktop, allocate at least `2 GB` of memory.
Examine ports `2222`, `8080`, `8443`, and `5432` for conflicts.

### Can't access services

Make sure that `./deploy.yml` completed successfully.
The Web Portal and PostgreSQL require this deployment stage.
Run `make status` to see the service status.

### Port conflicts

Change the port in `.env` or supply an environment variable:

```bash
PIGSTY_HTTP_PORT=8888 PIGSTY_PG_PORT=5433 docker compose up -d
```

### Data persistence

The host directory `./data` stores persistent container data.
To remove this data and start again, use these commands:

```bash
make purge        # Remove container and directly delete ./data in the current directory (no countdown)
```

The purge step deletes the existing data.
Back up any required data first.

### macOS performance

Docker Desktop on macOS uses a virtual machine.
This adds overhead compared with native Linux.
Use Docker for development and testing.
For production, use [native Linux installation](/docs/setup/install/).

## More

- [Docker Hub](https://hub.docker.com/r/pgsty/pigsty) supplies the image.
- [Source Directory](https://github.com/pgsty/pigsty/tree/main/docker) contains the Docker configuration and Makefile.
- [Native Linux Installation](/docs/setup/install/) describes single-node deployment.
- [Offline Installation](/docs/setup/offline/) describes installation without Internet access.
- [Deployment Guide](/docs/deploy/) describes production deployment.
