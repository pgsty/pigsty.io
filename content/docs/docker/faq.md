---
title: FAQ
weight: 4250
description: Frequently asked questions about the Pigsty Docker module
icon: fa-solid fa-circle-question
module: [Docker]
categories: [Reference]
---



--------

## Who Can Run Docker Commands?

By default, Pigsty adds both the management user running the playbook on the remote node (i.e., the SSH login user on the target node) and the admin user specified in the [`node_admin_username`](/docs/node/param#node_admin_username) parameter to the Docker operating system group.
All users in this group (`docker`) can manage Docker using the `docker` CLI command.

If you want other users to be able to run Docker commands, add that OS user to the docker group:

```bash
usermod -aG docker <username>
```


--------

## Working Through a Proxy

During Docker installation, if the [`proxy_env`](/docs/infra/param#proxy_env) parameter exists,
the HTTP proxy server configuration will be written to the `/etc/docker/daemon.json` configuration file.

Docker will use this proxy server when pulling images from upstream registries.

Tip: Running `configure` with the `-x` flag will write the proxy server configuration from your current environment into `proxy_env`.


--------

## Using Mirror Registries

If you're in mainland China and affected by the Great Firewall, you can consider using Docker mirror sites available within China, such as quay.io:

```bash
docker login quay.io    # Enter username and password to log in
```

Update (June 2024): All previously accessible Docker mirror sites in China have been blocked. Please use a proxy server to access and pull images.



--------

## Adding Docker to Monitoring

During Docker module installation, you can register Docker as a monitoring target by running the `docker_register` or `register_prometheus` subtask for specific nodes:

```bash
./docker.yml -l <your-node-selector> -t register_prometheus
```



--------

## Using Software Templates

Pigsty provides a collection of [software templates](/docs/app/) that can be launched using Docker Compose, ready to use out of the box.

But you need to install the Docker module first.
