---
title: "Linux Repository"
icon: fas fa-warehouse
description: The infrastructure to deliver PostgreSQL Extensions
weight: 5400
---

Pigsty has a repository that provides 340+ extra PostgreSQL extensions on mainstream [Linux Distros](/docs/ref/linux).
It is designed to work together with the official PostgreSQL Global Development Group ([PGDG](https://www.postgresql.org/download/linux/)) repo.
Together, they can provide up to [400+ PostgreSQL Extensions](https://ext.pigsty.io) out-of-the-box.

|   PGSQL Repo    |                   Description                    |             Link              |
|:---------------:|:------------------------------------------------:|:-----------------------------:|
| **PGSQL** Repo  | [Pigsty Extension Repo](/docs/repo/pgsql/), 340+ extra extensions | [pgsql.md](/docs/repo/pgsql/) |
| **INFRA** Repo  | [Pigsty Infrastructure Repo](/docs/repo/infra/), monitoring/tools | [infra.md](/docs/repo/infra/) |
|  **PGDG** Repo  |     [PGDG Official Repo Mirror](/docs/repo/pgdg/), PG Kernel      |  [pgdg.md](/docs/repo/pgdg/)  |
|  **GPG** Key    |        [GPG Public Key](/docs/repo/gpg/), signature verification  |   [gpg.md](/docs/repo/gpg/)   |


---------

## Compatibility Overview

|  OS / Arch   |  OS  |                  x86_64                   |                  aarch64                  |
|:------------:|:----:|:-----------------------------------------:|:-----------------------------------------:|
|     EL8      | el8  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|     EL9      | el9  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|     EL10     | el10 | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|  Debian 12   | d12  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|  Debian 13   | d13  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
| Ubuntu 22.04 | u22  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
| Ubuntu 24.04 | u24  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |


---------

## Get Started

You can enable the pigsty [infra](/docs/repo/infra/) & [pgsql](/docs/repo/pgsql/) repo with the [pig](/docs/pig/) CLI tool:

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
curl https://repo.pigsty.io/pig | bash      # download and install the pig CLI tool
pig repo add all -u                         # add linux, pgdg, pigsty repo and update cache
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
curl https://repo.pigsty.cc/pig | bash      # download from mirror site
pig repo add -u                             # add linux, pgdg, pigsty repo and update cache
```
{{% /tab %}}
{{< /tabpane >}}


---------

## Manual Install

You can also add these repos to your system [manually](#manual-install) with the default `apt`, `dnf`, `yum` approach.

{{< tabpane text=true persist=header >}}
{{% tab header="APT" %}}
```bash
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian distribution codename (distro_codename=jammy, focal, bullseye, bookworm), and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-io.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql/${distro_codename} ${distro_codename} main
EOF

# Refresh APT repository cache
sudo apt update
```
{{% /tab %}}
{{% tab header="YUM" %}}
```bash
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
{{% /tab %}}
{{< /tabpane >}}

All the RPM / DEB packages are signed with [GPG Key](/docs/repo/gpg/) fingerprint (`B9BD8B20`) in Pigsty repository.


---------

## Repository Components

Pigsty has two major repos: [**INFRA**](/docs/repo/infra/) and [**PGSQL**](/docs/repo/pgsql/),
providing DEB / RPM packages for `x86_64` and `aarch64` architecture.

The [**INFRA**](/docs/repo/infra/) repo contains packages that are generic to any PostgreSQL version and Linux major version,
including Prometheus & Grafana stack, admin tools for Postgres, and many utilities written in Go.

| Linux  | Package | x86_64 | aarch64 |
|:------:|:-------:|:------:|:-------:|
|   EL   |  `rpm`  |   ✓    |    ✓    |
| Debian |  `deb`  |   ✓    |    ✓    |

The [**PGSQL**](/docs/repo/pgsql/) repo contains packages that are ad hoc to specific PostgreSQL Major Versions
(often ad hoc to a specific Linux distro major version, too). Including extensions and some kernel forks.


---------

## Compatibility Details

|       OS Code        | Vendor | Major |  Minor  | Fullname          |              PG Major Version             | Comment  |
|:--------------------:|:-------|:-----:|:-------:|:------------------|:-----------------------------------------:|:--------:|
|    `el7.x86_64`      | EL     |   7   |   7.9   | CentOS 7 x86      |    15 14 13                               |   EOL    |
|    `el8.x86_64`      | EL     |   8   |  8.10   | RockyLinux 8 x86  | **18** **17** **16** **15** **14** **13** | Near EOL |
|    `el8.aarch64`     | EL     |   8   |  8.10   | RockyLinux 8 ARM  | **18** **17** **16** **15** **14** **13** | Near EOL |
|    `el9.x86_64`      | EL     |   9   |   9.6   | RockyLinux 9 x86  | **18** **17** **16** **15** **14** **13** |    OK    |
|    `el9.aarch64`     | EL     |   9   |   9.6   | RockyLinux 9 ARM  | **18** **17** **16** **15** **14** **13** |    OK    |
|    `el10.x86_64`     | EL     |  10   |  10.0   | RockyLinux 10 x86 | **18** **17** **16** **15** **14** **13** |    OK    |
|    `el10.aarch64`    | EL     |  10   |  10.0   | RockyLinux 10 ARM | **18** **17** **16** **15** **14** **13** |    OK    |
|    `d11.x86_64`      | Debian |  11   |  11.11  | Debian 11 x86     |    17 16 15 14 13                         |   EOL    |
|    `d11.aarch64`     | Debian |  11   |  11.11  | Debian 11 ARM     |    17 16 15 14 13                         |   EOL    |
|    `d12.x86_64`      | Debian |  12   |  12.12  | Debian 12 x86     | **18** **17** **16** **15** **14** **13** |    OK    |
|    `d12.aarch64`     | Debian |  12   |  12.12  | Debian 12 ARM     | **18** **17** **16** **15** **14** **13** |    OK    |
|    `d13.x86_64`      | Debian |  13   |  13.1   | Debian 13 x86     | **18** **17** **16** **15** **14** **13** |    OK    |
|    `d13.aarch64`     | Debian |  13   |  13.1   | Debian 13 ARM     | **18** **17** **16** **15** **14** **13** |    OK    |
|    `u20.x86_64`      | Ubuntu |  20   | 20.04.6 | Ubuntu 20.04 x86  |    17 16 15 14 13                         |   EOL    |
|    `u20.aarch64`     | Ubuntu |  20   | 20.04.6 | Ubuntu 20.04 ARM  |    17 16 15 14 13                         |   EOL    |
|    `u22.x86_64`      | Ubuntu |  22   | 22.04.5 | Ubuntu 22.04 x86  | **18** **17** **16** **15** **14** **13** |    OK    |
|    `u22.aarch64`     | Ubuntu |  22   | 22.04.5 | Ubuntu 22.04 ARM  | **18** **17** **16** **15** **14** **13** |    OK    |
|    `u24.x86_64`      | Ubuntu |  24   | 24.04.3 | Ubuntu 24.04 x86  | **18** **17** **16** **15** **14** **13** |    OK    |
|    `u24.aarch64`     | Ubuntu |  24   | 24.04.3 | Ubuntu 24.04 ARM  | **18** **17** **16** **15** **14** **13** |    OK    |


---------

## Source

Building specs of these repos and packages are open-sourced on GitHub:

- https://github.com/pgsty/rpm
- https://github.com/pgsty/deb
- https://github.com/pgsty/infra-pkg

