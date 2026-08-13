---
title: Security Model
weight: 231
description: Pigsty trust boundaries and defense in depth, with the admin node as a high-trust control plane and a path from the default baseline to production hardening.
icon: fa-solid fa-layer-group
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Before examining individual security features, answer two more fundamental questions: **Where is the root of trust?** and **How many defensive layers exist?**
The first determines what deserves the strongest protection. The second determines what remains when one layer fails.


----------------

<span id="overview"></span>

## Trust Boundaries

Pigsty is an Ansible-based declarative deployment system. Like other control-plane systems, its [**admin node**](/docs/concept/arch/node#admin-node) is the control plane and the node that requires the strongest protection.

| Role | Assets and Privileges |
|:---|:---|
| **Admin node** | The `pigsty.yml` inventory, which normally contains system and application credentials; the CA private key; SSH administration access to every node |
| [**INFRA nodes**](/docs/concept/arch/node#infra-node) | Monitoring and alerts, DNS, Nginx ingress, and software repositories |
| [**Database nodes**](/docs/concept/arch/node#pgsql-node) | Database instances, local dbsu, and restricted sudo |
| **Clients** | Database credentials or client certificates; access through service ports, HBA, and authentication |
{.full-width}

These roles hold different capabilities; they do not form a simple linear hierarchy. Three assets are especially important:

1. The [**`pigsty.yml` inventory**](/docs/concept/iac/inventory) contains component passwords and credentials. Strictly control access to the admin node and to the configuration repository when Git is used.
2. The **CA private key**, `files/pki/ca/ca.key`, is the trust anchor for the deployment. Anyone holding it can issue an arbitrary trusted certificate. The file uses mode `0600` inside a `0700` directory; keep an offline backup.
3. The **administration user's SSH private key** lets the admin node manage every enrolled node with passwordless sudo. It is effectively root access to the managed fleet.

Pigsty's [**security policy**](https://github.com/pgsty/pigsty/blob/main/SECURITY.md) states this boundary explicitly: an attack that requires admin-node access, or possession of both `pigsty.yml` and the CA private key, is not treated as a product vulnerability.
These are high-trust control-plane assets by design and must be protected accordingly.


----------------

<span id="l1-physical-and-media-security"></span>
<span id="l2-network-security"></span>
<span id="l3-perimeter-security"></span>
<span id="l4-host-security"></span>
<span id="l5-application-security"></span>
<span id="l6-data-security"></span>
<span id="l7-user-security"></span>

## Seven Defensive Layers

Defense in depth does not ask one mechanism to solve every problem. It combines controls so that one failure does not remove all protection.
Pigsty's security capabilities can be summarized as seven layers:

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

Pigsty enables a firewall during node provisioning ([`node_firewall_mode`](/docs/node/param#node_firewall_mode) defaults to `zone`), using `firewalld` or `ufw` according to the operating system.
Intranet CIDRs (`10.0.0.0/8`, `172.16.0.0/12`, and `192.168.0.0/16`, defined by [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet)) enter the trusted zone.
Public networks can reach only ports declared in [`node_firewall_public_port`](/docs/node/param#node_firewall_public_port), which defaults to `22` for SSH and `80`/`443` for web traffic.

> The default demo inventory, `pigsty.yml`, also exposes port `5432` for local evaluation. Remove it in production. If direct database access is required, restrict sources to explicit CIDRs with security groups, host firewalls, and HBA.

PostgreSQL listens on all addresses by default ([`pg_listen`](/docs/pgsql/param#pg_listen): `0.0.0.0`). The effective access boundary is the combination of listen addresses, firewall rules, and HBA. Stricter environments can constrain the listener:

```yaml
pg_listen: '${ip},${vip},${lo}'   # Host IP, cluster VIP, and loopback only
```

The default firewall does not expose Grafana, VictoriaMetrics, or other web infrastructure directly to public networks. External web access normally enters through the [**Nginx portal**](/docs/concept/arch/infra#nginx).
Database traffic enters through HAProxy [**service**](/docs/pgsql/misc/svc) ports. Fewer entry points are easier to harden and audit.

### Host Security

The central host-level rule is: **each OS user receives only the privileges required for its job**.

- The database superuser `postgres` ([`pg_dbsu`](/docs/pgsql/param#pg_dbsu)) has **no password** by default and can enter the database only through local `ident` authentication.
  [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo) defaults to `limit`, allowing passwordless `systemctl` operations for database services and log viewing rather than unrestricted root access.
- The administration user ([`node_admin_username`](/docs/node/param#node_admin_username), default `dba`) is used by operators and playbooks and receives passwordless sudo (`nopass`) by default.
  Security-sensitive environments can set [`node_admin_sudo`](/docs/node/param#node_admin_sudo) to `all`, which requires a sudo password, or `limit`, which restricts the command set.
- [`node_selinux_mode`](/docs/node/param#node_selinux_mode) defaults SELinux to `permissive`: violations are logged but not blocked, providing a baseline before moving to `enforcing`.

Pigsty does not manage the SSH server configuration. Disabling password login, restricting remote root login, and similar operating-system hardening belong in your host security baseline.


----------------

<span id="security-hardening-path"></span>

## Hardening Levels

Security does not have to jump to its final state in one step. Pigsty provides an upgrade path in which each level builds on the previous one:

**Level 1: default baseline.** Out-of-the-box controls include SCRAM passwords, data checksums, a local CA and component certificates, layered HBA, a four-tier role model, default backups, and firewall zones.
This level suits development, testing, and evaluation on a trusted intranet. Production still requires credential review, network-boundary review, and client verification.

**Level 2: randomized credentials.** Default passwords are documented publicly and must be changed in every network-exposed deployment. Add `-g` when generating configuration to randomize built-in parameters and example credentials recognized by the configuration wizard:

```bash
./configure -g    # --generate: randomize recognized default credentials
```

This option does not replace the pgBackRest `cipher_pass`, every Silo example credential in `ha/safe`, or user-defined values. See the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist) for the complete scope.

**Level 3: policy hardening with the `ha/safe` template.** [**`conf/ha/safe.yml`**](/docs/conf/safe) combines several controls into a starting point for further customization:

- **TLS and certificate authentication:** the main TCP HBA rules use `ssl`, public administrator access uses a client certificate, PgBouncer uses `require`, and the Patroni API uses HTTPS. Local `ident` and selected localhost password rules remain.
- **Password policy:** `passwordcheck` is preloaded explicitly, and built-in users declare `expire_in`. Example passwords in the template still require review and replacement.
- **Reduced attack surface:** listen addresses are limited to `${ip},${vip},${lo}`, and public connection-pool access by monitoring and administration accounts is denied explicitly.
- **Backup encryption:** pgBackRest uses the remote `minio` repository preset with AES-256-CBC. `pgBR.${pg_cluster}` is a predictable example value and must be replaced.
- [**Security extensions**](/ext/cate/sec/): `passwordcheck`, `credcheck`, `pgaudit`, `pgsodium`, `anonymizer`, and related extensions are installed. Installation does not preload, create, or configure an extension.

**Level 4: database hardening with the `crit.yml` parameter template.** The safe template selects the [**CRIT parameter template**](/docs/pgsql/template/crit) for consistency-first workloads. Compared with the general `oltp` template, it:

- forces data checksums regardless of `pg_checksum`;
- enables strict synchronous replication (`synchronous_mode_strict`), blocking writes that require synchronous acknowledgment when no synchronous replica is available;
- logs connection and disconnection events; PostgreSQL 18 also separates connection receipt, authentication, and authorization stages;
- configures [**watchdog**](/docs/concept/ha/failure/partition/#2-linux-watchdog) as `automatic`, which activates only when a usable device exists.

Strict synchronous mode targets preservation of acknowledged transactions, but still depends on `synchronous_commit`, synchronous replica state, and failover eligibility. Validate [**RPO**](/docs/concept/ha/rpo) with failure exercises on the target topology.

You can also select individual controls instead of adopting the complete template:

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
