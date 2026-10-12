---
title: "PGSQL Repo"
icon: fas fa-database
description: The repo for PostgreSQL Extensions & Kernel Forks
weight: 5460
---

The `pigsty-pgsql` repository contains packages for specific PostgreSQL major versions. These packages often also depend on the Linux distribution major version. They include extensions and some kernel forks.

You can check the [**Release - RPM Changelog**](/docs/repo/pgsql/rpm/) / [**Release - DEB Changelog**](/docs/repo/pgsql/deb/) for the latest updates.

---------

## Compatibility

|  OS / Arch   |  OS  |            x86_64            |           aarch64            |
|:------------:|:----:|:----------------------------:|:----------------------------:|
|     EL8      | el8  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
|     EL9      | el9  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
|     EL10     | el10 | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
|  Debian 12   | d12  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
|  Debian 13   | d13  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
| Ubuntu 22.04 | u22  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
| Ubuntu 24.04 | u24  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |
| Ubuntu 26.04 | u26  | `18`, `17`, `16`, `15`, `14` | `18`, `17`, `16`, `15`, `14` |


---------

## Quick Start

### PIG

We recommend that you install the [pig](/docs/pig/) CLI tool. Use it to add the PGDG / Pigsty repositories:

```bash
pig repo add pigsty                         # add pigsty-pgsql repo
pig repo add pigsty -u                      # add pigsty-pgsql repo, and update cache
pig repo add pigsty -u --region=default     # add pigsty-pgsql repo and enforce default region (pigsty.io)
pig repo add pigsty -u --region=china       # add pigsty-pgsql repo with china region   (pigsty.cc)
pig repo add pgsql -u                       # pgsql = pgdg + pigsty-pgsql (add pigsty + official PGDG)
pig repo add -u                             # all = node + pgsql (pgdg + pigsty) + infra
```

> **Hint**: In mainland China, consider the China CDN mirror. Replace pigsty.io with pigsty.cc.


### APT

You can also enable this repo with `apt` directly on Debian / Ubuntu:

```bash {tab="Default" group="default-mirror" value="default"}
# Add Pigsty's GPG public key to your system keychain to verify package signatures
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get Debian / Ubuntu distribution codename (bookworm, trixie, jammy, noble, resolute), and write the corresponding upstream repository address to the APT List file
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty-io.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql/${distro_codename} ${distro_codename} main
EOF

# Refresh APT repository cache
sudo apt update
```

```bash {tab="Mirror" value="mirror"}
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


### DNF

You can also enable this repo with `dnf`/`yum` directly on EL-compatible systems:

```bash {tab="Default" group="default-mirror" value="default"}
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

```bash {tab="Mirror" value="mirror"}
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


---------

## Source

The build specifications for this repository are open source on GitHub:

- https://github.com/pgsty/rpm
- https://github.com/pgsty/deb

If your platform is unsupported, you can build the packages from source.

Use [`pig build`](/docs/pig/build) to build extension RPM/DEB packages on your own systems.
