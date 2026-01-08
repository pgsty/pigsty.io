---
title: ha/safe
weight: 850
description: Security-hardened HA configuration template with high-standard security best practices
icon: fa-solid fa-shield-halved
categories: [Reference]
---

The `ha/safe` configuration template is based on the `ha/trio` template, providing a security-hardened configuration with high-standard security best practices.


--------

## Overview

- Config Name: `ha/safe`
- Node Count: Three nodes (optional delayed replica)
- Description: Security-hardened HA configuration with high-standard security best practices
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64` (some security extensions unavailable on ARM64)
- Related: [`ha/trio`](/docs/conf/trio/), [`ha/full`](/docs/conf/full/)

Usage:

```bash
./configure -c ha/safe [-i <primary_ip>]
```


--------

## Security Hardening Measures

The `ha/safe` template implements the following security hardening:

- **Mandatory SSL Encryption**: SSL enabled for both PostgreSQL and PgBouncer
- **Strong Password Policy**: `passwordcheck` extension enforces password complexity
- **User Expiration**: All users set to 20-year expiration
- **Minimal Connection Scope**: Limit PostgreSQL/Patroni/PgBouncer listen addresses
- **Strict HBA Rules**: Mandatory SSL authentication, admin requires certificate
- **Audit Logs**: Record connection and disconnection events
- **Delayed Replica**: Optional 1-hour delayed replica for recovery from mistakes
- **Critical Template**: Uses `crit.yml` tuning template for zero data loss


--------

## Content

Source: [`pigsty/conf/ha/safe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/safe.yml)

{{< readfile file="yaml/ha/safe.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `ha/safe` template is Pigsty's **security-hardened configuration**, designed for production environments with high security requirements.

**Security Features Summary**:

| Security Measure | Description |
|:--|:--|
| SSL Encryption | Full-chain SSL for PostgreSQL/PgBouncer/Patroni |
| Strong Password | `passwordcheck` extension enforces complexity |
| User Expiration | All users expire in 20 years (`expire_in: 7300`) |
| Strict HBA | Admin remote access requires certificate |
| Encrypted Backup | MinIO backup with AES-256-CBC encryption |
| Audit Logs | `pgaudit` extension for SQL audit logging |
| Delayed Replica | 1-hour delayed replica for mistake recovery |

**Use Cases**:
- Finance, healthcare, government sectors with high security requirements
- Environments needing compliance audit requirements
- Critical business with extremely high data security demands

**Notes**:
- Some security extensions unavailable on ARM64 architecture, enable appropriately
- All default passwords must be changed to strong passwords
- Recommend using with regular security audits

