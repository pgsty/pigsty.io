---
title: "pig repo"
description: "Manage software repositories with pig repo"
weight: 110
icon: fas fa-warehouse
module: [PIG]
categories: [Reference]
---

Use `pig repo` to add, remove, create, and manage package repositories.
It supports RPM systems (RHEL/CentOS/Rocky/Alma) and Debian systems (Debian/Ubuntu).

```bash
pig repo - Manage Linux APT/YUM Repo

  pig repo list                    # available repo list             (info)
  pig repo info   [repo|module...] # show repo info                  (info)
  pig repo status                  # show current repo status        (info)
  pig repo add    [repo|module...] # add repo and modules            (root)
  pig repo rm     [repo|module...] # remove repo & modules           (root)
  pig repo update                  # update repo pkg cache           (root)
  pig repo create                  # create repo on current system   (root)
  pig repo boot                    # boot repo from offline package  (root)
  pig repo cache                   # cache repo as offline package   (root)

Examples:
  pig repo add -ru                 # add all repo and update cache (brute but effective)
  pig repo add pigsty -u           # gentle version, only add pigsty repo and update cache
  pig repo add node pgdg pigsty    # essential repo to install postgres packages
  pig repo add all                 # all = node + pgdg + pigsty
  pig repo add all extra           # extra module has non-free and some 3rd repo for certain extensions
  pig repo add all -m              # prefer the bundled China-region mirrors
  pig repo update                  # update repo cache
  pig repo create                  # update local repo /www/pigsty meta
  pig repo boot                    # extract /tmp/pkg.tgz to /www/pigsty
  pig repo cache                   # cache /www/pigsty into /tmp/pkg.tgz
```

| Command | Description | Notes |
|:---|:---|:---|
| `repo list` | Print available repositories and modules | |
| `repo info` | Show repository details | |
| `repo status` | Show current repository status | |
| `repo add` | Add repositories | Requires sudo or root |
| `repo set` | Clear, overwrite, and update repositories | Requires sudo or root |
| `repo rm` | Remove repositories | Requires sudo or root |
| `repo update` | Update repository cache | Requires sudo or root |
| `repo create` | Create local YUM/APT repository | Requires sudo or root |
| `repo cache` | Create offline package from local repo | Requires sudo or root |
| `repo boot` | Bootstrap repository from offline package | Requires sudo or root |
| `repo reload` | Refresh repository catalog | |
{.full-width}


## Quick Start

```bash
# Method 1: clean existing repositories, add all required repos, and update cache (recommended)
pig repo add all --remove --update    # remove old repos, add all required repos, update cache

# Method 1 variant: one step
pig repo set                          # = pig repo add all --remove --update

# Method 2: gentle mode - only add required repos and keep current repo configuration
pig repo add pgsql                    # add PGDG and Pigsty PGSQL repositories
pig repo add pigsty --region=china    # add Pigsty repositories with China region
pig repo add pgdg   --region=europe   # add PGDG repositories with Europe region
pig repo add infra  --region=default  # add INFRA repositories with default region
pig repo add all -m                   # explicitly select the bundled China-region mirrors

# If the commands above did not use -u|--update, run this as an extra step
pig repo update                       # update system package cache
```


## Modules

Pig organizes APT/YUM repositories into **modules**. Each module groups repositories for a specific purpose.

| Module | Description | Repository List |
|:---:|:---|:---|
| `all` | All core modules required to install PG | `node` + `infra` + `pgsql` |
| `pgsql` | PGDG + Pigsty PG extensions | `pigsty-pgsql` + `pgdg` |
| `pigsty` | Pigsty Infra + PGSQL repositories | pigsty-infra, pigsty-pgsql |
| `pgdg` | PGDG official repositories | pgdg-common, pgdg14-18 |
| `node` | Linux system repositories | base, updates, extras, epel, baseos, appstream... |
| `infra` | Infrastructure component repositories | pigsty-infra, nginx, docker-ce |
| `docker` | Docker repository | docker-ce |
| `beta` | PostgreSQL 19 beta repositories | pgdg19-beta, pgdg-beta |
| `extra` | PGDG non-free and third-party extensions | pgdg-extras, timescaledb, citus |
| `groonga` | PGroonga repository | groonga |
| `mssql` | WiltonDB repository (deprecated) | babelfish |
| `percona` | Percona PG + PG_TDE | percona |
| `llvm` | LLVM toolchain repository | llvm |
| `kube` | Kubernetes repository | kubernetes |
| `grafana` | Grafana repository | grafana |
| `haproxy` | HAProxy repositories | haproxyd, haproxyu |
| `redis` | Redis repository | redis |
| `mongo` | MongoDB repository | mongo |
| `mysql` | MySQL repository | mysql |
| `click` | ClickHouse repository | clickhouse |
| `gitlab` | GitLab repository | gitlab-ce, gitlab-ee |
{.full-width}

Pig also includes APT/DNF repositories for other databases and systems such as `redis`, `kubernetes`, `grafana`, `clickhouse`, `gitlab`, `haproxy`, `mongodb`, and `mysql`.

