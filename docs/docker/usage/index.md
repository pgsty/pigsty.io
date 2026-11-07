# Usage

> Docker module quick start guide - installation, removal, download, repository, mirrors, proxy, and image pulling.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty includes [**Docker**](https://www.docker.com/) support. Use it to deploy containerized applications quickly.

## Getting Started

Docker is an **optional module**. The [`docker_enabled`](/docs/docker/param#docker_enabled) parameter controls Docker installation. It is disabled by default.

The `docker-ce` upstream repository belongs to the `infra` module. To include Docker packages in the offline repository, set `repo_extra_packages` to the `docker` package alias. This alias maps to `docker-ce` and `docker-compose-plugin`.

```yaml
repo_modules: infra,node,pgsql     # <--- Keep infra module (Docker upstream belongs to infra)
repo_extra_packages:
  - pgsql-main
  - docker                         # <--- Download Docker (docker-ce + docker-compose-plugin)
```

After you download Docker, set [**`docker_enabled`**](/docs/docker/param#docker_enabled) to `true` on each target node. Set the [**other parameters**](/docs/docker/param/) as needed.

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 ,nodename: infra-1 }
    10.10.10.11: { infra_seq: 2 ,nodename: infra-2 }
  vars:
    docker_enabled: true  # Install Docker on this group!
```

Use the [`docker.yml`](/docs/docker/playbook#dockeryml) playbook to install Docker on these nodes:

```bash
./docker.yml -l infra    # Install Docker on the infra group
```

## Installation

To install Docker directly from the internet on selected nodes for a temporary need, use this command:

```bash
./node.yml -e '{"node_repo_modules":"node,infra","node_packages":["docker-ce","docker-compose-plugin"]}' -t node_repo,node_pkg -l <select_group_ip>
```

This command first enables the upstream software sources for the `node,infra` modules on the target nodes. Then it installs `docker-ce` and `docker-compose-plugin`. These package names are the same on EL and Debian.

To download Docker packages automatically during Pigsty initialization, use the instructions below.

## Removal

The Docker module does not include an uninstall playbook. To remove Docker directly, use this Ansible command:

```bash
ansible <selector> -m package -b -a 'name=docker-ce,docker-compose-plugin state=absent'  # Remove docker
```

## Download

To download Docker during Pigsty installation, make sure that [`repo_modules`](/docs/infra/param#repo_modules) includes `infra`. This module contains the Docker upstream repositories.

Specify the Docker packages in [`repo_packages`](/docs/infra/param#repo_packages) or [`repo_extra_packages`](/docs/infra/param#repo_extra_packages):

```yaml
repo_modules: infra,node,pgsql         # <--- Docker upstream repo belongs to infra
repo_packages:
  - node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-common, docker
repo_extra_packages:
  - pgsql-main
  - docker  # <--- Can also be specified here
```

The default [`deploy.yml`](/docs/setup/playbook#deploy-playbook) process downloads the `docker` package alias to the local repository. This alias contains `docker-ce` and `docker-compose-plugin`. After the download, all nodes can get these packages from the local repository.

If Pigsty installation and local repository initialization are complete, change the configuration first. Then run `./infra.yml -t repo_build` to download the packages again and rebuild the offline repository.

Docker installation requires the Docker YUM/APT [repository](#repository). In the v4.x default `repo_upstream`, this repository belongs to the `infra` module. It is usually available without extra configuration.

## Repository

Docker downloads require upstream internet software repositories. The default `repo_upstream` defines these repositories under the `infra` module:

```yaml
- { name: docker-ce ,description: 'Docker CE' ,module: infra  ,releases: [8,9,10] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.docker.com/linux/centos/$releasever/$basearch/stable'    ,china: 'https://mirrors.aliyun.com/docker-ce/linux/centos/$releasever/$basearch/stable'  ,europe: 'https://mirrors.xtom.de/docker-ce/linux/centos/$releasever/$basearch/stable' }}
- { name: docker-ce ,description: 'Docker'    ,module: infra  ,releases: [11,12,13,22,24,26] ,arch: [x86_64, aarch64] ,baseurl: { default: 'https://download.docker.com/linux/${distro_name} ${distro_codename} stable' ,china: 'https://mirrors.aliyun.com/docker-ce/linux/${distro_name} ${distro_codename} stable' }}
```

To select this repository, use `infra` in [`repo_modules`](/docs/infra/param#repo_modules) and [`node_repo_modules`](/docs/node/param#node_repo_modules).

> Docker's official software repository is **blocked** by default in mainland China. Use mirror sites in China to download the packages.
>
> If Docker downloads fail in mainland China, check `region` in your configuration inventory. If it is `default`, the automatically configured `region: china` can resolve the problem.

## Proxy

If internet access requires a proxy server, set [`proxy_env`](/docs/infra/param#proxy_env) in the Pigsty configuration inventory. Pigsty writes this value to the `proxy` configuration in the Docker configuration file.

```bash
proxy_env:
  no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.aliyuncs.com,mirrors.tuna.tsinghua.edu.cn,mirrors.zju.edu.cn"
  #http_proxy: 'http://username:password@proxy.address.com'
  #https_proxy: 'http://username:password@proxy.address.com'
  #all_proxy: 'http://username:password@proxy.address.com'
```

When you run [`configure`](/docs/setup/install#configure) with `-x`, Pigsty reads the proxy settings from your current environment. It writes these settings under `proxy_env` in the Pigsty configuration file.

You can also configure [**Docker Registry Mirrors**](#registry-mirrors) to bypass network blocks.

## Registry Mirrors

Use [`docker_registry_mirrors`](/docs/docker/param#docker_registry_mirrors) to specify Docker Registry Mirrors.

Outside the firewall, you can consider `quay.io` as an alternative to the official DockerHub site. If your internal network has established image infrastructure, use its Docker registry mirrors. Internal mirrors reduce dependence on external sites and improve download speeds.

Public cloud providers can offer free internal Docker mirrors. For example, Alibaba Cloud provides an internal Docker mirror site that requires login:

```bash
["https://registry.cn-hangzhou.aliyuncs.com"]   # Alibaba Cloud mirror, requires explicit login
```

Tencent Cloud provides an internal Docker mirror site that requires access from its internal network:

```bash
["https://ccr.ccs.tencentyun.com"]   # Tencent Cloud mirror, internal network only
```

You can use [CF-Workers-docker.io](https://github.com/cmliu/CF-Workers-docker.io?tab=readme-ov-file#%E7%AC%AC%E4%B8%89%E6%96%B9-dockerhub-%E9%95%9C%E5%83%8F%E6%9C%8D%E5%8A%A1) to set up your own Docker image proxy quickly. You can also consider free [Docker proxy mirrors](https://github.com/cmliu/CF-Workers-docker.io?tab=readme-ov-file#%E7%AC%AC%E4%B8%89%E6%96%B9-dockerhub-%E9%95%9C%E5%83%8F%E6%9C%8D%E5%8A%A1). Use these public mirrors at your own risk.

## Pulling Images

Use [`docker_image`](/docs/docker/param#docker_image) and [`docker_image_cache`](/docs/docker/param#docker_image_cache) to specify images to load during Docker installation.

After installation, Docker contains the specified images if the image downloads succeed. If this task fails, the playbook automatically ignores the failure and skips the task.

For example, specify the images in the configuration inventory:

```yaml
infra:
  hosts:
    10.10.10.10: { infra_seq: 1 }
  vars:
    docker_enabled: true  # Install Docker on this group!
    docker_image:
      - redis:latest      # Pull the latest Redis image
```

You can also preload images from local `tgz` archives previously exported with `save`. For example, export an image with `docker save xxx | gzip -c > /tmp/docker/xxx.tgz`.

The [`docker_image_cache`](/docs/docker/param#docker_image_cache) glob selects the exported image files to load automatically. Its default value is `/tmp/docker/*.tgz`.

Put these image archives in `/tmp/docker` before you run [`docker.yml`](/docs/docker/playbook#dockeryml). The playbook installs Docker and automatically loads the archives.

The [self-hosted Supabase tutorial](/blog/db/supabase) uses this method. Before Docker installation and Supabase startup, copy the `*.tgz` archives from local `/tmp/supabase` to `/tmp/docker` on the target node:

```yaml
- name: copy local docker images
  copy: src="{{ item }}" dest="/tmp/docker/"
  with_fileglob: "{{ supa_images }}"
  vars: # you can override this with -e cli args
    supa_images: /tmp/supabase/*.tgz
```

## Applications

Pigsty provides ready-to-use [**software templates**](/docs/app/) based on Docker Compose. Use these templates to start business software that connects to external database clusters managed by Pigsty.
