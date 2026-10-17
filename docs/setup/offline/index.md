# Offline Installation

> Install Pigsty without Internet access. Use or build offline packages.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty normally [installs packages](/docs/setup/install/) from upstream Internet repositories.
If the environment has no Internet access, use [offline packages](#offline-packages).

## Overview

An offline package contains the RPM or DEB packages and dependencies from a local APT or YUM repository.
It records the repository contents after an [online installation](/docs/setup/install/).

Use offline packages for [production deployments](/docs/deploy/) when you need consistent package versions.
They let new nodes use the same packages as the existing nodes.
They also remove the installation dependency on upstream repository availability.

> [!TIP] Advantages
> - Install in environments without Internet access.
> - Download packages in advance to reduce installation time.
> - Avoid installation failures from later upstream dependency changes.
> - Download each package once for multiple nodes.
> - Use one local repository to control package versions across nodes.

> [!WARNING] Limitations
> Offline packages target specific operating system minor versions.
> A package can fail on a different version.
> Its contents reflect the creation date and can omit later updates or security patches.
> An offline package is approximately `1 GB`.
> Online installation downloads only the packages that you need.

## Offline Packages

The `v4.5.0` release supplies offline packages for seven [recommended operating system versions](/docs/ref/linux/).
Each version has an `x86_64` package and an `aarch64` package.
The fourteen artifacts are available from GitHub:

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

The [GitHub release page](https://github.com/pgsty/pigsty/releases/tag/v4.5.0) also supplies a `checksums` manifest.
Each artifact has a detached PGP signature with the `.asc` suffix.
The published MD5 checksums are:

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

> [!WARNING] Match the operating system minor version
> The packages target EL `9.8` and `10.2`, Debian `12.15` and `13.6`, and Ubuntu `22.04.5`, `24.04.4`, and `26.04.0`.
> Different OpenSSL or system library versions can stop installation on another minor version.
> Use the matching version, build your own offline package, or request a custom package.

## Using Offline Packages

Do these steps in order:

1. Download the matching offline package and save it as `/tmp/pkg.tgz`.
2. Download and extract the Pigsty source package into your home directory.
3. Run `cd ~/pigsty` to enter the source directory.
4. Run [`./bootstrap`](#bootstrap) to extract the offline package, configure the local repository, and install Ansible.
5. Run `./configure -g -c rich` to select the [`rich` template](/docs/conf/rich/) and generate random passwords.
6. Run `./deploy.yml` to install the core modules from the local repository.

You can also use your own configuration with the repository settings below.
Other optional modules still require their own playbooks.

[demo\/install\-offline\.cast](/demo/install-offline.cast)

> [!WARNING] Package error after an earlier installation failure
> The error `No package nginx available` usually follows an incomplete installation attempt.
> The documented recovery removes `/www/pigsty` and runs deployment again.
> Before removal, make sure that the directory contains only the repository that you intend to rebuild.

To use an extracted offline package with your own configuration, set these parameters:

- Set [`repo_enabled`](/docs/infra/param#repo_enabled) to `true` to enable the local software repository.
- Set [`node_repo_modules`](/docs/node/param#node_repo_modules) to `local` to install all packages from that repository.

Most templates disable repository creation and select `node,infra,pgsql` as upstream package sources.
With `node_repo_modules: local`, the local repository is the only package source.
To permit upstream repositories as well, use `local,node,infra,pgsql`.

**Hybrid installation**

If the environment has Internet access, you can combine local and upstream package sources.
Use the offline package as the initial repository.
Then download missing packages from upstream.

For example, the `v4.5.0` EL 9 package targets Rocky Linux `9.8`.
If you use Rocky Linux `9.6`, run `make repo-build` before deployment to download the packages required for `9.6`.
This hybrid method requires Internet access to the upstream repositories.

## Making Offline Packages

To build a package for another operating system, use the [`cache.yml` playbook](https://github.com/pgsty/pigsty/blob/main/cache.yml).

1. Select an online node with the exact operating system version and architecture of the offline nodes.
2. Run `./configure -c rich` and complete an [online installation](/docs/setup/install/) with the [`rich` template](/docs/conf/rich/).
3. Make sure that the target INFRA node has a local repository at `/www/pigsty`.
4. If the repository is absent, run `./infra.yml -t repo` against that node first.
5. From `~/pigsty`, run `./cache.yml -l <infra-host>` to build and fetch the package from one INFRA node.
6. Copy the package to the offline environment with FTP, SCP, or a USB device.
7. Use `bootstrap` to extract the package.

The default artifact path is `~/pigsty/dist/${version}/pigsty-pkg-${version}.${os}.${arch}.tgz`.
You can override these defaults with extra variables:

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `cache_pkg_name` | `pigsty-pkg-${version}.${os}.${arch}.tgz` | Offline package filename template |
| `cache_pkg_dir` | `dist/${version}` | Output directory on the admin node |
| `cache_repo` | `pigsty` | Local repository to package on the target node; separate multiple repositories with commas |

[Paid services](/docs/about/service/) supply tested offline packages for specific operating system major and minor versions (`¥200`).

## Bootstrap

Pigsty uses Ansible to run playbooks.
The `bootstrap` script installs Ansible and prepares the required package repositories:

```bash
./bootstrap       # Ensure ansible is correctly installed (if offline package exists, use offline installation and extract first)
```

Run `bootstrap` in these cases:

- You downloaded or cloned the source manually and Ansible is absent.
- You need to extract an offline package and install Ansible from it.

By default, the script looks for `/tmp/pkg.tgz`.
Use `-p` to specify a different package path.
If the package exists, the script extracts it and installs Ansible from the local repository.
If the package is absent, the script attempts an online Ansible installation.
If that installation fails, [install Ansible manually](/docs/setup/playbook/#install-ansible).

> [!WARNING] Bootstrap moves existing repository files
> By default, `bootstrap` moves existing repository configurations into a backup directory.
> This leaves only the required repositories enabled.
> On EL, the backup directory is `/etc/yum.repos.d/backup`.
> On Debian and Ubuntu, it is `/etc/apt/backup`.
>
> To keep existing repository configurations, use `-k|--keep`:
>
> ```bash
> ./bootstrap -k # or --keep
> ```
