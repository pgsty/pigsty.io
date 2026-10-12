---
title: Security Model
weight: 231
description: Pigsty trust boundaries and defense in depth, with the admin node as a high-trust control plane and a path from the default baseline to production hardening.
icon: fa-solid fa-layer-group
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Identify the **root of trust** and **defensive layers** before selecting security features. The root of trust needs the strongest protection. Multiple layers preserve some protection if one fails.


----------------

<span id="overview"></span>

## Trust Boundaries

Pigsty uses Ansible for declarative deployment. Its [**administration node**](/docs/concept/arch/node#admin-node) is the control plane and needs the strongest protection.

| Role | Assets and Privileges |
|:---|:---|
| **Admin node** | The `pigsty.yml` inventory, which normally contains system and application credentials; the CA private key; SSH administration access to every node |
| [**INFRA nodes**](/docs/concept/arch/node#infra-node) | Monitoring and alerts, DNS, Nginx ingress, and software repositories |
| [**Database nodes**](/docs/concept/arch/node#pgsql-node) | Database instances, local dbsu, and restricted sudo |
| **Clients** | Database credentials or client certificates; access through service ports, HBA, and authentication |
{.full-width}

These roles have different capabilities, not a simple hierarchy. Protect these three assets in particular:

1. The [**`pigsty.yml` inventory**](/docs/concept/iac/inventory) contains component passwords and credentials. Strictly restrict administration node access and access to any Git configuration repository.
2. The **CA private key**, `files/pki/ca/ca.key`, anchors deployment trust. Its holder can issue any trusted certificate. The file uses mode `0600` inside a `0700` directory. Keep an offline backup.
3. The **administration user's SSH private key** provides passwordless sudo access to all enrolled nodes. It effectively grants root access throughout the managed deployment.

Pigsty's [**security policy**](https://github.com/pgsty/pigsty/blob/main/SECURITY.md) defines this trust boundary. Attacks requiring administration node access, or both `pigsty.yml` and the CA private key, are not product vulnerabilities. These control-plane assets have high trust by design. Protect them accordingly.


----------------

<span id="l1-physical-and-media-security"></span>
<span id="l2-network-security"></span>
<span id="l3-perimeter-security"></span>
<span id="l4-host-security"></span>
<span id="l5-application-security"></span>
<span id="l6-data-security"></span>
<span id="l7-user-security"></span>

## Seven Defensive Layers

Defense in depth combines controls so that one failure does not remove all protection. Pigsty provides seven security layers:

| # | Layer | Mechanisms | Details |
|:-:|:---|:---|:---|
| 1 | Network boundary | Firewall zones, constrained listen addresses, centralized ingress | This page |
| 2 | Transport encryption | Local CA and TLS between components | [**Encrypted Communication**](/docs/concept/sec/ca) |
| 3 | Authentication | HBA rules, SCRAM passwords, client certificates | [**Authentication**](/docs/concept/sec/auth) |
| 4 | Access control | Role model, default privileges, database isolation | [**Access Control**](/docs/concept/sec/ac) |
| 5 | Host security | SELinux, restricted sudo, dedicated OS users | This page |
| 6 | Data security | Checksums, backup and encryption, PITR, deletion safeguards | [**Data Security**](/docs/concept/sec/data) |
| 7 | Audit trail | DDL and connection logs, audit extensions, centralized logs | [**Data Security**](/docs/concept/sec/data#audit-and-traceability) |
{.full-width}

Layers 2, 3, 4, 6, and 7 have dedicated chapters. The following sections cover the network and host layers.

### Network Boundaries

Node provisioning enables `firewalld` or `ufw`, depending on the OS. [`node_firewall_mode`](/docs/node/param#node_firewall_mode) defaults to `zone`. [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet) places `10.0.0.0/8`, `172.16.0.0/12`, and `192.168.0.0/16` in the trusted zone. Public networks can reach only [`node_firewall_public_port`](/docs/node/param#node_firewall_public_port) ports. Defaults are `22` for SSH and `80`/`443` for web traffic.

> The demo `pigsty.yml` also exposes `5432` for local evaluation. Remove this exception in production. If direct database access is needed, restrict sources to explicit CIDRs through security groups, host firewalls, and HBA.

PostgreSQL listens on all addresses by default: [`pg_listen`](/docs/pgsql/param#pg_listen) is `0.0.0.0`. Listen addresses, firewall rules, and HBA jointly control access. For stricter access, constrain the listener:

```yaml
pg_listen: '${ip},${vip},${lo}'   # Host IP, cluster VIP, and loopback only
```

The default firewall blocks direct public access to Grafana, VictoriaMetrics, and other web infrastructure. External web traffic normally uses the [**Nginx portal**](/docs/concept/arch/infra#nginx). Database traffic uses HAProxy [**service**](/docs/pgsql/misc/svc) ports. Fewer entry points simplify hardening and auditing.

### Host Security

**Give each OS user only the privileges its job requires.**

- The database superuser `postgres` ([`pg_dbsu`](/docs/pgsql/param#pg_dbsu)) has **no password** by default. It can enter the database only through local `ident`. [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo) defaults to `limit`. This permits passwordless database service `systemctl` operations and log viewing, without unrestricted root access.
- Operators and playbooks use [`node_admin_username`](/docs/node/param#node_admin_username), default `dba`. It receives passwordless sudo (`nopass`) by default. For stricter control, set [`node_admin_sudo`](/docs/node/param#node_admin_sudo) to `all` to require a password, or `limit` to restrict commands.
- [`node_selinux_mode`](/docs/node/param#node_selinux_mode) defaults to `permissive`. SELinux records violations without blocking them, providing a baseline before `enforcing`.

Pigsty does not manage SSH server configuration. Put password-login restrictions, remote-root restrictions, and similar OS hardening in your host security baseline.


----------------

<span id="security-hardening-path"></span>

## Hardening Levels

Harden the deployment in stages. Each level adds to the previous level:

**Level 1: default baseline.** Defaults provide SCRAM passwords, data checksums, a local CA, component certificates, layered HBA, four-tier roles, backups, and firewall zones. This suits development, testing, and evaluation on a trusted intranet. For production, review credentials and network boundaries, and configure client verification.

**Level 2: randomized credentials.** Change all public default passwords before any network-exposed deployment. Add `-g` to randomize recognized built-in parameters and example credentials:

```bash
./configure -g    # --generate: randomize recognized default credentials
```

This option does not replace pgBackRest `cipher_pass`, all Silo examples in `ha/safe`, or custom values. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for coverage.

**Level 3: policy hardening with `ha/safe`.** [**`conf/ha/safe.yml`**](/docs/conf/safe) combines controls for further customization:

- **TLS and certificates:** Main TCP HBA rules use `ssl`. Public administrator access requires a client certificate. PgBouncer uses `require`, and Patroni API uses HTTPS. Local `ident` and selected localhost password rules remain.
- **Password policy:** The template preloads `passwordcheck` and sets `expire_in` for built-in users. Review and replace example passwords.
- **Reduced exposure:** Listen addresses are limited to `${ip},${vip},${lo}`. Public connection-pool access is explicitly denied for monitoring and administration accounts.
- **Backup encryption:** pgBackRest uses the remote `minio` preset with AES-256-CBC. Replace the predictable example `pgBR.${pg_cluster}`.
- [**Security extensions**](/ext/cate/sec/): The template installs `passwordcheck`, `credcheck`, `pgaudit`, `pgsodium`, `anonymizer`, and related extensions. Installation does not preload, create, or configure them.

**Level 4: database hardening with `crit.yml`.** The safe template selects [**CRIT**](/docs/pgsql/template/crit) for workloads that prioritize consistency. Compared with `oltp`, CRIT:

- Requires checksums regardless of `pg_checksum`.
- Enables strict synchronous replication (`synchronous_mode_strict`). Writes needing synchronous acknowledgment block if no synchronous replica is available.
- Logs connections and disconnections. PostgreSQL 18 separates connection receipt, authentication, and authorization.
- Sets [**watchdog**](/docs/concept/ha/failure/partition/#2-linux-watchdog) to `automatic`. It activates only if a usable device exists.

Strict synchronous mode aims to preserve acknowledged transactions. It depends on `synchronous_commit`, synchronous replica state, and failover eligibility. Verify [**RPO**](/docs/concept/ha/rpo) with failure exercises on the target topology.

You can select individual controls instead of the whole template:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1 , pg_role: primary }
    10.10.10.11: { pg_seq: 2 , pg_role: replica }
    10.10.10.12: { pg_seq: 3 , pg_role: replica }
  vars:
    pg_cluster: pg-meta
    pg_conf: crit.yml                    # Use the CRIT database parameter template
    patroni_ssl_enabled: true            # Enable HTTPS for the Patroni API
    pgbouncer_sslmode: require           # Require TLS for PgBouncer
    pg_listen: '${ip},${vip},${lo}'      # Constrain listen addresses
    pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain'  # Password strength checks
```


----------------

## Next

- 🔑 [**Authentication**](/docs/concept/sec/auth): HBA rules and password policy
- 👤 [**Access Control**](/docs/concept/sec/ac): roles and least privilege
- 🔐 [**Encrypted Communication**](/docs/concept/sec/ca): local CA and TLS
- 🔒 [**Data Security**](/docs/concept/sec/data): integrity, backup, and audit
- ✅ [**Compliance**](/docs/concept/sec/compliance): MLPS and SOC 2 mapping
