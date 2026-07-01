---
title: Offline Installation
linkTitle: Offline
weight: 280
description: Install Pigsty in air-gapped env using offline packages
icon: fa-solid fa-download
module: [PIGSTY]
categories: [Tutorial]
---


Pigsty [**installs**](/docs/setup/install/) from Internet upstream by default, but some envs are isolated from the Internet.
To address this, Pigsty supports offline installation using [**offline packages**](#offline-packages).
Think of them as Linux-native Docker images.


----------------

## Overview

**Offline packages** bundle all required RPM/DEB packages and dependencies; they are snapshots of the local APT/YUM repo after a normal [**installation**](/docs/setup/install/).

In [**serious prod deployments**](/docs/deploy), we **strongly recommend** using offline packages.
They ensure all future nodes have consistent software versions with the existing env,
and avoid online installation failures caused by upstream changes (quite common!),
guaranteeing you can run it independently forever.

{{% alert title="Advantages of offline packages" color="success" %}}
- Easy delivery in Internet-isolated envs.
- Pre-download all packages in one pass to speed up installation.
- No need to worry about upstream dependency breakage causing install failures.
- If you have multiple nodes, all packages only need to be downloaded once, saving bandwidth.
- Use local repo to ensure all nodes have consistent software versions for unified version management.
  {{% /alert %}}

{{% alert title="Disadvantages of offline packages" color="warning" %}}
- Offline packages are made for **specific OS minor versions**, typically cannot be used across versions.
- It's a snapshot at the time of creation, may not include the latest updates and OS security patches.
- Offline packages are typically about 1GB, while online installation downloads on-demand, saving space.
{{% /alert %}}


------

## Offline Packages

We typically release offline packages for the following [**Linux distros**](/docs/ref/linux/), using the latest OS minor version.

| Linux Distribution      | System Code    | Minor Version | Package                                                                                                                                     |
|:------------------------|:---------------|:--------------|:--------------------------------------------------------------------------------------------------------------------------------------------|
| RockyLinux 9 x86_64     | `el9.x86_64`   | `9.7`         | [**`pigsty-pkg-v4.3.0.el9.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.el9.x86_64.tgz)         |
| RockyLinux 9 aarch64    | `el9.aarch64`  | `9.7`         | [**`pigsty-pkg-v4.3.0.el9.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.el9.aarch64.tgz)       |
| RockyLinux 10 x86_64    | `el10.x86_64`  | `10.1`        | [**`pigsty-pkg-v4.3.0.el10.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.el10.x86_64.tgz)       |
| RockyLinux 10 aarch64   | `el10.aarch64` | `10.1`        | [**`pigsty-pkg-v4.3.0.el10.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.el10.aarch64.tgz)     |
| Debian 12 x86_64        | `d12.x86_64`   | `12.13`       | [**`pigsty-pkg-v4.3.0.d12.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.d12.x86_64.tgz)         |
| Debian 12 aarch64       | `d12.aarch64`  | `12.13`       | [**`pigsty-pkg-v4.3.0.d12.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.d12.aarch64.tgz)       |
| Debian 13 x86_64        | `d13.x86_64`   | `13.4`        | [**`pigsty-pkg-v4.3.0.d13.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.d13.x86_64.tgz)         |
| Debian 13 aarch64       | `d13.aarch64`  | `13.4`        | [**`pigsty-pkg-v4.3.0.d13.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.d13.aarch64.tgz)       |
| Ubuntu 26.04 x86_64     | `u26.x86_64`   | `26.04.0`     | [**`pigsty-pkg-v4.3.0.u26.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u26.x86_64.tgz)         |
| Ubuntu 26.04 aarch64    | `u26.aarch64`  | `26.04.0`     | [**`pigsty-pkg-v4.3.0.u26.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u26.aarch64.tgz)       |
| Ubuntu 24.04 x86_64     | `u24.x86_64`   | `24.04.4`     | [**`pigsty-pkg-v4.3.0.u24.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u24.x86_64.tgz)         |
| Ubuntu 24.04 aarch64    | `u24.aarch64`  | `24.04.4`     | [**`pigsty-pkg-v4.3.0.u24.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u24.aarch64.tgz)       |
| Ubuntu 22.04 x86_64     | `u22.x86_64`   | `22.04.5`     | [**`pigsty-pkg-v4.3.0.u22.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u22.x86_64.tgz)         |
| Ubuntu 22.04 aarch64    | `u22.aarch64`  | `22.04.5`     | [**`pigsty-pkg-v4.3.0.u22.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.3.0/pigsty-pkg-v4.3.0.u22.aarch64.tgz)       |
{.full-width}

If you use an OS from the list above (exact minor version match), we recommend using offline packages.
Pigsty provides ready-to-use pre-made offline packages for these systems, freely downloadable from GitHub.

You can download matching assets from the [**GitHub release page**](https://github.com/pgsty/pigsty/releases/tag/v4.3.0). The MD5 checksums for the `v4.3.0` offline packages are:

```bash
9ce070efb0420057a83c632b2856d1b3  pigsty-pkg-v4.3.0.d12.aarch64.tgz
bf21c36d3aff94a1a6353130597ffa85  pigsty-pkg-v4.3.0.d12.x86_64.tgz
81b4790c4e5567cee9d1beadd06e48e6  pigsty-pkg-v4.3.0.d13.aarch64.tgz
06baab9341ab683eaeea2e066b28a0f4  pigsty-pkg-v4.3.0.d13.x86_64.tgz
fb4bf751df5e09f547c49b8ab7cac9a0  pigsty-pkg-v4.3.0.el10.aarch64.tgz
a3e752c8148122d1eaea74a6d8d8df0d  pigsty-pkg-v4.3.0.el10.x86_64.tgz
cb2a9af36615513e66fd5ac3e9f4d797  pigsty-pkg-v4.3.0.el9.aarch64.tgz
e24641a879dec7a8eea74dab42f85920  pigsty-pkg-v4.3.0.el9.x86_64.tgz
6b675fd8d9e039193481f0838aa4b92c  pigsty-pkg-v4.3.0.u22.aarch64.tgz
c0e344ccb9d190a619591e5d46116424  pigsty-pkg-v4.3.0.u22.x86_64.tgz
3e0ec9534cf595201ec79eb1fc6549d8  pigsty-pkg-v4.3.0.u24.aarch64.tgz
0a3d19513eca9615bdd66a4b2bf66f1d  pigsty-pkg-v4.3.0.u24.x86_64.tgz
683a10ff8fd993358d6befa9f4e02913  pigsty-pkg-v4.3.0.u26.aarch64.tgz
fd1ea5cd5554bfe91fadd51ad80860e3  pigsty-pkg-v4.3.0.u26.x86_64.tgz
```

{{% alert title="Offline packages are made for specific Linux OS minor versions" color="warning" %}}

When OS minor versions don't match, it may work or may fail—we don't recommend taking the risk.

Please note that Pigsty's EL9/EL10 packages are built on 9.7/10.1, Debian packages are built on 12.13/13.4, and Ubuntu packages are built on 22.04.5/24.04.4/26.04.0.
Cross-minor installation may fail due to OpenSSL/system library differences.
Use online installation on matching OS versions to build your own offline package, or contact us for custom packages.

{{% /alert %}}



----------------

## Using Offline Packages

**Offline installation steps:**

1. Download Pigsty offline package, place it at **`/tmp/pkg.tgz`**
2. Download Pigsty source package, extract and enter directory (assume extracted to home: **`cd ~/pigsty`**)
3. [**`./bootstrap`**](#bootstrap), it will extract the package and configure using local repo (and install [**`ansible`**](/docs/setup/playbook) from it offline)
4. **`./configure -g -c rich`**, you can directly use the [**`rich`**](/docs/conf/rich) template configured for offline installation, or configure yourself
5. Run **`./deploy.yml`** as usual—it will install everything from the local repo

{{< asciinema file="demo/install-offline.cast" markers="0:Upload Package,55:Extract and Use,66:Configure,80:Deploy" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}

> [!WARNING]
> If you encounter "No package nginx available" errors during offline installation, it usually means a previous installation attempt failed. Delete the `/www/pigsty` directory and re-run the deployment.

If you want to use the already extracted and configured offline package in your own config, modify and ensure these settings:

- [**`repo_enabled`**](/docs/infra/param#repo_enabled): Set to **`true`**, will build local software repo (explicitly disabled in most templates)
- [**`node_repo_modules`**](/docs/node/param#node_repo_modules): Set to **`local`**, then all nodes in the env will install from the local software repo
  - In most templates, this is explicitly set to: `node,infra,pgsql`, i.e., install directly from these upstream repos.
  - Setting it to `local` will use the local software repo to install all packages, fastest, no interference from other repos.
  - If you want to use both local and upstream repos, you can add other repo module names too, e.g., `local,node,infra,pgsql`

The first parameter, if enabled, Pigsty will create a **local software repo**. The second parameter, if contains `local`, then all nodes in the env will use this local software repo.
If it only contains `local`, then it becomes the sole repo for all nodes. If you still want to install other packages from other upstream repos, you can add other repo module names too, e.g., `local,node,infra,pgsql`.

**Hybrid Installation Mode**

If your environment has Internet access, there's a hybrid approach that combines the advantages of offline and online installation.
You can use the offline package as a base, and supplement missing packages online.

For example, if you're using RockyLinux 9.6 but the official offline package is for RockyLinux 9.7.
You can use the `el9` offline package (though made for 9.7), then execute `make repo-build` before formal installation to re-download missing packages for 9.6.
Pigsty will download the required **increments** from upstream repos.





-------

## Making Offline Packages

If your OS isn't in the default list, you can make your own offline package with the built-in [**`cache.yml`**](https://github.com/pgsty/pigsty/blob/main/cache.yml) playbook:

1. Find a node running the exact same OS version with Internet access
2. Use [**`rich`**](/docs/conf/rich) config template to perform [**online installation**](/docs/setup/install/) (`configure -c rich`)
3. `cd ~/pigsty; ./cache.yml`: make and fetch the offline package to `~/pigsty/dist/${version}/`
4. Copy the offline package to the env without Internet access (ftp, scp, usb, etc.), extract and use via `bootstrap`

We offer [**paid services**](/docs/about/service/) providing tested, pre-made offline packages for specific Linux major.minor versions (¥200).



----------------

## Bootstrap

Pigsty relies on ansible to execute playbooks; this script is responsible for ensuring ansible is correctly installed in various ways.

```bash
./bootstrap       # Ensure ansible is correctly installed (if offline package exists, use offline installation and extract first)
```

Usually, you need to run this script in two cases:

- You didn't install Pigsty via the [**installation script**](/docs/setup/install#install), but by downloading or `git clone` of the source package, so ansible isn't installed.
- You're preparing to install Pigsty via offline packages and need to use this script to install ansible from the offline package.

The `bootstrap` script will automatically detect if the offline package exists (`-p` to specify, default is `/tmp/pkg.tgz`).
If it exists, it will extract and use it, then install ansible from it.
If the offline package doesn't exist, it will try to install ansible from the Internet. If that still fails, you're on your own!

{{% alert title="Where are my yum/apt repo files?" color="warning" %}}
The bootloader will by default **move away** existing repo configurations to ensure only required repos are enabled.
You can find them in `/etc/yum.repos.d/backup` (EL) or `/etc/apt/backup` (Debian / Ubuntu).

If you want to keep existing repo configurations during `bootstrap`, use the `-k|--keep` parameter.

```bash
./bootstrap -k # or --keep
```

{{% /alert %}}
