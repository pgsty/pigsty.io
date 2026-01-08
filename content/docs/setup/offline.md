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
| RockyLinux 8 x86_64     | `el8.x86_64`   | `8.10`        | [**`pigsty-pkg-v4.0.0.el8.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el8.x86_64.tgz)         |
| RockyLinux 8 aarch64    | `el8.aarch64`  | `8.10`        | [**`pigsty-pkg-v4.0.0.el8.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el8.aarch64.tgz)       |
| RockyLinux 9 x86_64     | `el9.x86_64`   | `9.6`         | [**`pigsty-pkg-v4.0.0.el9.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el9.x86_64.tgz)         |
| RockyLinux 9 aarch64    | `el9.aarch64`  | `9.6`         | [**`pigsty-pkg-v4.0.0.el9.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el9.aarch64.tgz)       |
| RockyLinux 10 x86_64    | `el10.x86_64`  | `10.0`        | [**`pigsty-pkg-v4.0.0.el10.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el10.x86_64.tgz)       |
| RockyLinux 10 aarch64   | `el10.aarch64` | `10.0`        | [**`pigsty-pkg-v4.0.0.el10.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.el10.aarch64.tgz)     |
| Debian 12 x86_64        | `d12.x86_64`   | `12.11`       | [**`pigsty-pkg-v4.0.0.d12.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.d12.x86_64.tgz)         |
| Debian 12 aarch64       | `d12.aarch64`  | `12.11`       | [**`pigsty-pkg-v4.0.0.d12.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.d12.aarch64.tgz)       |
| Debian 13 x86_64        | `d13.x86_64`   | `13.2`        | [**`pigsty-pkg-v4.0.0.d13.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.d13.x86_64.tgz)         |
| Debian 13 aarch64       | `d13.aarch64`  | `13.2`        | [**`pigsty-pkg-v4.0.0.d13.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.d13.aarch64.tgz)       |
| Ubuntu 24.04 x86_64     | `u24.x86_64`   | `24.04.2`     | [**`pigsty-pkg-v4.0.0.u24.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.u24.x86_64.tgz)         |
| Ubuntu 24.04 aarch64    | `u24.aarch64`  | `24.04.2`     | [**`pigsty-pkg-v4.0.0.u24.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.u24.aarch64.tgz)       |
| Ubuntu 22.04 x86_64     | `u22.x86_64`   | `22.04.5`     | [**`pigsty-pkg-v4.0.0.u22.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.u22.x86_64.tgz)         |
| Ubuntu 22.04 aarch64    | `u22.aarch64`  | `22.04.5`     | [**`pigsty-pkg-v4.0.0.u22.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.0.0/pigsty-pkg-v4.0.0.u22.aarch64.tgz)       |

If you use an OS from the list above (exact minor version match), we recommend using offline packages.
Pigsty provides ready-to-use pre-made offline packages for these systems, freely downloadable from GitHub.

You can find these packages on the [**GitHub release page**](https://github.com/pgsty/pigsty/releases/latest):

```bash
6a26fa44f90a16c7571d2aaf0e997d07  pigsty-v4.0.0.tgz
537839201c536a1211f0b794482d733b  pigsty-pkg-v4.0.0.el9.x86_64.tgz
85687cb56517acc2dce14245452fdc05  pigsty-pkg-v4.0.0.el9.aarch64.tgz
a333e8eb34bf93f475c85a9652605139  pigsty-pkg-v4.0.0.el10.x86_64.tgz
4b98b463e2ebc104c35ddc94097e5265  pigsty-pkg-v4.0.0.el10.aarch64.tgz
4f62851c9d79a490d403f59deb4823f4  pigsty-pkg-v4.0.0.el8.x86_64.tgz
66e283c9f6bfa80654f7ed3ffb9b53e5  pigsty-pkg-v4.0.0.el8.aarch64.tgz
f7971d9d6aab1f8f307556c2f64b701c  pigsty-pkg-v4.0.0.d12.x86_64.tgz
c4d870e5ef61ed05724c15fbccd1220b  pigsty-pkg-v4.0.0.d12.aarch64.tgz
408991c5ff028b5c0a86fac804d64b93  pigsty-pkg-v4.0.0.d13.x86_64.tgz
8d7c9404b97a11066c00eb7fc1330181  pigsty-pkg-v4.0.0.d13.aarch64.tgz
2a25eff283332d9006854f36af6602b2  pigsty-pkg-v4.0.0.u24.x86_64.tgz
a4fb30148a2d363bbfd3bec0daa14ab6  pigsty-pkg-v4.0.0.u24.aarch64.tgz
87bb91ef703293b6ec5b77ae3bb33d54  pigsty-pkg-v4.0.0.u22.x86_64.tgz
5c81bdaa560dad4751840dec736fe404  pigsty-pkg-v4.0.0.u22.aarch64.tgz
```

{{% alert title="Offline packages are made for specific Linux OS minor versions" color="warning" %}}

When OS minor versions don't match, it may work or may fail—we don't recommend taking the risk.

Please note that Pigsty's EL9/EL10 packages are built on 9.6/10.0 and currently cannot be used for 9.7/10.1 minor versions (due to OpenSSL version changes).
You need to perform an online installation on a matching OS version and create your own offline package, or contact us for custom offline packages.

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

If you want to use the already extracted and configured offline package in your own config, modify and ensure these settings:

- [**`repo_enabled`**](/docs/infra/param#repo_enabled): Set to **`true`**, will build local software repo (explicitly disabled in most templates)
- [**`node_repo_modules`**](/docs/node/param#node_repo_modules): Set to **`local`**, then all nodes in the env will install from the local software repo
  - In most templates, this is explicitly set to: `node,infra,pgsql`, i.e., install directly from these upstream repos.
  - Setting it to `local` will use the local software repo to install all packages, fastest, no interference from other repos.
  - If you want to use both local and upstream repos, you can add other repo module names too, e.g., `local,node,infra,pgsql`

The first parameter, if enabled, Pigsty will create a **local software repo**. The second parameter, if contains `local`, then all nodes in the env will use this local software repo.
If it only contains `local`, then it becomes the sole repo for all nodes. If you still want to install other packages from other upstream repos, you can add other repo module names too, e.g., `local,node,infra,pgsql`.

**Hybrid Installation Mode**

If your env has Internet access, there's a hybrid approach combining advantages of offline and online installation.
You can use the offline package as a base, and supplement missing packages online.

For example, if you're using RockyLinux 9.5 but the official offline package is for RockyLinux 9.6.
You can use the `el9` offline package (though made for 9.6), then execute `make repo-build` before formal installation to re-download missing packages for 9.5.
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
