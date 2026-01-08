---
title: "INFRA Repo"
icon: fas fa-bank
description: Packages that are generic to any PostgreSQL version and Linux major version.
weight: 5440
---

The [`pigsty-infra`](https://github.com/pgsty/infra-pkg) repo contains packages that are generic to any PostgreSQL version and Linux major version,
including Prometheus & Grafana stack, admin tools for Postgres, and many utilities written in Go.

This repo is maintained by [Ruohang Feng](https://vonng.com/en/) ([Vonng](https://github.com/Vonng)) @ [Pigsty](https://pigsty.io),
you can find all the build specs on [https://github.com/pgsty/infra-pkg](https://github.com/pgsty/infra-pkg).
Prebuilt RPM / DEB packages for RHEL / Debian / Ubuntu distros available for `x86_64` and `aarch64` arch.
Hosted on Cloudflare CDN for free global access.

| Linux  | Package | x86_64 | aarch64 |
|:------:|:-------:|:------:|:-------:|
|   EL   |  `rpm`  |   ✓    |    ✓    |
| Debian |  `deb`  |   ✓    |    ✓    |

You can check the [**Release - Infra Changelog**](/docs/repo/infra/log/) for the latest updates.


---------

## Quick Start

You can add the `pigsty-infra` repo with the [`pig`](/docs/pig/) CLI tool, it will automatically choose from `apt/yum/dnf`.

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
curl https://repo.pigsty.io/pig | bash  # download and install the pig CLI tool
pig repo add infra                      # add pigsty-infra repo file to your system
pig repo update                         # update local repo cache with apt / dnf
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
# use when in mainland China or Cloudflare is down
curl https://repo.pigsty.cc/pig | bash  # install pig from China CDN mirror
pig repo add infra                      # add pigsty-infra repo file to your system
pig repo update                         # update local repo cache with apt / dnf
```
{{% /tab %}}
{{% tab header="Hint" %}}
```bash
# you can manage infra repo with these commands:
pig repo add infra -u       # add repo file, and update cache
pig repo add infra -ru      # remove all existing repo, add repo and make cache
pig repo set infra          # = pigsty repo add infra -ru

pig repo add all            # add infra, node, pgsql repo to your system
pig repo set all            # remove existing repo, add above repos and update cache
```
{{% /tab %}}
{{< /tabpane >}}



---------

## Manual Setup

You can also use this repo directly without the `pig` CLI tool, by adding them to your Linux OS repo list manually:


### APT Repo

On **Debian / Ubuntu** compatible Linux distros, you can add the [GPG Key](/docs/repo/gpg/) and APT repo file manually with:

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
# Add Pigsty's GPG public key to your system keychain to verify package signatures, or just trust
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian distribution codename (distro_codename=jammy, focal, bullseye, bookworm)
# and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
EOF

# Refresh APT repository cache
sudo apt update
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```bash
# use when in mainland China or Cloudflare is down
# Add Pigsty's GPG public key to your system keychain to verify package signatures, or just trust
curl -fsSL https://repo.pigsty.cc/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian distribution codename (distro_codename=jammy, focal, bullseye, bookworm)
# and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.cc/apt/infra generic main
EOF

# Refresh APT repository cache
sudo apt update
```
{{% /tab %}}
{{% tab header="NoKey" %}}
```bash
# If you don't want to trust any GPG key, just trust the repo directly
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trust=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update
```
{{% /tab %}}
{{< /tabpane >}}




### YUM Repo

On **RHEL** compatible Linux distros, you can add the [GPG Key](/docs/repo/gpg/) and YUM repo file manually with:

{{< tabpane text=true persist=header >}}
{{% tab header="Default" %}}
```bash
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
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
{{% tab header="Mirror" %}}
```bash
# use when in mainland China or Cloudflare is down
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add Pigsty Repo definition files to /etc/yum.repos.d/ directory
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.cc/yum/infra/$basearch
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
{{% tab header="NoKey" %}}
```bash
# If you don't want to trust any GPG key, just trust the repo directly
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
skip_if_unavailable = 1
enabled = 1
priority = 1
gpgcheck = 0
module_hotfixes=1
EOF

sudo yum makecache;
```
{{% /tab %}}
{{< /tabpane >}}


---------

## Content

For a detailed list of all packages available in the Infra repository, see the [Package List](/docs/repo/infra/list/).

For the changelog and release history, see the [Release Log](/docs/repo/infra/log/).


---------

## Source

Building specs of this repo is open-sourced on GitHub:

- https://github.com/pgsty/infra-pkg

If the platform is not supported, you can also build the packages from source code by yourself.

