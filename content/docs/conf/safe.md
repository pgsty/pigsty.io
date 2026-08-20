---
title: ha/safe
weight: 630
description: Three-node high-availability and security-hardening configuration example.
icon: fa-solid fa-shield-halved
categories: [Reference]
---

`ha/safe` uses a three-node high-availability topology to demonstrate TLS, client certificates, password checks, backup encryption, the CRIT parameter template, and related security settings. It is a configuration example to customize, not a compliance-certified template.


--------

## Overview

- Configuration: `ha/safe`
- Nodes: 3 INFRA, etcd, and PostgreSQL nodes; optional delayed replica
- Operating systems: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- Architecture: `x86_64`; some security extensions do not have ARM64 packages
- Related configurations: [**`ha/trio`**](/docs/conf/trio/), [**`ha/full`**](/docs/conf/full/)

Generate the configuration:

```bash
./configure -c ha/safe -g [-i <primary_ip>]
```

`-g` randomizes only credentials recognized by the configuration wizard. You must still replace Silo users, the pgBackRest `cipher_pass`, and other template example values.


--------

## Hardening Controls

| Setting | Template Behavior | Boundary and Follow-up |
|:---|:---|:---|
| PostgreSQL HBA | Main TCP rules use `ssl`; public administrator access uses `cert` | Local `ident` and selected localhost `pwd` rules remain |
| PgBouncer | `pgbouncer_sslmode: require` | Clients must still verify the server certificate where required |
| Patroni | REST API uses HTTPS and a constrained listen address | Basic Auth remains; rotate the password |
| Password check | `passwordcheck` is preloaded through `pg_libs` | Affects only newly set or changed passwords |
| Account lifetime | Built-in and example application users set `expire_in: 7300` | Twenty years is not a rotation policy; shorten it to organizational requirements |
| Listen addresses | PostgreSQL is limited to `${ip},${vip},${lo}` | Firewalls and HBA are still required |
| Backup | Uses Silo with AES-256-CBC | `pgBR.${pg_cluster}` is a predictable example and must be replaced |
| PostgreSQL parameters | `pg-meta` uses `crit.yml` | Strict synchronous mode can block writes without a synchronous replica |
| Logging | CRIT logs connection and disconnection events | Fine-grained SQL auditing requires explicit `pgaudit` configuration |
| Security extensions | Installs `passwordcheck`, `credcheck`, `pgaudit`, and related packages | Installation does not preload, create, or configure an extension |
| Delayed replica | Provides a commented one-hour delayed-cluster example | Not created by default; enable it explicitly |
{.full-width}


--------

## Preflight Checklist

- Replace every public example credential, especially `minio_users`, `pgbackrest_repo`, application users, and API passwords.
- Confirm that the three nodes occupy independent failure domains, and update IPs, VIP, and domains for the target network.
- Configure database clients with `sslmode=verify-full` and a trusted CA.
- Confirm that the availability impact of strict synchronous mode meets application requirements.
- Preload and configure `pgaudit`, `credcheck`, and other extensions as required.
- Check extension package availability on ARM64.
- Test backup recovery, failover, and certificate verification.

See [**Security Model**](/docs/concept/sec/level), [**Authentication**](/docs/concept/sec/auth), [**Encrypted Communication**](/docs/concept/sec/ca), and [**Data Security**](/docs/concept/sec/data) for the underlying mechanisms.


--------

## Configuration

Source: [**`pigsty/conf/ha/safe.yml`**](https://github.com/pgsty/pigsty/blob/main/conf/ha/safe.yml)

{{< include file="yaml/ha/safe.yml" code=true lang="yaml" >}}
