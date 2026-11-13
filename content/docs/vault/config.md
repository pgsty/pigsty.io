---
title: Configuration
weight: 4981
description: Choose a single-node or three-node VAULT topology and configure the HA VIP endpoint and service domain.
icon: fa-solid fa-code
module: [VAULT]
categories: [Reference]
---

Before deploying VAULT, define a group named `vault` in the [inventory](/docs/setup/config). There is no profile or mode parameter: **the mode is derived entirely from the number of members in `vault`**.

- [Single node](#single-node): no HA; suitable for development, testing, demos, and sandboxes.
- [Three nodes](#three-nodes): tolerates one member failure and provides HA access with an L2 VIP; suitable for production.
- [Two nodes](#two-nodes): functional but has no fault tolerance; treat it as a single-node setup.

| Members | Quorum | Tolerated Failures | Mode | Service Endpoint |
|:----|:----|:------|:-----|:-----|
| 1 | 1 | 0 | Lab | `vault.pigsty` points to the member |
| 2 | 2 | 0 | Warning | Any member failure loses quorum |
| 3 | 2 | 1 | Production | `vault.pigsty` points to the VIP; HAProxy forwards to the active member |
{.full-width}

VAULT uses OpenBao's built-in Raft storage. Only one **active** member handles writes at a time; the remaining **standby** members forward requests to it.


--------

## Single Node

A single-node VAULT instance needs only one line of configuration:

```yaml
vault: { hosts: { 10.10.10.10: { vault_seq: 1 } }, vars: { vault_cluster: vault } }
```

Besides the IP address, the only required parameter is [`vault_seq`](/docs/vault/param#vault_seq). It determines the instance name `vault-<seq>` and which member performs initial cluster initialization: the one with the lowest `vault_seq`.

Single-node VAULT usually shares a machine with INFRA, ETCD, and PGSQL, so **keys and data are not separated**. Obtaining its disk exposes both encrypted data and the key. This is suitable for development and demos, but should not supply transparent-encryption keys in production.



--------

## Three Nodes

Three members tolerate one failure. Enable NODE's L2 VIP on the `vault` group in production so the service endpoint is also highly available:

```yaml
vault:
  hosts:
    10.10.10.11: { vault_seq: 1 }   # Required identity parameter; instance name vault-1
    10.10.10.12: { vault_seq: 2 }   # Nonnegative integer, unique within the group
    10.10.10.13: { vault_seq: 3 }   # Keep immutable; the lowest seq performs initial initialization
  vars:
    vault_cluster: vault            # Cluster name for monitoring labels and instance prefixes
    node_cluster: vault             # Same node cluster name ensures consistent VRRP authentication
    vip_enabled: true               # Enable an L2 VIP for the vault node cluster
    vip_vrid: 129                   # VRRP router ID, 1-254; unique on the L2 network
    vip_address: 10.10.10.8         # VIP address; vault.pigsty should resolve here

all:
  vars:
    node_etc_hosts: [ '10.10.10.8 vault.pigsty' ]   # All nodes access vault through the VIP
```

The resulting topology is:

```text
                  vault.pigsty -> 10.10.10.8 (VIP, node_etc_hosts)
                                   |
        +--------------------------+--------------------------+
        |    keepalived VIP + haproxy :8200 (check /v1/sys/health == 200)
   vault-1 10.10.10.11      vault-2 10.10.10.12      vault-3 10.10.10.13
   openbao :8200/:8201      openbao :8200/:8201      openbao :8200/:8201
        +------------- Raft (quorum 2, tolerates 1 failure) -----------+
```

When `vip_enabled` is `true` and there is more than one member, [`vault.yml`](/docs/vault/playbook#vaultyml) generates `/etc/haproxy/conf.d/vault.cfg` on every member:

- Binds `<VIP>:8200` in TCP mode with **TLS passthrough**. Clients and OpenBao still perform certificate validation.
- Checks `GET /v1/sys/health`: active returns `200`, standby `429`, sealed `503`, and uninitialized `501`. Only a member returning `200` receives traffic.
- Health checks also use HTTPS and validate member certificates with `/etc/pki/ca.crt`.
- Members without the VIP must also bind `<VIP>:8200`, requiring `net.ipv4.ip_nonlocal_bind=1`. NODE's tuned profiles set this. With `node_tune: none`, set it yourself or the playbook stops here.

With the VIP enabled, server certificate SANs include its address. Members must share the same [`node_cluster`](/docs/node/param#node_cluster); otherwise NODE derives different VRRP authentication values and VIP failover does not work.

> [!TIP] Three nodes without a VIP
> A three-member cluster can run without a VIP. Resolve `vault.pigsty` to one member; a standby forwards requests to the active member.
> The cluster still tolerates one member failure, but the member named in DNS becomes a single point of failure for access.

> [!NOTE] HAProxy configuration cleared
> Rerunning `node.yml` with `haproxy_clean=true` on vault nodes clears `/etc/haproxy/conf.d/`. Run `./vault.yml -l vault -t vault_haproxy` to regenerate the VAULT endpoint.



--------

## Two Nodes

A two-member Raft cluster requires a quorum of two and tolerates no failures. Either member failing makes the whole cluster unavailable, potentially reducing availability below that of a single node.

VAULT permits two-member deployments but prints a warning. Treat this as a temporary state during scaling, not a permanent topology.

Raft supports larger clusters, but VAULT is designed and validated for one or three members.



--------

## Service Domain

All clients should use [`vault_domain`](/docs/vault/param#vault_domain), defaulting to `vault.pigsty`. The full address is:

```bash
https://vault.pigsty:8200
```

Consumers such as `pg_tde` persist the KMS endpoint in their metadata. Using a domain allows migration from one to three members, or a change of VIP, by updating `/etc/hosts` without changing every consumer's configuration.

NODE's [`node_etc_hosts`](/docs/node/param#node_etc_hosts) writes the mapping to each node's `/etc/hosts`, **without depending on** INFRA DNS. Databases can therefore locate KMS at startup even if INFRA is unavailable.

```bash
./node.yml -t node_hosts           # Refresh /etc/hosts on all nodes after changing node_etc_hosts
```

Pigsty CA signs the server certificates. Every managed node has `/etc/pki/ca.crt`, which clients can use to verify VAULT's identity.



--------

## Placement

In production, deploy VAULT on dedicated nodes or alongside control components such as ETCD and INFRA. **Do not co-locate it with PostgreSQL or Silo data nodes that use its keys**.
Transparent encryption depends on separating keys from data: a leaked data disk, database backup, or object store should not expose its key in the same place.

VAULT needs few resources. Low disk latency matters most because each Raft log commit must be persisted.



--------

## Key Material

All VAULT trust roots are stored on the admin node in `files/pki/vault/`, alongside Pigsty CA. `files/pki/` is ignored by Git by default:

| File | Contents | Notes |
|:---|:---|:---|
| `unseal.key` | 32-byte static seal key | Generated on first deployment and never overwritten; used by every member for auto-unseal |
| `init.json` | Root token and five recovery shares, threshold three | Output of `bao operator init`; the root of administrative access |
| `backup.token` | Token with read-only snapshot access | Used by `vault-backup`; valid for ten years |
| `backup/*.snap` | Initial snapshot after initialization and final snapshot before whole-cluster removal | Mode `0600` |
| `vault-<seq>.crt` / `.key` | Member server certificates and private keys | Signed by Pigsty CA; validity set by [`cert_validity`](/docs/infra/param#cert_validity) |
{.full-width}

> [!WARNING] Back up files/pki
> A Raft snapshot and its matching `unseal.key` can recover the encrypted store. The root token and recovery keys in `init.json` are needed to regain administrative access afterward.
> Losing `unseal.key` makes all snapshots unreadable. Keep `files/pki/` and snapshots safely off-site.

Each member holds a copy of `unseal.key`. Before distributing it, Pigsty compares checksums. If an existing member key differs from the admin node's key, the playbook stops immediately to avoid wrapping data with the wrong key.



--------

## Filesystem Layout

VAULT creates the following files and directories on each member:

| Path | Purpose | Permissions |
|:---|:---|:---|
| `/etc/openbao/` | Configuration directory | `0750`, `root:openbao` |
| `/etc/openbao/openbao.hcl` | Main OpenBao configuration | `0640`, `root:openbao` |
| `/etc/openbao/tls/` | CA certificate, server certificate, and private key | Directory `0750`, files `0640`, `root:openbao` |
| `/etc/openbao/unseal.key` | Local copy of the static seal key | `0640`, `root:openbao` |
| `/etc/openbao/backup.token` | Local copy of the backup token | `0600`, `root:root` |
| `/data/vault/raft/` | Raft data directory (configurable) | `0700`, `openbao:openbao` |
| `/data/vault/backup/` | Seven local snapshots and the `.backup.lock` concurrency lock | `0700`, `root:root` |
| `/var/log/openbao/` | `audit.log`, rotated daily with seven retained files | `0750`, `openbao:openbao` |
| `/etc/systemd/system/openbao.service` | systemd service definition | `0644`, `root:root` |
| `/etc/profile.d/bao.sh` | `bao` client environment variables | `0644`, `root:root` |
| `/etc/logrotate.d/openbao` | Audit log rotation | `0644`, `root:root` |
| `/usr/local/bin/vault-backup` | Snapshot script | `0755`, `root:root` |
| `/etc/cron.d/vault-backup` | Daily snapshot schedule | `0644`, `root:root` |
| `/var/lib/node_exporter/textfile/vault.prom` | Latest successful snapshot timestamp and size | Collected by node_exporter |
| `/etc/haproxy/conf.d/vault.cfg` | HAProxy VIP endpoint (VIP enabled only) | `0644`, `root:root` |
{.full-width .wide .expand}

On INFRA nodes, `/infra/targets/vault/<vault_cluster>-<vault_seq>.yml` defines the member's monitoring scrape target.
