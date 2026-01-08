---
title: Parameters
description: DOCKER module provides 8 configuration parameters
weight: 4220
icon: fa-solid fa-sliders
categories: [Reference]
---

The DOCKER module provides 8 configuration parameters.


## Parameter Overview

The [`DOCKER`](#docker) parameter group is used for Docker container engine deployment and configuration, including enable switch, data directory, storage driver, registry mirrors, and monitoring.

| Parameter                                           |    Type    |  Level  | Description                                              |
|:----------------------------------------------------|:----------:|:-------:|:---------------------------------------------------------|
| [`docker_enabled`](#docker_enabled)                 |   `bool`   | `G/C/I` | Enable Docker on current node? disabled by default       |
| [`docker_data`](#docker_data)                       |   `path`   | `G/C/I` | Docker data directory, `/data/docker` by default         |
| [`docker_storage_driver`](#docker_storage_driver)   |   `enum`   | `G/C/I` | Docker storage driver, `overlay2` by default             |
| [`docker_cgroups_driver`](#docker_cgroups_driver)   |   `enum`   | `G/C/I` | Docker cgroup driver: cgroupfs or systemd                |
| [`docker_registry_mirrors`](#docker_registry_mirrors) | `string[]` | `G/C/I` | Docker registry mirror list                            |
| [`docker_exporter_port`](#docker_exporter_port)     |   `port`   |   `G`   | Docker metrics exporter port, `9323` by default          |
| [`docker_image`](#docker_image)                     | `string[]` | `G/C/I` | Docker images to pull, empty list by default             |
| [`docker_image_cache`](#docker_image_cache)         |   `path`   | `G/C/I` | Docker image cache tarball path, `/tmp/docker/*.tgz`     |


You can use the [`docker.yml`](https://github.com/pgsty/pigsty/blob/main/docker.yml) playbook to install and enable Docker on nodes.

Default parameters are defined in [`roles/docker/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/docker/defaults/main.yml)


```yaml
docker_enabled: false             # Enable Docker on current node?
docker_data: /data/docker         # Docker data directory, /data/docker by default
docker_storage_driver: overlay2   # Docker storage driver, overlay2/zfs/btrfs...
docker_cgroups_driver: systemd    # Docker cgroup driver: cgroupfs or systemd
docker_registry_mirrors: []       # Docker registry mirror list
docker_exporter_port: 9323        # Docker metrics exporter port, 9323 by default
docker_image: []                  # Docker images to pull after startup
docker_image_cache: /tmp/docker/*.tgz # Docker image cache tarball glob pattern
```



### `docker_enabled`

Parameter: `docker_enabled`, Type: `bool`, Level: `G/C/I`

Enable Docker on current node? Default: `false`, meaning Docker is not enabled.




### `docker_data`

Parameter: `docker_data`, Type: `path`, Level: `G/C/I`

Docker data directory, default is `/data/docker`.

This directory stores Docker images, containers, volumes, and other data. If you have a dedicated data disk, it's recommended to point this directory to that disk's mount point.




### `docker_storage_driver`

Parameter: `docker_storage_driver`, Type: `enum`, Level: `G/C/I`

Docker storage driver, default is `overlay2`.

See official documentation: https://docs.docker.com/engine/storage/drivers/select-storage-driver/

Available storage drivers include:

- `overlay2`: Recommended default driver, suitable for most scenarios
- `fuse-overlayfs`: For rootless container scenarios
- `btrfs`: When using Btrfs filesystem
- `zfs`: When using ZFS filesystem
- `vfs`: For testing purposes, not recommended for production




### `docker_cgroups_driver`

Parameter: `docker_cgroups_driver`, Type: `enum`, Level: `G/C/I`

Docker cgroup filesystem driver, can be `cgroupfs` or `systemd`, default: `systemd`





### `docker_registry_mirrors`

Parameter: `docker_registry_mirrors`, Type: `string[]`, Level: `G/C/I`

Docker registry mirror list, default: `[]` empty array.

You can use Docker mirror sites to accelerate image pulls. Here are some examples:

```yaml
["https://docker.m.daocloud.io"]                # DaoCloud mirror
["https://docker.1ms.run"]                      # 1ms mirror
["https://mirror.ccs.tencentyun.com"]           # Tencent Cloud internal mirror
["https://registry.cn-hangzhou.aliyuncs.com"]   # Alibaba Cloud mirror (requires login)
```

You can also consider using a Cloudflare Worker to set up a [Docker Proxy](https://github.com/cmliu/CF-Workers-docker.io) for faster access.

If pull speeds are still too slow, consider using alternative registries: `docker login quay.io`




### `docker_exporter_port`

Parameter: `docker_exporter_port`, Type: `port`, Level: `G`

Docker metrics exporter port, default is `9323`.

The Docker daemon exposes Prometheus-format monitoring metrics on this port for collection by monitoring infrastructure.




### `docker_image`

Parameter: `docker_image`, Type: `string[]`, Level: `G/C/I`

List of Docker images to pull, default is empty list `[]`.

Docker image names specified here will be automatically pulled during the installation phase.





### `docker_image_cache`

Parameter: `docker_image_cache`, Type: `path`, Level: `G/C/I`

Local Docker image cache tarball glob pattern, default is `/tmp/docker/*.tgz`.

You can use `docker save | gzip` to package images and automatically import them during Docker installation via this parameter.

`.tgz` tarball files matching this pattern will be imported into Docker one by one using:

```bash
cat *.tgz | gzip -d -c - | docker load
```


