---
title: Repository
weight: 2211
description: Pigsty extension software repository configuration
icon: fas fa-warehouse
module: [PGSQL]
tags: [Extension]
categories: [Reference]
---

Pigsty provides supplementary extension repositories, offering additional extension packages on top of the PGDG official repository.


--------

## YUM Repository

Applicable to EL 7/8/9/10 and compatible systems (RHEL, Rocky, AlmaLinux, CentOS, etc.).

### Add Repository

```bash
# Add GPG public key
curl -fsSL https://repo.pigsty.io/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null

# Add repository configuration
curl -fsSL https://repo.pigsty.io/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null

# Refresh cache
sudo yum makecache
```

### China Mainland Mirror

```bash
curl -fsSL https://repo.pigsty.cc/key | sudo tee /etc/pki/rpm-gpg/RPM-GPG-KEY-pigsty >/dev/null
curl -fsSL https://repo.pigsty.cc/yum/repo | sudo tee /etc/yum.repos.d/pigsty.repo >/dev/null
```

### Repository URLs

- International: https://repo.pigsty.io/yum/
- China: https://repo.pigsty.cc/yum/


--------

## APT Repository

Applicable to Debian 11/12/13 and Ubuntu 22.04/24.04 and compatible systems.

### Add Repository

```bash
# Add GPG public key
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get distribution codename and add repository
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql ${distro_codename} main
EOF

# Refresh cache
sudo apt update
```

### China Mainland Mirror

```bash
curl -fsSL https://repo.pigsty.cc/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.cc/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.cc/apt/pgsql/${distro_codename} ${distro_codename} main
EOF
```

### Repository URLs

- International: https://repo.pigsty.io/apt/
- China Mirror: https://repo.pigsty.cc/apt/


--------

## GPG Signature

All packages are signed with GPG:

- Fingerprint: `9592A7BC7A682E7333376E09E7935D8DB9BD8B20`
- Short ID: `B9BD8B20`


--------

## Repository Policy

The Pigsty repository follows these principles:

1. **Supplementary**: Only includes extensions not present in the PGDG repository
2. **Consistency**: Once an extension enters the PGDG repository, the Pigsty repository will remove it or keep it consistent
3. **Compatibility**: Supports multiple major versions of PostgreSQL 13-18
4. **Multi-platform**: Supports x86_64 and aarch64 architectures


--------

## Related Resources

- [Pigsty Extension Catalog](https://pgext.cloud/list): Browse all available extensions
- [PGDG YUM Repository](https://download.postgresql.org/pub/repos/yum/)
- [PGDG APT Repository](https://apt.postgresql.org/pub/repos/apt/)

