---
title: Offline Installation
linkTitle: Offline
weight: 280
description: Install Pigsty without Internet access. Use or build offline packages.
icon: fa-solid fa-download
module: [PIGSTY]
categories: [Tutorial]
---

Pigsty normally [installs packages](/docs/setup/install/) from upstream Internet repositories.
If the environment has no Internet access, use [offline packages](#offline-packages).
Think of it as a Linux-native counterpart to a Docker image.

## Overview

An offline package contains the RPM or DEB packages and dependencies from a local APT or YUM repository.
It records the repository contents after an [online installation](/docs/setup/install/).

We strongly recommend offline packages for [production deployments](/docs/deploy/) to keep package versions consistent.
They let new nodes use the same packages as the existing nodes.
It also avoids online installation failures caused by upstream changes:

> [!TIP] Advantages
> - Deploy conveniently in environments without Internet access.
> - Download packages in advance to speed up installation.
> - Avoid missing or incompatible dependencies caused by upstream changes.
> - Download each package once for all nodes to save bandwidth.
> - Keep package versions consistent across nodes through a local repository.

> [!WARNING] Limitations
> - Offline packages target **specific OS minor versions** and generally cannot be reused across versions.
> - Their contents reflect the creation date and can omit later updates or security patches.
> - Public `v4.6.0` packages are about 1.6–2.0 GiB compressed; online installation downloads only what is needed.

## Offline Packages

Stable [**v4.6.0**](https://github.com/pgsty/pigsty/releases/tag/v4.6.0) provides **14 offline packages**, covering seven OS baselines on `x86_64` and `aarch64`. The table lists release-time validated baselines. Match the Pigsty version, OS minor version, and CPU architecture.

| Linux Distribution | System Code | Baseline Minor Version | x86_64 | aarch64 |
|:------------|:---------|:-----------|:-------|:--------|
| Rocky Linux 9 | `el9` | `9.8` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.el9.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.el9.aarch64.tgz) |
| Rocky Linux 10 | `el10` | `10.2` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.el10.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.el10.aarch64.tgz) |
| Debian 12 | `d12` | `12.15` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.d12.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.d12.aarch64.tgz) |
| Debian 13 | `d13` | `13.7` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.d13.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.d13.aarch64.tgz) |
| Ubuntu 22.04 | `u22` | `22.04.5` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u22.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u22.aarch64.tgz) |
| Ubuntu 24.04 | `u24` | `24.04.5` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u24.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u24.aarch64.tgz) |
| Ubuntu 26.04 | `u26` | `26.04.1` | [**x86_64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u26.x86_64.tgz) | [**aarch64**](https://github.com/pgsty/pigsty/releases/download/v4.6.0/pigsty-pkg-v4.6.0.u26.aarch64.tgz) |
{.full-width .wide .expand}

If the jump host has Internet access, extract the sources and run [**`bin/get-pkg`**](https://github.com/pgsty/pigsty/blob/main/bin/get-pkg) to detect the system or select a platform and download to `/var/tmp/pkg.tgz`:

```bash
bin/get-pkg                                   # detect platform and download v4.6.0 from GitHub to /var/tmp/pkg.tgz
bin/get-pkg -c                                # download for this platform from the China mirror CDN (repo.pigsty.cc)
bin/get-pkg -c -o el9.x86_64 -p /var/tmp/pkg.tgz  # select an OS and architecture
```

The release also includes sources, `checksums`, and corresponding `.asc` GPG signatures. Each asset has a SHA-256 digest on the [**GitHub release page**](https://github.com/pgsty/pigsty/releases/tag/v4.6.0). See [**GPG Verification**](/docs/repo/gpg/#github-release-asset-verification). Older packages remain under [**historical releases**](https://github.com/pgsty/pigsty/releases).

> [!WARNING] Offline packages target specific OS minor versions
> Different OpenSSL or system library versions can cause installation failures across minor versions. If the baseline does not match, [build an offline package](#making-offline-packages) on the same OS minor version and architecture, or contact [support](/docs/about/service/).

## Using Offline Packages

Do these steps in order:

1. Download the matching offline package to **`/var/tmp/pkg.tgz`**.
2. Download the Pigsty source archive for the same version, extract it, and enter the directory (for extraction under the home directory: **`cd ~/pigsty`**).
3. Run [**`./bootstrap -p /var/tmp/pkg.tgz`**](#bootstrap) to extract packages, configure the local repository, and install [**Ansible**](/docs/setup/playbook/) offline.
4. Run **`./configure -g -c rich`** to use the offline-ready [**`rich`**](/docs/conf/rich/) template, or configure your own.
5. Run **`./deploy.yml`** as usual to install the core chain from the local repository; other optional modules need their own playbooks.

{{< asciinema file="demo/install-offline.cast" markers="0:Upload Package,55:Extract and Use,66:Configure,80:Deploy" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}

> [!WARNING]
> For errors such as “No package nginx available”, first check package version, OS, architecture, `/www/pigsty/repo_complete`, and repository contents. `bootstrap` removes incomplete output and fails if extraction fails or the completion marker is missing. It reuses an existing valid repository. To replace one, first move or back up the old directory, then extract again.

To use an extracted offline package with your own configuration, set these parameters:

- [**`repo_enabled`**](/docs/infra/param/#repo_enabled): set **`true`** to build a local repository; most templates explicitly disable it
- [**`node_repo_modules`**](/docs/node/param/#node_repo_modules): set **`local`** to install from the local repository on all nodes
  - Most templates explicitly use `node,infra,pgsql` to install directly from upstream.
  - `local` uses only the local repository, avoiding upstream variability and providing the fastest installation.
  - Use `local,node,infra,pgsql` to combine local and upstream repositories.

The first parameter creates the **local repository**; including `local` in the second makes nodes use it.
With only `local`, it is the sole package source. Add other modules for extra upstream packages, including the separate `nginx` / `docker` repositories, for example `local,node,infra,pgsql,docker`.

**Hybrid installation**

If the environment has Internet access, you can combine local and upstream package sources.
Use the offline package as the initial repository.
Then download missing packages from upstream.

Within the same Linux major version and architecture, use an Internet-connected build node to run `make repo-build` for missing dependencies, then rebuild the offline package and validate installation. This still depends on upstream repositories. Only an artifact whose downloads, metadata rebuild, and installation checks are complete is suitable for an isolated environment.

## Making Offline Packages

To build a package for another operating system, use the [`cache.yml` playbook](https://github.com/pgsty/pigsty/blob/main/cache.yml).

1. Find a node with exactly the same OS version and Internet access.
2. Perform an [**online installation**](/docs/setup/install/) with [**`rich`**](/docs/conf/rich/) (`./configure -c rich`), and confirm `/www/pigsty` exists on the target Infra node. If needed, run `./infra.yml -t repo` there first.
3. Select one Infra node with a local repository, build an archive, and retrieve it. This example writes to `/var/tmp/pigsty-dist/`:

   ```bash
   cd ~/pigsty
   ./cache.yml -l <infra-host> -e 'cache_pkg_dir=/var/tmp/pigsty-dist/${version}'
   ```

4. Retrieve `pigsty-pkg-<version>.<os>.<arch>.tgz` from `/var/tmp/pigsty-dist/<version>/` on the admin node. Transfer it to `/var/tmp/pkg.tgz` in the offline environment, then run `./bootstrap -p /var/tmp/pkg.tgz`.

Replace `<infra-host>` with one Infra host from the inventory. `cache.yml` uses `sow create --pigsty` to remove 32-bit multiarch and conflicting old packages, retaining `*-docs` required by other packages, then rebuilds indexes. It creates the archive under the target's `cache_tmp_dir`, verifies it with `gzip -t`, retrieves it through `delegate_to: localhost`, and generates checksums. Both nodes need `rsync`. Nodes on the same platform produce the same filename, so select one build node at a time. `bin/boot-pkg` supports parallel distribution/bootstrap in multi-distribution build environments.

Override these main `cache.yml` parameters with extra variables:

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `cache_pkg_name` | `pigsty-pkg-${version}.${os}.${arch}.tgz` | Offline package filename template |
| `cache_pkg_dir` | `dist/${version}` | Output directory on the admin node |
| `cache_tmp_dir` | `/var/tmp` | Temporary archive directory on the target; create it first if overridden |
| `cache_repo` | `pigsty` | Local repository to package on the target node; separate multiple repositories with commas |
{.wide .expand}

The output also includes an MD5-format `checksums` file. If `dist/<version>/pigsty-<version>.tgz` exists on the admin node, `cache_src` copies it into the output directory. `cache.yml` does not archive the working tree automatically.

[Paid services](/docs/about/service/) build and verify offline packages for a specified Linux baseline, with a reference price of **¥300**. Contact us to confirm scope and pricing.

## Bootstrap

The `bootstrap` script prepares package repositories and Ansible before you run Pigsty playbooks. Use it to install deployment dependencies after downloading or cloning the source, or to extract and enable a local repository for offline installation.

### Options

| Option | Description |
|:-------|:------------|
| `-h`, `--help` | Show usage and exit without running setup |
| `-r <region>`, `--region <region>` | Mirror region: `default`, `china`, or `europe`. If omitted, a network probe selects `default` or `china`. The actual mirrors depend on the distribution |
| `-p <path>`, `--path <path>`, `--pkg <path>` | Path to an existing offline package; default `/var/tmp/pkg.tgz` |
| `-k`, `--keep` | Skip moving existing repository files into the backup directory. The script can still write or replace generated repository files; see below |
{.full-width}

Place the archive first, then select it with `-p`, or use the default `/var/tmp/pkg.tgz`.

Examples:

```bash
./bootstrap --help                                      # Show options
./bootstrap -r china                                    # Use China mirrors
./bootstrap -p /var/tmp/pkg.tgz                          # Use a downloaded offline package
./bootstrap --region china --pkg /var/tmp/pkg.tgz --keep # Combine options
```

### Execution Order

On Linux, the script runs these steps in order:

1. Check the operating system, architecture, and package manager. The current user must be `root` or have passwordless sudo. The script checks this requirement and exits if it is unmet; it does not change sudo configuration.
2. Check passwordless SSH from the current user to `127.0.0.1`. If needed, try to generate `~/.ssh/id_rsa` and add its public key to the local `~/.ssh/authorized_keys`. This does not distribute keys to remote nodes.
3. Prepare the local repository. If `/www/pigsty/repo_complete` exists, reuse it without extracting another package, even when `-p` is supplied. Otherwise, extract the specified offline package into `/www` if it exists. If extraction fails or the completion marker is missing, remove the incomplete `/www/pigsty` directory and exit with an error.
4. If the local repository is ready, configure a local file source pointing to `/www/pigsty`. Otherwise, configure upstream repositories for the selected region if the Internet probe succeeds, or keep existing sources if it fails. Then refresh package manager metadata.
5. If `ansible-playbook` is already in `PATH`, skip installation. Otherwise, install Ansible and utilities such as `unzip`, `wget`, `sshpass`, and platform-specific dependencies from the available repositories, then check that Ansible is available. Existing Ansible does not skip the earlier SSH, repository preparation, or metadata refresh steps.

If the path is not explicitly overridden, `/var/tmp/pkg.tgz` is absent, and `/tmp/pkg.tgz` exists, the script falls back to the legacy path. Prefer `/var/tmp/pkg.tgz` to avoid limited tmpfs space or loss on reboot. Even when the selected archive is absent, bootstrap continues with the repository selection workflow above and attempts online installation.

The script does not install or start Nginx. It reads offline packages through a local file source at this stage. Run `./configure` and the appropriate deployment playbooks afterward.

### Repository Changes

> [!WARNING] Existing repositories and the limits of `--keep`
> Before enabling a local repository or configuring upstream sources, the script moves existing repository files into a backup directory by default: `/etc/yum.repos.d/backup` on EL, or `/etc/apt/backup` on Debian and Ubuntu. It does not restore them automatically when it finishes.
>
> `-k/--keep` skips that bulk move, but the script still writes repository files. Local mode writes `pigsty-local.repo` or `pigsty-local.list`; upstream mode writes `/etc/yum.repos.d/el<version>.repo` or overwrites `/etc/apt/sources.list`. The legacy EL7 upstream setup still moves existing `.repo` files even with `-k`.
>
> ```bash
> ./bootstrap -k # Equivalent to --keep
> ```

### macOS

macOS can serve only as an administration node. The script skips the Linux sudo, SSH, offline extraction, and repository setup steps. If Ansible is absent, it only suggests running `brew install ansible`; it does not run Homebrew automatically.
