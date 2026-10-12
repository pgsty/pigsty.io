---
title: "Introduction"
linkTitle: "Introduction"
description: "Why do we need yet another package manager? Especially for Postgres extensions?"
weight: 20
icon: fas fa-lightbulb
module: [PIG]
categories: [Concept]
---

PostgreSQL extensions can be difficult to install and upgrade.
Documentation can be outdated, configuration scripts can be unclear, and forks or patches can be difficult to find.
Deployment is more complex across multiple Linux distributions and architectures. PIG helps with these tasks.

**Pig** is a Go tool that manages PostgreSQL and its [{{< param pgext_count >}} packaged extensions](/ext/list) through one CLI.
It supports TimescaleDB, Citus, PGVector, 30+ Rust extensions, and the components needed to host Supabase yourself.
Pig supplies RPM/DEB packages for each PostgreSQL version. You do not need to compile these packages from source or manage separate repositories.
The packages support Debian, Ubuntu, RedHat, and other mainstream distributions on x86 and Arm.

Pig uses native package managers (APT, YUM, DNF) and follows [PGDG official](/docs/repo/pgdg/) packaging standards.
It follows OS practices and works with existing repositories and packages.
If your Linux system and PostgreSQL major version are absent from the [supported list](#linux-compatibility), use [`pig build`](/docs/pig/build/) to compile extensions for that combination.

Use the [PIG official documentation](https://pigsty.io/docs/pig/) for instructions and the [extension list](/ext/list) to find available extensions.
These extensions let your local PostgreSQL database handle multiple data models.
The article [Postgres's future is unmatched extensibility](https://medium.com/@fengruohang/postgres-is-eating-the-database-world-157c204dcfc4) describes this direction. Pig makes these extension capabilities easier to use.

## Automation-Friendly

PIG supports automation through consistent arguments, stable output, and `--plan` previews.
High-risk operations use confirmation steps to reduce mistakes.


> [ANNOUNCE pig: The Postgres Extension Wizard](https://www.postgresql.org/about/news/announce-pig-the-postgres-extension-wizard-2988/)


--------

## Linux Compatibility

PIG and the Pigsty extension repository support the following Linux distribution and PostgreSQL version combinations:

| OS Code | Vendor | Major | Minor | Full Name | PG Versions | Notes |
|:---|:---|:---:|:---:|:---|:---|:---:|
| `el7.x86_64` | EL | 7 | 7.9 | CentOS 7 x86 | 13-15 | EOL |
| `el8.x86_64` | EL | 8 | 8.10 | RockyLinux 8 x86 | 14-18 | Near EOL |
| `el8.aarch64` | EL | 8 | 8.10 | RockyLinux 8 ARM | 14-18 | Near EOL |
| `el9.x86_64` | EL | 9 | 9.7 | RockyLinux 9 x86 | 14-18 | ✅ |
| `el9.aarch64` | EL | 9 | 9.7 | RockyLinux 9 ARM | 14-18 | ✅ |
| `el10.x86_64` | EL | 10 | 10.1 | RockyLinux 10 x86 | 14-18 | ✅ |
| `el10.aarch64` | EL | 10 | 10.1 | RockyLinux 10 ARM | 14-18 | ✅ |
| `d11.x86_64` | Debian | 11 | 11.11 | Debian 11 x86 | 14-18 | EOL |
| `d11.aarch64` | Debian | 11 | 11.11 | Debian 11 ARM | 14-18 | EOL |
| `d12.x86_64` | Debian | 12 | 12.14 | Debian 12 x86 | 14-18 | ✅ |
| `d12.aarch64` | Debian | 12 | 12.14 | Debian 12 ARM | 14-18 | ✅ |
| `d13.x86_64` | Debian | 13 | 13.6 | Debian 13 x86 | 14-18 | ✅ |
| `d13.aarch64` | Debian | 13 | 13.6 | Debian 13 ARM | 14-18 | ✅ |
| `u22.x86_64` | Ubuntu | 22 | 22.04.5 | Ubuntu 22.04 x86 | 14-18 | ✅ |
| `u22.aarch64` | Ubuntu | 22 | 22.04.5 | Ubuntu 22.04 ARM | 14-18 | ✅ |
| `u24.x86_64` | Ubuntu | 24 | 24.04.4 | Ubuntu 24.04 x86 | 14-18 | ✅ |
| `u24.aarch64` | Ubuntu | 24 | 24.04.4 | Ubuntu 24.04 ARM | 14-18 | ✅ |
| `u26.x86_64` | Ubuntu | 26 | 26.04.0 | Ubuntu 26.04 x86 | 14-18 | ✅ |
| `u26.aarch64` | Ubuntu | 26 | 26.04.0 | Ubuntu 26.04 ARM | 14-18 | ✅ |
{.full-width}

**Notes:**

- **EL** means RHEL-compatible distributions, including RHEL, CentOS, RockyLinux, AlmaLinux, and OracleLinux.
- **EOL** means the OS has reached, or will soon reach, the end of support. Upgrade to a newer version.
- **✅** means full support. These versions are recommended.
- PG versions 14-18 means PostgreSQL major versions 14, 15, 16, 17, and 18.
