---
title: Parameters
weight: 4982
description: VAULT exposes eight parameters; other conventions are fixed or derived from the topology.
icon: fa-solid fa-sliders
module: [VAULT]
categories: [Reference]
---

VAULT provides **eight** parameters in two groups:

- [**`VAULT`**](#vault): five parameters for deployment and configuration.
- [**`VAULT_REMOVE`**](#vault_remove): three parameters controlling cluster removal.

VAULT deliberately exposes few settings. Member count determines cluster mode, HA access reuses NODE's [VIP parameters](#related-parameters), and other ports, directories, engines, and backup policies follow [fixed conventions](#fixed-conventions).


----------------

## Parameter Overview

The [`VAULT`](#vault) group configures instance identity, cluster name, data directory, port, and service domain.

| Parameter | Type | Level | Description |
|:---|:---:|:---:|:---|
| [`vault_seq`](#vault_seq) | `int` | `I` | Required VAULT instance identifier |
| [`vault_cluster`](#vault_cluster) | `string` | `C` | Cluster name, default `vault` |
| [`vault_data`](#vault_data) | `path` | `C` | Data directory, default `/data/vault` |
| [`vault_port`](#vault_port) | `port` | `G` | API port, default `8200` |
| [`vault_domain`](#vault_domain) | `string` | `G` | Service domain, default `vault.pigsty` |
{.full-width .wide .expand}

The [`VAULT_REMOVE`](#vault_remove) group controls removal safeguards, data cleanup, and package removal.

| Parameter | Type | Level | Description |
|:---|:---:|:---:|:---|
| [`vault_safeguard`](#vault_safeguard) | `bool` | `G/C/A` | Removal safeguard, **default `true`**, blocks removal |
| [`vault_rm_data`](#vault_rm_data) | `bool` | `G/C/A` | Delete VAULT data during removal? Default `true` |
| [`vault_rm_pkg`](#vault_rm_pkg) | `bool` | `G/C/A` | Uninstall `openbao` during removal? Default `false` |
{.full-width}



--------

## `VAULT`

This section lists parameters for the [`vault`](https://github.com/pgsty/pigsty/blob/main/roles/vault) role,
used by the [`vault.yml`](/docs/vault/playbook#vaultyml) playbook.

They are defined in [`roles/vault/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/vault/defaults/main.yml).

```yaml
#vault_seq: 1                     # Required vault instance identifier
vault_cluster: vault              # Cluster name, default vault
vault_data: /data/vault           # Data directory for Raft storage and local snapshots
vault_port: 8200                  # API port; Raft cluster port is this value +1
vault_domain: vault.pigsty        # Service domain for certificate SANs and all clients
```



### `vault_seq`

Name: `vault_seq`, type: `int`, level: `I`

Required VAULT instance number. Assign every member a nonnegative integer unique within the group.

The instance name is `<vault_cluster>-<vault_seq>`, for example `vault-1`. It is also the Raft node ID, server certificate CN, and monitoring label `ins`.

The member with the **lowest** `vault_seq` performs initial cluster initialization. Keep instance numbers immutable once assigned; do not reuse them for other nodes.

```yaml
vault:
  hosts:
    10.10.10.11: { vault_seq: 1 }  # vault-1 performs initial initialization
    10.10.10.12: { vault_seq: 2 }  # vault-2
    10.10.10.13: { vault_seq: 3 }  # vault-3
```

The playbook verifies that every `vault_seq` is a nonnegative integer unique in the `vault` group, stopping immediately on failure.




### `vault_cluster`

Name: `vault_cluster`, type: `string`, level: `C`

VAULT cluster name, default `vault`.

Used as the instance name prefix, OpenBao `cluster_name`, and monitoring label `cls`, and in generating the seal key ID.

The Ansible group name is hardcoded as `vault`, independently of `vault_cluster`. Each Pigsty deployment has one VAULT cluster; this parameter usually needs no change.




### `vault_data`

Name: `vault_data`, type: `path`, level: `C`

VAULT data directory, default `/data/vault`.

Contains `raft/` for Raft storage and `backup/` for local snapshots.

Use a **dedicated** absolute path at least two levels deep, such as `/data/vault`, with no `..` components. Removal deletes the entire directory; never point it at a shared parent such as `/var/lib`.




### `vault_port`

Name: `vault_port`, type: `port`, level: `G`

VAULT API port, default `8200`.

The Raft cluster port is fixed at `vault_port + 1`, default `8201`. This follows OpenBao's convention and has no separate parameter.

Clients, HAProxy, and monitoring all use this port. Do not change it after creating the cluster.




### `vault_domain`

Name: `vault_domain`, type: `string`, level: `G`

VAULT service domain, default `vault.pigsty`.

Included in every member's server certificate SAN. All clients should use `https://<vault_domain>:<vault_port>`.

Pigsty does not resolve this name automatically. Use [`node_etc_hosts`](/docs/node/param#node_etc_hosts) to point it to the single member or the three-member cluster's VIP; see [Service Domain](/docs/vault/config#service-domain).




--------

## `VAULT_REMOVE`

This section lists parameters for the [`vault_remove`](https://github.com/pgsty/pigsty/blob/main/roles/vault_remove) role,
used by the [`vault-rm.yml`](/docs/vault/playbook#vault-rmyml) playbook.

They are defined in [`roles/vault_remove/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/vault_remove/defaults/main.yml).

```yaml
vault_safeguard: true             # Removal safeguard, default true
vault_rm_data: true               # Delete vault data and configuration? Default true
vault_rm_pkg: false               # Uninstall openbao? Default false
```



### `vault_safeguard`

Name: `vault_safeguard`, type: `bool`, level: `G/C/A`

VAULT removal safeguard, **default `true`**. When enabled, `vault-rm.yml` aborts before taking any action.

Like MYSQL's `mysql_safeguard`, this safeguard is enabled by default. Deleting VAULT destroys all keys it stores: databases, objects, and **all their backups** encrypted with those keys become permanently unreadable.

To remove it, explicitly override the parameter on the command line:

```bash
./vault-rm.yml -l <exact-target> -e vault_safeguard=false   # Override only after verifying the target and snapshot
```




### `vault_rm_data`

Name: `vault_rm_data`, type: `bool`, level: `G/C/A`

Delete VAULT data and configuration during removal? Default `true`.

Deletes `/etc/openbao` on members, including local copies of TLS certificates, the seal key, and backup token; the [`vault_data`](#vault_data) directory, **including local snapshots**; the systemd unit, client environment, log rotation configuration, and `vault-backup` script.

When removing the whole cluster with this enabled, the playbook first takes a final snapshot and retrieves it to `files/pki/vault/backup/` on the admin node. Failure aborts removal.

Regardless of this setting, `files/pki/vault/` on the admin node and `/var/log/openbao/` audit logs on members are never deleted.

```bash
./vault-rm.yml -l 10.10.10.13 -e vault_safeguard=false -e vault_rm_data=false  # Stop service while retaining data
```




### `vault_rm_pkg`

Name: `vault_rm_pkg`, type: `bool`, level: `G/C/A`

Uninstall `openbao` during removal? Default `false`.

```bash
./vault-rm.yml -l vault -e vault_safeguard=false -e vault_rm_pkg=true  # Also uninstall the package
```




--------

## Related Parameters

VAULT reuses existing parameters for HA access and domain resolution:

| Parameter | Module | Role in VAULT |
|:---|:---|:---|
| [`vip_enabled`](/docs/node/param#vip_enabled) | NODE | Enable an L2 VIP, HAProxy endpoint, and VIP certificate SAN for the `vault` cluster |
| [`vip_address`](/docs/node/param#vip_address) | NODE | VIP address to which `vault.pigsty` should resolve |
| [`vip_vrid`](/docs/node/param#vip_vrid) | NODE | VRRP router ID, unique on the L2 network |
| [`node_cluster`](/docs/node/param#node_cluster) | NODE | Use the same node cluster name for consistent VRRP authentication |
| [`node_etc_hosts`](/docs/node/param#node_etc_hosts) | NODE | Write `vault_domain` into `/etc/hosts` on all nodes |
| [`haproxy_enabled`](/docs/node/param#haproxy_enabled) | NODE | When `false`, no VAULT HAProxy endpoint is generated |
| [`cert_validity`](/docs/infra/param#cert_validity) | INFRA | Server certificate validity, default 20 years |
{.full-width}



--------

## Fixed Conventions

The following conventions have no configurable parameters:

| Item | Convention |
|:---|:---|
| Group / instance name | Fixed group `vault`; instance `<vault_cluster>-<vault_seq>` |
| Cluster mode | Derived from member count: one for labs, three for production |
| Ports | API `vault_port` (8200), Raft `vault_port + 1` (8201) |
| Service / user / CLI | `openbao.service` / `openbao` / `bao`, all from the upstream package |
| Version | Determined by `openbao` in the Pigsty Infra repository |
| Seal method | Static seal; key at `files/pki/vault/unseal.key` on the admin node |
| Initialization | Five recovery shares, threshold three |
| Default engines | `secret/` (KV v2), `transit/`, `auth/approle` |
| Tokens | Maximum lease for `token/` auth: ten years (87600h); backup token validity: ten years |
| Audit | File device at `/var/log/openbao/audit.log`; daily rotation, seven retained files |
| Backup | Daily at 03:00 with minute `(vault_seq × 10) % 60` to stagger jobs; seven local snapshots |
| TLS | Pigsty CA certificates, TLS 1.3 minimum |
| Telemetry | Unauthenticated `/v1/sys/metrics` on the node IP listener; disabled on loopback |
{.full-width}
