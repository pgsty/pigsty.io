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
> Public `v4.5.0` offline packages are approximately 1.6-2.0 GB compressed.
> Online installation downloads only the packages that you need.

## Offline Packages

The public stable release [**v4.5.0**](https://github.com/pgsty/pigsty/releases/tag/v4.5.0) provides **14 offline packages** for seven OS baselines and both `x86_64` and `aarch64`. The table records the baselines verified when that release was published. Match the Pigsty version, OS minor version, and CPU architecture.

| Linux Distribution | System Code | Baseline Minor Version | x86_64 | aarch64 |
|:------------|:---------|:-----------|:-------|:--------|
| Rocky Linux 9 | `el9` | `9.8` | [**Download (1.95 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el9.x86_64.tgz) | [**Download (1.83 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el9.aarch64.tgz) |
| Rocky Linux 10 | `el10` | `10.2` | [**Download (1.91 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el10.x86_64.tgz) | [**Download (1.79 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.el10.aarch64.tgz) |
| Debian 12 | `d12` | `12.15` | [**Download (1.74 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d12.x86_64.tgz) | [**Download (1.59 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d12.aarch64.tgz) |
| Debian 13 | `d13` | `13.6` | [**Download (1.87 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d13.x86_64.tgz) | [**Download (1.72 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.d13.aarch64.tgz) |
| Ubuntu 22.04 | `u22` | `22.04.5` | [**Download (1.97 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u22.x86_64.tgz) | [**Download (1.84 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u22.aarch64.tgz) |
| Ubuntu 24.04 | `u24` | `24.04.4` | [**Download (1.76 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u24.x86_64.tgz) | [**Download (1.64 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u24.aarch64.tgz) |
| Ubuntu 26.04 | `u26` | `26.04.0` | [**Download (1.88 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u26.x86_64.tgz) | [**Download (1.77 GB)**](https://github.com/pgsty/pigsty/releases/download/v4.5.0/pigsty-pkg-v4.5.0.u26.aarch64.tgz) |
{.full-width}

The release page also provides the source archive, `checksums`, and corresponding `.asc` GPG signatures. See [GPG Signatures](/docs/repo/gpg/#github-release-asset-verification) for verification. Older packages remain available from [historical releases](https://github.com/pgsty/pigsty/releases).

These SHA-256 values come from [GitHub release asset metadata](https://api.github.com/repos/pgsty/pigsty/releases/tags/v4.5.0), verified on 2026-10-13:

```text
962e38f5e8cadb00e9a30939227d431792e7c522c2ec509b3724f0751d2f9e41  pigsty-pkg-v4.5.0.d12.aarch64.tgz
5d88afde12a501ac2e7459a6d95a47d8f283860145235a1120d66655917858f8  pigsty-pkg-v4.5.0.d12.x86_64.tgz
46810463ad4b434f8541476aadaadfd65ea71f5c9e71f1f4b59b6376531a0a56  pigsty-pkg-v4.5.0.d13.aarch64.tgz
8e6193c3640ac8808c6cfcdfab4489dbf7fda0de6d71009db33f57179a73f39f  pigsty-pkg-v4.5.0.d13.x86_64.tgz
8303a7cbce51db378859fec0a13e161ff270453fb34cffa6e782b6d524ba4b7d  pigsty-pkg-v4.5.0.el10.aarch64.tgz
18abfd6dea933572b7345d1e41c7537370ec49da278156b5bb095ae2c16f0589  pigsty-pkg-v4.5.0.el10.x86_64.tgz
91b2a9ae80341e39c846a75c76e093cbfe52bcfb3fff8b2e4bef0fe9658a13f8  pigsty-pkg-v4.5.0.el9.aarch64.tgz
434f9a79c74ca4849597d0a28d83c98637aa5a5f0d75553099fc3cec8677121e  pigsty-pkg-v4.5.0.el9.x86_64.tgz
9520fb28bba836bf3b8dd794c21ede1b94406e49c99403f9c3f6698bf864e9bd  pigsty-pkg-v4.5.0.u22.aarch64.tgz
ec6642444908d1acdb067ca946832978600e68ea92a5951c3ba6ed5d9e716c5e  pigsty-pkg-v4.5.0.u22.x86_64.tgz
36bcb8297e0a21178fadf9764c53a7e09f0cf998f60877148933fb22d9a10b6d  pigsty-pkg-v4.5.0.u24.aarch64.tgz
625f9f606f13d06ee87d4473a408a4170a8de96a6c98b569f7908647e4111f67  pigsty-pkg-v4.5.0.u24.x86_64.tgz
fbd4d01ce39e13016343badc3258b32e0ce5088b1604b0f62ef8b4aafca82d65  pigsty-pkg-v4.5.0.u26.aarch64.tgz
1d6cbac50ef5034c3cfea0dd11c53ea1cf4b4b8b389086b1b8d735d8e1c0e122  pigsty-pkg-v4.5.0.u26.x86_64.tgz
```

Save the list as `SHA256SUMS`, then run `sha256sum --ignore-missing -c SHA256SUMS` in the download directory before renaming files. The release's `checksums` file uses MD5, a different format from this SHA-256 list.

> [!WARNING] Offline packages target specific OS minor versions
> Different OpenSSL or system library versions can cause installation failures across minor versions. If the baseline does not match, [build an offline package](#making-offline-packages) on the same OS minor version and architecture, or contact [support](/docs/about/service/).

## Using Offline Packages

Do these steps in order:

1. Download the matching offline package and save it as `/var/tmp/pkg.tgz`.
2. Download the Pigsty source package matching the offline package version and extract it into your home directory.
3. Run `cd ~/pigsty` to enter the source directory.
4. Run [`./bootstrap -p /var/tmp/pkg.tgz`](#bootstrap) to extract the offline package, configure the local repository, and install Ansible.
5. Run `./configure -g -c rich` to select the [`rich` template](/docs/conf/rich/) and generate random passwords.
6. Run `./deploy.yml` to install the core modules from the local repository.

You can also use your own configuration with the repository settings below.
Other optional modules still require their own playbooks.

[demo\/install\-offline\.cast](/demo/install-offline.cast)

> [!WARNING] Package errors
> For errors such as `No package nginx available`, first check the offline package version, OS, architecture, `/www/pigsty/repo_complete`, and repository contents. The development `bootstrap` script cleans incomplete output and reports an error if extraction fails or the completion marker is missing; it reuses an existing valid repository. Preserve the old repository before replacing it and extracting again.

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

Within the same Linux major version and architecture, use an Internet-connected build node to run `make repo-build` for missing dependencies, then rebuild the offline package and validate installation. This still depends on upstream repositories. Only an artifact whose downloads, metadata rebuild, and installation checks are complete is suitable for an isolated environment.

## Making Offline Packages

To build a package for another operating system, use the [`cache.yml` playbook](https://github.com/pgsty/pigsty/blob/main/cache.yml).

1. Select an online node with the exact operating system version and architecture of the offline nodes.
2. Run `./configure -c rich` and complete an [online installation](/docs/setup/install/) with the [`rich` template](/docs/conf/rich/).
3. Make sure that the target INFRA node has a local repository at `/www/pigsty`.
4. If the repository is absent, run `./infra.yml -t repo` against that node first.
5. Choose one INFRA node with a local repository, then build and fetch the package. This example writes outside the source tree:

   ```bash
   cd ~/pigsty
   ./cache.yml -l '<infra-host>,localhost' -e 'cache_pkg_dir=/var/tmp/pigsty-dist/${version}'
   ```

6. Retrieve `pigsty-pkg-<version>.<os>.<arch>.tgz` from `/var/tmp/pigsty-dist/<version>/` on the admin node. Transfer it to `/var/tmp/pkg.tgz` in the offline environment, then run `./bootstrap -p /var/tmp/pkg.tgz`.

Replace `<infra-host>` with one INFRA host in the inventory. Local directory preparation and validation run on `localhost`, so keep it in the limit. Both the admin and target nodes need rsync. Nodes on the same platform generate the same filename; select one build node per run.

Override these main `cache.yml` parameters with extra variables:

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `cache_pkg_name` | `pigsty-pkg-${version}.${os}.${arch}.tgz` | Offline package filename template |
| `cache_pkg_dir` | `dist/${version}` | Output directory on the admin node |
| `cache_tmp_dir` | `/var/tmp` | Added in development sources; temporary archive directory on the target. Create it before overriding. v4.5.0 uses fixed `/tmp` |
| `cache_repo` | `pigsty` | Local repository to package on the target node; separate multiple repositories with commas |

The output directory also contains MD5-format `checksums`. Prepare the source release archive separately; `cache.yml` does not archive the working tree automatically.

[Paid services](/docs/about/service/) build and verify offline packages for a specified Linux baseline, with a reference price of **¥200**. Contact us to confirm scope and pricing.

## Bootstrap

Pigsty uses Ansible to run playbooks.
The `bootstrap` script installs Ansible and prepares the required package repositories:

```bash
./bootstrap       # Ensure ansible is correctly installed (if offline package exists, use offline installation and extract first)
```

Run `bootstrap` in these cases:

- You downloaded or cloned the source manually and Ansible is absent.
- You need to extract an offline package and install Ansible from it.

Development sources look for `/var/tmp/pkg.tgz` by default, falling back to the legacy `/tmp/pkg.tgz` only if the default path is absent. The `v4.5.0` release still defaults to `/tmp/pkg.tgz`. For use across versions, specify the path explicitly:

```bash
./bootstrap -p /var/tmp/pkg.tgz
```

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
