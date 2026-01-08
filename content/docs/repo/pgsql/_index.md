---
title: "PGSQL Repo"
icon: fas fa-database
description: The repo for PostgreSQL Extensions & Kernel Forks
weight: 5460
---

The `pigsty-pgsql` repo contains packages that are ad hoc to specific PostgreSQL Major Versions
(often ad hoc to a specific Linux distro major version, too). Including extensions and some kernel forks.

You can check the [**Release - RPM Changelog**](/docs/repo/pgsql/rpm/) / [**Release - DEB Changelog**](/docs/repo/pgsql/deb/) for the latest updates.


---------

## Compatibility

|  OS / Arch   |  OS  |                                x86_64                                 |                                aarch64                                |
|:------------:|:----:|:---------------------------------------------------------------------:|:---------------------------------------------------------------------:|
|     EL8      | el8  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|     EL9      | el9  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|     EL10     | el10 | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|  Debian 12   | d12  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
|  Debian 13   | d13  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
| Ubuntu 22.04 | u22  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |
| Ubuntu 24.04 | u24  | **18** **17** **16** **15** **14** **13** | **18** **17** **16** **15** **14** **13** |


---------

## Quick Start

### PIG

You can install [pig](/docs/pig/) - the CLI tool, and add pgdg / pigsty repo with it (recommended):

```bash
pig repo add pigsty                         # add pigsty-pgsql repo
pig repo add pigsty -u                      # add pigsty-pgsql repo, and update cache
pig repo add pigsty -u --region=default     # add pigsty-pgsql repo and enforce default region (pigsty.io)
pig repo add pigsty -u --region=china       # add pigsty-pgsql repo with china region   (pigsty.cc)
pig repo add pgsql -u                       # pgsql = pgdg + pigsty-pgsql (add pigsty + official PGDG)
pig repo add -u                             # all = node + pgsql (pgdg + pigsty) + infra
```

> **Hint**: If you are in mainland China, consider using the China CDN mirror (replace pigsty.io with pigsty.cc)


### APT

You can also enable this repo with `apt` directly on Debian / Ubuntu:

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian distribution codename (distro_codename=jammy, focal, bullseye, bookworm), and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-io.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql/${distro_codename} ${distro_codename} main
EOF

# Refresh APT repository cache
sudo apt update
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
# Use when in mainland China or Cloudflare is unavailable
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.cc/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian distribution codename, and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-io.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.cc/apt/pgsql/${distro_codename} ${distro_codename} main
EOF

# Refresh APT repository cache
sudo apt update
```
{{% /tab %}}
{{< /tabpane >}}


### DNF

You can also enable this repo with `dnf`/`yum` directly on EL-compatible systems:

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory, including two repositories
sudo tee /etc/yum.repos.d/pigsty-pgsql.repo > /dev/null <<-'EOF'
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
sudo dnf makecache;
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
# Use when in mainland China or Cloudflare is unavailable
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory
sudo tee /etc/yum.repos.d/pigsty-pgsql.repo > /dev/null <<-'EOF'
[pigsty-pgsql]
name=Pigsty PGSQL For el$releasever.$basearch
baseurl=https://repo.pigsty.cc/yum/pgsql/el$releasever.$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty
module_hotfixes=1
EOF

# Refresh YUM/DNF repository cache
sudo dnf makecache;
```
{{% /tab %}}
{{< /tabpane >}}


---------

## Source

Building specs of this repo is open-sourced on GitHub:

- https://github.com/pgsty/rpm
- https://github.com/pgsty/deb

If the platform is not supported, you can also build the packages from source code by yourself.

The [`pig build`](/docs/pig/build) provides an easy way to build extension RPM/DEB on your own systems.