PostgreSQL installation usually requires `node` (Linux system repositories) and `pgsql` (PGDG + Pigsty).
The optional `infra` repository contains tools, IvorySQL kernel packages, and similar components.
For most users, start with `all`. This module adds all required repositories at once.

```bash
pig repo add all      # add node, pgsql, and infra repositories
pig repo add          # default to the all module when no argument is given
pig repo set          # set clears/backups existing definitions and overwrites with new repo definitions
```


## Repository Definitions

The full repository definition bundled with Pigsty is in [`cli/repo/assets/repo.yml`](https://github.com/pgsty/pig/blob/main/cli/repo/assets/repo.yml).

Create `~/.pig/repo.yml` to override pig's repository definitions.
You can add regional mirror URLs under `baseurl`, such as China or Europe mirrors.
With `--region`, pig uses the matching regional URL. If that region is unavailable, it uses the `default` URL.
From v1.7.0, `-m|--mirror` selects the bundled `china` definitions, including `pigsty.cc` and maintained domestic mirrors.
It no longer rewrites PGDG URLs through a runtime proxy.

Ordinary EL repositories keep native DNF module filtering.
Only definitions with `module_hotfixes=1` override module streams. These include Pigsty and PGDG repositories.
Pig removes this key when it generates EL7 YUM configuration.


### Trust and configuration ownership

Repository operations change the host's software-supply configuration. Use `pig repo info MODULE` to inspect the definitions PIG would render. `repo add` preserves unrelated files unless `--remove` is supplied; `repo set` always backs up and replaces existing definitions before refreshing metadata, so it can conflict with Ansible, image-build, or other configuration owners.

`repo add` and `repo set` prepare PIG's embedded Pigsty public key when the selected modules contain an available `pigsty-infra` or `pigsty-pgsql` repository. This includes `pigsty`, `infra`, `pgsql`, and the default `all` selection. PIG first checks whether the key file exists and reuses an existing regular file without rewriting it. If the file is missing or the check fails, including a permission error, PIG attempts installation before modifying repository definitions. Installation works offline and requires no `curl`, `gpg`, or `apt-key` command.

- EL: `/etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty`
- Debian / Ubuntu: `/etc/apt/keyrings/pigsty.asc`

New key files use mode `0644`. By default, installation is best-effort: failure emits a warning, recorded in structured output as `data.warnings`, and repository configuration continues. Only the selected Pigsty definitions fall back to `trusted=yes` on Debian/Ubuntu or `gpgcheck=0` and `repo_gpgcheck=0` on EL. The default key reference remains present on failure, so APT definitions added by different operations agree on `signed-by`. Other repository definitions are preserved. APT may warn and retain old indexes when the key becomes unavailable; successful configuration does not guarantee a fresh index download.

If a selected Pigsty definition explicitly supplies a non-empty signing-key reference, preparation of that actual key is mandatory. On Debian/Ubuntu, `signed-by` must name existing regular keyring files by absolute path, separated by commas when needed; the default Pigsty path can be installed from the embedded key. On EL, PIG prepares an explicitly referenced default file if needed, then delegates the listed `gpgkey` paths or literal URLs to `rpm --import`. Preparation failure stops before backup, repository writes, or cache refresh. Explicit references are preserved and never silently downgraded. A valid custom key does not depend on the default key path. Selecting only other repositories, such as `pgdg` or `node`, does not prepare the Pigsty key.

Implicit key installation only prepares the file and its repository reference; it does not import it into RPM's database or APT's global trust store. Explicit EL `gpgkey` metadata additionally requests the RPM import described above. Ordinary `repo add/set` operations preserve signature-checking settings when preparation succeeds. [`pig sty boot`](/docs/pig/sty/#sty-boot) enables Pigsty signature checking when key preparation succeeds and uses the same warning-and-fallback rule on implicit-key failure. See the [design decision](https://pig.pgsty.com/design/automatic-pigsty-repo-key/).

For compatibility with offline and mirrored repositories, PIG's built-in metadata defaults to `gpgcheck=0` on EL and `trusted=yes` on Debian/Ubuntu. This disables package-signature enforcement for those definitions. Since v1.7.0, ordinary EL repositories keep native DNF module filtering; only definitions that explicitly declare `module_hotfixes=1`—notably Pigsty and PGDG repositories—override module streams, and the key is removed when rendering EL7 YUM configuration. Security-sensitive deployments should install trusted keys, change the generated metadata to enforce signature verification, pin approved origins, and manage those settings through their normal configuration system.


## repo list

`pig repo list` lists all repository modules available on the current system.

```bash
pig repo list                # list repositories available on current system
pig repo list all            # list all repositories without filtering
```


## repo info

Show detailed information for specific repositories or modules, including URLs, metadata, regional mirrors, and `.repo` / `.list` repository file content.

```bash
pig repo info pgdg               # show pgdg module information
pig repo info pigsty pgdg        # show multiple modules
pig repo info all                # show all modules
```


## repo status

Show current repository configuration on the system.

```bash
pig repo status
```


## repo add

Add repository configuration files to the system. Requires root/sudo privileges.

```bash
pig repo add pgdg                # add PGDG repository
pig repo add pgdg pigsty         # add multiple repositories
pig repo add all                 # add all required repositories (pgdg + pigsty + node)
pig repo add pigsty -u           # add and update cache
pig repo add all -r              # remove existing repos before adding
pig repo add all -ru             # remove, add, and update (full reset)
pig repo add pgdg --region=china # use China mirror
pig repo add pgsql -m            # explicitly select the China-region mirrors
```

**Options:**

- `-r|--remove`: remove existing repositories before adding new ones
- `-u|--update`: run package cache update after adding repositories
- `-m|--mirror`: explicitly select the bundled `china` repository definitions
- `--region <region>`: use regional mirror repositories (`default` / `china` / `europe`)

| Platform | Module Location |
|:---:|:---|
| EL | `/etc/yum.repos.d/<module>.repo` |
| Debian | `/etc/apt/sources.list.d/<module>.list` |
{.full-width}


## repo set

Equivalent to `repo add --remove --update`. It clears existing repositories, sets up new ones, then updates cache.

```bash
pig repo set                     # replace with default repositories
pig repo set pgdg pigsty         # replace with selected repositories and update
pig repo set all --region=china  # use China mirror
pig repo set -m                  # explicitly select the China-region mirrors
```

Like `repo add`, `repo set` supports `--region` and `-m|--mirror` for region selection.
It always overwrites repository definitions, equivalent to `repo add all --remove --update`.


## repo rm

Remove repository configuration files and back them up.

```bash
pig repo rm                      # remove all repositories
pig repo rm pgdg                 # remove selected repository
pig repo rm pgdg pigsty -u       # remove and update cache
```

| Platform | Backup Location |
|:---:|:---|
| EL | `/etc/yum.repos.d/backup/` |
| Debian | `/etc/apt/sources.list.d/backup/` |
{.full-width}


## repo update

Update package-manager cache to reflect repository changes.

```bash
pig repo update                  # update package cache
```

| Platform | Equivalent Command |
|:---:|:---|
| EL | `dnf makecache` |
| Debian | `apt update` |
{.full-width}


## repo create

Create a local package repository for offline installation.

```bash
pig repo create                  # Linux: /www/pigsty; macOS: current directory
pig repo create /srv/repo        # create at custom location
```

If [`sow`](https://sow.pgsty.com/docs/reference/cli/create/) is in `PATH`, the command uses it first.
On Linux, the SOW backend runs the following equivalent command with `sudo` for each target directory:

```bash
sow create --pigsty --timeout 10m -- /absolute/repository/path
```

On macOS, SOW is required. It runs without `sudo` and uses the current directory by default.
On Linux without `sow`, EL uses `createrepo_c`. Debian/Ubuntu uses `dpkg-scanpackages` from `dpkg-dev`.
If neither SOW nor the platform fallback is available, `pig repo create` fails.
If SOW execution fails, pig returns the error without trying the legacy backend.
The `10m` timeout limits the wait for SOW's directory lock. It does not limit repository indexing time.

SOW's `--pigsty` transaction:

1. Scan top-level regular `.rpm` and `.deb` files. Do not scan subdirectories or follow symlinks.
2. Remove parsed 32-bit x86 packages: RPM `i386/i486/i586/i686` and DEB `i386`. Also remove packages with binary name exactly `patroni` and upstream version exactly `3.0.4`.
3. Build the required RPM/DEB metadata atomically. Write `repo_complete` last. This marker contains SHA-256 hashes of the remaining top-level packages, sorted by basename.

SOW does not change non-package files or directories.
Malformed package candidates or conflicting package coordinates cause the transaction to fail without accepting the repository.
The legacy backend has different cleanup and metadata behavior. It writes an MD5 package list to `repo_complete`.
After either backend exits, PIG checks that `repo_complete` is a regular file.
PIG does not validate its contents or hashes. If you use the marker to accept a delivery, verify them yourself.


## repo cache

Create a compressed tarball of repository contents for offline distribution.

```bash
pig repo cache                   # default: /www to /tmp/pkg.tgz
pig repo cache -d /srv           # custom source directory
```

**Options:**

- `-d, --dir`: source directory, default `/www/`
- `-p, --path`: output path, default `/tmp/pkg.tgz`


## repo boot

Extract and set up a local repository from an offline package.

```bash
pig repo boot                    # default: /tmp/pkg.tgz to /www
pig repo boot -p /mnt/pkg.tgz    # custom package path
pig repo boot -d /srv            # custom target directory
```

**Options:**

- `-p, --path`: package path, default `/tmp/pkg.tgz`
- `-d, --dir`: target directory, default `/www/`


## repo reload

Refresh repository metadata from GitHub to the latest version.

```bash
pig repo reload                  # refresh repository catalog
```

The updated file is placed in `~/.pig/repo.yml`.
