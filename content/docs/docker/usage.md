---
title: Usage
weight: 4210
description: Docker module quick start guide - installation, removal, download, repository,
  mirrors, proxy, and image pulling.
icon: fa-solid fa-bell-concierge
module: [DOCKER]
categories: [Reference]
---


Pigsty has built-in [**Docker**](https://www.docker.com/) support, which you can use to quickly deploy containerized applications.


--------

## Getting Started

Docker is an **optional module**, and in most of Pigsty's configuration templates, Docker is **not enabled by default**. Therefore, users need to explicitly **download** and **configure** it to use Docker in Pigsty.

For example, in the default [`meta`](/docs/conf/meta) template, Docker is not downloaded or installed by default. However, in the [`rich`](/docs/conf/rich) single-node template, Docker is downloaded and installed.

The key difference between these two configurations lies in these two parameters: [`repo_modules`](/docs/infra/param#repo_modules) and [`repo_packages`](/docs/infra/param#repo_packages).

```yaml
repo_modules: infra,node,pgsql,docker  # <--- Enable Docker repository
repo_packages:
  - node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-common, docker   # <--- Download Docker
```

After Docker is downloaded, you need to set the [**`docker_enabled`**](param#docker_enabled): `true` flag on the nodes where you want to install Docker, and configure [**other parameters**](param) as needed.

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 ,nodename: infra-1 }
    10.10.10.11: { infra_seq: 2 ,nodename: infra-2 }
  vars:
    docker_enabled: true  # Install Docker on this group!
```

Finally, use the [`docker.yml`](playbook#dockeryml) playbook to install it on the nodes:

```bash
./docker.yml -l infra    # Install Docker on the infra group
```



--------

## Installation

If you want to temporarily install Docker directly from the internet on certain nodes, you can use the following command:

```bash
./node.yml -e '{"node_repo_modules":"node,docker","node_packages":["docker-ce,docker-compose-plugin"]}' -t node_repo,node_pkg -l <select_group_ip>
```

This command will first enable the upstream software sources for the `node,docker` modules on the target nodes, then install the `docker-ce` and `docker-compose-plugin` packages (same package names for EL/Debian).

If you want Docker-related packages to be automatically downloaded during Pigsty initialization, refer to the instructions below.




--------

## Removal

Because it's so simple, Pigsty doesn't provide an uninstall playbook for the Docker module. You can directly remove Docker using an Ansible command:

```bash
ansible minio -m package -b -a 'name=docker-ce state=absent'  # Remove docker
```

This command will uninstall the `docker-ce` package using the OS package manager.






--------

## Download

To download Docker during Pigsty installation, modify the [`repo_modules`](/docs/infra/param#repo_modules) parameter in the [**configuration inventory**](/docs/setup/config#configuration-inventory) to enable the Docker software repository,
then specify Docker packages to download in the [`repo_packages`](/docs/infra/param#repo_packages) or [`repo_extra_packages`](/docs/infra/param#repo_extra_packages) parameters.

```yaml
repo_modules: infra,node,pgsql,docker  # <--- Enable Docker repository
repo_packages:
  - node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-common, docker   # <--- Download Docker
repo_extra_packages:
  - pgsql-main docker # <--- Can also be specified here
```

The `docker` specified here (which actually corresponds to the `docker-ce` and `docker-compose-plugin` packages) will be automatically downloaded to the local repository during the default [`deploy.yml`](/docs/setup/playbook#installyml) process.
After downloading, the Docker packages will be available to all nodes via the local repository.

If you've already completed Pigsty installation and the local repository is initialized, you can run `./infra.yml -t repo_build` after modifying the configuration to re-download and rebuild the offline repository.

Installing Docker requires the Docker YUM/APT [repository](#repository), which is included by default in Pigsty but not enabled. You need to add `docker` to [`repo_modules`](/docs/infra/param#repo_modules) to enable it before installation.



--------

## Repository

Downloading Docker requires upstream internet software repositories, which are defined in the default `repo_upstream` with module name `docker`:

```yaml
- { name: docker-ce ,description: 'Docker CE' ,module: docker  ,releases: [7,8,9] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.docker.com/linux/centos/$releasever/$basearch/stable'    ,china: 'https://mirrors.aliyun.com/docker-ce/linux/centos/$releasever/$basearch/stable'  ,europe: 'https://mirrors.xtom.de/docker-ce/linux/centos/$releasever/$basearch/stable' }}
- { name: docker-ce ,description: 'Docker CE' ,module: docker  ,releases: [11,12,20,22,24] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.docker.com/linux/${distro_name} ${distro_codename} stable' ,china: 'https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux//${distro_name} ${distro_codename} stable' }}
```

You can reference this repository using the `docker` module name in the [`repo_modules`](/docs/infra/param#repo_modules) and [`node_repo_modules`](/docs/node/param#node_repo_modules) parameters.

> Note that Docker's official software repository is **blocked** by default in mainland China. You need to use mirror sites in China to complete the download.
>
> If you're in mainland China and encounter Docker download failures, check whether `region` is set to `default` in your configuration inventory. The automatically configured `region: china` can resolve this issue.





--------

## Proxy

If your network environment requires a proxy server to access the internet, you can configure the [`proxy_env`](/docs/infra/param#proxy_env) parameter in Pigsty's configuration inventory. This parameter will be written to the `proxy` related configuration in Docker's configuration file.

```bash
proxy_env:
  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.aliyuncs.com,mirrors.tuna.tsinghua.edu.cn,mirrors.zju.edu.cn"
  #http_proxy: 'http://username:password@proxy.address.com'
  #https_proxy: 'http://username:password@proxy.address.com'
  #all_proxy: 'http://username:password@proxy.address.com'
```

When running [`configure`](/docs/setup/install#configuration) with the `-x` parameter, the proxy server configuration from your current environment will be automatically generated into Pigsty's configuration file under `proxy_env`.

In addition to using a proxy server, you can also configure [**Docker Registry Mirrors**](#registry-mirrors) to bypass blocks.





--------

## Registry Mirrors

You can use the [`docker_registry_mirrors`](param#docker_registry_mirrors) parameter to specify Docker Registry Mirrors:

For users outside the firewall, in addition to the official DockerHub site, you can also consider using the `quay.io` mirror site. If your internal network environment already has mature image infrastructure, you can use your internal Docker registry mirrors to avoid being affected by external mirror sites and improve download speeds.

Users of public cloud providers can consider using free internal Docker mirrors. For example, if you're using Alibaba Cloud, you can use Alibaba Cloud's internal Docker mirror site (requires login):

```bash
["https://registry.cn-hangzhou.aliyuncs.com"]   # Alibaba Cloud mirror, requires explicit login
```

If you're using Tencent Cloud, you can use Tencent Cloud's internal Docker mirror site (requires internal network):

```bash
["https://ccr.ccs.tencentyun.com"]   # Tencent Cloud mirror, internal network only
```

Additionally, you can use [CF-Workers-docker.io](https://github.com/cmliu/CF-Workers-docker.io?tab=readme-ov-file#%E7%AC%AC%E4%B8%89%E6%96%B9-dockerhub-%E9%95%9C%E5%83%8F%E6%9C%8D%E5%8A%A1) to quickly set up your own Docker image proxy.
You can also consider using free [Docker proxy mirrors](https://github.com/cmliu/CF-Workers-docker.io?tab=readme-ov-file#%E7%AC%AC%E4%B8%89%E6%96%B9-dockerhub-%E9%95%9C%E5%83%8F%E6%9C%8D%E5%8A%A1) (use at your own risk!)




--------

## Pulling Images

The [`docker_image`](param#docker_image) and [`docker_image_cache`](param#docker_image_cache) parameters can be used to directly specify a list of images to pull during Docker installation.

Using this feature, Docker will come with the specified images after installation (provided they can be successfully pulled; this task will be automatically ignored and skipped on failure).

For example, you can specify images to pull in the configuration inventory:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
  vars:
    docker_enabled: true  # Install Docker on this group!
    docker_image:
      - redis:latest      # Pull the latest Redis image
```

Another way to preload images is to use locally `save`d `tgz` archives: if you've previously exported Docker images using `docker save xxx | gzip -c > /tmp/docker/xxx.tgz`.
These exported image files can be automatically loaded via the glob specified by the [`docker_image_cache`](param#docker_image_cache) parameter. The default location is: `/tmp/docker/*.tgz`.

This means you can place images in the `/tmp/docker` directory beforehand, and after running [`docker.yml`](playbook#dockeryml) to install Docker, these image packages will be automatically loaded.

For example, in the [self-hosted Supabase tutorial](/blog/db/supabase), this technique is used. Before spinning up Supabase and installing Docker, the `*.tgz` image archives from the local `/tmp/supabase` directory are copied to the target node's `/tmp/docker` directory.

```yaml
- name: copy local docker images
  copy: src="{{ item }}" dest="/tmp/docker/"
  with_fileglob: "{{ supa_images }}"
  vars: # you can override this with -e cli args
    supa_images: /tmp/supabase/*.tgz
```


--------

## Applications

Pigsty provides a series of ready-to-use, Docker Compose-based [**software templates**](/docs/app/), which you can use to spin up business software that uses external Pigsty-managed database clusters.


<br>

--------

<br>
