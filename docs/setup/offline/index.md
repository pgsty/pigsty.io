# Offline Installation

> Install Pigsty in air-gapped env using offline packages

---

LLMS index: [llms.txt](/llms.txt)

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

> [!TIP] Advantages of offline packages
> - Easy delivery in Internet-isolated envs.
> - Pre-download all packages in one pass to speed up installation.
> - No need to worry about upstream dependency breakage causing install failures.
> - If you have multiple nodes, all packages only need to be downloaded once, saving bandwidth.
> - Use local repo to ensure all nodes have consistent software versions for unified version management.

> [!WARNING] Disadvantages of offline packages
> - Offline packages are made for **specific OS minor versions**, typically cannot be used across versions.
> - It's a snapshot at the time of creation, may not include the latest updates and OS security patches.
> - Offline packages are typically about 1GB, while online installation downloads on-demand, saving space.


------

## Offline Packages

`v4.5.0` publishes a dual-architecture offline package for every one of the seven [**recommended OS versions**](/docs/ref/linux/), fourteen artifacts in total, and all of them are downloadable from GitHub:

| Linux Distribution      | System Code    | Minor Version | Package                                                                                                                                 |
|:------------------------|:---------------|:--------------|:----------------------------------------------------------------------------------------------------------------------------------------|
| RockyLinux 9 x86_64     | `el9.x86_64`   | `9.8`         | [**`pigsty-pkg-v4.5.0.el9.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el9.x86_64.tgz)     |
| RockyLinux 9 aarch64    | `el9.aarch64`  | `9.8`         | [**`pigsty-pkg-v4.5.0.el9.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el9.aarch64.tgz)   |
| RockyLinux 10 x86_64    | `el10.x86_64`  | `10.2`        | [**`pigsty-pkg-v4.5.0.el10.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el10.x86_64.tgz)   |
| RockyLinux 10 aarch64   | `el10.aarch64` | `10.2`        | [**`pigsty-pkg-v4.5.0.el10.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el10.aarch64.tgz) |
| Debian 12 x86_64        | `d12.x86_64`   | `12.15`       | [**`pigsty-pkg-v4.5.0.d12.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d12.x86_64.tgz)     |
| Debian 12 aarch64       | `d12.aarch64`  | `12.15`       | [**`pigsty-pkg-v4.5.0.d12.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d12.aarch64.tgz)   |
| Debian 13 x86_64        | `d13.x86_64`   | `13.6`        | [**`pigsty-pkg-v4.5.0.d13.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d13.x86_64.tgz)     |
| Debian 13 aarch64       | `d13.aarch64`  | `13.6`        | [**`pigsty-pkg-v4.5.0.d13.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d13.aarch64.tgz)   |
| Ubuntu 26.04 x86_64     | `u26.x86_64`   | `26.04.0`     | [**`pigsty-pkg-v4.5.0.u26.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u26.x86_64.tgz)     |
| Ubuntu 26.04 aarch64    | `u26.aarch64`  | `26.04.0`     | [**`pigsty-pkg-v4.5.0.u26.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u26.aarch64.tgz)   |
| Ubuntu 24.04 x86_64     | `u24.x86_64`   | `24.04.4`     | [**`pigsty-pkg-v4.5.0.u24.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u24.x86_64.tgz)     |
| Ubuntu 24.04 aarch64    | `u24.aarch64`  | `24.04.4`     | [**`pigsty-pkg-v4.5.0.u24.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u24.aarch64.tgz)   |
| Ubuntu 22.04 x86_64     | `u22.x86_64`   | `22.04.5`     | [**`pigsty-pkg-v4.5.0.u22.x86_64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u22.x86_64.tgz)     |
| Ubuntu 22.04 aarch64    | `u22.aarch64`  | `22.04.5`     | [**`pigsty-pkg-v4.5.0.u22.aarch64.tgz`**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u22.aarch64.tgz)   |
{.full-width}

Download them from the [**GitHub release page**](https://github.com/pgsty/pigsty/releases/tag/v4.5.0), which also carries a `checksums` manifest and a detached PGP signature (`.asc`) for each artifact. The MD5 checksums for all `v4.5.0` offline packages are:

```bash
e042059379bdfae8f774022b89e8d1e3  pigsty-pkg-v4.5.0.el9.aarch64.tgz
997e812a433a6b969b976fad2c023a1f  pigsty-pkg-v4.5.0.el9.x86_64.tgz
1e1045db965282d564680534bd7d72e2  pigsty-pkg-v4.5.0.el10.aarch64.tgz
9a53f1e85cbb2d4f85969a6112ae4b05  pigsty-pkg-v4.5.0.el10.x86_64.tgz
b7501783c90311176f21bdd35390c746  pigsty-pkg-v4.5.0.d12.aarch64.tgz
f3ecaa449a0bf8e0f01907f83831e74a  pigsty-pkg-v4.5.0.d12.x86_64.tgz
863165dba76b044ed8615d6743710005  pigsty-pkg-v4.5.0.d13.aarch64.tgz
d86655361ccad7aa95a345a82bb37d10  pigsty-pkg-v4.5.0.d13.x86_64.tgz
017f2d7931eb644d2d0fa2f71930134e  pigsty-pkg-v4.5.0.u26.aarch64.tgz
61451ee610134423ff08f1a69dfced33  pigsty-pkg-v4.5.0.u26.x86_64.tgz
5d9cfc52a25545b56e73e94ab5b5e175  pigsty-pkg-v4.5.0.u24.aarch64.tgz
dba0eef49899509d1524b3a1c37d0ddc  pigsty-pkg-v4.5.0.u24.x86_64.tgz
5564841c7c099489708cd1fe49ffa1b9  pigsty-pkg-v4.5.0.u22.aarch64.tgz
dc52b6cee50cf6226e23b065e5aa8395  pigsty-pkg-v4.5.0.u22.x86_64.tgz
afb5cd77903613cb945bd519e4059c76  pigsty-v4.5.0.tgz
```

> [!WARNING] Offline packages are made for specific Linux OS minor versions
> When OS minor versions don't match, it may work or may fail—we don't recommend taking the risk.
>
> The `v4.5.0` artifacts above were built on EL 9.8/10.2, Debian 12.15/13.6, and Ubuntu 22.04.5/24.04.4/26.04.0.
> Cross-minor installation may fail due to OpenSSL/system library differences.
> Use online installation on matching OS versions to build your own offline package, or contact us for custom packages.



----------------

## Using Offline Packages

**Offline installation steps:**

1. Download Pigsty offline package, place it at **`/tmp/pkg.tgz`**
2. Download Pigsty source package, extract and enter directory (assume extracted to home: **`cd ~/pigsty`**)
3. [**`./bootstrap`**](#bootstrap), it will extract the package and configure using local repo (and install [**`ansible`**](/docs/setup/playbook) from it offline)
4. **`./configure -g -c rich`**, you can directly use the [**`rich`**](/docs/conf/rich) template configured for offline installation, or configure yourself
5. Run **`./deploy.yml`** as usual to install the core path from the local repository; other optional modules still require their own playbooks

<div id="td-asciinema-2ac5564f468dee83b9ef5870efc24889-0" class="td-asciinema td-max-width-on-larger-screens" data-td-asciinema
  data-td-timer-label="Playback time">
  <div class="td-asciinema__chrome">
    <span class="td-asciinema__lights" aria-hidden="true"><i></i><i></i><i></i></span>
    <span class="td-asciinema__title" dir="auto">demo/install-offline.cast</span>
  </div>
  <div data-td-asciinema-player></div>
  <script type="application/json" data-td-asciinema-config>{"options":{"autoPlay":true,"fit":"width","loop":true,"markers":[0,"Upload Package",55,"Extract and Use",66,"Configure",80,"Deploy"],"preload":false,"speed":1.3,"startAt":0},"src":"/demo/install-offline.cast","theme":"solarized-light"}</script>
</div>


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

For example, suppose you run RockyLinux 9.6 while the `v4.5.0` package was built for RockyLinux 9.8.
You can use the `el9` offline package (though made for 9.8), then execute `make repo-build` before formal installation to re-download missing packages for 9.6.
Pigsty will download the required **increments** from upstream repos.





-------

## Making Offline Packages

If your OS isn't in the default list, you can make your own offline package with the built-in [**`cache.yml`**](https://github.com/pgsty/pigsty/blob/main/cache.yml) playbook:

1. Find a node running the exact same OS version with Internet access
2. Use the [**`rich`**](/docs/conf/rich) template for an [**online installation**](/docs/setup/install/) (`./configure -c rich`), and confirm that the target INFRA node has generated its local repository at `/www/pigsty`; if not, run `./infra.yml -t repo` against that node first
3. Run `cd ~/pigsty; ./cache.yml -l <infra-host>` to select one INFRA node that already has a local repository, build the package there, and fetch it
4. By default, the artifact is `~/pigsty/dist/${version}/pigsty-pkg-${version}.${os}.${arch}.tgz`; copy it to the offline environment (ftp, scp, USB, etc.), then unpack it with `bootstrap`

Current `cache.yml` defaults can be overridden with extra variables:

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `cache_pkg_name` | `pigsty-pkg-${version}.${os}.${arch}.tgz` | Offline package filename template |
| `cache_pkg_dir` | `dist/${version}` | Output directory on the admin node |
| `cache_repo` | `pigsty` | Local repository to package on the target node; separate multiple repositories with commas |

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

> [!WARNING] Where are my yum/apt repo files?
> The bootloader will by default **move away** existing repo configurations to ensure only required repos are enabled.
> You can find them in `/etc/yum.repos.d/backup` (EL) or `/etc/apt/backup` (Debian / Ubuntu).
>
> If you want to keep existing repo configurations during `bootstrap`, use the `-k|--keep` parameter.
>
> ```bash
> ./bootstrap -k # or --keep
> ```
