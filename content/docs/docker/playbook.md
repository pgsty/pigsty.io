---
title: Playbooks
weight: 4230
description: How to use the built-in Ansible playbook to manage Docker and quick reference
  for common management commands.
icon: fa-solid fa-scroll
module: [DOCKER]
categories: [Task]
---

The Docker module provides the [`docker.yml`](#dockeryml) playbook to install Docker Daemon and Docker Compose.

## `docker.yml`

Playbook source file: [`docker.yml`](https://github.com/pgsty/pigsty/blob/main/docker.yml)

The playbook installs `docker-ce` and `docker-compose-plugin` on target nodes that have `docker_enabled: true`. It also enables the `dockerd` service.

The `docker.yml` playbook has these task subsets:

- `docker_install`: Install Docker and Docker Compose packages on the node.
- `docker_admin`: Add the specified users to the Docker admin user group.
- `docker_dir`: Create Docker directories.
- `docker_config`: Generate the Docker daemon service configuration file.
- `docker_launch`: Start the Docker daemon service.
- `docker_register`: Register the Docker daemon as a monitoring target. Alias tags: `register` / `add_metrics`.
- `docker_image`: Try to load cached image tarballs from `/tmp/docker/*.tgz`, if they exist.

The Docker module does not provide a dedicated uninstall playbook. To uninstall Docker, manually stop it and remove it:

```bash
systemctl stop docker                        # Stop Docker daemon service
yum remove docker-ce docker-compose-plugin   # Uninstall Docker on EL systems
apt remove docker-ce docker-compose-plugin   # Uninstall Docker on Debian systems
```

If you set `docker_enabled` to `false`, `docker.yml` skips the entire Docker role. This change does not stop or uninstall an existing Docker deployment. It does not delete `/data/docker`.

The manual commands above also preserve the data directory. To deregister Docker's VictoriaMetrics file-discovery target with the node, run the `node_deregister` task in `node-rm.yml`.
