---
title: "Linux Repository"
linkTitle: "Repository"
icon: fas fa-warehouse
description: The APT / DNF repository to deliver PostgreSQL Kernel, Extensions and Infra packages.
weight: 610
---

The Pigsty repository provides additional PostgreSQL extension packages for mainstream [Linux distributions](/docs/ref/linux). Use it with the official PostgreSQL Global Development Group ([PGDG](https://www.postgresql.org/download/linux/)) repository. See the [extension catalog](/ext/list/) for each extension's source, version, and platform coverage. Together, these repositories provide [{{< param pgext_count >}} packaged PostgreSQL extensions](/ext/).

|   PGSQL Repo   |                                 Description                                  |             Link              |
|:--------------:|:----------------------------------------------------------------------------:|:-----------------------------:|
| **PGSQL** Repo | [Pigsty Extension Repo](/docs/repo/pgsql/), extensions and kernel variants | [pgsql.md](/docs/repo/pgsql/) |
| **INFRA** Repo |      [Pigsty Infrastructure Repo](/docs/repo/infra/), monitoring/tools       | [infra.md](/docs/repo/infra/) |
| **PGDG** Repo  |           [PGDG Official Repo Mirror](/docs/repo/pgdg/), PG Kernel           |  [pgdg.md](/docs/repo/pgdg/)  |
|  **GPG** Key   |          [GPG Public Key](/docs/repo/gpg/), signature verification           |   [gpg.md](/docs/repo/gpg/)   |


---------

## Compatibility Overview

|  OS / Arch   |  OS  |                 x86_64                 |                aarch64                 |
|:------------:|:----:|:--------------------------------------:|:--------------------------------------:|
|     EL8      | el8  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
|     EL9      | el9  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
|     EL10     | el10 | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
|  Debian 12   | d12  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
|  Debian 13   | d13  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
| Ubuntu 22.04 | u22  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
| Ubuntu 24.04 | u24  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |
| Ubuntu 26.04 | u26  | **18**, **17**, **16**, **15**, **14** | **18**, **17**, **16**, **15**, **14** |


---------

## Repository Modules in Pigsty

`repo_modules` and `node_repo_modules` select repositories by the `module` field in `roles/node_id/vars/<os>.<arch>.yml`. Development versions use `nginx` and `docker` for the corresponding upstream repositories. In the `v4.5.0` release, Docker and Nginx on EL still belong to `infra`.

Add these modules explicitly when needed, for example `node_repo_modules: node,infra,pgsql,nginx,docker`. The local offline repository uses `local`. See [REPO](/docs/infra/param/#repo) and [node_repo_modules](/docs/node/param/#node_repo_modules) for the full parameters.

---------

## Get Started

Use the [pig](/docs/pig/) CLI tool to enable the Pigsty [infra](/docs/repo/infra/) and [pgsql](/docs/repo/pgsql/) repositories:

```bash {tab="Default" group="default-mirror" value="default"}
curl https://repo.pigsty.io/pig | bash      # download and install the pig CLI tool
pig repo add all -u                         # add linux, pgdg, pigsty repo and update cache
```

```bash {tab="Mirror" value="mirror"}
curl https://repo.pigsty.cc/pig | bash      # download from mirror site
pig repo add -u                             # add linux, pgdg, pigsty repo and update cache
```


---------

## Manual Install

You can also add these repositories [manually](#manual-install) with the standard `apt`, `dnf`, or `yum` tools.

```bash {tab="APT" group="apt-yum" value="apt"}
# Add Pigsty's GPG public key to your system keychain to verify package signatures
sudo install -d -m 0755 /etc/apt/keyrings
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian / Ubuntu distribution codename (bookworm, trixie, jammy, noble, resolute), and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-io.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql/${distro_codename} ${distro_codename} main
EOF

# Refresh APT repository cache
sudo apt update
```

```bash {tab="YUM" value="yum"}
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory, including two repositories
sudo tee /etc/yum.repos.d/pigsty-io.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty
module_hotfixes=1

[pigsty-pgsql]
name=Pigsty PGSQL For el$releasever.$basearch
baseurl=https://repo.pigsty.io/yum/pgsql/el$releasever.$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty
module_hotfixes=1
EOF

# Refresh YUM/DNF repository cache
sudo yum makecache;
```

Pigsty signs all RPM / DEB packages in its repository with the [GPG key](/docs/repo/gpg/) identified by `B9BD8B20`.


---------

## Repository Components

Pigsty has two main repositories: [**INFRA**](/docs/repo/infra/) and [**PGSQL**](/docs/repo/pgsql/). They provide DEB / RPM packages for `x86_64` and `aarch64`.

The [**INFRA**](/docs/repo/infra/) repository contains packages that are independent of the PostgreSQL version and Linux major version. These include the Prometheus and Grafana stack, PostgreSQL administration tools, and many utilities written in Go.

| Linux  | Package | x86_64 | aarch64 |
|:------:|:-------:|:------:|:-------:|
|   EL   |  `rpm`  |   ✓    |    ✓    |
| Debian |  `deb`  |   ✓    |    ✓    |

The [**PGSQL**](/docs/repo/pgsql/) repository contains packages for specific PostgreSQL major versions. These packages often also depend on the Linux distribution major version. They include extensions and some kernel forks.


---------

## Compatibility Details

|    OS Code     | Vendor | Major |  Minor  | Fullname          |          PG Major Version          | Comment  |
|:--------------:|:-------|:-----:|:-------:|:------------------|:----------------------------------:|:--------:|
|  `el7.x86_64`  | EL     |   7   |   7.9   | CentOS 7 x86      |              15 14 13              |   EOL    |
|  `el8.x86_64`  | EL     |   8   |  8.10   | RockyLinux 8 x86  | **18** **17** **16** **15** **14** | Near EOL |
| `el8.aarch64`  | EL     |   8   |  8.10   | RockyLinux 8 ARM  | **18** **17** **16** **15** **14** | Near EOL |
|  `el9.x86_64`  | EL     |   9   |   9.8   | RockyLinux 9 x86  | **18** **17** **16** **15** **14** |    OK    |
| `el9.aarch64`  | EL     |   9   |   9.8   | RockyLinux 9 ARM  | **18** **17** **16** **15** **14** |    OK    |
| `el10.x86_64`  | EL     |  10   |  10.2   | RockyLinux 10 x86 | **18** **17** **16** **15** **14** |    OK    |
| `el10.aarch64` | EL     |  10   |  10.2   | RockyLinux 10 ARM | **18** **17** **16** **15** **14** |    OK    |
|  `d11.x86_64`  | Debian |  11   |  11.11  | Debian 11 x86     |           17 16 15 14 13           |   EOL    |
| `d11.aarch64`  | Debian |  11   |  11.11  | Debian 11 ARM     |           17 16 15 14 13           |   EOL    |
|  `d12.x86_64`  | Debian |  12   |  12.15  | Debian 12 x86     | **18** **17** **16** **15** **14** |    OK    |
| `d12.aarch64`  | Debian |  12   |  12.15  | Debian 12 ARM     | **18** **17** **16** **15** **14** |    OK    |
|  `d13.x86_64`  | Debian |  13   |  13.6   | Debian 13 x86     | **18** **17** **16** **15** **14** |    OK    |
| `d13.aarch64`  | Debian |  13   |  13.6   | Debian 13 ARM     | **18** **17** **16** **15** **14** |    OK    |
|  `u22.x86_64`  | Ubuntu |  22   | 22.04.5 | Ubuntu 22.04 x86  | **18** **17** **16** **15** **14** |    OK    |
| `u22.aarch64`  | Ubuntu |  22   | 22.04.5 | Ubuntu 22.04 ARM  | **18** **17** **16** **15** **14** |    OK    |
|  `u24.x86_64`  | Ubuntu |  24   | 24.04.4 | Ubuntu 24.04 x86  | **18** **17** **16** **15** **14** |    OK    |
| `u24.aarch64`  | Ubuntu |  24   | 24.04.4 | Ubuntu 24.04 ARM  | **18** **17** **16** **15** **14** |    OK    |
|  `u26.x86_64`  | Ubuntu |  26   | 26.04.0 | Ubuntu 26.04 x86  | **18** **17** **16** **15** **14** |    OK    |
| `u26.aarch64`  | Ubuntu |  26   | 26.04.0 | Ubuntu 26.04 ARM  | **18** **17** **16** **15** **14** |    OK    |


---------

## Source

The build specifications for these repositories and packages are open source on GitHub:

- https://github.com/pgsty/rpm
- https://github.com/pgsty/deb
- https://github.com/pgsty/infra-pkg
