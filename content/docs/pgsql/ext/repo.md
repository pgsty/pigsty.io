---
title: Repository
weight: 2211
description: Pigsty extension software repository configuration
icon: fas fa-warehouse
module: [PGSQL]
categories: [Reference]
---

Pigsty provides supplementary extension repositories.
They supply extension packages in addition to those in the official PGDG repository.


--------

## YUM Repository

Use this repository with EL 8/9/10 and compatible systems, such as RHEL, Rocky, AlmaLinux, and CentOS.

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

Use this repository with Debian 12/13, Ubuntu 22.04/24.04/26.04, and compatible systems.

### Add Repository

```bash
# Add GPG public key
curl -fsSL https://repo.pigsty.io/key | sudo gpg --dearmor -o /etc/apt/keyrings/pigsty.gpg

# Get distribution codename and add repository
distro_codename=$(lsb_release -cs)
sudo tee /etc/apt/sources.list.d/pigsty.list > /dev/null <<EOF
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/infra generic main
deb [signed-by=/etc/apt/keyrings/pigsty.gpg] https://repo.pigsty.io/apt/pgsql/${distro_codename} ${distro_codename} main
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

1. **Supplementary**: The repository only includes extensions that are absent from the PGDG repository.
2. **Consistency**: If PGDG adds an extension, Pigsty will remove its package or keep it consistent with PGDG.
3. **Compatibility**: The repository supports PostgreSQL major versions 14-18.
4. **Multi-platform**: The repository supports x86_64 and aarch64 architectures.


--------

## Related Resources

- [Pigsty Extension Catalog](/ext/list): Browse all available extensions
- [PGDG YUM Repository](https://download.postgresql.org/pub/repos/yum/)
- [PGDG APT Repository](https://apt.postgresql.org/pub/repos/apt/)
