---
title: Playbooks
weight: 4230
description: How to use the built-in Ansible playbook to manage Docker and quick reference
  for common management commands.
icon: fa-solid fa-scroll
module: [DOCKER]
categories: [Task]
---

The Docker module provides a default playbook [`docker.yml`](#dockeryml) for installing Docker Daemon and Docker Compose.

------

## `docker.yml`

Playbook source file: [`docker.yml`](https://github.com/pgsty/pigsty/blob/main/docker.yml)

Running this playbook will install `docker-ce` and `docker-compose-plugin` on target nodes with the `docker_enabled: true` flag, and enable the `dockerd` service.

The following are the available task subsets in the `docker.yml` playbook:

- `docker_install`   : Install Docker and Docker Compose packages on the node
- `docker_admin`     : Add specified users to the Docker admin user group
- `docker_alias`     : Generate Docker command completion and alias scripts
- `docker_dir`       : Create Docker related directories
- `docker_config`    : Generate Docker daemon service configuration file
- `docker_launch`    : Start the Docker daemon service
- `docker_register`  : Register Docker daemon as a Prometheus monitoring target
- `docker_image`     : Attempt to load pre-cached image tarballs from `/tmp/docker/*.tgz` (if they exist)

The Docker module does not provide a dedicated uninstall playbook. If you need to uninstall Docker, you can manually stop Docker and then remove it:

```bash
systemctl stop docker                        # Stop Docker daemon service
yum remove docker-ce docker-compose-plugin   # Uninstall Docker on EL systems
apt remove docker-ce docker-compose-plugin   # Uninstall Docker on Debian systems
```




<br>

--------

<br>

